package org.openmrs.module.htmlformentry.infopath;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;

import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

import com.sun.org.apache.xml.internal.serialize.OutputFormat;
import com.sun.org.apache.xml.internal.serialize.XMLSerializer;

public class Pages extends ArrayList<Page> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void applyRules(Rules rules) throws Exception {
		for (Page page : this) {
			rules.applyTo(page);
		}
	}

	public String toHTMLForm() throws ParserConfigurationException,
			IOException, DOMException, XPathExpressionException {
        Document newDocument = DocumentFactory.createEmptyXmlDocument();
		Node htmlFormNode = newDocument.appendChild(newDocument.createElement("htmlform"));
		for (Iterator<Page> iterator = iterator(); iterator.hasNext();) {
			Page page = (Page) iterator.next();
			Node importedNode = newDocument.importNode((Node) page.toXML(), true);
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
