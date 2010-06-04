package org.openmrs.module.htmlformentry;

import java.io.StringReader;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Concept;
import org.openmrs.ConceptDatatype;
import org.openmrs.FormField;
import org.openmrs.Location;
import org.openmrs.Obs;
import org.openmrs.Patient;
import org.openmrs.PatientIdentifier;
import org.openmrs.PatientIdentifierType;
import org.openmrs.Person;
import org.openmrs.PersonAddress;
import org.openmrs.PersonAttribute;
import org.openmrs.PersonAttributeType;
import org.openmrs.PersonName;
import org.openmrs.User;
import org.openmrs.api.context.Context;
import org.openmrs.propertyeditor.ConceptEditor;
import org.openmrs.propertyeditor.LocationEditor;
import org.openmrs.propertyeditor.PatientEditor;
import org.openmrs.propertyeditor.PersonEditor;
import org.openmrs.propertyeditor.UserEditor;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/** 
 * HTML Form Entry utility methods
 */
public class HtmlFormEntryUtil {
	
	private static Log log = LogFactory.getLog(HtmlFormEntryUtil.class);
    
	/**
	 * Returns the HTML Form Entry service from the Context
	 * 
	 * @return HTML Form Entry service
	 */
    public static HtmlFormEntryService getService() {
        return Context.getService(HtmlFormEntryService.class);
    }

    /**
     * Fetches a http request parameter from an http request and returns it as a specific type
     * 
     * @param request an http servlet request
     * @param name the name of the parameter to retrieve
     * @param clazz the type to convert the parameter to
     * @return parameter, converted to appropriate type
     */
    public static Object getParameterAsType(HttpServletRequest request, String name, Class<?> clazz) {
        String val = request.getParameter(name);
        return convertToType(val, clazz);
    }
    
    /**
     * Converts a string to specified type
     * 
     * @param val the string to convert
     * @param clazz the type to convert to
     * @return an instance of the specified type, with it's value set to val
     */
    public static Object convertToType(String val, Class<?> clazz) {
        if (val == null)
            return null;
        if ("".equals(val) && !String.class.equals(clazz))
            return null;
        if (Location.class.isAssignableFrom(clazz)) {
            LocationEditor ed = new LocationEditor();
            ed.setAsText(val);
            return ed.getValue();
        } else if (User.class.isAssignableFrom(clazz)) {
            UserEditor ed = new UserEditor();
            ed.setAsText(val);
            return ed.getValue();
        } else if (Date.class.isAssignableFrom(clazz)) {
            try {
                DateFormat df = Context.getDateFormat();
                df.setLenient(false);
                return df.parse(val);
            } catch (ParseException e) {
                throw new IllegalArgumentException(e);
            }
        } else if (Double.class.isAssignableFrom(clazz)) {
            return Double.valueOf(val);
        } else if (Integer.class.isAssignableFrom(clazz)) {
        	return Integer.valueOf(val);
        } else if (Concept.class.isAssignableFrom(clazz)) {
            ConceptEditor ed = new ConceptEditor();
            ed.setAsText(val);
            return ed.getValue();
        } else if (Patient.class.isAssignableFrom(clazz)) {
        	PatientEditor ed = new PatientEditor();
        	ed.setAsText(val);
        	return ed.getValue();
        } else if (Person.class.isAssignableFrom(clazz)) {
        	PersonEditor ed = new PersonEditor();
        	ed.setAsText(val);
        	return ed.getValue();
        } else {
            return val;
        }
    }

    /**
     * Creaets an OpenMRS Obs instance
     * 
     * @param formField the form field that specifies the concept associated with the Obs
     * @param value value associated with the Obs
     * @param datetime date/time associated with the Obs (may be null)
     * @param accessionNumber accession number associatd with the Obs (may be null)
     * @return the created Obs instance
     */
    
    public static Obs createObs(FormField formField, Object value, Date datetime, String accessionNumber) {
        Concept concept = formField.getField().getConcept();
        if (concept == null)
            throw new FormEntryException("Can't create an Obs for a formField that doesn't represent a Concept");
        return createObs(concept, value, datetime, accessionNumber);
    }
    
