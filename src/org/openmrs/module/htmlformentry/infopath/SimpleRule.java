package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

public class SimpleRule implements Rule {

    private final String bindingName;
    private final String htmlFormElement;

    public SimpleRule(String bindingName, String htmlFormElement) {
        this.bindingName = bindingName;
        this.htmlFormElement = htmlFormElement;
    }

    public void apply(Document document, List<Node> nodes, String bindingName) throws Exception {
        Element newElement = createHtmlFormElement();
        for (Node node : nodes) {
            replaceNode(document, node, newElement);
        }
    }

    protected Element createHtmlFormElement() throws ParserConfigurationException, IOException, SAXException {
        Document htmlFormDocument = XmlDocumentFactory
                .createXmlDocumentFromStream(new ByteArrayInputStream(htmlFormElement.getBytes()));
        Element newElement = htmlFormDocument.getDocumentElement();
        return newElement;
    }

    protected void replaceNode(Document document, Node childNode, Node replacement) {
        Node parentNode = childNode.getParentNode();
        parentNode.appendChild(document.importNode(replacement, true));
        parentNode.removeChild(childNode);
    }

    public String getBindingName() {
        return bindingName;
    }
}
