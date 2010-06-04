package org.openmrs.module.htmlformentry.infopath;

import org.xml.sax.SAXException;
import org.w3c.dom.Document;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import java.io.InputStream;
import java.io.IOException;

public class DocumentFactory {
    public static Document createXmlDocumentFromStream(InputStream stream) throws ParserConfigurationException, IOException, SAXException {
        DocumentBuilder builder = createDocumentBuilder();
        return builder.parse(stream);
    }

    private static DocumentBuilder createDocumentBuilder() throws ParserConfigurationException {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setValidating(false);
        factory.setIgnoringComments(true);
        factory.setNamespaceAware(true);
        factory.setIgnoringElementContentWhitespace(true);
        DocumentBuilder builder = factory.newDocumentBuilder();
        return builder;
    }

    public static Document createEmptyXmlDocument() throws ParserConfigurationException {
        return createDocumentBuilder().newDocument();        
    }
}
