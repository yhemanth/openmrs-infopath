package org.openmrs.module.htmlformentry.infopath;

public class ObservationRuleFactory {
    private ConceptsDataSource conceptsDataSource;

    public ObservationRuleFactory(ConceptsDataSource conceptsDataSource) {

        this.conceptsDataSource = conceptsDataSource;
    }

    public ObservationConversionRule newObservationRule(String bindingName) {
        if (bindingName.equals("obs")) {
            return null;
        }
        return new ObservationConversionRule();
    }
}
