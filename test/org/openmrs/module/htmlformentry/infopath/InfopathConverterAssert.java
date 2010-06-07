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
        NodeList nodes = findNodes(htmlForm, binding, htmlFormElement);
        Assert.assertEquals(1, nodes.getLength());
    }

    private static NodeList findNodes(String htmlForm, String binding, String htmlFormElement) throws Exception {
        XPath xpath = XPathUtils.createXPath();
        Assert.assertFalse("Should not contain : " + binding, htmlForm.contains(binding));
        Document document = HtmlFormEntryUtil.stringToDocument(htmlForm);
        NodeList nodes = (NodeList) xpath.evaluate(htmlFormElement, document, XPathConstants.NODESET);
        return nodes;
    }

    public static void assertBindingReplacedWithHtmlFormElement
            (String htmlForm, String binding, String htmlFormElement,
             String formAttribute, String formAttributeValue) throws Exception {
        NodeList nodes = findNodes(htmlForm, binding, htmlFormElement);
        Assert.assertEquals(1, nodes.getLength());
        Node n = nodes.item(0);
        Assert.assertEquals(formAttributeValue, n.getAttributes().getNamedItem(formAttribute).getNodeValue());
    }
}
