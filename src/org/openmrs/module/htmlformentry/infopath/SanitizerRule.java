package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import java.util.List;

public class SanitizerRule implements Rule {

    @Override
    public void apply(Document document, List<Node> nodes, String bindingName) throws Exception {
        NodeList list = XPathUtils.matchNodes(document, "//xsl:*");
        for (int i=0; i<list.getLength(); i++) {
            Node node = list.item(i);
            Node parentNode = node.getParentNode();
            parentNode.removeChild(node);
        }
    }

    @Override
    public String getBindingName() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
