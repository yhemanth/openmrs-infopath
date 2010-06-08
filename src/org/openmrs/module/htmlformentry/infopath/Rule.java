package org.openmrs.module.htmlformentry.infopath;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

import java.util.List;

public interface Rule {
    void apply(Document document, List<Node> nodes) throws Exception;

    String getBindingName();
}
