package org.openmrs.module.htmlformentry;

import java.io.ByteArrayInputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.openmrs.module.htmlformentry.handler.IteratingTagHandler;
import org.openmrs.module.htmlformentry.handler.TagHandler;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Provides methods to take a {@code <htmlform>...</htmlform>} xml block and turns it into HTML to be displayed as a form in
 * a web browser. It can apply the {@code <macros>...</macros>} section, and replace tags like {@code <obs/>}.
 * 
 */
public class HtmlFormEntryGenerator implements TagHandler {
        
    /**
     * Takes an XML string, finds the {@code <macros></macros>} section in it, and applies those substitutions
     * <p>
     * For example the following input:
     * <pre>
     * {@code
     * <htmlform>
     *     <macros>
     *          count=1, 2, 3
     *     </macros>
     *     You can count like $count
     * </htmlform>
     * }
     * </pre>
     * <p>
     * Would produce the following output:
     * <pre>
     * {@code
     * <htmlform>
     *     You can count like 1, 2, 3
     * </htmlform>
     * }
     * </pre>
     * 
     * @param xml the xml string to process for macros
     * @return the xml string with after macro substitution
     * @throws Exception 
     */
    public String applyMacros(String xml) throws Exception {
        Document doc = HtmlFormEntryUtil.stringToDocument(xml);
        Node content = HtmlFormEntryUtil.findChild(doc, "htmlform");
        Node macrosNode = HtmlFormEntryUtil.findChild(content, "macros");

        // if there are no macros defined, we just return the original xml unchanged
        if (macrosNode == null)
            return xml;
               
        // otherwise get its contents
        Properties macros = new Properties();
        String macrosText = macrosNode.getTextContent();
        if (macrosText != null) {
            macros.load(new ByteArrayInputStream(macrosText.getBytes()));
            //macros.load(new StringReader(macrosText));
        }
        
        // now remove the macros node
        content.removeChild(macrosNode);
        
        // switch back to String mode from the document so we can use string utilities to substitute
        xml = HtmlFormEntryUtil.documentToString(doc);

        // substitute any macros we found
        for (Object temp : macros.keySet()) {
            String key = (String) temp;
            String value = macros.getProperty(key, "");
            xml = xml.replace("$" + key, value);
        }

        return xml;
    }
    
    /**
     * Takes an XML string, finds the {@code <translations></translations>} section in it, and applies those substitutions
     * 
     * <pre>
     * {@code
     * <htmlform>
     *     <translations defaultLocale="en">
     *       <code name="night_sweats">
     *         <variant locale="en" value="night sweats"/>
     *         <variant locale="fr" value="sueurs nocturnes"/>
     * 		  </code>
     *     </translations>
     * </htmlform>
     * }
     * </pre>
     * 
     * @param xml the xml string to process for translations
     * @return the xml string after translation substitutions have been made
     * @throws Exception 
     */
    public String applyTranslations(String xml, FormEntryContext context) throws Exception {
        Document doc = HtmlFormEntryUtil.stringToDocument(xml);
        Node content = HtmlFormEntryUtil.findChild(doc, "htmlform");
        Node transNode = HtmlFormEntryUtil.findChild(content, "translations");

        // if there are no translations defined, we just return the original xml unchanged
        if (transNode == null) {
            return xml;
        }
        
        String defaultLocaleStr = HtmlFormEntryUtil.getNodeAttribute(transNode, "defaultLocale", "en");

        NodeList codeNodeList = transNode.getChildNodes();
        for (int i=0; i<codeNodeList.getLength(); i++) {
        	Node codeNode = codeNodeList.item(i);
        	if (codeNode.getNodeName().equalsIgnoreCase("code")) {
        		String codeName = HtmlFormEntryUtil.getNodeAttribute(codeNode, "name", null);
	        	if (codeName == null) {
	        		throw new IllegalArgumentException("All translation elements must contain a valid code name");
	        	}
	            NodeList variantNodeList = codeNode.getChildNodes();
	            for (int j=0; j<variantNodeList.getLength(); ++j) {
	            	Node variantNode = variantNodeList.item(j);
	            	if (variantNode.getNodeName().equalsIgnoreCase("variant")) {
		            	String localeStr = HtmlFormEntryUtil.getNodeAttribute(variantNode, "locale", defaultLocaleStr);
		            	String valueStr = HtmlFormEntryUtil.getNodeAttribute(variantNode, "value", null);
		            	if (valueStr == null) {
		            		throw new IllegalArgumentException("All variants must specify a value");
		            	}
		            	context.getTranslator().addTranslation(localeStr, codeName, valueStr);
	            	}
	            }
        	}
        }
        
        // now remove the macros node
        content.removeChild(transNode);
        
        // switch back to String mode from the document so we can use string utilities to substitute
        xml = HtmlFormEntryUtil.documentToString(doc);
        return xml;
    }
    
