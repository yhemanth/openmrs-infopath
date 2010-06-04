package org.openmrs.module.htmlformentry.widget;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.openmrs.api.context.Context;
import org.openmrs.module.htmlformentry.FormEntryContext;
import org.openmrs.module.htmlformentry.HtmlFormEntryUtil;
import org.openmrs.module.htmlformentry.FormEntryContext.Mode;

/**
 * A widget that allows the selection of a specific day, month, and year. To handle both
 * a date and time, see {@see DateTimeWidget}.
 */
public class DateWidget implements Widget {
    
    private Date initialValue;
    
    public DateWidget() { }

    public String generateHtml(FormEntryContext context) {
        if (context.getMode() == Mode.VIEW) {
            String toPrint = "";
            if (initialValue != null) {
                toPrint = Context.getDateFormat().format(initialValue);
                return WidgetFactory.displayValue(toPrint);
            } else {
                toPrint = "________";
                return WidgetFactory.displayEmptyValue(toPrint);
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("<input type=\"text\" size=\"10\" name=\"").append(context.getFieldName(this)).append("\"");
            if (initialValue != null)
                sb.append(" value=\"" + Context.getDateFormat().format(initialValue) + "\"");
            sb.append(" onClick=\"showCalendar(this)\"");
            sb.append("/>");
            return sb.toString();
        }
    }

    public Date getValue(FormEntryContext context, HttpServletRequest request) {
        try {
            Date d = (Date) HtmlFormEntryUtil.getParameterAsType(request, context.getFieldName(this), Date.class);
            return d;
        } catch (Exception ex) {
            throw new IllegalArgumentException("Illegal value");
        }
    }

    public void setInitialValue(Object value) {
        initialValue = (Date) value;
    }
}
