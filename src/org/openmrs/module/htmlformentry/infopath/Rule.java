package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import java.io.ByteArrayInputStream;

public class Rule {

    private final String xpath;
    private final String htmlFormElement;

    public Rule(String xpath, String htmlFormElement) {
        this.xpath = xpath;
        this.htmlFormElement = htmlFormElement;
    }

    public void apply(Document document) throws Exception {
        NodeList nodeList = XPathUtils.matchNodes(document, xpath);
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node node = nodeList.item(i);

            Document htmlFormDocument = DocumentFactory
                    .createXmlDocumentFromStream(new ByteArrayInputStream(htmlFormElement.getBytes()));

            Element newElement = htmlFormDocument.getDocumentElement();

            replaceNode(document, node, newElement);
        }
    }

    private void replaceNode(Document document, Node childNode, Node replacement) {
        Node parentNode = childNode.getParentNode();
        parentNode.appendChild(document.importNode(replacement, true));
        parentNode.removeChild(childNode);
    }
}
