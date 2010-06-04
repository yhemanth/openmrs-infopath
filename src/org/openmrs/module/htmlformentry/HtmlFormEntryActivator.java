/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.htmlformentry;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.Activator;

/**
 * Contains the logic that is run every time HTML Form Entry module
 * is either started or shutdown
 */
public class HtmlFormEntryActivator implements Activator {

	private Log log = LogFactory.getLog(this.getClass());

	/**
	 * Logs that module has been started
	 * 
	 * @see org.openmrs.module.Activator#startup()
	 */
	public void startup() {
		log.info("Starting HTML Form Entry Module");
	}
	
	/**
	 * Logs that module has been stopped
	 * 
	 *  @see org.openmrs.module.Activator#shutdown()
	 */
	public void shutdown() {
		log.info("Shutting down HTML Form Entry Module");
	}
	
}
