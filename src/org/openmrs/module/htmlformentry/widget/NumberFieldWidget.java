package org.openmrs.module.htmlformentry.widget;

import javax.servlet.http.HttpServletRequest;

import org.openmrs.ConceptNumeric;
import org.openmrs.module.htmlformentry.FormEntryContext;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.openmrs.module.htmlformentry.FormEntryContext.Mode;

/**
 * A widget that implements an input field that takes a numeric answer.
 */
public class NumberFieldWidget implements Widget {

    private Number initialValue;
    private boolean floatingPoint = true;
    private Double absoluteMinimum;
    private Double absoluteMaximum;

    /**
     * Creates a widget with certain absolute maximum and minimum values. Floating point numbers are allowed if floatingPoint=true.
     * 
     * @param absoluteMinimum
     * @param absoluteMaximum
     * @param floatingPoint
     */
    public NumberFieldWidget(Double absoluteMinimum, Double absoluteMaximum, boolean floatingPoint) {
    	this.absoluteMinimum = absoluteMinimum;
    	this.absoluteMaximum = absoluteMaximum;
    	this.floatingPoint = floatingPoint;
    }
    
    /**
     * Creates a widget with certain absolute maximum and minimum values as defined by a specific numeric Concept
     * 
     * @param concept
     */
    public NumberFieldWidget(ConceptNumeric concept) {
        if (concept != null) {
            setAbsoluteMaximum(concept.getHiAbsolute());
            setAbsoluteMinimum(concept.getLowAbsolute());
            setFloatingPoint(concept.getPrecise());
        }
    }
    
    /**
     * Returns whether or not this widget accepts floating point values
     * 
     * @return true/false
     */
    public boolean isFloatingPoint() {
        return floatingPoint;
    }

    /**
     * Sets whether or not this widget accepts floating point values
     * 
     * @param floatingPoint
     */
    public void setFloatingPoint(boolean floatingPoint) {
        this.floatingPoint = floatingPoint;
    }

    /**
     * Gets the absolute minimum value allowed for this widget
     * 
     * @return absoluteMinimum
     */
    public Double getAbsoluteMinimum() {
        return absoluteMinimum;
    }

    /**
     * Sets the absolute minimum value allowed for this widget
     * 
     * @param minimum
     */
    public void setAbsoluteMinimum(Double minimum) {
        this.absoluteMinimum = minimum;
    }
    
    /**
     * Gets the absolute maximum value allowed for this widget 
     * 
     * @return absoluteMaximum
     */
    public Double getAbsoluteMaximum() {
        return absoluteMaximum;
    }

    /**
     * Sets the absolute maximum value allows for this widget
     * 
     * @param maximum
     */
    public void setAbsoluteMaximum(Double maximum) {
        this.absoluteMaximum = maximum;
    }

    public void setInitialValue(Object initialValue) {
        this.initialValue = (Number) initialValue;
    }

    public String generateHtml(FormEntryContext context) {
        StringBuilder sb = new StringBuilder();
        if (context.getMode() == Mode.VIEW) {
            String toPrint = "";
            if (initialValue != null) {
                toPrint = initialValue.toString();
                return WidgetFactory.displayValue(toPrint);
            } else {
                toPrint = "____";
                return WidgetFactory.displayEmptyValue(toPrint);
            }
        } else {
            String id = context.getFieldName(this);
            String errorId = context.getErrorFieldId(this);
            sb.append("<input type=\"text\" size=\"5\" id=\"" + id + "\" name=\"" + id + "\"");
            // TODO escape value
            if (initialValue != null)
                sb.append(" value=\"" + initialValue + "\"");
            sb.append(" onBlur=\"checkNumber(this,'" + errorId + "'," + floatingPoint + ",");
            sb.append(absoluteMinimum + ",");
            sb.append(absoluteMaximum + ")\"");
            sb.append("/>");
        }
        return sb.toString();
    }

    public Double getValue(FormEntryContext context, HttpServletRequest request) {
        try {
            Double d = (Double) HtmlFormEntryUtil.getParameterAsType(request, context.getFieldName(this), Double.class);
            if (d != null && absoluteMinimum != null && d < absoluteMinimum)
                throw new IllegalArgumentException("Must be at least " + absoluteMinimum);
            if (d != null && absoluteMaximum != null && d > absoluteMaximum)
                throw new IllegalArgumentException("Cannot be greater than " + absoluteMaximum);
            return d;
        } catch (NumberFormatException ex) {
            throw new IllegalArgumentException("Not a number");
        }
    }

}
