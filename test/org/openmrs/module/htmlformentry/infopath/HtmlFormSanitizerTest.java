package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.junit.Ignore;
import org.w3c.dom.Document;

public class HtmlFormSanitizerTest {

    @Test
    @Ignore
    public void shouldRemoveXslElements() throws Exception {
         String encounterProviderControl = "<div>\n" +
                 "<font size=\"2\">\n" +
                 "<font face=\"Arial\">Form completed today by: </font>" +
                 "<encounterProvider/>" +
                 "<font face=\"Arial\">  </font>\n" +
                 "<font face=\"Arial\"><span class=\"xdExpressionBox xdDataBindingUI\" title=\"\" tabIndex=\"-1\" xd:disableEditing=\"yes\" xd:xctname=\"ExpressionBox\" xd:CtrlId=\"CTRL121\">\n" +
                 "<xsl:attribute name=\"style\">WIDTH: 172px; FONT-FAMILY: Arial; COLOR: #ffffff; FONT-SIZE: medium; FONT-WEIGHT: bold;<xsl:choose>\n" +
                 "<xsl:when test=\"encounter/encounter.provider_id = &quot;&quot;\">COLOR: #ff0000</xsl:when>\n" +
                 "</xsl:choose>\n" +
                 "</xsl:attribute>\n" +
                 "<xsl:value-of select=\"&quot;*&quot;\"/>\n" +
                 "</span>\n" +
                 "</font><input style=\"FONT-FAMILY: Arial\" class=\"langFont\" title=\"\" value=\"&lt;- Select Provider\" type=\"button\" xd:xctname=\"Button\" xd:CtrlId=\"SelectProvider\" tabIndex=\"0\"/>\n" +
                 "</font>\n" +
                 "<font size=\"2\" face=\"Arial\"></font>\n" +
                 "</div>";

        Document testDocument = new PageTest().createTestDocument(encounterProviderControl);

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules();
        rules.add(new SanitizerRule());

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertElementDoesNotExist(convertedHtmlForm,"//xsl*");
    }
}