    /**
     * Takes an XML string, finds each {@code <repeat></repeat>} section in it, and applies those substitutions
     * <p>
     * <pre>
     * {@code
     * <htmlform>
     *   <repeat>
     *     <template>
     *       <obsgroup groupingConceptId="1608">
     *         <tr>
     *           <td><obs conceptId="1611" answerConceptId="{conceptId}" answerLabel="{answerLabel}" /></td>
     *           <td><obs conceptId="1499"/></td>
     *           <td><obs conceptId="1500"/></td>
     *           <td><obs conceptId="1568" answerConceptIds="1746,843,1743" answerLabels="gueri,echec,abandonne"/></td>
     *         </tr>
     *       </obsgroup>
     *     </template>
     *     <render conceptId="2125" answerLabel="Traitement initial: 2 HRZE/4 HR"/>
     *     <render conceptId="2125" answerLabel="Traitement initial: 2 HRE/6HE (MSPP)"/>
     *     <render conceptId="2126" answerLabel="Retraitement: 2 SHREZ + 1 HREX + 5 HRE"/>
     *     <render conceptId="2124" answerLabel="Traitement des enfants de &lt; ans: 2 HRZ/4 HR"/>
     *   </repeat>
     * </htmlform>
     * }
     * </pre>
     * 
     * @param xml the xml string to process for repeat sections
     * @return the xml string after repeat substitutions have been made
     * @throws Exception 
     */
    public String applyTemplates(String xml) throws Exception {
        Document doc = HtmlFormEntryUtil.stringToDocument(xml);
        Node content = HtmlFormEntryUtil.findChild(doc, "htmlform");
        
        // We are doing this as follows since I can't seem to get the XML node cloning to work right.
        // We can refactor later as needed if we can get it to work properly, or replace the xml library
        // First we need to parse the document to get the node attributes for repeating elements
        List<List<Map<String, String>>> renderMaps = new ArrayList<List<Map<String, String>>>();
        loadRenderElementsForEachRepeatElement(content, renderMaps);
        
        // Now we are just going to use String replacements to explode the repeat tags properly
        Iterator<List<Map<String, String>>> renderMapIter = renderMaps.iterator();
        while (xml.contains("<repeat>")) {
        	int startIndex = xml.indexOf("<repeat>");
        	int endIndex = xml.indexOf("</repeat>") + 9;
        	String xmlToReplace = xml.substring(startIndex, endIndex);
        	String template = xmlToReplace.substring(xmlToReplace.indexOf("<template>")+10, xmlToReplace.indexOf("</template>"));
        	StringBuilder replacement = new StringBuilder();
        	for (Map<String, String> replacements : renderMapIter.next()) {
        		String curr = template;
        		for (String key : replacements.keySet()) {
        			curr = curr.replace("{"+key+"}", replacements.get(key));
        		}
        		replacement.append(curr);
        	}
        	xml = xml.substring(0, startIndex) + replacement + xml.substring(endIndex);
        }
        
        return xml;
    }
    
