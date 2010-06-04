package org.openmrs.module.htmlformentry.infopath;

import java.io.IOException;

import javax.xml.parsers.ParserConfigurationException;

import org.openmrs.module.htmlformentry.infopath.Rule;
import org.xml.sax.SAXException;

public class Converter {

	private Rules rules;
	private Pages pages;

	public Converter(String... files) throws SAXException, IOException,
			ParserConfigurationException {
		pages = new Pages();
		for (String file : files) {
			pages.add(new Page(file));
		}
		rules = new Rules();
	}

	public String toHTMLForm() throws Exception {
		pages.applyRules(rules);
		return pages.toHTMLForm();
	}

	public void addRule(Rule rule) {
		rules.add(rule);
	}

}
