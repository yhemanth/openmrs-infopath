package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.w3c.dom.Document;

public class HtmlFormSanitizerTest extends AbstractConversionTest {

    @Test
    public void shouldRemoveXslElements() throws Exception {
         String convertedInfoPathXml = "<div>" +
                 "<font size=\"2\">" +
                 "<font face=\"Arial\">Form completed today by: </font>" +
                 "<encounterProvider/>" +
                 "<font face=\"Arial\">  </font>" +
                 "<font face=\"Arial\"><span class=\"xdExpressionBox xdDataBindingUI\" title=\"\" tabIndex=\"-1\" xd:disableEditing=\"yes\" xd:xctname=\"ExpressionBox\" xd:CtrlId=\"CTRL121\">" +
                 "<xsl:attribute name=\"style\">WIDTH: 172px; FONT-FAMILY: Arial; COLOR: #ffffff; FONT-SIZE: medium; FONT-WEIGHT: bold;<xsl:choose>" +
                 "<xsl:when test=\"encounter/encounter.provider_id = &quot;&quot;\">COLOR: #ff0000</xsl:when>" +
                 "</xsl:choose>" +
                 "</xsl:attribute>" +
                 "<xsl:value-of select=\"&quot;*&quot;\"/>" +
                 "</span>" +
                 "</font><input style=\"FONT-FAMILY: Arial\" class=\"langFont\" title=\"\" value=\"&lt;- Select Provider\" type=\"button\" xd:xctname=\"Button\" xd:CtrlId=\"SelectProvider\" tabIndex=\"0\"/>" +
                 "</font>" +
                 "<font size=\"2\" face=\"Arial\"></font>" +
                 "</div>";

        Document testDocument = createTestDocument(convertedInfoPathXml);

        Pages pages = new Pages();
        pages.add(new Page(testDocument, "Page1"));

        Rules rules = new Rules(new DummyConceptsDataSource());

        String convertedHtmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertElementDoesNotExist(convertedHtmlForm,"//xsl:*");
    }
}