    private void loadRenderElementsForEachRepeatElement(Node node, List<List<Map<String, String>>> renderMaps) throws Exception {
    	
        NodeList list = node.getChildNodes();
        for (int i=0; i<list.getLength(); i++) {
        	Node n = list.item(i);
        	if (n.getNodeName().equalsIgnoreCase("repeat")) {
        		Node templateNode = HtmlFormEntryUtil.findChild(n, "template");
	        	if (templateNode == null) {
	        		throw new IllegalArgumentException("All <repeat> elements must contain a child <template> element.");
	        	}
	        	List<Map<String, String>> l = new ArrayList<Map<String, String>>();
	        	NodeList repeatNodes = n.getChildNodes();
	        	for (int j=0; j<repeatNodes.getLength(); j++) {
	        		Node renderNode = repeatNodes.item(j);
	        		if (renderNode.getNodeName().equalsIgnoreCase("render")) {
	        			l.add(HtmlFormEntryUtil.getNodeAttributes(renderNode));
	        		}
	        	}
	        	renderMaps.add(l);
        	}
        	else {
        		loadRenderElementsForEachRepeatElement(n, renderMaps);
        	}
        }
    }
    
    /** 
     * Applies all the HTML Form Entry tags in a specific XML file 
     * (excluding {@code <macro>, <translations>, and <repeat>)}, by calling the appropriate
     * tag handler (see {@see org.openmrs.module.htmlformentry.handler}) for each tag
     * <p>
     * @param session the current form entry session context
     * @param xml the xml string to process
     * @return the xml string (which should now be html) after tag processing
     * @throws Exception
     */
    public String applyTags(FormEntrySession session, String xml) throws Exception {
        Document doc = HtmlFormEntryUtil.stringToDocument(xml);
        StringWriter out = new StringWriter();
        applyTagsHelper(session, new PrintWriter(out), null, doc);
        return out.toString();
    }

    private void applyTagsHelper(FormEntrySession session, PrintWriter out, Node parent, Node node) {
        TagHandler handler = null;
        // Find the handler for this node
        {
            String name = node.getNodeName();
            if (name != null) {
                handler = HtmlFormEntryUtil.getService().getHandlerByTagName(name);
            }
        }
        
        if (handler == null)
            handler = this; // do default actions

        boolean handleContents = handler.doStartTag(session, out, parent, node);
       
        // Unless the handler told us to skip them, then iterate over any children
        if (handleContents) {
            if (handler != null && handler instanceof IteratingTagHandler) {
                // recurse as many times as the tag wants
                IteratingTagHandler iteratingHandler = (IteratingTagHandler) handler;
                while (iteratingHandler.shouldRunAgain(session, out, parent, node)) {
                    NodeList list = node.getChildNodes();
                    for (int i = 0; i < list.getLength(); ++i) {
                        applyTagsHelper(session, out, node, list.item(i));
                    }
                }
                
            } else { // recurse to contents once
                NodeList list = node.getChildNodes();
                for (int i = 0; i < list.getLength(); ++i) {
                    applyTagsHelper(session, out, node, list.item(i));
                }
            }
        }
        
        handler.doEndTag(session, out, parent, node);
    }

    /** Provides default start tag handling for tags with no custom handler
     * <p>
     * Default behavior is simply to leave the tag unprocessed. That is, any basic HTML
     * tags are left as is.
     */
    public boolean doStartTag(FormEntrySession session, PrintWriter out,
            Node parent, Node node) {
        if (node.getNodeType() == Node.TEXT_NODE) {
            out.print(node.getNodeValue());
        } else if (node.getNodeType() == Node.COMMENT_NODE) {
            // do nothing
        } else {
            out.print("<");
            out.print(node.getNodeName());
            NamedNodeMap attrs = node.getAttributes();
            if (attrs != null) {
                for (int i = 0; i < attrs.getLength(); ++i) {
                    Node attr = attrs.item(i);
                    out.print(" ");
                    out.print(attr.getNodeName());
                    out.print("=\"");
                    out.print(attr.getNodeValue());
                    out.print("\"");
                }
            }
            out.print(">");
        }
        return true;
    }

    /** Provides default end tag handling for tags with no custom handler
     * <p>
     * Default behavior is simply to leave the tag unprocessed. That is, any basic HTML
     * tags are left as is.
     */
    public void doEndTag(FormEntrySession session, PrintWriter out,
            Node parent, Node node) {
        if (node.getNodeType() == Node.TEXT_NODE) {
            // do nothing
        } else if (node.getNodeType() == Node.COMMENT_NODE) {
            // do nothing
        } else {
            out.print("</" + node.getNodeName() + ">");
        }
    }

}
