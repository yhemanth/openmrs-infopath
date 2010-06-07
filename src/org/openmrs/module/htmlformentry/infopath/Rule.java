package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

import java.io.ByteArrayInputStream;
import java.util.List;

public class Rule {

    private final String bindingName;
    private final String htmlFormElement;

    public Rule(String bindingName, String htmlFormElement) {
        this.bindingName = bindingName;
        this.htmlFormElement = htmlFormElement;
    }

    public void apply(Document document, List<Node> nodes) throws Exception {
        Document htmlFormDocument = XmlDocumentFactory
                .createXmlDocumentFromStream(new ByteArrayInputStream(htmlFormElement.getBytes()));
        Element newElement = htmlFormDocument.getDocumentElement();

        for (Node node : nodes) {
            replaceNode(document, node, newElement);
        }
    }

    private void replaceNode(Document document, Node childNode, Node replacement) {
        Node parentNode = childNode.getParentNode();
        parentNode.appendChild(document.importNode(replacement, true));
        parentNode.removeChild(childNode);
    }

    public String getBindingName() {
        return bindingName;
    }
}
