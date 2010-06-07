package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;

public class Page {

	private Document document;
    private String title;
    private InfopathBindings bindings;

    public Page(Document document, String title) {
		this.document = document;
        this.title = title;
	}

	public Node toXML() throws ParserConfigurationException, DOMException, XPathExpressionException {
		Document newDocument = XmlDocumentFactory.createEmptyXmlDocument();

        org.w3c.dom.Element pageElement = createPageElement(newDocument);

        newDocument.appendChild(pageElement);
		return newDocument.getDocumentElement();
	}

    private org.w3c.dom.Element createPageElement(Document newDocument) throws XPathExpressionException {
        org.w3c.dom.Element pageElement = newDocument.createElement("page");
        pageElement.setAttribute("title", title);
        pageElement.appendChild(newDocument.importNode(getBody(), true));
        return pageElement;
    }

    public Node getBody() throws XPathExpressionException {
		NodeList matchNodes = XPathUtils.matchNodes(document, "//body");
		if (matchNodes.getLength() > 0) {
			return matchNodes.item(0);
		} else {
			return document.createElement("body");
		}
	}

    public InfopathBindings extractBindings() throws Exception {
        NodeList nodes = XPathUtils.matchNodes(document, "//*[@xd:binding]");
        bindings = new InfopathBindings();
        for (int i=0; i<nodes.getLength(); i++) {
            bindings.addBinding(nodes.item(i));                                     
        }
        return bindings;
    }

    public void applyRules(Rules rules) throws Exception {
        InfopathBindings bindings = extractBindings();
        bindings.applyRules(rules, document);
    }
}
