package org.openmrs.module.htmlformentry.infopath;

import junit.framework.Assert;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;

import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPath;

public class InfopathConverterAssert {

    public static void assertBindingReplacedWithHtmlFormElement(
            String htmlForm, String binding, String htmlFormElement) throws Exception {
        Assert.assertFalse("Should not contain : " + binding, htmlForm.contains(binding));
        NodeList nodes = findNodes(htmlForm, htmlFormElement);
        Assert.assertEquals(1, nodes.getLength());
    }

    private static NodeList findNodes(String htmlForm, String htmlFormElement) throws Exception {
        XPath xpath = XPathUtils.createXPath();
        Document document = HtmlFormEntryUtil.stringToDocument(htmlForm);
        NodeList nodes = (NodeList) xpath.evaluate(htmlFormElement, document, XPathConstants.NODESET);
        return nodes;
    }

    public static void assertBindingReplacedWithHtmlFormElement
            (String htmlForm, String binding, String htmlFormElement,
             String formAttribute, String formAttributeValue) throws Exception {
        Assert.assertFalse("Should not contain : " + binding, htmlForm.contains(binding));
        NodeList nodes = findNodes(htmlForm, htmlFormElement);
        Assert.assertEquals(1, nodes.getLength());
        Node n = nodes.item(0);
        Assert.assertEquals(formAttributeValue, n.getAttributes().getNamedItem(formAttribute).getNodeValue());
    }

    public static void assertElementDoesNotExist(String htmlForm, String selector) throws Exception {
        Assert.assertEquals(0, findNodes(htmlForm, selector).getLength());
    }
}