    /**
     * Creates an OpenMRS Obs instance
     * 
     * @param concept concept associated with the Obs
     * @param value value associated with the Obs
     * @param datetime date/time associated with the Obs (may be null)
     * @param accessionNumber accession number associatd with the Obs (may be null)
     * @return the created Obs instance
     */
    public static Obs createObs(Concept concept, Object value, Date datetime, String accessionNumber) {
        Obs obs = new Obs();
        obs.setConcept(concept);
        ConceptDatatype dt = obs.getConcept().getDatatype();
        if (dt.isNumeric()) {
            obs.setValueNumeric(Double.parseDouble(value.toString()));
        } else if (dt.isText()) {
            if (value instanceof Location) {
                obs.setValueText(((Location) value).getLocationId().toString());
            } else {
                obs.setValueText(value.toString());
            }
        } else if (dt.isCoded()) {
            if (value instanceof Concept)
                obs.setValueCoded((Concept) value);
            else
                obs.setValueCoded((Concept) convertToType(value.toString(), Concept.class));
        } else if (dt.isBoolean()) {
            boolean booleanValue = value != null && !Boolean.FALSE.equals(value) && !"false".equals(value);
            obs.setValueNumeric(booleanValue ? 1.0 : 0.0);
        } else if (dt.isDate()) {
            Date date = (Date) value;
            obs.setValueDatetime(date);
        } else if ("ZZ".equals(dt.getHl7Abbreviation())) {
            // don't set a value
        } else {
            throw new IllegalArgumentException("concept datatype not yet implemented: " + dt.getName() + " with Hl7 Abbreviation: " + dt.getHl7Abbreviation());
        }
        if (datetime != null)
            obs.setObsDatetime(datetime);
        if (accessionNumber != null)
            obs.setAccessionNumber(accessionNumber);
        return obs;
    }
    
    /**
     * Converts an xml string to a Document object
     * 
     * @param xml the xml string to convert
     * @return the resulting Document object
     * @throws Exception
     */
    public static Document stringToDocument(String xml) throws Exception {
    	try {
	        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	        DocumentBuilder db = dbf.newDocumentBuilder();
	        Document document = db.parse(new InputSource(new StringReader(xml)));
	        return document;
    	}
    	catch (Exception e) {
    		log.error("Error converting String to Document:\n" + xml);
    		throw e;
    	}
    }
    
    /**
     * Converts a Document object to an xml string
     * 
     * @param document the Document instance to convert
     * @return the resulting xml string
     * @throws Exception
     */
    public static String documentToString(Document document) throws Exception {
        //set up a transformer
        Transformer trans = null;
        
        // jmiranda - setting the transformer factory in order to assure that 
        // the XML is rendered correctly (the resolver was picking up 
        // net.sf.saxon.TransformerFactoryImpl as the transform factory class.
        // Setting the transform factory ensures that we instantiate the 
        // Sun transform factory which has been show
        System.setProperty("javax.xml.transform.TransformerFactory",  
                "com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl");
        
        TransformerFactory transfac = TransformerFactory.newInstance();
        
        try {
            trans = transfac.newTransformer();
        } catch (TransformerException te) {
            System.out.println(HtmlFormEntryConstants.ERROR_TRANSFORMER_1 + te); 
        }
        trans.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, HtmlFormEntryConstants.CONSTANT_YES);
        trans.setOutputProperty(OutputKeys.INDENT, HtmlFormEntryConstants.CONSTANT_YES);
        trans.setOutputProperty(OutputKeys.METHOD, HtmlFormEntryConstants.CONSTANT_XML);
        
        //create string from xml tree
        StringWriter sw = new StringWriter();
        StreamResult result = new StreamResult(sw);
        DOMSource source = new DOMSource(document);
        try {
            trans.transform(source, result);            
        } catch (TransformerException te) {
            System.out.println(HtmlFormEntryConstants.ERROR_TRANSFORMER_2 + te); 
        }
        String xmlString = sw.toString();
        
