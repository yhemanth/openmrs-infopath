package org.openmrs.module.htmlformentry.infopath;

import junit.framework.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.w3c.dom.Document;

import javax.xml.xpath.XPath;

public class InfopathConverterTest {

    private static final String TEST_INFOPATH_PAGE_XSL = "org/openmrs/module/htmlformentry/infopath/include/Page1.xsl";
    private static final String TEST_INFOPATH_PATIENT_ATTRIBUTES_XSL =
            "org/openmrs/module/htmlformentry/infopath/include/PatientAttributes.xsl";
    private static final String TEST_INFOPATH_ENCOUNTER_ATTRIBUTES_XSL =
            "org/openmrs/module/htmlformentry/infopath/include/EncounterAttributes.xsl";
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

        String patientMedicalRecordNumber = "patient/patient.medical_record_number";
        String patientIdLookupAttribute = "patient.patientIdentifier.identifier";
        converter.addRule(new SimpleRule(patientMedicalRecordNumber, formLookupExpression(patientIdLookupAttribute)));

        String patientGivenName = "patient/patient.given_name";
        String givenNameLookupAttribute = "patient.personName.givenName";
        converter.addRule(new SimpleRule(patientGivenName, formLookupExpression(givenNameLookupAttribute)));

        String patientFamilyName = "patient/patient.family_name";
        String familyNameLookupAttribute = "patient.personName.familyName";
        converter.addRule(new SimpleRule(patientFamilyName, formLookupExpression(familyNameLookupAttribute)));

        String htmlForm = converter.toHTMLForm();

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, patientMedicalRecordNumber,
                "//lookup[@expression='"+patientIdLookupAttribute+"']");
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, patientGivenName,
                "//lookup[@expression='"+givenNameLookupAttribute+"']");
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, patientFamilyName,
                "//lookup[@expression='"+familyNameLookupAttribute+"']");
    }

    @Test
    public void shouldConvertEncounterBindingsToEncounterElements() throws Exception {
        Converter converter = new Converter(TEST_INFOPATH_ENCOUNTER_ATTRIBUTES_XSL);

        String dateBinding = "encounter/encounter.encounter_datetime";
        converter.addRule(new SimpleRule(dateBinding, "<encounterDate/>"));
        String locationBinding = "encounter/encounter.location_id";
        converter.addRule(new MultiValuedBindingRule(
                locationBinding, "xd:onValue", "<encounterLocation />", "order"));

        String htmlForm = converter.toHTMLForm();
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, dateBinding, "//encounterDate");
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                htmlForm, locationBinding, "//encounterLocation", "order", "30,27,28");
    }

    private String formLookupExpression(String lookupAttribute) {
        return "<lookup expression=\"" + lookupAttribute + "\"></lookup>";
    }

}
