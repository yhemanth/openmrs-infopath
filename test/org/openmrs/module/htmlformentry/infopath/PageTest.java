package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.w3c.dom.Document;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.xml.sax.SAXException;

import java.io.ByteArrayInputStream;
import java.io.IOException;

import junit.framework.Assert;

import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPath;
import javax.xml.parsers.ParserConfigurationException;

public class PageTest {
    private static final String HEADER = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
            "<xsl:stylesheet version=\"1.0\" xmlns:xsf2=\"http://schemas.microsoft.com/office/infopath/2006/solutionDefinition/extensions\" xmlns:xdEnvironment=\"http://schemas.microsoft.com/office/infopath/2006/xslt/environment\" xmlns:xdUser=\"http://schemas.microsoft.com/office/infopath/2006/xslt/User\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:openmrs=\"http://staging.pih-emr.org:8080/openmrs/moduleServlet/formentry/forms/schema/112-92\" xmlns:my=\"http://schemas.microsoft.com/office/infopath/2003/myXSD/2006-07-25T11:22:21\" xmlns:xd=\"http://schemas.microsoft.com/office/infopath/2003\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" xmlns:msxsl=\"urn:schemas-microsoft-com:xslt\" xmlns:x=\"urn:schemas-microsoft-com:office:excel\" xmlns:xdExtension=\"http://schemas.microsoft.com/office/infopath/2003/xslt/extension\" xmlns:xdXDocument=\"http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument\" xmlns:xdSolution=\"http://schemas.microsoft.com/office/infopath/2003/xslt/solution\" xmlns:xdFormatting=\"http://schemas.microsoft.com/office/infopath/2003/xslt/formatting\" xmlns:xdImage=\"http://schemas.microsoft.com/office/infopath/2003/xslt/xImage\" xmlns:xdUtil=\"http://schemas.microsoft.com/office/infopath/2003/xslt/Util\" xmlns:xdMath=\"http://schemas.microsoft.com/office/infopath/2003/xslt/Math\" xmlns:xdDate=\"http://schemas.microsoft.com/office/infopath/2003/xslt/Date\" xmlns:sig=\"http://www.w3.org/2000/09/xmldsig#\" xmlns:xdSignatureProperties=\"http://schemas.microsoft.com/office/infopath/2003/SignatureProperties\">" +
            "<xsl:output method=\"html\" indent=\"no\"/>" +
            "<xsl:template match=\"form\">" +
            "<html xmlns:ipApp=\"http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp\" xmlns:ns1=\"http://schema.iukenya.org/2006/AMRS/FormEntry/15\" xmlns:openmrs=\"http://schema.iukenya.org/2006/AMRS/FormEntry/15\" xmlns:my=\"http://schemas.microsoft.com/office/infopath/2003/myXSD/2005-08-07T13:39:21\" xmlns:d=\"http://schemas.microsoft.com/office/infopath/2003/ado/dataFields\" xmlns:dfs=\"http://schemas.microsoft.com/office/infopath/2003/dataFormSolution\">" +
            "<head>" +
            "<meta content=\"text/html\" http-equiv=\"Content-Type\"></meta>" +
            "</head>" +
            "<body>";
    private static final String FOOTER = "</body></html></xsl:template></xsl:stylesheet>";


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
        rules.add(new Rule(patientGivenName, "<lookup expression=\"patient.personName.givenName\"></lookup>"));

        String htmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertControlReplaced(patientGivenName, htmlForm, XPathUtils.createXPath(),
                "//lookup[@expression='patient.personName.givenName']");
    }

    private Document createTestDocument(String bindingToReplace) throws ParserConfigurationException, IOException, SAXException {
        String xslString = HEADER + bindingToReplace + FOOTER;
        Document xslDocument = XmlDocumentFactory.createXmlDocumentFromStream(new ByteArrayInputStream(xslString.getBytes()));
        return xslDocument;
    }

    @Test
    public void shouldReplaceEncounterDateElement() throws Exception {
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
        rules.add(new Rule(bindingName, "<encounterDate />"));

        String htmlForm = pages.toHTMLForm(rules);

        InfopathConverterAssert.assertControlReplaced(bindingName, htmlForm, XPathUtils.createXPath(), "//encounterDate");
    }

}