        return xmlString;
    }

    /** 
     * Retrieves a child Node by name
     * 
     * @param content the parent Node
     * @param name the name of the child Node
     * @return the child Node with the specified name
     */
    public static Node findChild(Node content, String name) {
        if (content == null)
            return null;
        NodeList children = content.getChildNodes();
        for (int i = 0; i < children.getLength(); ++i) {
            Node node = children.item(i);
            if (name.equals(node.getNodeName()))
                return node;
        }
        return null;
    }
    
    /**
     * Returns all the attributes associated with a Node
     * 
     * @param node the Node to retrieve attributes from
     * @return a Map containing all the attributes of the Node
     */
    public static Map<String, String> getNodeAttributes(Node node) {
    	Map<String, String> ret = new HashMap<String, String>();
        NamedNodeMap atts = node.getAttributes();
        for (int i=0; i<atts.getLength(); i++) {
            Node attribute = atts.item(i);
            ret.put(attribute.getNodeName(), attribute.getNodeValue());
        }
        return ret;
    }
    
    /**
     * Returns a specific attribute of a Node
     * 
     * @param node the Node to retrieve the attribute from
     * @param attributeName the name of the attribute to return
     * @param defaultVal a default value to return if the attribute is not specified for the selected Node
     * @return
     */
    public static String getNodeAttribute(Node node, String attributeName, String defaultVal) {
    	String ret = getNodeAttributes(node).get(attributeName);
    	return (ret == null ? defaultVal : ret);
    }

    /** Creates a non-persistent "Fake" Person (used when previewing or validating an HTML Form)
     * 
     * @return the "fake" person
     */
    public static Patient getFakePerson() {
        Patient demo = new Patient();
        demo.addName(new PersonName("Demo", "The", "Person"));
        Location l = Context.getLocationService().getAllLocations().iterator().next();
        for (PatientIdentifierType pit : Context.getPatientService().getAllPatientIdentifierTypes()) {
        	if (StringUtils.isEmpty(pit.getValidator())) {
        		demo.addIdentifier(new PatientIdentifier("Testing" + pit.getName() + "123", pit, l));
        	}
        }
        demo.setGender("f");
        {
	    	Calendar cal = Calendar.getInstance();
	    	cal.add(Calendar.YEAR, -31);
	        demo.setBirthdate(cal.getTime());
        }

        for (PersonAttributeType type : Context.getPersonService().getAllPersonAttributeTypes()) {
        	if (type.getFormat().equals("java.lang.String")) {
        		demo.addAttribute(new PersonAttribute(type, "Test "+type.getName()+" Attribute"));
        	}
        }
        PersonAddress addr = new PersonAddress();
        addr.setCityVillage("Rwinkwavu");
        addr.setCountyDistrict("Kayonza District");
        addr.setStateProvince("Eastern Province");
        addr.setCountry("Rwanda");
        demo.addAddress(addr);
        return demo;
    }

    /**
     * Combines a Date object that contains only a date component (day, month, year) with a Date object that contains
     * only a time component (hour, minute, second) into a single Date object
     * 
     * @param date the Date object that contains date information
     * @param time the Date object that contains time information
     * @return a Date object with the combined date/time
     */
	public static Date combineDateAndTime(Date date, Date time) {
		if (date == null)
			return null;
	    Calendar cal = Calendar.getInstance();
	    
	    cal.setTime(date);
	    if (time != null) {	    	
	    	Calendar temp = Calendar.getInstance();
	    	temp.setTime(time);
	    	cal.set(Calendar.HOUR_OF_DAY, temp.get(Calendar.HOUR_OF_DAY));
	    	cal.set(Calendar.MINUTE, temp.get(Calendar.MINUTE));
	    	cal.set(Calendar.SECOND, temp.get(Calendar.SECOND));
	    	cal.set(Calendar.MILLISECOND, temp.get(Calendar.MILLISECOND));
	    }
	    return cal.getTime();
    }
    
}
