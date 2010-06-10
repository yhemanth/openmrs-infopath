package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import org.junit.Ignore;
import junit.framework.Assert;

public class ObservationRuleFactoryTest {

    @Test
    public void shouldNotFindRuleForObsComponent() throws Exception {
        ObservationRuleFactory ruleFactory = new ObservationRuleFactory(new DummyConceptsDataSource());
        Assert.assertNull(ruleFactory.newObservationRule("obs"));
    }

    @Test
    @Ignore
    public void shouldFindCodedSingleValuedConversionRuleForCodedSingleValuedConcept() throws Exception {
        ConceptsDataSource simulatedConceptsDataSource = new SimulatedConceptDataSource();
        ConceptMetaData metaData = new ConceptMetaData("3389", "patient_hospitalized", "CWE", false, "1065", "1066");
        ((SimulatedConceptDataSource)simulatedConceptsDataSource).addConceptMetaData(metaData);
        ObservationRuleFactory observationRuleFactory = new ObservationRuleFactory(simulatedConceptsDataSource);
        Assert.assertEquals(ObservationConversionRule.class,
                observationRuleFactory.newObservationRule("obs/patient_hospitalized/value").getClass());
    }
}
