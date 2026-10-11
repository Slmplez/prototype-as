/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.Utility;
import com.ibm.icu.text.ChineseDateFormatSymbols;
import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.ChineseCalendar;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.ULocale;
import java.io.InvalidObjectException;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Locale;

public class ChineseDateFormat
extends SimpleDateFormat {
    static final long serialVersionUID = -4610300753104099899L;

    public ChineseDateFormat(String pattern, Locale locale) {
        this(pattern, ULocale.forLocale(locale));
    }

    public ChineseDateFormat(String pattern, ULocale locale) {
        this(pattern, (String)null, locale);
    }

    public ChineseDateFormat(String pattern, String override, ULocale locale) {
        super(pattern, new ChineseDateFormatSymbols(locale), new ChineseCalendar(TimeZone.getDefault(), locale), locale, true, override);
    }

    protected void subFormat(StringBuffer buf, char ch, int count, int beginOffset, FieldPosition pos, Calendar cal) {
        switch (ch) {
            case 'G': {
                this.zeroPaddingNumber(this.numberFormat, buf, cal.get(0), 1, 9);
                break;
            }
            case 'l': {
                buf.append(((ChineseDateFormatSymbols)this.getSymbols()).getLeapMonth(cal.get(22)));
                break;
            }
            default: {
                super.subFormat(buf, ch, count, beginOffset, pos, cal);
            }
        }
    }

    protected int subParse(String text, int start, char ch, int count, boolean obeyCount, boolean allowNegative, boolean[] ambiguousYear, Calendar cal) {
        if (ch != 'G' && ch != 'l' && ch != 'y') {
            return super.subParse(text, start, ch, count, obeyCount, allowNegative, ambiguousYear, cal);
        }
        start = Utility.skipWhitespace(text, start);
        ParsePosition pos = new ParsePosition(start);
        switch (ch) {
            case 'G': 
            case 'y': {
                Number number = null;
                if (obeyCount) {
                    if (start + count > text.length()) {
                        return -start;
                    }
                    number = this.numberFormat.parse(text.substring(0, start + count), pos);
                } else {
                    number = this.numberFormat.parse(text, pos);
                }
                if (number == null) {
                    return -start;
                }
                int value = number.intValue();
                cal.set(ch == 'G' ? 0 : 1, value);
                return pos.getIndex();
            }
            case 'l': {
                ChineseDateFormatSymbols symbols = (ChineseDateFormatSymbols)this.getSymbols();
                int result = this.matchString(text, start, 22, symbols.isLeapMonth, cal);
                if (result < 0) {
                    cal.set(22, 0);
                    result = start;
                }
                return result;
            }
        }
        return 0;
    }

    protected DateFormat.Field patternCharToDateFormatField(char ch) {
        if (ch == 'l') {
            return Field.IS_LEAP_MONTH;
        }
        return super.patternCharToDateFormatField(ch);
    }

    public static class Field
    extends DateFormat.Field {
        private static final long serialVersionUID = -5102130532751400330L;
        public static final Field IS_LEAP_MONTH = new Field("is leap month", 22);

        protected Field(String name, int calendarField) {
            super(name, calendarField);
        }

        public static DateFormat.Field ofCalendarField(int calendarField) {
            if (calendarField == 22) {
                return IS_LEAP_MONTH;
            }
            return DateFormat.Field.ofCalendarField(calendarField);
        }

        protected Object readResolve() throws InvalidObjectException {
            if (this.getClass() != Field.class) {
                throw new InvalidObjectException("A subclass of ChineseDateFormat.Field must implement readResolve.");
            }
            if (this.getName().equals(IS_LEAP_MONTH.getName())) {
                return IS_LEAP_MONTH;
            }
            throw new InvalidObjectException("Unknown attribute name.");
        }
    }
}

