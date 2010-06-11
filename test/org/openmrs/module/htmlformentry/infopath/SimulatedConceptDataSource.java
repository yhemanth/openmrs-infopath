package org.openmrs.module.htmlformentry.infopath;

import com.sun.xml.internal.bind.v2.util.QNameMap;

import java.util.Map;
import java.util.HashMap;

public class SimulatedConceptDataSource implements ConceptsDataSource {

    private Map<String, ConceptMetaData> conceptsMap;

    public SimulatedConceptDataSource() {
        this.conceptsMap = new HashMap<String, ConceptMetaData>();
    }

    public void addConceptMetaData(ConceptMetaData metaData) {
        conceptsMap.put(metaData.getName(), metaData);
    }

    @Override
    public ConceptMetaData getConceptMetaData(String bindingComponent) {
        return conceptsMap.get(bindingComponent);
    }
}
