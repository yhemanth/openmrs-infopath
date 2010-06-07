package org.openmrs.module.htmlformentry.infopath;

import org.xml.sax.SAXException;
import org.w3c.dom.Document;

import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class Converter {

    private Rules rules;
    private Pages pages;

    public Converter(String... files) throws SAXException, IOException,
            ParserConfigurationException {
        pages = new Pages();
        for (String file : files) {
            InputStream fileStream = getClass().getClassLoader().getResourceAsStream(file);
            Document xslDocument = XmlDocumentFactory.createXmlDocumentFromStream(fileStream);
            pages.add(new Page(xslDocument, getTitle(file)));
        }
        rules = new Rules();
    }

    private String getTitle(String file) {
        return new File(file).getName().replace(".xsl", "");
    }

    public String toHTMLForm() throws Exception {
        return pages.toHTMLForm(rules);
    }

    public void addRule(Rule rule) {
        rules.add(rule);
    }

}
