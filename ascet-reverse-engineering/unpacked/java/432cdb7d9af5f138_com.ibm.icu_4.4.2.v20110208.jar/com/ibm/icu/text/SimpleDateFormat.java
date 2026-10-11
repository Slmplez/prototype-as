/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.CalendarData;
import com.ibm.icu.impl.DateNumberFormat;
import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.impl.ZoneMeta;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.DateFormatSymbols;
import com.ibm.icu.text.DecimalFormat;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.text.NumberingSystem;
import com.ibm.icu.text.UTF16;
import com.ibm.icu.util.BasicTimeZone;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.GregorianCalendar;
import com.ibm.icu.util.HebrewCalendar;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.TimeZoneTransition;
import com.ibm.icu.util.ULocale;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimpleDateFormat
extends DateFormat {
    private static final long serialVersionUID = 4774881970558875024L;
    static final int currentSerialVersion = 1;
    static boolean DelayedHebrewMonthCheck = false;
    private static final int[] CALENDAR_FIELD_TO_LEVEL;
    private static final int[] PATTERN_CHAR_TO_LEVEL;
    private int serialVersionOnStream = 1;
    private String pattern;
    private String override;
    private HashMap<String, NumberFormat> numberFormatters;
    private HashMap<Character, String> overrideMap;
    private DateFormatSymbols formatData;
    private transient ULocale locale;
    private Date defaultCenturyStart;
    private transient int defaultCenturyStartYear;
    private transient long defaultCenturyBase;
    private static final int TZTYPE_UNK = 0;
    private static final int TZTYPE_STD = 1;
    private static final int TZTYPE_DST = 2;
    private transient int tztype = 0;
    private static final int millisPerHour = 3600000;
    private static final int millisPerMinute = 60000;
    private static final int millisPerSecond = 1000;
    private static final String SUPPRESS_NEGATIVE_PREFIX = "\uab00";
    private transient boolean useFastFormat;
    private static ULocale cachedDefaultLocale;
    private static String cachedDefaultPattern;
    private static final String FALLBACKPATTERN = "yy/MM/dd HH:mm";
    private static final int PATTERN_CHAR_BASE = 64;
    private static final int[] PATTERN_CHAR_TO_INDEX;
    private static final int[] PATTERN_INDEX_TO_CALENDAR_FIELD;
    private static final int[] PATTERN_INDEX_TO_DATE_FORMAT_FIELD;
    private static final DateFormat.Field[] PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE;
    private static ICUCache<String, Object[]> PARSED_PATTERN_CACHE;
    private transient Object[] patternItems;
    private static final String STR_GMT = "GMT";
    private static final String STR_UT = "UT";
    private static final String STR_UTC = "UTC";
    private static final int STR_GMT_LEN = 3;
    private static final int STR_UT_LEN = 2;
    private static final int STR_UTC_LEN = 3;
    private static final char PLUS = '+';
    private static final char MINUS = '-';
    private static final char COLON = ':';
    private transient WeakReference<MessageFormat>[] gmtfmtCache;
    private transient int[] gmtFormatHmsMinLen = null;
    private transient boolean useLocalZeroPaddingNumberFormat;
    private transient char zeroDigit;
    private transient char[] decimalBuf;
    private static final String NUMERIC_FORMAT_CHARS = "MYyudehHmsSDFwWkK";

    static {
        int[] nArray = new int[22];
        nArray[1] = 10;
        nArray[2] = 20;
        nArray[3] = 20;
        nArray[4] = 30;
        nArray[5] = 30;
        nArray[6] = 20;
        nArray[7] = 30;
        nArray[8] = 30;
        nArray[9] = 40;
        nArray[10] = 50;
        nArray[11] = 50;
        nArray[12] = 60;
        nArray[13] = 70;
        nArray[14] = 80;
        nArray[17] = 10;
        nArray[18] = 30;
        nArray[19] = 10;
        nArray[21] = 40;
        CALENDAR_FIELD_TO_LEVEL = nArray;
        int[] nArray2 = new int[64];
        nArray2[0] = -1;
        nArray2[1] = 40;
        nArray2[2] = -1;
        nArray2[3] = -1;
        nArray2[4] = 20;
        nArray2[5] = 30;
        nArray2[6] = 30;
        nArray2[8] = 50;
        nArray2[9] = -1;
        nArray2[10] = -1;
        nArray2[11] = 50;
        nArray2[12] = 20;
        nArray2[13] = 20;
        nArray2[14] = -1;
        nArray2[15] = -1;
        nArray2[16] = -1;
        nArray2[17] = 20;
        nArray2[18] = -1;
        nArray2[19] = 80;
        nArray2[20] = -1;
        nArray2[21] = -1;
        nArray2[23] = 30;
        nArray2[24] = -1;
        nArray2[25] = 10;
        nArray2[27] = -1;
        nArray2[28] = -1;
        nArray2[29] = -1;
        nArray2[30] = -1;
        nArray2[31] = -1;
        nArray2[32] = -1;
        nArray2[33] = 40;
        nArray2[34] = -1;
        nArray2[35] = 30;
        nArray2[36] = 30;
        nArray2[37] = 30;
        nArray2[38] = -1;
        nArray2[40] = 50;
        nArray2[41] = -1;
        nArray2[42] = -1;
        nArray2[43] = 50;
        nArray2[44] = -1;
        nArray2[45] = 60;
        nArray2[46] = -1;
        nArray2[47] = -1;
        nArray2[48] = -1;
        nArray2[49] = 20;
        nArray2[50] = -1;
        nArray2[51] = 70;
        nArray2[52] = -1;
        nArray2[53] = 10;
        nArray2[55] = 20;
        nArray2[56] = -1;
        nArray2[57] = 10;
        nArray2[59] = -1;
        nArray2[60] = -1;
        nArray2[61] = -1;
        nArray2[62] = -1;
        nArray2[63] = -1;
        PATTERN_CHAR_TO_LEVEL = nArray2;
        cachedDefaultLocale = null;
        cachedDefaultPattern = null;
        int[] nArray3 = new int[64];
        nArray3[0] = -1;
        nArray3[1] = 22;
        nArray3[2] = -1;
        nArray3[3] = -1;
        nArray3[4] = 10;
        nArray3[5] = 9;
        nArray3[6] = 11;
        nArray3[8] = 5;
        nArray3[9] = -1;
        nArray3[10] = -1;
        nArray3[11] = 16;
        nArray3[12] = 26;
        nArray3[13] = 2;
        nArray3[14] = -1;
        nArray3[15] = -1;
        nArray3[16] = -1;
        nArray3[17] = 27;
        nArray3[18] = -1;
        nArray3[19] = 8;
        nArray3[20] = -1;
        nArray3[21] = -1;
        nArray3[22] = 29;
        nArray3[23] = 13;
        nArray3[24] = -1;
        nArray3[25] = 18;
        nArray3[26] = 23;
        nArray3[27] = -1;
        nArray3[28] = -1;
        nArray3[29] = -1;
        nArray3[30] = -1;
        nArray3[31] = -1;
        nArray3[32] = -1;
        nArray3[33] = 14;
        nArray3[34] = -1;
        nArray3[35] = 25;
        nArray3[36] = 3;
        nArray3[37] = 19;
        nArray3[38] = -1;
        nArray3[39] = 21;
        nArray3[40] = 15;
        nArray3[41] = -1;
        nArray3[42] = -1;
        nArray3[43] = 4;
        nArray3[44] = -1;
        nArray3[45] = 6;
        nArray3[46] = -1;
        nArray3[47] = -1;
        nArray3[48] = -1;
        nArray3[49] = 28;
        nArray3[50] = -1;
        nArray3[51] = 7;
        nArray3[52] = -1;
        nArray3[53] = 20;
        nArray3[54] = 24;
        nArray3[55] = 12;
        nArray3[56] = -1;
        nArray3[57] = 1;
        nArray3[58] = 17;
        nArray3[59] = -1;
        nArray3[60] = -1;
        nArray3[61] = -1;
        nArray3[62] = -1;
        nArray3[63] = -1;
        PATTERN_CHAR_TO_INDEX = nArray3;
        int[] nArray4 = new int[30];
        nArray4[1] = 1;
        nArray4[2] = 2;
        nArray4[3] = 5;
        nArray4[4] = 11;
        nArray4[5] = 11;
        nArray4[6] = 12;
        nArray4[7] = 13;
        nArray4[8] = 14;
        nArray4[9] = 7;
        nArray4[10] = 6;
        nArray4[11] = 8;
        nArray4[12] = 3;
        nArray4[13] = 4;
        nArray4[14] = 9;
        nArray4[15] = 10;
        nArray4[16] = 10;
        nArray4[17] = 15;
        nArray4[18] = 17;
        nArray4[19] = 18;
        nArray4[20] = 19;
        nArray4[21] = 20;
        nArray4[22] = 21;
        nArray4[23] = 15;
        nArray4[24] = 15;
        nArray4[25] = 18;
        nArray4[26] = 2;
        nArray4[27] = 2;
        nArray4[28] = 2;
        nArray4[29] = 15;
        PATTERN_INDEX_TO_CALENDAR_FIELD = nArray4;
        int[] nArray5 = new int[30];
        nArray5[1] = 1;
        nArray5[2] = 2;
        nArray5[3] = 3;
        nArray5[4] = 4;
        nArray5[5] = 5;
        nArray5[6] = 6;
        nArray5[7] = 7;
        nArray5[8] = 8;
        nArray5[9] = 9;
        nArray5[10] = 10;
        nArray5[11] = 11;
        nArray5[12] = 12;
        nArray5[13] = 13;
        nArray5[14] = 14;
        nArray5[15] = 15;
        nArray5[16] = 16;
        nArray5[17] = 17;
        nArray5[18] = 18;
        nArray5[19] = 19;
        nArray5[20] = 20;
        nArray5[21] = 21;
        nArray5[22] = 22;
        nArray5[23] = 23;
        nArray5[24] = 24;
        nArray5[25] = 25;
        nArray5[26] = 26;
        nArray5[27] = 27;
        nArray5[28] = 28;
        nArray5[29] = 29;
        PATTERN_INDEX_TO_DATE_FORMAT_FIELD = nArray5;
        PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE = new DateFormat.Field[]{DateFormat.Field.ERA, DateFormat.Field.YEAR, DateFormat.Field.MONTH, DateFormat.Field.DAY_OF_MONTH, DateFormat.Field.HOUR_OF_DAY1, DateFormat.Field.HOUR_OF_DAY0, DateFormat.Field.MINUTE, DateFormat.Field.SECOND, DateFormat.Field.MILLISECOND, DateFormat.Field.DAY_OF_WEEK, DateFormat.Field.DAY_OF_YEAR, DateFormat.Field.DAY_OF_WEEK_IN_MONTH, DateFormat.Field.WEEK_OF_YEAR, DateFormat.Field.WEEK_OF_MONTH, DateFormat.Field.AM_PM, DateFormat.Field.HOUR1, DateFormat.Field.HOUR0, DateFormat.Field.TIME_ZONE, DateFormat.Field.YEAR_WOY, DateFormat.Field.DOW_LOCAL, DateFormat.Field.EXTENDED_YEAR, DateFormat.Field.JULIAN_DAY, DateFormat.Field.MILLISECONDS_IN_DAY, DateFormat.Field.TIME_ZONE, DateFormat.Field.TIME_ZONE, DateFormat.Field.DAY_OF_WEEK, DateFormat.Field.MONTH, DateFormat.Field.QUARTER, DateFormat.Field.QUARTER, DateFormat.Field.TIME_ZONE};
        PARSED_PATTERN_CACHE = new SimpleCache<String, Object[]>();
    }

    public SimpleDateFormat() {
        this(SimpleDateFormat.getDefaultPattern(), null, null, null, null, true, null);
    }

    public SimpleDateFormat(String pattern) {
        this(pattern, null, null, null, null, true, null);
    }

    public SimpleDateFormat(String pattern, Locale loc) {
        this(pattern, null, null, null, ULocale.forLocale(loc), true, null);
    }

    public SimpleDateFormat(String pattern, ULocale loc) {
        this(pattern, null, null, null, loc, true, null);
    }

    public SimpleDateFormat(String pattern, String override, ULocale loc) {
        this(pattern, null, null, null, loc, false, override);
    }

    public SimpleDateFormat(String pattern, DateFormatSymbols formatData) {
        this(pattern, (DateFormatSymbols)formatData.clone(), null, null, null, true, null);
    }

    public SimpleDateFormat(String pattern, DateFormatSymbols formatData, ULocale loc) {
        this(pattern, (DateFormatSymbols)formatData.clone(), null, null, loc, true, null);
    }

    SimpleDateFormat(String pattern, DateFormatSymbols formatData, Calendar calendar, ULocale locale, boolean useFastFormat, String override) {
        this(pattern, (DateFormatSymbols)formatData.clone(), (Calendar)calendar.clone(), null, locale, useFastFormat, override);
    }

    private SimpleDateFormat(String pattern, DateFormatSymbols formatData, Calendar calendar, NumberFormat numberFormat, ULocale locale, boolean useFastFormat, String override) {
        this.pattern = pattern;
        this.formatData = formatData;
        this.calendar = calendar;
        this.numberFormat = numberFormat;
        this.locale = locale;
        this.useFastFormat = useFastFormat;
        this.override = override;
        this.initialize();
    }

    public static SimpleDateFormat getInstance(Calendar.FormatConfiguration formatConfig) {
        String ostr = formatConfig.getOverrideString();
        boolean useFast = ostr != null && ostr.length() > 0;
        return new SimpleDateFormat(formatConfig.getPatternString(), formatConfig.getDateFormatSymbols(), formatConfig.getCalendar(), null, formatConfig.getLocale(), useFast, formatConfig.getOverrideString());
    }

    private void initialize() {
        if (this.locale == null) {
            this.locale = ULocale.getDefault();
        }
        if (this.formatData == null) {
            this.formatData = new DateFormatSymbols(this.locale);
        }
        if (this.calendar == null) {
            this.calendar = Calendar.getInstance(this.locale);
        }
        if (this.numberFormat == null) {
            NumberingSystem ns = NumberingSystem.getInstance(this.locale);
            if (ns.isAlgorithmic()) {
                this.numberFormat = NumberFormat.getInstance(this.locale);
            } else {
                char digit0 = ns.getDescription().charAt(0);
                this.numberFormat = new DateNumberFormat(this.locale, digit0);
            }
        }
        this.defaultCenturyBase = System.currentTimeMillis();
        this.setLocale(this.calendar.getLocale(ULocale.VALID_LOCALE), this.calendar.getLocale(ULocale.ACTUAL_LOCALE));
        this.initLocalZeroPaddingNumberFormat();
        if (this.override != null) {
            this.initNumberFormatters(this.locale);
        }
    }

    private static synchronized String getDefaultPattern() {
        ULocale defaultLocale = ULocale.getDefault();
        if (!defaultLocale.equals(cachedDefaultLocale)) {
            cachedDefaultLocale = defaultLocale;
            Calendar cal = Calendar.getInstance(cachedDefaultLocale);
            try {
                CalendarData calData = new CalendarData(cachedDefaultLocale, cal.getType());
                String[] dateTimePatterns = calData.getDateTimePatterns();
                int glueIndex = 8;
                if (dateTimePatterns.length >= 13) {
                    glueIndex += 4;
                }
                cachedDefaultPattern = MessageFormat.format(dateTimePatterns[glueIndex], dateTimePatterns[3], dateTimePatterns[7]);
            }
            catch (MissingResourceException missingResourceException) {
                cachedDefaultPattern = FALLBACKPATTERN;
            }
        }
        return cachedDefaultPattern;
    }

    private void parseAmbiguousDatesAsAfter(Date startDate) {
        this.defaultCenturyStart = startDate;
        this.calendar.setTime(startDate);
        this.defaultCenturyStartYear = this.calendar.get(1);
    }

    private void initializeDefaultCenturyStart(long baseTime) {
        this.defaultCenturyBase = baseTime;
        Calendar tmpCal = (Calendar)this.calendar.clone();
        tmpCal.setTimeInMillis(baseTime);
        tmpCal.add(1, -80);
        this.defaultCenturyStart = tmpCal.getTime();
        this.defaultCenturyStartYear = tmpCal.get(1);
    }

    private Date getDefaultCenturyStart() {
        if (this.defaultCenturyStart == null) {
            this.initializeDefaultCenturyStart(this.defaultCenturyBase);
        }
        return this.defaultCenturyStart;
    }

    private int getDefaultCenturyStartYear() {
        if (this.defaultCenturyStart == null) {
            this.initializeDefaultCenturyStart(this.defaultCenturyBase);
        }
        return this.defaultCenturyStartYear;
    }

    public void set2DigitYearStart(Date startDate) {
        this.parseAmbiguousDatesAsAfter(startDate);
    }

    public Date get2DigitYearStart() {
        return this.getDefaultCenturyStart();
    }

    @Override
    public StringBuffer format(Calendar cal, StringBuffer toAppendTo, FieldPosition pos) {
        TimeZone backupTZ = null;
        if (cal != this.calendar && !cal.getType().equals(this.calendar.getType())) {
            this.calendar.setTimeInMillis(cal.getTimeInMillis());
            backupTZ = this.calendar.getTimeZone();
            this.calendar.setTimeZone(cal.getTimeZone());
            cal = this.calendar;
        }
        StringBuffer result = this.format(cal, toAppendTo, pos, null);
        if (backupTZ != null) {
            this.calendar.setTimeZone(backupTZ);
        }
        return result;
    }

    private StringBuffer format(Calendar cal, StringBuffer toAppendTo, FieldPosition pos, List<FieldPosition> attributes) {
        pos.setBeginIndex(0);
        pos.setEndIndex(0);
        Object[] items = this.getPatternItems();
        int i = 0;
        while (i < items.length) {
            if (items[i] instanceof String) {
                toAppendTo.append((String)items[i]);
            } else {
                int end;
                PatternItem item = (PatternItem)items[i];
                int start = 0;
                if (attributes != null) {
                    start = toAppendTo.length();
                }
                if (this.useFastFormat) {
                    this.subFormat(toAppendTo, item.type, item.length, toAppendTo.length(), pos, cal);
                } else {
                    toAppendTo.append(this.subFormat(item.type, item.length, toAppendTo.length(), pos, this.formatData, cal));
                }
                if (attributes != null && (end = toAppendTo.length()) - start > 0) {
                    DateFormat.Field attr = this.patternCharToDateFormatField(item.type);
                    FieldPosition fp = new FieldPosition(attr);
                    fp.setBeginIndex(start);
                    fp.setEndIndex(end);
                    attributes.add(fp);
                }
            }
            ++i;
        }
        return toAppendTo;
    }

    protected DateFormat.Field patternCharToDateFormatField(char ch) {
        int patternCharIndex = -1;
        if ('A' <= ch && ch <= 'z') {
            patternCharIndex = PATTERN_CHAR_TO_INDEX[ch - 64];
        }
        if (patternCharIndex != -1) {
            return PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE[patternCharIndex];
        }
        return null;
    }

    protected String subFormat(char ch, int count, int beginOffset, FieldPosition pos, DateFormatSymbols fmtData, Calendar cal) throws IllegalArgumentException {
        StringBuffer buf = new StringBuffer();
        this.subFormat(buf, ch, count, beginOffset, pos, cal);
        return buf.toString();
    }

    protected void subFormat(StringBuffer buf, char ch, int count, int beginOffset, FieldPosition pos, Calendar cal) {
        int bufstart = buf.length();
        int patternCharIndex = -1;
        if ('A' <= ch && ch <= 'z') {
            patternCharIndex = PATTERN_CHAR_TO_INDEX[ch - 64];
        }
        if (patternCharIndex == -1) {
            throw new IllegalArgumentException("Illegal pattern character '" + ch + "' in \"" + this.pattern + '\"');
        }
        int field = PATTERN_INDEX_TO_CALENDAR_FIELD[patternCharIndex];
        int value = cal.get(field);
        String zoneString = null;
        NumberFormat currentNumberFormat = this.getNumberFormat(ch);
        switch (patternCharIndex) {
            case 0: {
                if (count == 5) {
                    SimpleDateFormat.safeAppend(this.formatData.narrowEras, value, buf);
                    break;
                }
                if (count == 4) {
                    SimpleDateFormat.safeAppend(this.formatData.eraNames, value, buf);
                    break;
                }
                SimpleDateFormat.safeAppend(this.formatData.eras, value, buf);
                break;
            }
            case 1: {
                if (count == 2) {
                    this.zeroPaddingNumber(currentNumberFormat, buf, value, 2, 2);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value, count, Integer.MAX_VALUE);
                break;
            }
            case 2: {
                if (cal.getType().equals("hebrew")) {
                    boolean isLeap = HebrewCalendar.isLeapYear(cal.get(1));
                    if (isLeap && value == 6 && count >= 3) {
                        value = 13;
                    }
                    if (!isLeap && value >= 6 && count < 3) {
                        --value;
                    }
                }
                if (count == 5) {
                    SimpleDateFormat.safeAppend(this.formatData.narrowMonths, value, buf);
                    break;
                }
                if (count == 4) {
                    SimpleDateFormat.safeAppend(this.formatData.months, value, buf);
                    break;
                }
                if (count == 3) {
                    SimpleDateFormat.safeAppend(this.formatData.shortMonths, value, buf);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value + 1, count, Integer.MAX_VALUE);
                break;
            }
            case 4: {
                if (value == 0) {
                    this.zeroPaddingNumber(currentNumberFormat, buf, cal.getMaximum(11) + 1, count, Integer.MAX_VALUE);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value, count, Integer.MAX_VALUE);
                break;
            }
            case 8: {
                this.numberFormat.setMinimumIntegerDigits(Math.min(3, count));
                this.numberFormat.setMaximumIntegerDigits(Integer.MAX_VALUE);
                if (count == 1) {
                    value = (value + 50) / 100;
                } else if (count == 2) {
                    value = (value + 5) / 10;
                }
                FieldPosition p = new FieldPosition(-1);
                this.numberFormat.format(value, buf, p);
                if (count <= 3) break;
                this.numberFormat.setMinimumIntegerDigits(count - 3);
                this.numberFormat.format(0L, buf, p);
                break;
            }
            case 19: {
                if (count < 3) {
                    this.zeroPaddingNumber(currentNumberFormat, buf, value, count, Integer.MAX_VALUE);
                    break;
                }
                value = cal.get(7);
            }
            case 9: {
                if (count == 5) {
                    SimpleDateFormat.safeAppend(this.formatData.narrowWeekdays, value, buf);
                    break;
                }
                if (count == 4) {
                    SimpleDateFormat.safeAppend(this.formatData.weekdays, value, buf);
                    break;
                }
                SimpleDateFormat.safeAppend(this.formatData.shortWeekdays, value, buf);
                break;
            }
            case 14: {
                SimpleDateFormat.safeAppend(this.formatData.ampms, value, buf);
                break;
            }
            case 15: {
                if (value == 0) {
                    this.zeroPaddingNumber(currentNumberFormat, buf, cal.getLeastMaximum(10) + 1, count, Integer.MAX_VALUE);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value, count, Integer.MAX_VALUE);
                break;
            }
            case 17: {
                zoneString = count < 4 ? this.formatData.getZoneStringFormat().getSpecificShortString(cal, true) : this.formatData.getZoneStringFormat().getSpecificLongString(cal);
                if (zoneString != null && zoneString.length() != 0) {
                    buf.append(zoneString);
                    break;
                }
                this.appendGMT(currentNumberFormat, buf, cal);
                break;
            }
            case 23: {
                if (count < 4) {
                    int val = cal.get(15) + cal.get(16);
                    int sign = 43;
                    if (val < 0) {
                        val = -val;
                        sign = 45;
                    }
                    buf.append((char)sign);
                    int offsetH = val / 3600000;
                    int offsetM = (val %= 3600000) / 60000;
                    int offsetS = (val %= 60000) / 1000;
                    int num = 0;
                    int denom = 0;
                    if (offsetS == 0) {
                        val = offsetH * 100 + offsetM;
                        num = val % 10000;
                        denom = 1000;
                    } else {
                        val = offsetH * 10000 + offsetM * 100 + offsetS;
                        num = val % 1000000;
                        denom = 100000;
                    }
                    while (denom >= 1) {
                        char digit = (char)(num / denom + 48);
                        buf.append(digit);
                        num %= denom;
                        denom /= 10;
                    }
                    break;
                }
                this.appendGMT(currentNumberFormat, buf, cal);
                break;
            }
            case 24: {
                if (count == 1) {
                    zoneString = this.formatData.getZoneStringFormat().getGenericShortString(cal, true);
                } else if (count == 4) {
                    zoneString = this.formatData.getZoneStringFormat().getGenericLongString(cal);
                }
                if (zoneString != null && zoneString.length() != 0) {
                    buf.append(zoneString);
                    break;
                }
                this.appendGMT(currentNumberFormat, buf, cal);
                break;
            }
            case 25: {
                if (count < 3) {
                    this.zeroPaddingNumber(currentNumberFormat, buf, value, 1, Integer.MAX_VALUE);
                    break;
                }
                value = cal.get(7);
                if (count == 5) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneNarrowWeekdays, value, buf);
                    break;
                }
                if (count == 4) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneWeekdays, value, buf);
                    break;
                }
                SimpleDateFormat.safeAppend(this.formatData.standaloneShortWeekdays, value, buf);
                break;
            }
            case 26: {
                if (count == 5) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneNarrowMonths, value, buf);
                    break;
                }
                if (count == 4) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneMonths, value, buf);
                    break;
                }
                if (count == 3) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneShortMonths, value, buf);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value + 1, count, Integer.MAX_VALUE);
                break;
            }
            case 27: {
                if (count >= 4) {
                    SimpleDateFormat.safeAppend(this.formatData.quarters, value / 3, buf);
                    break;
                }
                if (count == 3) {
                    SimpleDateFormat.safeAppend(this.formatData.shortQuarters, value / 3, buf);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value / 3 + 1, count, Integer.MAX_VALUE);
                break;
            }
            case 28: {
                if (count >= 4) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneQuarters, value / 3, buf);
                    break;
                }
                if (count == 3) {
                    SimpleDateFormat.safeAppend(this.formatData.standaloneShortQuarters, value / 3, buf);
                    break;
                }
                this.zeroPaddingNumber(currentNumberFormat, buf, value / 3 + 1, count, Integer.MAX_VALUE);
                break;
            }
            case 29: {
                if (count == 1) {
                    zoneString = this.formatData.getZoneStringFormat().getSpecificShortString(cal, false);
                } else if (count == 4) {
                    zoneString = this.formatData.getZoneStringFormat().getGenericLocationString(cal);
                }
                if (zoneString != null && zoneString.length() != 0) {
                    buf.append(zoneString);
                    break;
                }
                this.appendGMT(currentNumberFormat, buf, cal);
                break;
            }
            default: {
                this.zeroPaddingNumber(currentNumberFormat, buf, value, count, Integer.MAX_VALUE);
            }
        }
        if (pos.getBeginIndex() == pos.getEndIndex()) {
            if (pos.getField() == PATTERN_INDEX_TO_DATE_FORMAT_FIELD[patternCharIndex]) {
                pos.setBeginIndex(beginOffset);
                pos.setEndIndex(beginOffset + buf.length() - bufstart);
            } else if (pos.getFieldAttribute() == PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE[patternCharIndex]) {
                pos.setBeginIndex(beginOffset);
                pos.setEndIndex(beginOffset + buf.length() - bufstart);
            }
        }
    }

    private static void safeAppend(String[] array, int value, StringBuffer appendTo) {
        if (array != null && value >= 0 && value < array.length) {
            appendTo.append(array[value]);
        }
    }

    private Object[] getPatternItems() {
        if (this.patternItems != null) {
            return this.patternItems;
        }
        this.patternItems = PARSED_PATTERN_CACHE.get(this.pattern);
        if (this.patternItems != null) {
            return this.patternItems;
        }
        boolean isPrevQuote = false;
        boolean inQuote = false;
        StringBuilder text = new StringBuilder();
        char itemType = '\u0000';
        int itemLength = 1;
        ArrayList<Object> items = new ArrayList<Object>();
        int i = 0;
        while (i < this.pattern.length()) {
            char ch = this.pattern.charAt(i);
            if (ch == '\'') {
                if (isPrevQuote) {
                    text.append('\'');
                    isPrevQuote = false;
                } else {
                    isPrevQuote = true;
                    if (itemType != '\u0000') {
                        items.add(new PatternItem(itemType, itemLength));
                        itemType = '\u0000';
                    }
                }
                inQuote = !inQuote;
            } else {
                isPrevQuote = false;
                if (inQuote) {
                    text.append(ch);
                } else if (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z') {
                    if (ch == itemType) {
                        ++itemLength;
                    } else {
                        if (itemType == '\u0000') {
                            if (text.length() > 0) {
                                items.add(text.toString());
                                text.setLength(0);
                            }
                        } else {
                            items.add(new PatternItem(itemType, itemLength));
                        }
                        itemType = ch;
                        itemLength = 1;
                    }
                } else {
                    if (itemType != '\u0000') {
                        items.add(new PatternItem(itemType, itemLength));
                        itemType = '\u0000';
                    }
                    text.append(ch);
                }
            }
            ++i;
        }
        if (itemType == '\u0000') {
            if (text.length() > 0) {
                items.add(text.toString());
                text.setLength(0);
            }
        } else {
            items.add(new PatternItem(itemType, itemLength));
        }
        this.patternItems = items.toArray(new Object[items.size()]);
        PARSED_PATTERN_CACHE.put(this.pattern, this.patternItems);
        return this.patternItems;
    }

    private void appendGMT(NumberFormat currentNumberFormat, StringBuffer buf, Calendar cal) {
        int offset = cal.get(15) + cal.get(16);
        if (this.isDefaultGMTFormat()) {
            this.formatGMTDefault(currentNumberFormat, buf, offset);
        } else {
            int sign = 1;
            if (offset < 0) {
                offset = -offset;
                sign = 0;
            }
            int width = offset % 60000 == 0 ? 1 : 0;
            MessageFormat fmt = this.getGMTFormatter(sign, width);
            fmt.format(new Object[]{new Long(offset)}, buf, (FieldPosition)null);
        }
    }

    private void formatGMTDefault(NumberFormat currentNumberFormat, StringBuffer buf, int offset) {
        buf.append(STR_GMT);
        if (offset >= 0) {
            buf.append('+');
        } else {
            buf.append('-');
            offset = -offset;
        }
        int sec = (offset /= 1000) % 60;
        int min = (offset /= 60) % 60;
        int hour = offset / 60;
        this.zeroPaddingNumber(currentNumberFormat, buf, hour, 2, 2);
        buf.append(':');
        this.zeroPaddingNumber(currentNumberFormat, buf, min, 2, 2);
        if (sec != 0) {
            buf.append(':');
            this.zeroPaddingNumber(currentNumberFormat, buf, sec, 2, 2);
        }
    }

    private Integer parseGMT(String text, ParsePosition pos, NumberFormat currentNumberFormat) {
        if (!this.isDefaultGMTFormat()) {
            int start = pos.getIndex();
            String gmtPattern = this.formatData.gmtFormat;
            boolean prefixMatch = false;
            int prefixLen = gmtPattern.indexOf(123);
            if (prefixLen > 0 && text.regionMatches(start, gmtPattern, 0, prefixLen)) {
                prefixMatch = true;
            }
            if (prefixMatch) {
                MessageFormat fmt = this.getGMTFormatter(0, 0);
                Object[] parsedObjects = fmt.parse(text, pos);
                if (parsedObjects != null && parsedObjects[0] instanceof Date && pos.getIndex() - start >= this.getGMTFormatMinHMSLen(0)) {
                    int offset = (int)((Date)parsedObjects[0]).getTime();
                    return new Integer(-offset);
                }
                pos.setIndex(start);
                pos.setErrorIndex(-1);
                fmt = this.getGMTFormatter(1, 0);
                parsedObjects = fmt.parse(text, pos);
                if (parsedObjects != null && parsedObjects[0] instanceof Date && pos.getIndex() - start >= this.getGMTFormatMinHMSLen(1)) {
                    int offset = (int)((Date)parsedObjects[0]).getTime();
                    return new Integer(offset);
                }
                pos.setIndex(start);
                pos.setErrorIndex(-1);
                fmt = this.getGMTFormatter(0, 1);
                parsedObjects = fmt.parse(text, pos);
                if (parsedObjects != null && parsedObjects[0] instanceof Date) {
                    int offset = (int)((Date)parsedObjects[0]).getTime();
                    return new Integer(-offset);
                }
                pos.setIndex(start);
                pos.setErrorIndex(-1);
                fmt = this.getGMTFormatter(1, 1);
                parsedObjects = fmt.parse(text, pos);
                if (parsedObjects != null && parsedObjects[0] instanceof Date) {
                    int offset = (int)((Date)parsedObjects[0]).getTime();
                    return new Integer(offset);
                }
                pos.setIndex(start);
                pos.setErrorIndex(-1);
            }
        }
        return this.parseGMTDefault(text, pos, currentNumberFormat);
    }

    private Integer parseGMTDefault(String text, ParsePosition pos, NumberFormat currentNumberFormat) {
        int start = pos.getIndex();
        if (start + 2 + 1 >= text.length()) {
            pos.setErrorIndex(start);
            return null;
        }
        int cur = start;
        if (text.regionMatches(true, start, STR_GMT, 0, 3)) {
            cur += 3;
        } else if (text.regionMatches(true, start, STR_UT, 0, 2)) {
            cur += 2;
        } else {
            pos.setErrorIndex(start);
            return null;
        }
        boolean negative = false;
        if (text.charAt(cur) == '-') {
            negative = true;
        } else if (text.charAt(cur) != '+') {
            pos.setErrorIndex(cur);
            return null;
        }
        pos.setIndex(++cur);
        Number n = this.parseInt(text, 6, pos, false, currentNumberFormat);
        int numLen = pos.getIndex() - cur;
        if (n == null || numLen <= 0 || numLen > 6) {
            pos.setIndex(start);
            pos.setErrorIndex(cur);
            return null;
        }
        int numVal = n.intValue();
        int hour = 0;
        int min = 0;
        int sec = 0;
        if (numLen <= 2) {
            hour = numVal;
            if ((cur += numLen) + 2 < text.length() && text.charAt(cur) == ':') {
                pos.setIndex(++cur);
                n = this.parseInt(text, 2, pos, false, currentNumberFormat);
                numLen = pos.getIndex() - cur;
                if (n != null && numLen == 2) {
                    min = n.intValue();
                    if ((cur += numLen) + 2 < text.length() && text.charAt(cur) == ':') {
                        pos.setIndex(++cur);
                        n = this.parseInt(text, 2, pos, false, currentNumberFormat);
                        numLen = pos.getIndex() - cur;
                        if (n != null && numLen == 2) {
                            sec = n.intValue();
                        } else {
                            pos.setIndex(cur - 1);
                            pos.setErrorIndex(-1);
                        }
                    }
                } else {
                    pos.setIndex(cur - 1);
                    pos.setErrorIndex(-1);
                }
            }
        } else if (numLen == 3 || numLen == 4) {
            hour = numVal / 100;
            min = numVal % 100;
        } else {
            hour = numVal / 10000;
            min = numVal % 10000 / 100;
            sec = numVal % 100;
        }
        int offset = ((hour * 60 + min) * 60 + sec) * 1000;
        if (negative) {
            offset = -offset;
        }
        return new Integer(offset);
    }

    private MessageFormat getGMTFormatter(int sign, int width) {
        int cacheIdx;
        MessageFormat fmt = null;
        if (this.gmtfmtCache == null) {
            this.gmtfmtCache = new WeakReference[4];
        }
        if (this.gmtfmtCache[cacheIdx = sign * 2 + width] != null) {
            fmt = (MessageFormat)this.gmtfmtCache[cacheIdx].get();
        }
        if (fmt == null) {
            fmt = new MessageFormat(this.formatData.gmtFormat);
            GregorianCalendar gcal = new GregorianCalendar(TimeZone.getTimeZone("Etc/UTC"));
            SimpleDateFormat sdf = (SimpleDateFormat)this.clone();
            sdf.setCalendar(gcal);
            sdf.applyPattern(this.formatData.getGmtHourFormat(sign, width));
            fmt.setFormat(0, sdf);
            this.gmtfmtCache[cacheIdx] = new WeakReference<MessageFormat>(fmt);
        }
        return fmt;
    }

    private int getGMTFormatMinHMSLen(int sign) {
        if (this.gmtFormatHmsMinLen == null) {
            this.gmtFormatHmsMinLen = new int[2];
            Long offset = new Long(3600000L);
            StringBuffer buf = new StringBuffer();
            MessageFormat fmtNeg = this.getGMTFormatter(0, 0);
            fmtNeg.format(new Object[]{offset}, buf, (FieldPosition)null);
            this.gmtFormatHmsMinLen[0] = buf.length();
            buf.setLength(0);
            MessageFormat fmtPos = this.getGMTFormatter(1, 0);
            fmtPos.format(new Object[]{offset}, buf, (FieldPosition)null);
            this.gmtFormatHmsMinLen[1] = buf.length();
        }
        return this.gmtFormatHmsMinLen[sign < 0 ? 0 : 1];
    }

    private boolean isDefaultGMTFormat() {
        if (!"GMT{0}".equals(this.formatData.getGmtFormat())) {
            return false;
        }
        boolean res = true;
        int sign = 0;
        while (sign < 2 && res) {
            int width = 0;
            while (width < 2) {
                if (!DateFormatSymbols.DEFAULT_GMT_HOUR_PATTERNS[sign][width].equals(this.formatData.getGmtHourFormat(sign, width))) {
                    res = false;
                    break;
                }
                ++width;
            }
            ++sign;
        }
        return res;
    }

    protected void zeroPaddingNumber(NumberFormat nf, StringBuffer buf, int value, int minDigits, int maxDigits) {
        if (this.useLocalZeroPaddingNumberFormat) {
            this.fastZeroPaddingNumber(buf, value, minDigits, maxDigits);
        } else {
            nf.setMinimumIntegerDigits(minDigits);
            nf.setMaximumIntegerDigits(maxDigits);
            nf.format(value, buf, new FieldPosition(-1));
        }
    }

    @Override
    public void setNumberFormat(NumberFormat newNumberFormat) {
        super.setNumberFormat(newNumberFormat);
        this.initLocalZeroPaddingNumberFormat();
    }

    private void initLocalZeroPaddingNumberFormat() {
        if (this.numberFormat instanceof DecimalFormat) {
            this.zeroDigit = ((DecimalFormat)this.numberFormat).getDecimalFormatSymbols().getZeroDigit();
            this.useLocalZeroPaddingNumberFormat = true;
        } else if (this.numberFormat instanceof DateNumberFormat) {
            this.zeroDigit = ((DateNumberFormat)this.numberFormat).getZeroDigit();
            this.useLocalZeroPaddingNumberFormat = true;
        } else {
            this.useLocalZeroPaddingNumberFormat = false;
        }
        if (this.useLocalZeroPaddingNumberFormat) {
            this.decimalBuf = new char[10];
        }
    }

    private void fastZeroPaddingNumber(StringBuffer buf, int value, int minDigits, int maxDigits) {
        int limit = this.decimalBuf.length < maxDigits ? this.decimalBuf.length : maxDigits;
        int index = limit - 1;
        while (true) {
            this.decimalBuf[index] = (char)(value % 10 + this.zeroDigit);
            if (index == 0 || (value /= 10) == 0) break;
            --index;
        }
        int padding = minDigits - (limit - index);
        while (padding > 0 && index > 0) {
            this.decimalBuf[--index] = this.zeroDigit;
            --padding;
        }
        while (padding > 0) {
            buf.append(this.zeroDigit);
            --padding;
        }
        buf.append(this.decimalBuf, index, limit - index);
    }

    protected String zeroPaddingNumber(long value, int minDigits, int maxDigits) {
        this.numberFormat.setMinimumIntegerDigits(minDigits);
        this.numberFormat.setMaximumIntegerDigits(maxDigits);
        return this.numberFormat.format(value);
    }

    private static final boolean isNumeric(char formatChar, int count) {
        int i = NUMERIC_FORMAT_CHARS.indexOf(formatChar);
        return i > 0 || i == 0 && count < 3;
    }

    @Override
    public void parse(String text, Calendar cal, ParsePosition parsePos) {
        int pos;
        TimeZone backupTZ = null;
        Calendar resultCal = null;
        if (cal != this.calendar && !cal.getType().equals(this.calendar.getType())) {
            this.calendar.setTimeInMillis(cal.getTimeInMillis());
            backupTZ = this.calendar.getTimeZone();
            this.calendar.setTimeZone(cal.getTimeZone());
            resultCal = cal;
            cal = this.calendar;
        }
        int start = pos = parsePos.getIndex();
        this.tztype = 0;
        boolean[] ambiguousYear = new boolean[1];
        int numericFieldStart = -1;
        int numericFieldLength = 0;
        int numericStartPos = 0;
        Object[] items = this.getPatternItems();
        int i = 0;
        while (i < items.length) {
            if (items[i] instanceof PatternItem) {
                PatternItem field = (PatternItem)items[i];
                if (field.isNumeric && numericFieldStart == -1 && i + 1 < items.length && items[i + 1] instanceof PatternItem && ((PatternItem)items[i + 1]).isNumeric) {
                    numericFieldStart = i;
                    numericFieldLength = field.length;
                    numericStartPos = pos;
                }
                if (numericFieldStart != -1) {
                    int len = field.length;
                    if (numericFieldStart == i) {
                        len = numericFieldLength;
                    }
                    if ((pos = this.subParse(text, pos, field.type, len, true, false, ambiguousYear, cal)) < 0) {
                        if (--numericFieldLength == 0) {
                            parsePos.setIndex(start);
                            parsePos.setErrorIndex(pos);
                            if (backupTZ != null) {
                                this.calendar.setTimeZone(backupTZ);
                            }
                            return;
                        }
                        i = numericFieldStart;
                        pos = numericStartPos;
                        continue;
                    }
                } else {
                    numericFieldStart = -1;
                    int s = pos;
                    if ((pos = this.subParse(text, pos, field.type, field.length, false, true, ambiguousYear, cal)) < 0) {
                        parsePos.setIndex(start);
                        parsePos.setErrorIndex(s);
                        if (backupTZ != null) {
                            this.calendar.setTimeZone(backupTZ);
                        }
                        return;
                    }
                }
            } else {
                numericFieldStart = -1;
                String patl = (String)items[i];
                int plen = patl.length();
                int tlen = text.length();
                int idx = 0;
                while (idx < plen && pos < tlen) {
                    char pch = patl.charAt(idx);
                    char ich = text.charAt(pos);
                    if (UCharacterProperty.isRuleWhiteSpace(pch) && UCharacterProperty.isRuleWhiteSpace(ich)) {
                        while (idx + 1 < plen && UCharacterProperty.isRuleWhiteSpace(patl.charAt(idx + 1))) {
                            ++idx;
                        }
                        while (pos + 1 < tlen && UCharacterProperty.isRuleWhiteSpace(text.charAt(pos + 1))) {
                            ++pos;
                        }
                    } else if (pch != ich) break;
                    ++idx;
                    ++pos;
                }
                if (idx != plen) {
                    parsePos.setIndex(start);
                    parsePos.setErrorIndex(pos);
                    if (backupTZ != null) {
                        this.calendar.setTimeZone(backupTZ);
                    }
                    return;
                }
            }
            ++i;
        }
        parsePos.setIndex(pos);
        try {
            if (ambiguousYear[0] || this.tztype != 0) {
                Calendar copy;
                Date parsedDate;
                if (ambiguousYear[0] && (parsedDate = (copy = (Calendar)cal.clone()).getTime()).before(this.getDefaultCenturyStart())) {
                    cal.set(1, this.getDefaultCenturyStartYear() + 100);
                }
                if (this.tztype != 0) {
                    copy = (Calendar)cal.clone();
                    TimeZone tz = copy.getTimeZone();
                    BasicTimeZone btz = null;
                    if (tz instanceof BasicTimeZone) {
                        btz = (BasicTimeZone)tz;
                    }
                    copy.set(15, 0);
                    copy.set(16, 0);
                    long localMillis = copy.getTimeInMillis();
                    int[] offsets = new int[2];
                    if (btz != null) {
                        if (this.tztype == 1) {
                            btz.getOffsetFromLocal(localMillis, 1, 1, offsets);
                        } else {
                            btz.getOffsetFromLocal(localMillis, 3, 3, offsets);
                        }
                    } else {
                        tz.getOffset(localMillis, true, offsets);
                        if (this.tztype == 1 && offsets[1] != 0 || this.tztype == 2 && offsets[1] == 0) {
                            tz.getOffset(localMillis - 86400000L, true, offsets);
                        }
                    }
                    int resolvedSavings = offsets[1];
                    if (this.tztype == 1) {
                        if (offsets[1] != 0) {
                            resolvedSavings = 0;
                        }
                    } else if (offsets[1] == 0) {
                        if (btz != null) {
                            TimeZoneTransition afterTrs;
                            TimeZoneTransition beforeTrs;
                            long time;
                            long beforeT = time = localMillis + (long)offsets[0];
                            long afterT = time;
                            int beforeSav = 0;
                            int afterSav = 0;
                            while ((beforeTrs = btz.getPreviousTransition(beforeT, true)) != null) {
                                beforeT = beforeTrs.getTime() - 1L;
                                beforeSav = beforeTrs.getFrom().getDSTSavings();
                                if (beforeSav == 0) continue;
                            }
                            while ((afterTrs = btz.getNextTransition(afterT, false)) != null) {
                                afterT = afterTrs.getTime();
                                afterSav = afterTrs.getTo().getDSTSavings();
                                if (afterSav == 0) continue;
                            }
                            resolvedSavings = beforeTrs != null && afterTrs != null ? (time - beforeT > afterT - time ? afterSav : beforeSav) : (beforeTrs != null && beforeSav != 0 ? beforeSav : (afterTrs != null && afterSav != 0 ? afterSav : btz.getDSTSavings()));
                        } else {
                            resolvedSavings = tz.getDSTSavings();
                        }
                        if (resolvedSavings == 0) {
                            resolvedSavings = 3600000;
                        }
                    }
                    cal.set(15, offsets[0]);
                    cal.set(16, resolvedSavings);
                }
            }
        }
        catch (IllegalArgumentException illegalArgumentException) {
            parsePos.setErrorIndex(pos);
            parsePos.setIndex(start);
            if (backupTZ != null) {
                this.calendar.setTimeZone(backupTZ);
            }
            return;
        }
        if (resultCal != null) {
            resultCal.setTimeZone(cal.getTimeZone());
            resultCal.setTimeInMillis(cal.getTimeInMillis());
        }
        if (backupTZ != null) {
            this.calendar.setTimeZone(backupTZ);
        }
    }

    protected int matchString(String text, int start, int field, String[] data, Calendar cal) {
        int i = 0;
        int count = data.length;
        if (field == 7) {
            i = 1;
        }
        int bestMatchLength = 0;
        int bestMatch = -1;
        while (i < count) {
            int length = data[i].length();
            if (length > bestMatchLength && text.regionMatches(true, start, data[i], 0, length)) {
                bestMatch = i;
                bestMatchLength = length;
            }
            ++i;
        }
        if (bestMatch >= 0) {
            cal.set(field, bestMatch);
            return start + bestMatchLength;
        }
        return -start;
    }

    protected int matchQuarterString(String text, int start, int field, String[] data, Calendar cal) {
        int i = 0;
        int count = data.length;
        int bestMatchLength = 0;
        int bestMatch = -1;
        while (i < count) {
            int length = data[i].length();
            if (length > bestMatchLength && text.regionMatches(true, start, data[i], 0, length)) {
                bestMatch = i;
                bestMatchLength = length;
            }
            ++i;
        }
        if (bestMatch >= 0) {
            cal.set(field, bestMatch * 3);
            return start + bestMatchLength;
        }
        return -start;
    }

    /*
     * Unable to fully structure code
     */
    protected int subParse(String text, int start, char ch, int count, boolean obeyCount, boolean allowNegative, boolean[] ambiguousYear, Calendar cal) {
        number = null;
        currentNumberFormat = null;
        value = 0;
        pos = new ParsePosition(0);
        patternCharIndex = -1;
        if ('A' <= ch && ch <= 'z') {
            patternCharIndex = SimpleDateFormat.PATTERN_CHAR_TO_INDEX[ch - 64];
        }
        if (patternCharIndex == -1) {
            return -start;
        }
        currentNumberFormat = this.getNumberFormat(ch);
        field = SimpleDateFormat.PATTERN_INDEX_TO_CALENDAR_FIELD[patternCharIndex];
        while (true) {
            if (start >= text.length()) {
                return -start;
            }
            c = UTF16.charAt(text, start);
            if (!UCharacter.isUWhiteSpace(c) || !UCharacterProperty.isRuleWhiteSpace(c)) break;
            start += UTF16.getCharCount(c);
        }
        pos.setIndex(start);
        if (patternCharIndex == 4 || patternCharIndex == 15 || patternCharIndex == 2 && count <= 2 || patternCharIndex == 1 || patternCharIndex == 8) {
            if (obeyCount) {
                if (start + count > text.length()) {
                    return -start;
                }
                number = this.parseInt(text, count, pos, allowNegative, currentNumberFormat);
            } else {
                number = this.parseInt(text, pos, allowNegative, currentNumberFormat);
            }
            if (number == null) {
                return -start;
            }
            value = number.intValue();
        }
        switch (patternCharIndex) {
            case 0: {
                if (count == 4) {
                    return this.matchString(text, start, 0, this.formatData.eraNames, cal);
                }
                return this.matchString(text, start, 0, this.formatData.eras, cal);
            }
            case 1: {
                if (count == 2 && pos.getIndex() - start == 2 && UCharacter.isDigit(text.charAt(start)) && UCharacter.isDigit(text.charAt(start + 1))) {
                    ambiguousTwoDigitYear = this.getDefaultCenturyStartYear() % 100;
                    ambiguousYear[0] = value == ambiguousTwoDigitYear;
                    value += this.getDefaultCenturyStartYear() / 100 * 100 + (value < ambiguousTwoDigitYear ? 100 : 0);
                }
                cal.set(1, value);
                if (SimpleDateFormat.DelayedHebrewMonthCheck) {
                    if (!HebrewCalendar.isLeapYear(value)) {
                        cal.add(2, 1);
                    }
                    SimpleDateFormat.DelayedHebrewMonthCheck = false;
                }
                return pos.getIndex();
            }
            case 2: {
                if (count <= 2) {
                    cal.set(2, value - 1);
                    if (cal.getType().equals("hebrew") && value >= 6) {
                        if (cal.isSet(1)) {
                            if (!HebrewCalendar.isLeapYear(cal.get(1))) {
                                cal.set(2, value);
                            }
                        } else {
                            SimpleDateFormat.DelayedHebrewMonthCheck = true;
                        }
                    }
                    return pos.getIndex();
                }
                newStart = this.matchString(text, start, 2, this.formatData.months, cal);
                if (newStart > 0) {
                    return newStart;
                }
                return this.matchString(text, start, 2, this.formatData.shortMonths, cal);
            }
            case 26: {
                if (count <= 2) {
                    cal.set(2, value - 1);
                    return pos.getIndex();
                }
                newStart = this.matchString(text, start, 2, this.formatData.standaloneMonths, cal);
                if (newStart > 0) {
                    return newStart;
                }
                return this.matchString(text, start, 2, this.formatData.standaloneShortMonths, cal);
            }
            case 4: {
                if (value == cal.getMaximum(11) + 1) {
                    value = 0;
                }
                cal.set(11, value);
                return pos.getIndex();
            }
            case 8: {
                i = pos.getIndex() - start;
                if (i < 3) {
                    while (i < 3) {
                        value *= 10;
                        ++i;
                    }
                } else {
                    a = 1;
                    while (i > 3) {
                        a *= 10;
                        --i;
                    }
                    value = (value + (a >> 1)) / a;
                }
                cal.set(14, value);
                return pos.getIndex();
            }
            case 9: {
                newStart = this.matchString(text, start, 7, this.formatData.weekdays, cal);
                if (newStart > 0) {
                    return newStart;
                }
                return this.matchString(text, start, 7, this.formatData.shortWeekdays, cal);
            }
            case 25: {
                newStart = this.matchString(text, start, 7, this.formatData.standaloneWeekdays, cal);
                if (newStart > 0) {
                    return newStart;
                }
                return this.matchString(text, start, 7, this.formatData.standaloneShortWeekdays, cal);
            }
            case 14: {
                return this.matchString(text, start, 9, this.formatData.ampms, cal);
            }
            case 15: {
                if (value == cal.getLeastMaximum(10) + 1) {
                    value = 0;
                }
                cal.set(10, value);
                return pos.getIndex();
            }
            case 17: 
            case 23: 
            case 24: 
            case 29: {
                tz = null;
                offset = 0;
                parsed = false;
                gmtoff = this.parseGMT(text, pos, currentNumberFormat);
                if (gmtoff != null) {
                    offset = gmtoff;
                    parsed = true;
                }
                if (parsed) ** GOTO lbl148
                sign = 0;
                signChar = text.charAt(start);
                if (signChar != '+') ** GOTO lbl120
                sign = 1;
                ** GOTO lbl122
lbl120:
                // 1 sources

                if (signChar != '-') ** GOTO lbl146
                sign = -1;
lbl122:
                // 2 sources

                orgPos = start + 1;
                pos.setIndex(orgPos);
                number = this.parseInt(text, 6, pos, false, currentNumberFormat);
                numLen = pos.getIndex() - orgPos;
                if (numLen > 0) {
                    val = number.intValue();
                    hour = 0;
                    min = 0;
                    sec = 0;
                    switch (numLen) {
                        case 1: 
                        case 2: {
                            hour = val;
                            break;
                        }
                        case 3: 
                        case 4: {
                            hour = val / 100;
                            min = val % 100;
                            break;
                        }
                        case 5: 
                        case 6: {
                            hour = val / 10000;
                            min = val % 10000 / 100;
                            sec = val % 100;
                        }
                    }
                    if (hour <= 23 && min <= 59 && sec <= 59) {
                        offset = ((hour * 60 + min) * 60 + sec) * 1000 * sign;
                        parsed = true;
                    }
                }
lbl146:
                // 6 sources

                if (!parsed) {
                    pos.setIndex(start);
                }
lbl148:
                // 4 sources

                if (parsed) {
                    tz = ZoneMeta.getCustomTimeZone(offset);
                    cal.setTimeZone(tz);
                    return pos.getIndex();
                }
                zsinfo = null;
                switch (patternCharIndex) {
                    case 17: {
                        if (count < 4) {
                            zsinfo = this.formatData.getZoneStringFormat().findSpecificShort(text, start);
                            break;
                        }
                        zsinfo = this.formatData.getZoneStringFormat().findSpecificLong(text, start);
                        break;
                    }
                    case 24: {
                        if (count == 1) {
                            zsinfo = this.formatData.getZoneStringFormat().findGenericShort(text, start);
                            break;
                        }
                        if (count != 4) break;
                        zsinfo = this.formatData.getZoneStringFormat().findGenericLong(text, start);
                        break;
                    }
                    case 29: {
                        if (count == 1) {
                            zsinfo = this.formatData.getZoneStringFormat().findSpecificShort(text, start);
                            break;
                        }
                        if (count != 4) break;
                        zsinfo = this.formatData.getZoneStringFormat().findGenericLocation(text, start);
                    }
                }
                if (zsinfo != null) {
                    if (zsinfo.isStandard()) {
                        this.tztype = 1;
                    } else if (zsinfo.isDaylight()) {
                        this.tztype = 2;
                    }
                    tz = TimeZone.getTimeZone(zsinfo.getID());
                    cal.setTimeZone(tz);
                    return start + zsinfo.getString().length();
                }
                gmtLen = 0;
                if (text.regionMatches(true, start, "GMT", 0, 3)) {
                    gmtLen = 3;
                } else if (text.regionMatches(true, start, "UTC", 0, 3)) {
                    gmtLen = 3;
                } else if (text.regionMatches(true, start, "UT", 0, 2)) {
                    gmtLen = 2;
                }
                if (gmtLen > 0) {
                    tz = TimeZone.getTimeZone("Etc/GMT");
                    cal.setTimeZone(tz);
                    return start + gmtLen;
                }
                return -start;
            }
            case 27: {
                if (count <= 2) {
                    cal.set(2, (value - 1) * 3);
                    return pos.getIndex();
                }
                newStart = this.matchQuarterString(text, start, 2, this.formatData.quarters, cal);
                if (newStart > 0) {
                    return newStart;
                }
                return this.matchQuarterString(text, start, 2, this.formatData.shortQuarters, cal);
            }
            case 28: {
                if (count <= 2) {
                    cal.set(2, (value - 1) * 3);
                    return pos.getIndex();
                }
                newStart = this.matchQuarterString(text, start, 2, this.formatData.standaloneQuarters, cal);
                if (newStart > 0) {
                    return newStart;
                }
                return this.matchQuarterString(text, start, 2, this.formatData.standaloneShortQuarters, cal);
            }
        }
        if (obeyCount) {
            if (start + count > text.length()) {
                return -start;
            }
            number = this.parseInt(text, count, pos, allowNegative, currentNumberFormat);
        } else {
            number = this.parseInt(text, pos, allowNegative, currentNumberFormat);
        }
        if (number != null) {
            cal.set(field, number.intValue());
            return pos.getIndex();
        }
        return -start;
    }

    private Number parseInt(String text, ParsePosition pos, boolean allowNegative, NumberFormat fmt) {
        return this.parseInt(text, -1, pos, allowNegative, fmt);
    }

    private Number parseInt(String text, int maxDigits, ParsePosition pos, boolean allowNegative, NumberFormat fmt) {
        int nDigits;
        Number number;
        int oldPos = pos.getIndex();
        if (allowNegative) {
            number = fmt.parse(text, pos);
        } else if (fmt instanceof DecimalFormat) {
            String oldPrefix = ((DecimalFormat)fmt).getNegativePrefix();
            ((DecimalFormat)fmt).setNegativePrefix(SUPPRESS_NEGATIVE_PREFIX);
            number = fmt.parse(text, pos);
            ((DecimalFormat)fmt).setNegativePrefix(oldPrefix);
        } else {
            boolean dateNumberFormat = fmt instanceof DateNumberFormat;
            if (dateNumberFormat) {
                ((DateNumberFormat)fmt).setParsePositiveOnly(true);
            }
            number = fmt.parse(text, pos);
            if (dateNumberFormat) {
                ((DateNumberFormat)fmt).setParsePositiveOnly(false);
            }
        }
        if (maxDigits > 0 && (nDigits = pos.getIndex() - oldPos) > maxDigits) {
            double val = number.doubleValue();
            nDigits -= maxDigits;
            while (nDigits > 0) {
                val /= 10.0;
                --nDigits;
            }
            pos.setIndex(oldPos + maxDigits);
            number = new Integer((int)val);
        }
        return number;
    }

    private String translatePattern(String pat, String from, String to) {
        StringBuilder result = new StringBuilder();
        boolean inQuote = false;
        int i = 0;
        while (i < pat.length()) {
            int ci;
            char c = pat.charAt(i);
            if (inQuote) {
                if (c == '\'') {
                    inQuote = false;
                }
            } else if (c == '\'') {
                inQuote = true;
            } else if ((c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z') && (ci = from.indexOf(c)) != -1) {
                c = to.charAt(ci);
            }
            result.append(c);
            ++i;
        }
        if (inQuote) {
            throw new IllegalArgumentException("Unfinished quote in pattern");
        }
        return result.toString();
    }

    public String toPattern() {
        return this.pattern;
    }

    public String toLocalizedPattern() {
        return this.translatePattern(this.pattern, "GyMdkHmsSEDFwWahKzYeugAZvcLQqV", this.formatData.localPatternChars);
    }

    public void applyPattern(String pat) {
        this.pattern = pat;
        this.setLocale(null, null);
        this.patternItems = null;
    }

    public void applyLocalizedPattern(String pat) {
        this.pattern = this.translatePattern(pat, this.formatData.localPatternChars, "GyMdkHmsSEDFwWahKzYeugAZvcLQqV");
        this.setLocale(null, null);
    }

    public DateFormatSymbols getDateFormatSymbols() {
        return (DateFormatSymbols)this.formatData.clone();
    }

    public void setDateFormatSymbols(DateFormatSymbols newFormatSymbols) {
        this.formatData = (DateFormatSymbols)newFormatSymbols.clone();
        this.gmtfmtCache = null;
    }

    protected DateFormatSymbols getSymbols() {
        return this.formatData;
    }

    @Override
    public Object clone() {
        SimpleDateFormat other = (SimpleDateFormat)super.clone();
        other.formatData = (DateFormatSymbols)this.formatData.clone();
        return other;
    }

    @Override
    public int hashCode() {
        return this.pattern.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        SimpleDateFormat that = (SimpleDateFormat)obj;
        return this.pattern.equals(that.pattern) && this.formatData.equals(that.formatData);
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        if (this.defaultCenturyStart == null) {
            this.initializeDefaultCenturyStart(this.defaultCenturyBase);
        }
        stream.defaultWriteObject();
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        if (this.serialVersionOnStream < 1) {
            this.defaultCenturyBase = System.currentTimeMillis();
        } else {
            this.parseAmbiguousDatesAsAfter(this.defaultCenturyStart);
        }
        this.serialVersionOnStream = 1;
        this.locale = this.getLocale(ULocale.VALID_LOCALE);
        this.initLocalZeroPaddingNumberFormat();
    }

    @Override
    public AttributedCharacterIterator formatToCharacterIterator(Object obj) {
        Calendar cal = this.calendar;
        if (obj instanceof Calendar) {
            cal = (Calendar)obj;
        } else if (obj instanceof Date) {
            this.calendar.setTime((Date)obj);
        } else if (obj instanceof Number) {
            this.calendar.setTimeInMillis(((Number)obj).longValue());
        } else {
            throw new IllegalArgumentException("Cannot format given Object as a Date");
        }
        StringBuffer toAppendTo = new StringBuffer();
        FieldPosition pos = new FieldPosition(0);
        ArrayList<FieldPosition> attributes = new ArrayList<FieldPosition>();
        this.format(cal, toAppendTo, pos, attributes);
        AttributedString as = new AttributedString(toAppendTo.toString());
        int i = 0;
        while (i < attributes.size()) {
            FieldPosition fp = (FieldPosition)attributes.get(i);
            Format.Field attribute = fp.getFieldAttribute();
            as.addAttribute(attribute, attribute, fp.getBeginIndex(), fp.getEndIndex());
            ++i;
        }
        return as.getIterator();
    }

    ULocale getLocale() {
        return this.locale;
    }

    boolean isFieldUnitIgnored(int field) {
        return SimpleDateFormat.isFieldUnitIgnored(this.pattern, field);
    }

    static boolean isFieldUnitIgnored(String pattern, int field) {
        int level;
        int fieldLevel = CALENDAR_FIELD_TO_LEVEL[field];
        boolean inQuote = false;
        char prevCh = '\u0000';
        int count = 0;
        int i = 0;
        while (i < pattern.length()) {
            char ch = pattern.charAt(i);
            if (ch != prevCh && count > 0) {
                level = PATTERN_CHAR_TO_LEVEL[prevCh - 64];
                if (fieldLevel <= level) {
                    return false;
                }
                count = 0;
            }
            if (ch == '\'') {
                if (i + 1 < pattern.length() && pattern.charAt(i + 1) == '\'') {
                    ++i;
                } else {
                    inQuote = !inQuote;
                }
            } else if (!inQuote && (ch >= 'a' && ch <= 'z' || ch >= 'A' && ch <= 'Z')) {
                prevCh = ch;
                ++count;
            }
            ++i;
        }
        return count <= 0 || fieldLevel > (level = PATTERN_CHAR_TO_LEVEL[prevCh - 64]);
    }

    public final StringBuffer intervalFormatByAlgorithm(Calendar fromCalendar, Calendar toCalendar, StringBuffer appendTo, FieldPosition pos) throws IllegalArgumentException {
        PatternItem item;
        if (!fromCalendar.isEquivalentTo(toCalendar)) {
            throw new IllegalArgumentException("can not format on two different calendars");
        }
        Object[] items = this.getPatternItems();
        int diffBegin = -1;
        int diffEnd = -1;
        try {
            int i = 0;
            while (i < items.length) {
                if (this.diffCalFieldValue(fromCalendar, toCalendar, items, i)) {
                    diffBegin = i;
                    break;
                }
                ++i;
            }
            if (diffBegin == -1) {
                return this.format(fromCalendar, appendTo, pos);
            }
            i = items.length - 1;
            while (i >= diffBegin) {
                if (this.diffCalFieldValue(fromCalendar, toCalendar, items, i)) {
                    diffEnd = i;
                    break;
                }
                --i;
            }
        }
        catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(e.toString());
        }
        if (diffBegin == 0 && diffEnd == items.length - 1) {
            this.format(fromCalendar, appendTo, pos);
            appendTo.append(" \u2013 ");
            this.format(toCalendar, appendTo, pos);
            return appendTo;
        }
        int highestLevel = 1000;
        int i = diffBegin;
        while (i <= diffEnd) {
            if (!(items[i] instanceof String)) {
                item = (PatternItem)items[i];
                char ch = item.type;
                int patternCharIndex = -1;
                if ('A' <= ch && ch <= 'z') {
                    patternCharIndex = PATTERN_CHAR_TO_LEVEL[ch - 64];
                }
                if (patternCharIndex == -1) {
                    throw new IllegalArgumentException("Illegal pattern character '" + ch + "' in \"" + this.pattern + '\"');
                }
                if (patternCharIndex < highestLevel) {
                    highestLevel = patternCharIndex;
                }
            }
            ++i;
        }
        try {
            i = 0;
            while (i < diffBegin) {
                if (this.lowerLevel(items, i, highestLevel)) {
                    diffBegin = i;
                    break;
                }
                ++i;
            }
            i = items.length - 1;
            while (i > diffEnd) {
                if (this.lowerLevel(items, i, highestLevel)) {
                    diffEnd = i;
                    break;
                }
                --i;
            }
        }
        catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(e.toString());
        }
        if (diffBegin == 0 && diffEnd == items.length - 1) {
            this.format(fromCalendar, appendTo, pos);
            appendTo.append(" \u2013 ");
            this.format(toCalendar, appendTo, pos);
            return appendTo;
        }
        pos.setBeginIndex(0);
        pos.setEndIndex(0);
        i = 0;
        while (i <= diffEnd) {
            if (items[i] instanceof String) {
                appendTo.append((String)items[i]);
            } else {
                item = (PatternItem)items[i];
                if (this.useFastFormat) {
                    this.subFormat(appendTo, item.type, item.length, appendTo.length(), pos, fromCalendar);
                } else {
                    appendTo.append(this.subFormat(item.type, item.length, appendTo.length(), pos, this.formatData, fromCalendar));
                }
            }
            ++i;
        }
        appendTo.append(" \u2013 ");
        i = diffBegin;
        while (i < items.length) {
            if (items[i] instanceof String) {
                appendTo.append((String)items[i]);
            } else {
                item = (PatternItem)items[i];
                if (this.useFastFormat) {
                    this.subFormat(appendTo, item.type, item.length, appendTo.length(), pos, toCalendar);
                } else {
                    appendTo.append(this.subFormat(item.type, item.length, appendTo.length(), pos, this.formatData, toCalendar));
                }
            }
            ++i;
        }
        return appendTo;
    }

    private boolean diffCalFieldValue(Calendar fromCalendar, Calendar toCalendar, Object[] items, int i) throws IllegalArgumentException {
        int value_2;
        if (items[i] instanceof String) {
            return false;
        }
        PatternItem item = (PatternItem)items[i];
        char ch = item.type;
        int patternCharIndex = -1;
        if ('A' <= ch && ch <= 'z') {
            patternCharIndex = PATTERN_CHAR_TO_INDEX[ch - 64];
        }
        if (patternCharIndex == -1) {
            throw new IllegalArgumentException("Illegal pattern character '" + ch + "' in \"" + this.pattern + '\"');
        }
        int field = PATTERN_INDEX_TO_CALENDAR_FIELD[patternCharIndex];
        int value = fromCalendar.get(field);
        return value != (value_2 = toCalendar.get(field));
    }

    private boolean lowerLevel(Object[] items, int i, int level) throws IllegalArgumentException {
        if (items[i] instanceof String) {
            return false;
        }
        PatternItem item = (PatternItem)items[i];
        char ch = item.type;
        int patternCharIndex = -1;
        if ('A' <= ch && ch <= 'z') {
            patternCharIndex = PATTERN_CHAR_TO_LEVEL[ch - 64];
        }
        if (patternCharIndex == -1) {
            throw new IllegalArgumentException("Illegal pattern character '" + ch + "' in \"" + this.pattern + '\"');
        }
        return patternCharIndex >= level;
    }

    protected NumberFormat getNumberFormat(char ch) {
        Character ovrField = new Character(ch);
        if (this.overrideMap != null && this.overrideMap.containsKey(ovrField)) {
            String nsName = this.overrideMap.get(ovrField).toString();
            NumberFormat nf = this.numberFormatters.get(nsName);
            return nf;
        }
        return this.numberFormat;
    }

    private void initNumberFormatters(ULocale loc) {
        this.numberFormatters = new HashMap();
        this.overrideMap = new HashMap();
        this.processOverrideString(loc, this.override);
    }

    private void processOverrideString(ULocale loc, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        int start = 0;
        boolean moreToProcess = true;
        while (moreToProcess) {
            boolean fullOverride;
            String nsName;
            int end;
            int delimiterPosition = str.indexOf(";", start);
            if (delimiterPosition == -1) {
                moreToProcess = false;
                end = str.length();
            } else {
                end = delimiterPosition;
            }
            String currentString = str.substring(start, end);
            int equalSignPosition = currentString.indexOf("=");
            if (equalSignPosition == -1) {
                nsName = currentString;
                fullOverride = true;
            } else {
                nsName = currentString.substring(equalSignPosition + 1);
                Character ovrField = new Character(currentString.charAt(0));
                this.overrideMap.put(ovrField, nsName);
                fullOverride = false;
            }
            ULocale ovrLoc = new ULocale(String.valueOf(loc.getBaseName()) + "@numbers=" + nsName);
            NumberFormat nf = NumberFormat.createInstance(ovrLoc, 0);
            if (fullOverride) {
                this.setNumberFormat(nf);
            } else {
                this.useLocalZeroPaddingNumberFormat = false;
            }
            if (!this.numberFormatters.containsKey(nsName)) {
                this.numberFormatters.put(nsName, nf);
            }
            start = delimiterPosition + 1;
        }
    }

    private static class PatternItem {
        final char type;
        final int length;
        final boolean isNumeric;

        PatternItem(char type, int length) {
            this.type = type;
            this.length = length;
            this.isNumeric = SimpleDateFormat.isNumeric(type, length);
        }
    }
}

