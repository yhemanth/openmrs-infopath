package org.openmrs.module.htmlformentry.infopath;

import java.io.File;
import java.io.IOException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;

import org.openmrs.module.htmlformentry.infopath.Rule;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Page {

	private final String file;
	private Document document;

    public Page(String file) throws SAXException, IOException, ParserConfigurationException {
		this.file = file;
		document = DocumentFactory.createXmlDocumentFromStream(getClass().getClassLoader().getResourceAsStream(file));
	}

	private String getTitle() {
		return new File(file).getName().replace(".xsl", "");
	}

	public Node toXML() throws ParserConfigurationException, DOMException, XPathExpressionException {
		Document newDocument = DocumentFactory.createEmptyXmlDocument();

        org.w3c.dom.Element pageElement = createPageElement(newDocument);

        newDocument.appendChild(pageElement);
		return newDocument.getDocumentElement();
	}

    private org.w3c.dom.Element createPageElement(Document newDocument) throws XPathExpressionException {
        org.w3c.dom.Element pageElement = newDocument.createElement("page");
        pageElement.setAttribute("title", getTitle());
        pageElement.appendChild(newDocument.importNode(getBody(), true));
        return pageElement;
    }

    public void applyRule(Rule rule) throws Exception {
		rule.apply(document);
	}

    public Node getBody() throws XPathExpressionException {
		NodeList matchNodes = XPathUtils.matchNodes(document, "//body");
		if (matchNodes.getLength() > 0) {
			return matchNodes.item(0);
		} else {
			return document.createElement("body");
		}
	}

}
