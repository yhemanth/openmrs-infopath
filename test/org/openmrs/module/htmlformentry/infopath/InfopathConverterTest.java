package org.openmrs.module.htmlformentry.infopath;

import junit.framework.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.w3c.dom.Document;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

public class InfopathConverterTest {

    private static final String TEST_INFOPATH_PAGE_XSL = "org/openmrs/module/htmlformentry/infopath/include/Page1.xsl";
    private static final String TEST_INFOPATH_PATIENT_ATTRIBUTES_XSL = "org/openmrs/module/htmlformentry/infopath/include/PatientAttributes.xsl";
    private static final String TEST_INFOPATH_PAGE2_XSL = "org/openmrs/module/htmlformentry/infopath/include/Page2.xsl";
    private XPath xpath;

    @Before
    public void setUp() {
        xpath = XPathUtils.createXPath();
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

        String patientGivenName = "patient/patient.given_name";
        converter.addRule(new Rule(patientGivenName, "<lookup expression=\"patient.personName.givenName\"></lookup>"));
        String patientFamilyName = "patient/patient.family_name";
        converter
                .addRule(new Rule(patientFamilyName, "<lookup expression=\"patient.personName.familyName\"></lookup>"));

        String htmlForm = converter.toHTMLForm();

        InfopathConverterAssert.assertControlReplaced(patientGivenName, htmlForm, xpath,
                "//lookup[@expression='patient.personName.givenName']");
        InfopathConverterAssert.assertControlReplaced(patientFamilyName, htmlForm, xpath,
                "//lookup[@expression='patient.personName.familyName']");
    }

}
