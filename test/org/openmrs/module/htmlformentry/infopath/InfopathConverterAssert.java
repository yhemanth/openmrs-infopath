package org.openmrs.module.htmlformentry.infopath;

import junit.framework.Assert;
import org.w3c.dom.Document;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;

import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPath;

public class InfopathConverterAssert {

    public static void assertControlReplaced(
            String patientGivenName, String htmlForm, XPath xpath, String query) throws Exception {
        Assert.assertFalse("Should not contain : " + patientGivenName, htmlForm.contains(patientGivenName));
        Document document = HtmlFormEntryUtil.stringToDocument(htmlForm);
        Assert.assertNotNull(xpath.evaluate(
                query,
                document, XPathConstants.NODE));
    }
}
