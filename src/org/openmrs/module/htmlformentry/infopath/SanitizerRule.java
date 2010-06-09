package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import java.util.List;

public class SanitizerRule implements Rule {

    @Override
    public void apply(Document document, List<Node> nodes) throws Exception {
        NodeList list = XPathUtils.matchNodes(document, "//xsl:*");
        for (int i=0; i<list.getLength(); i++) {
            Node node = list.item(i);
            Node parentNode = node.getParentNode();
            if (stillIsAChild(parentNode, node)) {
                parentNode.removeChild(node);
            }
        }
    }

    private boolean stillIsAChild(Node parentNode, Node node) {
        NodeList childNodes = parentNode.getChildNodes();
        for (int j=0; j<childNodes.getLength(); j++) {
            if (childNodes.item(j) == node) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String getBindingName() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
