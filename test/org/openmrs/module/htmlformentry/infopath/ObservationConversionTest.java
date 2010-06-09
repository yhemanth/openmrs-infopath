package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.junit.Ignore;
import org.w3c.dom.Document;

public class ObservationConversionTest {

    @Test
    @Ignore
    public void shouldConvertObservationCheckBoxBinding() throws Exception {
        String observationCheckBoxControl = "<div><input class=\"xdBehavior_Boolean\" title=\"\" type=\"checkbox\" tabIndex=\"0\" xd:binding=\"obs/patient_hospitalized/value\" xd:xctname=\"CheckBox\" xd:CtrlId=\"CTRL1375\" xd:boundProp=\"xd:value\" xd:fixed=\"TRUE\" xd:offValue=\"1066^NO^99DCT\" xd:onValue=\"1065^YES^99DCT\">\n" +
                "<xsl:attribute name=\"xd:value\">\n" +
                "<xsl:value-of select=\"obs/patient_hospitalized/value\"/>\n" +
                "</xsl:attribute>\n" +
                "<xsl:if test=\"obs/patient_hospitalized/value=&quot;1065^YES^99DCT&quot;\">\n" +
                "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>\n" +
                "</xsl:if>\n" +
                "</input>\n" +
                "<span>\n" +
                "<font size=\"1\" face=\"Arial\">patient est hospitalisé/ <font style=\"FONT-SIZE: 8pt\" color=\"#808080\">\n" +
                "<strong>\n" +
                "<em>patient is hospitalized </em>\n" +
                "</strong>\n" +
                "</font>\n" +
                "</font>\n" +
                "</span>\n" +
                "</div>";

        Document testDocument = new PatientConversionTest().createTestDocument(observationCheckBoxControl);

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new ObservationConversionRule());

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\" and @answerConceptIds=\"TBD\"]");
    }

}
