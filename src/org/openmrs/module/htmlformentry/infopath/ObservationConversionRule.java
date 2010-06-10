package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import java.util.List;

public class ObservationConversionRule implements Rule {
    @Override
    public void apply(Document document, List<Node> nodes, String bindingName) throws Exception {
    }

    @Override
    public String getBindingName() {
        return "obs";
    }
}
