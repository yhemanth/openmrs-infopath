package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.junit.Test;
import org.junit.Ignore;

public class EncounterConversionTest {

    @Test
    @Ignore
    public void shouldConvertEncounterProvider() throws Exception {

        String encounterProviderControl = "<div>\n" +
                "<font size=\"2\">\n" +
                "<font face=\"Arial\">Form completed today by: </font><span class=\"xdExpressionBox xdDataBindingUI\" title=\"\" tabIndex=\"-1\" xd:disableEditing=\"yes\" xd:binding=\"substring-after(encounter/encounter.provider_id, &quot;^&quot;)\" xd:xctname=\"ExpressionBox\" xd:CtrlId=\"CTRL120\" style=\"WIDTH: 369px; FONT-FAMILY: Arial; FONT-SIZE: medium; FONT-WEIGHT: bold\">\n" +
                "<xsl:value-of select=\"substring-after(encounter/encounter.provider_id, &quot;^&quot;)\"/>\n" +
                "</span>\n" +
                "</font>\n" +
                "</div>";

        Document testDocument = new PageTest().createTestDocument(encounterProviderControl);

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new SimpleRule("TBD", "<encounterProvider/>"));

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertBindingReplacedWithHtmlFormElement(convertedHtmlForm, "TBD", "//encounterProvider");
    }
}
