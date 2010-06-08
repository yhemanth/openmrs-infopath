package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import java.util.List;

public class MultiValuedBindingRule extends SimpleRule {
    private String bindingValueProperty;
    private String htmlFormElementAttribute;

    public MultiValuedBindingRule(String bindingName, String bindingValueAttribute,
                                  String htmlFormElement, String htmlFormElementAttribute) {
        super(bindingName, htmlFormElement);
        this.bindingValueProperty = bindingValueAttribute;
        this.htmlFormElementAttribute = htmlFormElementAttribute;
    }

    @Override
    public void apply(Document document, List<Node> nodes) throws Exception {
        Element htmlFormElement = createHtmlFormElement();

        for (Node node : nodes) {
            Node valueAttribute = node.getAttributes().getNamedItem(bindingValueProperty);
            String value = valueAttribute.getNodeValue();
            Node htmlFormAttribute = htmlFormElement.getAttributes().getNamedItem(htmlFormElementAttribute);
            if (htmlFormAttribute == null) {
                htmlFormAttribute = htmlFormElement.getOwnerDocument().createAttribute(htmlFormElementAttribute);
                htmlFormAttribute.setNodeValue(value);
                htmlFormElement.getAttributes().setNamedItem(htmlFormAttribute);
            } else {
                String htmlFormValue = htmlFormAttribute.getNodeValue();
                htmlFormValue = htmlFormValue.concat(","+value);
                htmlFormAttribute.setNodeValue(htmlFormValue);
                htmlFormElement.getAttributes().setNamedItem(htmlFormAttribute);
            }

        }

        Node commonParent = findCommonParent(document, nodes);

        if (commonParent != null) {
            replaceNode(document, commonParent, htmlFormElement);
        }

    }

    private Node findCommonParent(Document document, List<Node> nodes) {
        if (nodes.size() == 1) {
            return nodes.get(0).getParentNode();
        }
        Node ancestor = nodes.get(0).getParentNode();

        while (ancestor != document.getDocumentElement()) {
            for (int i=1; i<nodes.size(); i++) {
                if (!isDescendent(document, nodes.get(i), ancestor)) {
                    ancestor = ancestor.getParentNode();
                    break;
                }
            }
            return ancestor;
        }

        return null;
    }

    private boolean isDescendent(Document document, Node node, Node ancestor) {
        Node curNode = node.getParentNode();

        while (curNode != document.getParentNode()) {
            if (curNode == ancestor) {
                return true;
            }
            curNode = curNode.getParentNode();
        }

        return false;
    }
}
