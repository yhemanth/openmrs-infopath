package org.openmrs.module.htmlformentry.infopath;

import javax.xml.namespace.NamespaceContext;
import java.util.Iterator;

public class XDNamespaceContext implements NamespaceContext {

	@Override
	public String getNamespaceURI(String prefix) {
		if (prefix.equals("xd")) {
			return "http://schemas.microsoft.com/office/infopath/2003";
		} else if (prefix.equals("xsl")) {
            return "http://www.w3.org/1999/XSL/Transform";
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
