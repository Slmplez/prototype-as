/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  com.ibm.icu.text.SimpleDateFormat
 */
package org.eclipse.core.internal.databinding.conversion;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import java.text.ParsePosition;
import java.util.Date;
import org.eclipse.core.internal.databinding.BindingMessages;

public abstract class DateConversionSupport {
    private static final int DATE_FORMAT = 3;
    private static final int DEFAULT_FORMATTER_INDEX = 0;
    private static final int NUM_VIRTUAL_FORMATTERS = 1;
    private DateFormat[] formatters = new DateFormat[]{new SimpleDateFormat(BindingMessages.getString("DateFormat_DateTime")), new SimpleDateFormat(BindingMessages.getString("DateFormat_Time")), DateFormat.getDateTimeInstance((int)3, (int)3), DateFormat.getDateInstance((int)3), DateFormat.getTimeInstance((int)3), DateFormat.getDateTimeInstance((int)3, (int)2), DateFormat.getTimeInstance((int)2)};

    protected Date parse(String str) {
        int formatterIdx = 0;
        while (formatterIdx < this.formatters.length) {
            Date parsed = this.parse(str, formatterIdx);
            if (parsed != null) {
                return parsed;
            }
            ++formatterIdx;
        }
        return null;
    }

    protected Date parse(String str, int formatterIdx) {
        if (formatterIdx >= 0) {
            ParsePosition pos = new ParsePosition(0);
            if (str == null) {
                return null;
            }
            Date date = this.formatters[formatterIdx].parse(str, pos);
            if (pos.getErrorIndex() != -1 || pos.getIndex() != str.length()) {
                return null;
            }
            return date;
        }
        try {
            long millisecs = Long.parseLong(str);
            return new Date(millisecs);
        }
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    protected String format(Date date) {
        return this.format(date, 0);
    }

    protected String format(Date date, int formatterIdx) {
        if (date == null) {
            return null;
        }
        if (formatterIdx >= 0) {
            return this.formatters[formatterIdx].format(date);
        }
        return String.valueOf(date.getTime());
    }

    protected int numFormatters() {
        return this.formatters.length + 1;
    }

    protected DateFormat getDateFormat(int index) {
        if (index < 0 || index >= this.formatters.length) {
            throw new IllegalArgumentException("'index' [" + index + "] is out of bounds.");
        }
        return this.formatters[index];
    }
}

