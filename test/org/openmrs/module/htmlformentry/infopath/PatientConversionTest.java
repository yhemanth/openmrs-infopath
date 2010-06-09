package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import java.io.ByteArrayInputStream;
import java.io.IOException;

import javax.xml.parsers.ParserConfigurationException;

public class PatientConversionTest extends AbstractConversionTest {

    @Test
    public void shouldReplacePatientNameWithLookup() throws Exception {

        Document xslDocument = createTestDocument("<span class=\"xdTextBox\" xd:binding=\"patient/patient.given_name\" " +
                "xd:CtrlId=\"CTRL5\">" +
                "<xsl:value-of select=\"patient/patient.given_name\"/>" +
                "</span>");

        Pages pages = new Pages();
        pages.add(new Page(xslDocument, "Page1"));

        Rules rules = new Rules();
        String patientGivenName = "patient/patient.given_name";
        rules.add(new SimpleRule(patientGivenName, "<lookup expression=\"patient.personName.givenName\"></lookup>"));

        String htmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, patientGivenName,
                "//lookup[@expression='patient.personName.givenName']");
    }

}
