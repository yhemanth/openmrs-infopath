package org.openmrs.module.htmlformentry.infopath;

public class ObservationRuleFactory {
    private ConceptsDataSource conceptsDataSource;

    public ObservationRuleFactory(ConceptsDataSource conceptsDataSource) {

        this.conceptsDataSource = conceptsDataSource;
    }

    public ObservationConversionRule newObservationRule(String bindingName) {
        String[] bindingComponents = bindingName.split("/");
        for(int i=1; i<bindingComponents.length; i++) {
            ConceptMetaData conceptMetaData = conceptsDataSource.getConceptMetaData(bindingComponents[i]);
            if (conceptMetaData != null) {
                return conceptMetaData.getConversionRule(bindingName);
            }
        }
        return null;
    }
}
