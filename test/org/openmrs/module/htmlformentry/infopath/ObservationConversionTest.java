package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.junit.Ignore;
import org.w3c.dom.Document;

public class ObservationConversionTest extends AbstractConversionTest {

    @Test
    @Ignore
    public void shouldConvertCodedObservationWithSingleValueIntoOneObservationElement() throws Exception {
        String patientHospitalizedControl = "<div><input class=\"xdBehavior_Boolean\" title=\"\" type=\"checkbox\" tabIndex=\"0\" xd:binding=\"obs/patient_hospitalized/value\" xd:xctname=\"CheckBox\" xd:CtrlId=\"CTRL1375\" xd:boundProp=\"xd:value\" xd:fixed=\"TRUE\" xd:offValue=\"1066^NO^99DCT\" xd:onValue=\"1065^YES^99DCT\">" +
                "<xsl:attribute name=\"xd:value\">" +
                "<xsl:value-of select=\"obs/patient_hospitalized/value\"/>" +
                "</xsl:attribute>" +
                "<xsl:if test=\"obs/patient_hospitalized/value=&quot;1065^YES^99DCT&quot;\">" +
                "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                "</xsl:if>" +
                "</input>" +
                "<span>" +
                "<font size=\"1\" face=\"Arial\">patient est hospitalisé/ <font style=\"FONT-SIZE: 8pt\" color=\"#808080\">" +
                "<strong>" +
                "<em>patient is hospitalized </em>" +
                "</strong>" +
                "</font>" +
                "</font>" +
                "</span>" +
                "</div>";

        Document testDocument = createTestDocument(patientHospitalizedControl);

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new ObservationConversionRule());

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\" and @answerConceptIds=\"TBD\"]");
    }

    @Test
    @Ignore
    public void shouldConvertCodedObservationWithMultipleValuesIntoMultipleObservationElements() throws Exception {
        String generalExamFindingsControl =
                "<tr>" +
                "<td><div>" +
                    "<font><input xd:binding=\"obs/physical_exam/general_exam_construct/general_exam_findings/well_appearing\">" +
                        "<xsl:attribute name=\"xd:value\">" +
                        "<xsl:value-of select=\"obs/physical_exam/general_exam_construct/general_exam_findings/well_appearing\"/>" +
                        "</xsl:attribute>" +
                        "<xsl:if test=\"obs/physical_exam/general_exam_construct/general_exam_findings/well_appearing=&quot;true&quot;\">" +
                        "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                        "</xsl:if>" +
                    "</input>bonne apparence/ </font>" +
                    "<font><em>well appearing</em></font>" +
                "</div></td>" +
                "<td><div>" +
                "<input xd:binding=\"obs/physical_exam/general_exam_construct/general_exam_findings/cachectic\">" +
                    "<xsl:attribute name=\"xd:value\">" +
                    "<xsl:value-of select=\"obs/physical_exam/general_exam_construct/general_exam_findings/cachectic\"/>" +
                    "</xsl:attribute>" +
                    "<xsl:if test=\"obs/physical_exam/general_exam_construct/general_exam_findings/cachectic=&quot;true&quot;\">" +
                    "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                    "</xsl:if>" +
                "</input>cachectique/" +
                "<font><em> cachectic </em></font>" +
                "<input xd:binding=\"obs/physical_exam/general_exam_construct/general_exam_findings/obese\">" +
                    "<xsl:attribute name=\"xd:value\">" +
                    "<xsl:value-of select=\"obs/physical_exam/general_exam_construct/general_exam_findings/obese\"/>" +
                    "</xsl:attribute>" +
                    "<xsl:if test=\"obs/physical_exam/general_exam_construct/general_exam_findings/obese=&quot;true&quot;\">" +
                    "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                    "</xsl:if>" +
                "</input>obèse/" +
                "<font><em> obese</em>" +
                "</div></td>" +
                "</tr>";

        Document testDocument = createTestDocument(generalExamFindingsControl);


        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new ObservationConversionRule());

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\" and @answerConceptIds=\"TBD_well_appearing\"]");
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\" and @answerConceptIds=\"TBD_cachectic\"]");
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\" and @answerConceptIds=\"TBD_obese\"]");
    }

    @Test
    @Ignore
    public void shouldConvertBooleanValuedObservationIntoCheckboxObservationElement() throws Exception {
        String historyOfPresentIllnessControl = "<div>" +
                "<em> <input xd:binding=\"obs/history_of_present_illness/history_of_present_illness_duplicated_on_another_form/value\">" +
                    "<xsl:attribute name=\"xd:value\">" +
                    "<xsl:value-of select=\"obs/history_of_present_illness/history_of_present_illness_duplicated_on_another_form/value\"/>" +
                    "</xsl:attribute>" +
                    "<xsl:if test=\"obs/history_of_present_illness/history_of_present_illness_duplicated_on_another_form/value=&quot;true&quot;\">" +
                    "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                    "</xsl:if>" +
                "</input></em>" +
                "<em>Same as DDB</em>" +
                "</div>";
        
        Document testDocument = createTestDocument(historyOfPresentIllnessControl);


        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new ObservationConversionRule());

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, "TBD", "//obs[@conceptId=\\\"TBD\\\" and style=\"checkbox\"]");
    }
}
