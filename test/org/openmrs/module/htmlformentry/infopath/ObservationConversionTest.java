package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.junit.Ignore;
import org.w3c.dom.Document;

public class ObservationConversionTest extends AbstractConversionTest {

    @Test
    @Ignore
    public void shouldConvertCodedObservationWithSingleValueIntoOneObservationElement() throws Exception {
        String patientHospitalizedBinding = "obs/patient_hospitalized/value";
        String patientHospitalizedControl = "<div>" +
                "<input xd:binding=\"" + patientHospitalizedBinding + "\">" +
                    "<xsl:attribute name=\"xd:value\">" +
                    "<xsl:value-of select=\"obs/patient_hospitalized/value\"/>" +
                    "</xsl:attribute>" +
                    "<xsl:if test=\"obs/patient_hospitalized/value=&quot;1065^YES^99DCT&quot;\">" +
                    "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                    "</xsl:if>" +
                "</input>" +
                "</div>";

        Document testDocument = createTestDocument(patientHospitalizedControl);

        String convertedHtmlForm = convert(testDocument);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, patientHospitalizedBinding,
                "//obs[@conceptId=\"3389\" and @answerConceptIds=\"1065,1066\"]");
    }

    private String convert(Document testDocument) throws Exception {
        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules(new DummyConceptsDataSource());
        rules.add(new ObservationConversionRule());

        String convertedHtmlForm = pages.toHTMLForm(rules);
        return convertedHtmlForm;
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


        String convertedHtmlForm = convert(testDocument);

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


        String convertedHtmlForm = convert(testDocument);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, "TBD", "//obs[@conceptId=\\\"TBD\\\" and style=\"checkbox\"]");
    }

    @Test
    @Ignore
    public void shouldConvertFreeTextObservationsIntoTextAreaObservationElement() throws Exception {
        String relevantIntervalHistoryControl = "<div><font>" +
                "<span xd:binding=\"obs/history_of_present_illness/relevant_interval_history/value\">" +
                    "<xsl:value-of select=\"obs/history_of_present_illness/relevant_interval_history/value\"/>" +
                "</span>" +
                "</font></div>";

        Document testDocument = createTestDocument(relevantIntervalHistoryControl);

        String convertedHtmlForm = convert(testDocument);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\" style=\"textarea\"");
    }

    @Test
    @Ignore
    public void shouldConvertNumericObservationsIntoTextAreaObservationElement() throws Exception {
        String weightControl = "<div><font>Poids</font>" +
                "<span xd:binding=\"obs/physical_exam/vital_signs_construct/weight_kg/value\">" +
                    "<xsl:attribute name=\"xd:num\">" +
                    "<xsl:value-of select=\"obs/physical_exam/vital_signs_construct/weight_kg/value\"/>" +
                    "</xsl:attribute>" +
                    "<xsl:choose>" +
                    "<xsl:when test=\"function-available('xdFormatting:formatString')\">" +
                    "<xsl:value-of select=\"xdFormatting:formatString(obs/physical_exam/vital_signs_construct/weight_kg/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)\"/>" +
                    "</xsl:when>" +
                    "<xsl:otherwise>" +
                    "<xsl:value-of select=\"obs/physical_exam/vital_signs_construct/weight_kg/value\"/>" +
                    "</xsl:otherwise>" +
                    "</xsl:choose>" +
                "</span>" +
                "<font>kg</font></div>";

        Document testDocument = createTestDocument(weightControl);

        String convertedHtmlForm = convert(testDocument);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\"");
    }

    @Test
    @Ignore
    public void shouldConvertAbsoluteDateObservationsIntoTextAreObservationElement() throws Exception {
        String previousResultsDateControl = "<div>" +
                "<span xd:binding=\"obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value\">" +
                    "<xsl:attribute name=\"xd:num\">" +
                    "<xsl:value-of select=\"obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value\"/>" +
                    "</xsl:attribute>" +
                    "<xsl:choose>" +
                    "<xsl:when test=\"function-available('xdFormatting:formatString')\">" +
                    "<xsl:value-of select=\"xdFormatting:formatString(obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)\"/>" +
                    "</xsl:when>" +
                    "<xsl:otherwise>" +
                    "<xsl:value-of select=\"obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value\"/>" +
                    "</xsl:otherwise>" +
                    "</xsl:choose>" +
                "</span>" +
                "<button class=\"xdDTButton\" xd:xctname=\"DTPicker_DTButton\" xd:innerCtrl=\"_DTButton\" tabIndex=\"-1\">" +
                    "<img src=\"res://infopath.exe/calendar.gif\"/>" +
                "</button>" +
                "</div>";

        Document testDocument = createTestDocument(previousResultsDateControl);
        String convertedHtmlForm = convert(testDocument);
        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(convertedHtmlForm, "TBD", "//obs[@conceptId=\"TBD\"");
    }
}
