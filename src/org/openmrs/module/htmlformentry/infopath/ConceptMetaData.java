package org.openmrs.module.htmlformentry.infopath;

public class ConceptMetaData {
    private String id;
    private String name;
    private String dataType;
    private boolean isMultiple;
    private String[] answerConceptIds;

    public ConceptMetaData(String id, String name, String dataType, boolean isMultiple, String... answerConceptIds) {
        this.id = id;
        this.name = name;
        this.dataType = dataType;
        this.isMultiple = isMultiple;
        this.answerConceptIds = answerConceptIds;
    }

    public String getName() {
        return name;
    }
}
