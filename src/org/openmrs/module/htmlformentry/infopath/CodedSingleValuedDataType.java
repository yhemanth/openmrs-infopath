package org.openmrs.module.htmlformentry.infopath;

public class CodedSingleValuedDataType implements ConceptDataType {

    public CodedSingleValuedDataType() {
    }

    public ObservationConversionRule getConversionRule(ConceptMetaData conceptMetaData) {
        return new CodedSingleValuedConversionRule();
    }
}