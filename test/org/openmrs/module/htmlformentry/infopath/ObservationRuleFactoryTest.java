package org.openmrs.module.htmlformentry.infopath;

import org.junit.Test;
import junit.framework.Assert;

public class ObservationRuleFactoryTest {

    @Test
    public void shouldNotFindRuleForObsComponent() throws Exception {
        ObservationRuleFactory ruleFactory = new ObservationRuleFactory(new DummyConceptsDataSource());
        Assert.assertNull(ruleFactory.newObservationRule("obs"));
    }

    @Test
    public void shouldFindCWESingleValuedConversionRuleForPatientHospitalizedConcept() throws Exception {
        ConceptsDataSource simulatedConceptsDataSource = new SimulatedConceptDataSource();
        ConceptMetaData metaData = new ConceptMetaData("3389", "patient_hospitalized", new CodedSingleValuedDataType());
        metaData.setAnswerConceptIds("1065", "1066");
        ((SimulatedConceptDataSource)simulatedConceptsDataSource).addConceptMetaData(metaData);
        ObservationRuleFactory observationRuleFactory = new ObservationRuleFactory(simulatedConceptsDataSource);
        Assert.assertEquals(CodedSingleValuedConversionRule.class,
                observationRuleFactory.newObservationRule("obs/patient_hospitalized/value").getClass());
    }
}
