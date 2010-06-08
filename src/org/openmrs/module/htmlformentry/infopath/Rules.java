package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Rules {

    private Map<String, Rule> rulesMap;

    public Rules() {
        rulesMap = new HashMap<String, Rule>();
    }

    private Rule lookup(String bindingName) {
        return rulesMap.get(bindingName);
    }

    public void add(Rule rule) {
        rulesMap.put(rule.getBindingName(), rule);
    }

    public void apply(Document document, String bindingName, List<Node> bindings) throws Exception {
        Rule rule = lookup(bindingName);
        if (rule != null) {
            rule.apply(document, bindings);
        }
    }
}
