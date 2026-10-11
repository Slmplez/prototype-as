/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.CalendarData;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import com.ibm.icu.util.UResourceBundleIterator;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Comparator;
import java.util.Date;
import java.util.MissingResourceException;
import java.util.TreeSet;

public class RelativeDateFormat
extends DateFormat {
    private static final long serialVersionUID = 1131984966440549435L;
    private DateFormat fDateFormat;
    private DateFormat fTimeFormat;
    private MessageFormat fCombinedFormat;
    int fDateStyle;
    int fTimeStyle;
    ULocale fLocale;
    private transient URelativeString[] fDates = null;

    public RelativeDateFormat(int timeStyle, int dateStyle, ULocale locale) {
        int newStyle;
        this.fLocale = locale;
        this.fTimeStyle = timeStyle;
        this.fDateStyle = dateStyle;
        if (this.fDateStyle != -1) {
            newStyle = this.fDateStyle & 0xFFFFFF7F;
            this.fDateFormat = DateFormat.getDateInstance(newStyle, locale);
        } else {
            this.fDateFormat = null;
        }
        if (this.fTimeStyle != -1) {
            newStyle = this.fTimeStyle & 0xFFFFFF7F;
            this.fTimeFormat = DateFormat.getTimeInstance(newStyle, locale);
        } else {
            this.fTimeFormat = null;
        }
        this.initializeCalendar(null, this.fLocale);
        this.loadDates();
        this.initializeCombinedFormat(this.calendar, this.fLocale);
    }

    public StringBuffer format(Calendar cal, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        String dayString = null;
        if (this.fDateStyle != -1) {
            int dayDiff = RelativeDateFormat.dayDifference(cal);
            dayString = this.getStringForDay(dayDiff);
        }
        if (this.fTimeStyle == -1) {
            if (dayString != null) {
                toAppendTo.append(dayString);
            } else if (this.fDateStyle != -1) {
                this.fDateFormat.format(cal, toAppendTo, fieldPosition);
            }
        } else {
            int offset;
            if (dayString == null && this.fDateStyle != -1) {
                dayString = this.fDateFormat.format(cal, new StringBuffer(), fieldPosition).toString();
            }
            FieldPosition timePos = new FieldPosition(fieldPosition.getField());
            String timeString = this.fTimeFormat.format(cal, new StringBuffer(), timePos).toString();
            this.fCombinedFormat.format(new Object[]{dayString, timeString}, toAppendTo, new FieldPosition(0));
            if (fieldPosition.getEndIndex() > 0 && (offset = toAppendTo.toString().indexOf(dayString)) >= 0) {
                fieldPosition.setBeginIndex(fieldPosition.getBeginIndex() + offset);
                fieldPosition.setEndIndex(fieldPosition.getEndIndex() + offset);
            } else if (timePos.getEndIndex() > 0 && (offset = toAppendTo.toString().indexOf(timeString)) >= 0) {
                fieldPosition.setBeginIndex(timePos.getBeginIndex() + offset);
                fieldPosition.setEndIndex(timePos.getEndIndex() + offset);
            }
        }
        return toAppendTo;
    }

    public void parse(String text, Calendar cal, ParsePosition pos) {
        throw new UnsupportedOperationException("Relative Date parse is not implemented yet");
    }

    private String getStringForDay(int day) {
        if (this.fDates == null) {
            this.loadDates();
        }
        int i = 0;
        while (i < this.fDates.length) {
            if (this.fDates[i].offset == day) {
                return this.fDates[i].string;
            }
            ++i;
        }
        return null;
    }

    private synchronized void loadDates() {
        CalendarData calData = new CalendarData(this.fLocale, this.calendar.getType());
        ICUResourceBundle rb = calData.get("fields", "day", "relative");
        TreeSet<URelativeString> datesSet = new TreeSet<URelativeString>(new Comparator<URelativeString>(){

            @Override
            public int compare(URelativeString r1, URelativeString r2) {
                if (r1.offset == r2.offset) {
                    return 0;
                }
                if (r1.offset < r2.offset) {
                    return -1;
                }
                return 1;
            }
        });
        UResourceBundleIterator i = rb.getIterator();
        while (i.hasNext()) {
            UResourceBundle line = i.next();
            String k = line.getKey();
            String v = line.getString();
            URelativeString rs = new URelativeString(k, v);
            datesSet.add(rs);
        }
        this.fDates = datesSet.toArray(new URelativeString[0]);
    }

    private static int dayDifference(Calendar until) {
        Calendar nowCal = (Calendar)until.clone();
        Date nowDate = new Date(System.currentTimeMillis());
        nowCal.clear();
        nowCal.setTime(nowDate);
        int dayDiff = until.get(20) - nowCal.get(20);
        return dayDiff;
    }

    private Calendar initializeCalendar(TimeZone zone, ULocale locale) {
        if (this.calendar == null) {
            this.calendar = zone == null ? Calendar.getInstance(locale) : Calendar.getInstance(zone, locale);
        }
        return this.calendar;
    }

    private MessageFormat initializeCombinedFormat(Calendar cal, ULocale locale) {
        String pattern = "{1} {0}";
        try {
            CalendarData calData = new CalendarData(locale, cal.getType());
            String[] patterns = calData.getDateTimePatterns();
            if (patterns != null && patterns.length >= 9) {
                int glueIndex = 8;
                if (patterns.length >= 13) {
                    switch (this.fDateStyle) {
                        case 0: 
                        case 128: {
                            ++glueIndex;
                            break;
                        }
                        case 1: 
                        case 129: {
                            glueIndex += 2;
                            break;
                        }
                        case 2: 
                        case 130: {
                            glueIndex += 3;
                            break;
                        }
                        case 3: 
                        case 131: {
                            glueIndex += 4;
                            break;
                        }
                    }
                }
                pattern = patterns[glueIndex];
            }
        }
        catch (MissingResourceException missingResourceException) {}
        this.fCombinedFormat = new MessageFormat(pattern, locale);
        return this.fCombinedFormat;
    }

    public class URelativeString {
        public int offset;
        public String string;

        URelativeString(int offset, String string) {
            this.offset = offset;
            this.string = string;
        }

        URelativeString(String offset, String string) {
            this.offset = Integer.parseInt(offset);
            this.string = string;
        }
    }
}

