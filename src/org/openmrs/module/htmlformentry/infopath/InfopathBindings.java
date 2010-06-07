package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InfopathBindings {
    private Map<String, List<Node>> bindingsMap;

    public InfopathBindings() {
        this.bindingsMap = new HashMap<String, List<Node>>();
    }

    public void addBinding(Node node) {
        Node bindingAttribute = node.getAttributes().getNamedItem("xd:binding");
        String bindingName = bindingAttribute.getNodeValue();
        List<Node> list = bindingsMap.get(bindingName);
        if (list == null) {
            list = new ArrayList<Node>();
            bindingsMap.put(bindingName, list);
        }
        list.add(node);
    }

    public int size() {
        return bindingsMap.size();
    }

    public void applyRules(Rules rules, Document document) throws Exception {
        for (Map.Entry<String,  List<Node>> entry : bindingsMap.entrySet()) {
            String bindingName = entry.getKey();
            rules.apply(document, bindingName, entry.getValue());
        }
    }
}
