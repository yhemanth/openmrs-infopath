package org.openmrs.module.htmlformentry.infopath;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.openmrs.module.htmlformentry.infopath.Converter;
import org.openmrs.module.htmlformentry.infopath.XDNamespaceContext;
import org.openmrs.module.htmlformentry.infopath.Rule;
import org.w3c.dom.Document;

public class InfopathConverterTest {

	private static final String TEST_INFOPATH_PAGE_XSL = "org/openmrs/module/htmlformentry/infopath/include/Page1.xsl";
	private static final String TEST_INFOPATH_PATIENT_ATTRIBUTES_XSL = "org/openmrs/module/htmlformentry/infopath/include/PatientAttributes.xsl";
	private static final String TEST_INFOPATH_PAGE2_XSL = "org/openmrs/module/htmlformentry/infopath/include/Page2.xsl";
	private XPath xpath;

	@Before
	public void setUp() {
		xpath = XPathFactory.newInstance().newXPath();
		xpath.setNamespaceContext(new XDNamespaceContext());
	}

	@Test
	public void shouldConvertXSLFilesToHTMLFormPageElement() throws Exception {
		Converter converter = new Converter(TEST_INFOPATH_PAGE_XSL);
		Document document = HtmlFormEntryUtil.stringToDocument(converter
				.toHTMLForm());
		Assert.assertEquals("Page1", xpath.evaluate("/htmlform/page/@title",
				document));
	}

	@Test
	public void shouldConvertMultipleXSLFilesToHTMLFormPages() throws Exception {
		Converter converter = new Converter(TEST_INFOPATH_PAGE_XSL,
				TEST_INFOPATH_PAGE2_XSL);
		Document document = HtmlFormEntryUtil.stringToDocument(converter
				.toHTMLForm());
		Assert.assertEquals("Page1", xpath.evaluate("/htmlform/page[1]/@title",
				document));
		Assert.assertEquals("Page2", xpath.evaluate("/htmlform/page[2]/@title",
				document));
	}

	@Test
	public void shouldConvertPatientToPatientLookup() throws Exception {
		Converter converter = new Converter(TEST_INFOPATH_PATIENT_ATTRIBUTES_XSL);

        String bindingName = "patient/patient.given_name";
        String query = "//span[@xd:binding='"+bindingName+"']";
        converter.addRule(new Rule(query,"<lookup expression=\"patient.personName.givenName\"></lookup>"));

        String htmlForm = converter.toHTMLForm();
        Assert.assertFalse("Should not contain : "+bindingName,htmlForm.contains(bindingName));
		Document document = HtmlFormEntryUtil.stringToDocument(converter
				.toHTMLForm());

		Assert.assertNotNull(xpath.evaluate(
				"//lookup[@expression='patient.personName.givenName']",
				document, XPathConstants.NODE));
	}

}
