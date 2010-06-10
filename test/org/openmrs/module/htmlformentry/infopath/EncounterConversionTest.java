package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.junit.Test;
import org.junit.Ignore;

public class EncounterConversionTest extends AbstractConversionTest {

    @Test
    public void shouldReplaceEncounterDateBindingWithEncounterDateElement() throws Exception {
        Document testDocument = createTestDocument("<span class=\"xdDTText xdBehavior_GTFormattingNoBUI\" " +
                "xd:binding=\"encounter/encounter.encounter_datetime\" xd:xctname=\"DTPicker_DTText\" >" +
                "<xsl:attribute name=\"xd:num\">" +
                "<xsl:value-of select=\"encounter/encounter.encounter_datetime\"/>" +
                "</xsl:attribute>" +
                "<xsl:choose>" +
                "<xsl:when test=\"not(string(encounter/encounter.encounter_datetime))\">" +
                "<xsl:attribute name=\"xd:ghosted\">true</xsl:attribute>Click -&gt;</xsl:when>" +
                "<xsl:when test=\"function-available('xdFormatting:formatString')\">" +
                "<xsl:value-of select=\"xdFormatting:formatString(encounter/encounter.encounter_datetime,&quot;datetime&quot;,&quot;dateFormat:dd MMMM, yyyy;timeFormat:none;&quot;)\"/>" +
                "</xsl:when>" +
                "<xsl:otherwise>" +
                "<xsl:value-of select=\"encounter/encounter.encounter_datetime\"/>" +
                "</xsl:otherwise>" +
                "</xsl:choose>" +
                "</span>");

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1.xsl"));

        Rules rules = new Rules();
        String bindingName = "encounter/encounter.encounter_datetime";
        rules.add(new SimpleRule(bindingName, "<encounterDate />"));

        String htmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, bindingName, "//encounterDate");
    }

    @Test
    public void shouldReplaceEncounterLocationBindingsWithEncounterLocationElement() throws Exception {
        String locationRusumo =
                "<em><input class=\"xdBehavior_Boolean\" name=\"{generate-id(encounter/encounter.location_id)}\" " +
                "xd:binding=\"encounter/encounter.location_id\" xd:xctname=\"OptionButton\" xd:onValue=\"30\">" +
                "<xsl:attribute name=\"xd:value\">" +
                "<xsl:value-of select=\"encounter/encounter.location_id\"/>" +
                "</xsl:attribute>" +
                "<xsl:if test=\"encounter/encounter.location_id=&quot;30&quot;\">" +
                "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                "</xsl:if>" +
                "</input>" +
                "</em>" +
                "<font face=\"Arial\">Rusumo </font>";

        String locationMulundi =
                "<em>" +
                "<strong><input class=\"xdBehavior_Boolean\" name=\"{generate-id(encounter/encounter.location_id)}\" " +
                "xd:binding=\"encounter/encounter.location_id\" xd:onValue=\"27\">" +
                "<xsl:attribute name=\"xd:value\">" +
                "<xsl:value-of select=\"encounter/encounter.location_id\"/>" +
                "</xsl:attribute>" +
                "<xsl:if test=\"encounter/encounter.location_id=&quot;27&quot;\">" +
                "<xsl:attribute name=\"CHECKED\">CHECKED</xsl:attribute>" +
                "</xsl:if>" +
                "</input>" +
                "</strong>" +
                "</em>" +
                "<font face=\"Arial\">Mulindi        </font>";

        Document testDocument = createTestDocument("<div>" + locationRusumo + locationMulundi + "</div>");

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        String encounterLocationBinding = "encounter/encounter.location_id";
        rules.add(new MultiValuedBindingRule(encounterLocationBinding, "xd:onValue",
                        "<encounterLocation />", "order"));

        String htmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(htmlForm, encounterLocationBinding,
                "//encounterLocation", "order", "30,27");

    }

    @Test
    public void shouldConvertEncounterProvider() throws Exception {

        String encounterProviderName = "encounter/encounter.provider_id";
        String encounterProviderControl = "<div><font>Form completed today by: </font>" +
                "<span xd:binding=\"substring-after(" + encounterProviderName + ", &quot;^&quot;)\">" +
                    "<xsl:value-of select=\"substring-after(encounter/encounter.provider_id, &quot;^&quot;)\"/>" +
                "</span>" +
                "</div>";

        Document testDocument = new PatientConversionTest().createTestDocument(encounterProviderControl);

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new SimpleRule(encounterProviderName, "<encounterProvider/>"));

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(
                convertedHtmlForm, encounterProviderName, "//encounterProvider");
    }
}
