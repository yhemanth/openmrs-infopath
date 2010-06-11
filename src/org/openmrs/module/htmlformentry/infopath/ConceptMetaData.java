package org.openmrs.module.htmlformentry.infopath;

public class ConceptMetaData {
    private String id;
    private String name;
    private ConceptDataType conceptDataType;
    private String[] answerConceptIds;

    public ConceptMetaData(String id, String name, ConceptDataType dataType) {
        this.id = id;
        this.name = name;
        conceptDataType = dataType;
    }

    public String getName() {
        return name;
    }

    public ObservationConversionRule getConversionRule(String bindingName) {
        return conceptDataType.getConversionRule(this);
    }

    public void setAnswerConceptIds(String... answerConceptIds) {
        this.answerConceptIds = answerConceptIds;
    }
}
