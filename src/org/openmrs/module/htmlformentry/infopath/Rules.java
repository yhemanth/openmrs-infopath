package org.openmrs.module.htmlformentry.infopath;

import java.util.ArrayList;

import org.openmrs.module.htmlformentry.infopath.Rule;

public class Rules extends ArrayList<Rule> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void applyTo(Page page) throws Exception {
		for (Rule rule : this) {
			page.applyRule(rule);
		}

	}

}
