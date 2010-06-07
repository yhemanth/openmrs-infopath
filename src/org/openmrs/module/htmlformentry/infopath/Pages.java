package org.openmrs.module.htmlformentry.infopath;

import com.sun.org.apache.xml.internal.serialize.OutputFormat;
import com.sun.org.apache.xml.internal.serialize.XMLSerializer;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;

public class Pages extends ArrayList<Page> {

	private static final long serialVersionUID = 1L;

    public String toHTMLForm(Rules rules) throws Exception {
        Document newDocument = XmlDocumentFactory.createEmptyXmlDocument();
		Node htmlFormNode = newDocument.appendChild(newDocument.createElement("htmlform"));
        for (Page page : this) {
            rules.applyTo(page);
            Node importedNode = newDocument.importNode(page.toXML(), true);
            htmlFormNode.appendChild(importedNode);
        }
		return documentAsString(newDocument);
	}

	private String documentAsString(Document xmlDocument) throws IOException {
		OutputFormat format = new OutputFormat(xmlDocument);
		StringWriter writer = new StringWriter();
		XMLSerializer serializer = new XMLSerializer(writer, format);
		serializer.serialize(xmlDocument);
		return writer.toString();
	}
}
