package org.openmrs.module.htmlformentry.infopath;

import com.sun.org.apache.xml.internal.serialize.OutputFormat;
import com.sun.org.apache.xml.internal.serialize.XMLSerializer;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.Attr;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

public class Pages extends ArrayList<Page> {

	private static final long serialVersionUID = 1L;

    private Map<String,String> namespaceMappings;

    public Pages() {
        super();
        namespaceMappings = new HashMap<String, String>();
        initNamespaceMappings();
    }

    private void initNamespaceMappings() {
        namespaceMappings.put("xmlns:xsl", "http://www.w3.org/1999/XSL/Transform");
        namespaceMappings.put("xmlns:xd", "http://schemas.microsoft.com/office/infopath/2003");
    }

    public String toHTMLForm(Rules rules) throws Exception {
        Document newDocument = XmlDocumentFactory.createEmptyXmlDocument();
        Node htmlFormNode = addHtmlFormElement(newDocument);

        for (Page page : this) {
            page.applyRules(rules);
            Node importedNode = newDocument.importNode(page.toXML(), true);
            htmlFormNode.appendChild(importedNode);
        }
		return documentAsString(newDocument);
	}

    private Node addHtmlFormElement(Document document) {
        Node htmlFormNode = document.appendChild(document.createElement("htmlform"));

        for (Map.Entry<String, String> nsEntry : namespaceMappings.entrySet()) {
            Attr attr = document.createAttribute(nsEntry.getKey());
            attr.setNodeValue(nsEntry.getValue());
            htmlFormNode.getAttributes().setNamedItem(attr);
        }
        
        return htmlFormNode;
    }

    private String documentAsString(Document xmlDocument) throws IOException {
		OutputFormat format = new OutputFormat(xmlDocument);
		StringWriter writer = new StringWriter();
		XMLSerializer serializer = new XMLSerializer(writer, format);
		serializer.serialize(xmlDocument);
		return writer.toString();
	}
}
