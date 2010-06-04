package org.openmrs.module.htmlformentry.infopath;

import java.util.Iterator;

import javax.xml.namespace.NamespaceContext;

public class XDNamespaceContext implements NamespaceContext {

	@Override
	public String getNamespaceURI(String prefix) {
		if (prefix.equals("xd")) {
			return "http://schemas.microsoft.com/office/infopath/2003";
		}
		return null;
	}

	@Override
	public String getPrefix(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterator getPrefixes(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

}
