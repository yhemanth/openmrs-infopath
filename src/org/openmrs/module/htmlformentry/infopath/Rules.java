package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Rules {

    private Map<String, Rule> rulesMap;
    private ObservationRuleFactory observationRuleFactory;

    public Rules(ConceptsDataSource conceptsDataSource) {
        rulesMap = new HashMap<String, Rule>();
        observationRuleFactory = new ObservationRuleFactory(conceptsDataSource);
    }

    private Rule lookup(String bindingName) {

        Rule rule;
        if (isObservationBinding(bindingName)) {
            rule = observationRuleFactory.newObservationRule(bindingName);
        } else {
            rule = rulesMap.get(bindingName);
            if (rule == null) {
                for (Map.Entry<String, Rule> ruleEntry : rulesMap.entrySet()) {
                    if (bindingIsAnExpression(bindingName, ruleEntry)) {
                        rule = ruleEntry.getValue();
                        break;
                    }
                }
            }
        }
        return rule;
    }

    private boolean isObservationBinding(String bindingName) {
        return bindingName.startsWith("obs");
    }

    private boolean bindingIsAnExpression(String bindingName, Map.Entry<String, Rule> ruleEntry) {
        return bindingName.contains(ruleEntry.getKey());
    }

    public void add(Rule rule) {
        rulesMap.put(rule.getBindingName(), rule);
    }

    public void apply(Document document, String bindingName, List<Node> bindings) throws Exception {
        Rule rule = lookup(bindingName);
        if (rule != null) {
            rule.apply(document, bindings, bindingName);
        }
    }
}
