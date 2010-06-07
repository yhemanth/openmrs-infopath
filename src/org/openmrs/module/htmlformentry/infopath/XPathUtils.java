package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPath;

public class XPathUtils {
    public static NodeList matchNodes(Document document, String query) throws XPathExpressionException {
		XPathFactory factory = XPathFactory.newInstance();
		javax.xml.xpath.XPath xpath = factory.newXPath();
		xpath.setNamespaceContext(new XDNamespaceContext());
		NodeList nodeList = (NodeList) xpath.evaluate(query, document,
				XPathConstants.NODESET);

		return nodeList;
	}

    public static XPath createXPath(){
        XPath xpath = XPathFactory.newInstance().newXPath();
        xpath.setNamespaceContext(new XDNamespaceContext());
        return xpath;
    }

}
