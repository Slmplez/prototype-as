/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.PatternTokenizer;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.Utility;
import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.DecimalFormatSymbols;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.text.SimpleDateFormat;
import com.ibm.icu.text.UnicodeSet;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.Freezable;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DateTimePatternGenerator
implements Freezable<DateTimePatternGenerator>,
Cloneable {
    public static final int ERA = 0;
    public static final int YEAR = 1;
    public static final int QUARTER = 2;
    public static final int MONTH = 3;
    public static final int WEEK_OF_YEAR = 4;
    public static final int WEEK_OF_MONTH = 5;
    public static final int WEEKDAY = 6;
    public static final int DAY = 7;
    public static final int DAY_OF_YEAR = 8;
    public static final int DAY_OF_WEEK_IN_MONTH = 9;
    public static final int DAYPERIOD = 10;
    public static final int HOUR = 11;
    public static final int MINUTE = 12;
    public static final int SECOND = 13;
    public static final int FRACTIONAL_SECOND = 14;
    public static final int ZONE = 15;
    public static final int TYPE_LIMIT = 16;
    public static final int MATCH_NO_OPTIONS = 0;
    public static final int MATCH_HOUR_FIELD_LENGTH = 2048;
    public static final int MATCH_MINUTE_FIELD_LENGTH = 4096;
    public static final int MATCH_SECOND_FIELD_LENGTH = 8192;
    public static final int MATCH_ALL_FIELDS_LENGTH = 65535;
    private TreeMap<DateTimeMatcher, PatternWithSkeletonFlag> skeleton2pattern = new TreeMap();
    private TreeMap<String, PatternWithSkeletonFlag> basePattern_pattern = new TreeMap();
    private String decimal = "?";
    private String dateTimeFormat = "{1} {0}";
    private String[] appendItemFormats = new String[16];
    private String[] appendItemNames = new String[16];
    private char defaultHourFormatChar;
    private boolean frozen;
    private transient DateTimeMatcher current;
    private transient FormatParser fp;
    private transient DistanceInfo _distanceInfo;
    private static final int FRACTIONAL_MASK = 16384;
    private static final int SECOND_AND_FRACTIONAL_MASK = 24576;
    private static ICUCache<String, DateTimePatternGenerator> DTPNG_CACHE = new SimpleCache<String, DateTimePatternGenerator>();
    private static String[] CLDR_FIELD_APPEND = new String[]{"Era", "Year", "Quarter", "Month", "Week", "*", "Day-Of-Week", "Day", "*", "*", "*", "Hour", "Minute", "Second", "*", "Timezone"};
    private static String[] CLDR_FIELD_NAME = new String[]{"era", "year", "*", "month", "week", "*", "weekday", "day", "*", "*", "dayperiod", "hour", "minute", "second", "*", "zone"};
    private static String[] FIELD_NAME = new String[]{"Era", "Year", "Quarter", "Month", "Week_in_Year", "Week_in_Month", "Weekday", "Day", "Day_Of_Year", "Day_of_Week_in_Month", "Dayperiod", "Hour", "Minute", "Second", "Fractional_Second", "Zone"};
    private static String[] CANONICAL_ITEMS = new String[]{"G", "y", "Q", "M", "w", "W", "e", "d", "D", "F", "H", "m", "s", "S", "v"};
    private static Set<String> CANONICAL_SET = new HashSet<String>(Arrays.asList(CANONICAL_ITEMS));
    private Set<String> cldrAvailableFormatKeys;
    private static final int DATE_MASK = 1023;
    private static final int TIME_MASK = 64512;
    private static final int DELTA = 16;
    private static final int NUMERIC = 256;
    private static final int NONE = 0;
    private static final int NARROW = -257;
    private static final int SHORT = -258;
    private static final int LONG = -259;
    private static final int EXTRA_FIELD = 65536;
    private static final int MISSING_FIELD = 4096;
    private static int[][] types;

    static {
        int[][] nArrayArray = new int[53][];
        int[] nArray = new int[5];
        nArray[0] = 71;
        nArray[2] = -258;
        nArray[3] = 1;
        nArray[4] = 3;
        nArrayArray[0] = nArray;
        int[] nArray2 = new int[4];
        nArray2[0] = 71;
        nArray2[2] = -259;
        nArray2[3] = 4;
        nArrayArray[1] = nArray2;
        nArrayArray[2] = new int[]{121, 1, 256, 1, 20};
        nArrayArray[3] = new int[]{89, 1, 272, 1, 20};
        nArrayArray[4] = new int[]{117, 1, 288, 1, 20};
        nArrayArray[5] = new int[]{81, 2, 256, 1, 2};
        nArrayArray[6] = new int[]{81, 2, -258, 3};
        nArrayArray[7] = new int[]{81, 2, -259, 4};
        nArrayArray[8] = new int[]{113, 2, 272, 1, 2};
        nArrayArray[9] = new int[]{113, 2, -242, 3};
        nArrayArray[10] = new int[]{113, 2, -243, 4};
        nArrayArray[11] = new int[]{77, 3, 256, 1, 2};
        nArrayArray[12] = new int[]{77, 3, -258, 3};
        nArrayArray[13] = new int[]{77, 3, -259, 4};
        nArrayArray[14] = new int[]{77, 3, -257, 5};
        nArrayArray[15] = new int[]{76, 3, 272, 1, 2};
        nArrayArray[16] = new int[]{76, 3, -274, 3};
        nArrayArray[17] = new int[]{76, 3, -275, 4};
        nArrayArray[18] = new int[]{76, 3, -273, 5};
        nArrayArray[19] = new int[]{119, 4, 256, 1, 2};
        nArrayArray[20] = new int[]{87, 5, 272, 1};
        nArrayArray[21] = new int[]{101, 6, 272, 1, 2};
        nArrayArray[22] = new int[]{101, 6, -274, 3};
        nArrayArray[23] = new int[]{101, 6, -275, 4};
        nArrayArray[24] = new int[]{101, 6, -273, 5};
        nArrayArray[25] = new int[]{69, 6, -258, 1, 3};
        nArrayArray[26] = new int[]{69, 6, -259, 4};
        nArrayArray[27] = new int[]{69, 6, -257, 5};
        nArrayArray[28] = new int[]{99, 6, 288, 1, 2};
        nArrayArray[29] = new int[]{99, 6, -290, 3};
        nArrayArray[30] = new int[]{99, 6, -291, 4};
        nArrayArray[31] = new int[]{99, 6, -289, 5};
        nArrayArray[32] = new int[]{100, 7, 256, 1, 2};
        nArrayArray[33] = new int[]{68, 8, 272, 1, 3};
        nArrayArray[34] = new int[]{70, 9, 288, 1};
        nArrayArray[35] = new int[]{103, 7, 304, 1, 20};
        nArrayArray[36] = new int[]{97, 10, -258, 1};
        nArrayArray[37] = new int[]{72, 11, 416, 1, 2};
        nArrayArray[38] = new int[]{107, 11, 432, 1, 2};
        nArrayArray[39] = new int[]{104, 11, 256, 1, 2};
        nArrayArray[40] = new int[]{75, 11, 272, 1, 2};
        nArrayArray[41] = new int[]{109, 12, 256, 1, 2};
        nArrayArray[42] = new int[]{115, 13, 256, 1, 2};
        nArrayArray[43] = new int[]{83, 14, 272, 1, 1000};
        nArrayArray[44] = new int[]{65, 13, 288, 1, 1000};
        nArrayArray[45] = new int[]{118, 15, -290, 1};
        nArrayArray[46] = new int[]{118, 15, -291, 4};
        nArrayArray[47] = new int[]{122, 15, -258, 1, 3};
        nArrayArray[48] = new int[]{122, 15, -259, 4};
        nArrayArray[49] = new int[]{90, 15, -274, 1, 3};
        nArrayArray[50] = new int[]{90, 15, -275, 4};
        nArrayArray[51] = new int[]{86, 15, -274, 1, 3};
        nArrayArray[52] = new int[]{86, 15, -275, 4};
        types = nArrayArray;
    }

    public static DateTimePatternGenerator getEmptyInstance() {
        return new DateTimePatternGenerator();
    }

    protected DateTimePatternGenerator() {
        int i = 0;
        while (i < 16) {
            this.appendItemFormats[i] = "{0} \u251c{2}: {1}\u2524";
            this.appendItemNames[i] = "F" + i;
            ++i;
        }
        this.defaultHourFormatChar = (char)72;
        this.frozen = false;
        this.current = new DateTimeMatcher();
        this.fp = new FormatParser();
        this._distanceInfo = new DistanceInfo();
        this.complete();
        this.cldrAvailableFormatKeys = new HashSet<String>(20);
    }

    public static DateTimePatternGenerator getInstance() {
        return DateTimePatternGenerator.getInstance(ULocale.getDefault());
    }

    public static DateTimePatternGenerator getInstance(ULocale uLocale) {
        return DateTimePatternGenerator.getFrozenInstance(uLocale).cloneAsThawed();
    }

    public static DateTimePatternGenerator getFrozenInstance(ULocale uLocale) {
        String value;
        ICUResourceBundle formatBundle;
        String localeKey = uLocale.toString();
        DateTimePatternGenerator result = DTPNG_CACHE.get(localeKey);
        if (result != null) {
            return result;
        }
        result = new DateTimePatternGenerator();
        PatternInfo returnInfo = new PatternInfo();
        String shortTimePattern = null;
        int i = 0;
        while (i <= 3) {
            SimpleDateFormat df = (SimpleDateFormat)DateFormat.getDateInstance(i, uLocale);
            result.addPattern(df.toPattern(), false, returnInfo);
            df = (SimpleDateFormat)DateFormat.getTimeInstance(i, uLocale);
            result.addPattern(df.toPattern(), false, returnInfo);
            if (i == 3) {
                shortTimePattern = df.toPattern();
                FormatParser fp = new FormatParser();
                fp.set(shortTimePattern);
                List<Object> items = fp.getItems();
                int idx = 0;
                while (idx < items.size()) {
                    VariableField fld;
                    Object item = items.get(idx);
                    if (item instanceof VariableField && (fld = (VariableField)item).getType() == 11) {
                        result.defaultHourFormatChar = fld.toString().charAt(0);
                        break;
                    }
                    ++idx;
                }
            }
            ++i;
        }
        ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", uLocale);
        ULocale parentLocale = rb.getULocale();
        String calendarTypeToUse = uLocale.getKeywordValue("calendar");
        if (calendarTypeToUse == null) {
            String[] preferredCalendarTypes = Calendar.getKeywordValuesForLocale("calendar", uLocale, true);
            calendarTypeToUse = preferredCalendarTypes[0];
        }
        if (calendarTypeToUse == null) {
            calendarTypeToUse = "gregorian";
        }
        rb = rb.getWithFallback("calendar");
        ICUResourceBundle calTypeBundle = rb.getWithFallback(calendarTypeToUse);
        try {
            ICUResourceBundle itemBundle = calTypeBundle.getWithFallback("appendItems");
            int i2 = 0;
            while (i2 < itemBundle.getSize()) {
                formatBundle = (ICUResourceBundle)itemBundle.get(i2);
                String formatName = itemBundle.get(i2).getKey();
                value = formatBundle.getString();
                result.setAppendItemFormat(DateTimePatternGenerator.getAppendFormatNumber(formatName), value);
                ++i2;
            }
        }
        catch (Exception exception) {}
        try {
            ICUResourceBundle itemBundle = calTypeBundle.getWithFallback("fields");
            int i3 = 0;
            while (i3 < 16) {
                if (DateTimePatternGenerator.isCLDRFieldName(i3)) {
                    ICUResourceBundle fieldBundle = itemBundle.getWithFallback(CLDR_FIELD_NAME[i3]);
                    ICUResourceBundle dnBundle = fieldBundle.getWithFallback("dn");
                    value = dnBundle.getString();
                    result.setAppendItemName(i3, value);
                }
                ++i3;
            }
        }
        catch (Exception exception) {}
        try {
            ICUResourceBundle formatBundle2 = calTypeBundle.getWithFallback("availableFormats");
            int i4 = 0;
            while (i4 < formatBundle2.getSize()) {
                String formatKey = formatBundle2.get(i4).getKey();
                String formatValue = formatBundle2.get(i4).getString();
                result.setAvailableFormat(formatKey);
                result.addPatternWithSkeleton(formatValue, formatKey, false, returnInfo);
                ++i4;
            }
        }
        catch (Exception exception) {}
        while ((parentLocale = parentLocale.getFallback()) != null) {
            ICUResourceBundle prb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", parentLocale);
            prb = prb.getWithFallback("calendar");
            ICUResourceBundle pCalTypeBundle = prb.getWithFallback(calendarTypeToUse);
            try {
                formatBundle = pCalTypeBundle.getWithFallback("availableFormats");
                int i5 = 0;
                while (i5 < formatBundle.getSize()) {
                    String formatKey = formatBundle.get(i5).getKey();
                    String formatValue = formatBundle.get(i5).getString();
                    if (!result.isAvailableFormatSet(formatKey)) {
                        result.setAvailableFormat(formatKey);
                        result.addPatternWithSkeleton(formatValue, formatKey, false, returnInfo);
                    }
                    ++i5;
                }
            }
            catch (Exception exception) {}
        }
        if (shortTimePattern != null) {
            DateTimePatternGenerator.hackTimes(result, returnInfo, shortTimePattern);
        }
        result.setDateTimeFormat(Calendar.getDateTimePattern(Calendar.getInstance(uLocale), uLocale, 2));
        DecimalFormatSymbols dfs = new DecimalFormatSymbols(uLocale);
        result.setDecimal(String.valueOf(dfs.getDecimalSeparator()));
        result.freeze();
        DTPNG_CACHE.put(localeKey, result);
        return result;
    }

    private static void hackTimes(DateTimePatternGenerator result, PatternInfo returnInfo, String hackPattern) {
        result.fp.set(hackPattern);
        StringBuilder mmss = new StringBuilder();
        boolean gotMm = false;
        int i = 0;
        while (i < result.fp.items.size()) {
            Object item = result.fp.items.get(i);
            if (item instanceof String) {
                if (gotMm) {
                    mmss.append(result.fp.quoteLiteral(item.toString()));
                }
            } else {
                char ch = item.toString().charAt(0);
                if (ch == 'm') {
                    gotMm = true;
                    mmss.append(item);
                } else {
                    if (ch == 's') {
                        if (!gotMm) break;
                        mmss.append(item);
                        result.addPattern(mmss.toString(), false, returnInfo);
                        break;
                    }
                    if (gotMm || ch == 'z' || ch == 'Z' || ch == 'v' || ch == 'V') break;
                }
            }
            ++i;
        }
        BitSet variables = new BitSet();
        BitSet nuke = new BitSet();
        int i2 = 0;
        while (i2 < result.fp.items.size()) {
            Object item = result.fp.items.get(i2);
            if (item instanceof VariableField) {
                variables.set(i2);
                char ch = item.toString().charAt(0);
                if (ch == 's' || ch == 'S') {
                    nuke.set(i2);
                    int j = i2 - 1;
                    while (j >= 0) {
                        if (variables.get(j)) break;
                        nuke.set(i2);
                        ++j;
                    }
                }
            }
            ++i2;
        }
        String hhmm = DateTimePatternGenerator.getFilteredPattern(result.fp, nuke);
        result.addPattern(hhmm, false, returnInfo);
    }

    private static String getFilteredPattern(FormatParser fp, BitSet nuke) {
        StringBuilder result = new StringBuilder();
        int i = 0;
        while (i < fp.items.size()) {
            if (!nuke.get(i)) {
                Object item = fp.items.get(i);
                if (item instanceof String) {
                    result.append(fp.quoteLiteral(item.toString()));
                } else {
                    result.append(item.toString());
                }
            }
            ++i;
        }
        return result.toString();
    }

    private static int getAppendFormatNumber(String string) {
        int i = 0;
        while (i < CLDR_FIELD_APPEND.length) {
            if (CLDR_FIELD_APPEND[i].equals(string)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private static boolean isCLDRFieldName(int index) {
        if (index < 0 && index >= 16) {
            return false;
        }
        return CLDR_FIELD_NAME[index].charAt(0) != '*';
    }

    public String getBestPattern(String skeleton) {
        return this.getBestPattern(skeleton, null, 0);
    }

    public String getBestPattern(String skeleton, int options) {
        return this.getBestPattern(skeleton, null, options);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private String getBestPattern(String skeleton, DateTimeMatcher skipMatcher, int options) {
        String timePattern;
        String datePattern;
        skeleton = skeleton.replaceAll("j", String.valueOf(this.defaultHourFormatChar));
        DateTimePatternGenerator dateTimePatternGenerator = this;
        synchronized (dateTimePatternGenerator) {
            this.current.set(skeleton, this.fp);
            PatternWithMatcher bestWithMatcher = this.getBestRaw(this.current, -1, this._distanceInfo, skipMatcher);
            if (this._distanceInfo.missingFieldMask == 0 && this._distanceInfo.extraFieldMask == 0) {
                return this.adjustFieldTypes(bestWithMatcher, this.current, false, options);
            }
            int neededFields = this.current.getFieldMask();
            datePattern = this.getBestAppending(this.current, neededFields & 0x3FF, this._distanceInfo, skipMatcher, options);
            timePattern = this.getBestAppending(this.current, neededFields & 0xFC00, this._distanceInfo, skipMatcher, options);
        }
        if (datePattern == null) {
            return timePattern == null ? "" : timePattern;
        }
        if (timePattern == null) {
            return datePattern;
        }
        return MessageFormat.format(this.getDateTimeFormat(), timePattern, datePattern);
    }

    public DateTimePatternGenerator addPattern(String pattern, boolean override, PatternInfo returnInfo) {
        return this.addPatternWithSkeleton(pattern, null, override, returnInfo);
    }

    private DateTimePatternGenerator addPatternWithSkeleton(String pattern, String skeletonToUse, boolean override, PatternInfo returnInfo) {
        PatternWithSkeletonFlag previousValue;
        this.checkFrozen();
        DateTimeMatcher matcher = skeletonToUse == null ? new DateTimeMatcher().set(pattern, this.fp) : new DateTimeMatcher().set(skeletonToUse, this.fp);
        String basePattern = matcher.getBasePattern();
        PatternWithSkeletonFlag previousPatternWithSameBase = this.basePattern_pattern.get(basePattern);
        if (previousPatternWithSameBase != null) {
            returnInfo.status = 1;
            returnInfo.conflictingPattern = previousPatternWithSameBase.pattern;
            if (!override || skeletonToUse != null && previousPatternWithSameBase.skeletonWasSpecified) {
                return this;
            }
        }
        if ((previousValue = this.skeleton2pattern.get(matcher)) != null) {
            returnInfo.status = 2;
            returnInfo.conflictingPattern = previousValue.pattern;
            if (!override || skeletonToUse != null && previousValue.skeletonWasSpecified) {
                return this;
            }
        }
        returnInfo.status = 0;
        returnInfo.conflictingPattern = "";
        PatternWithSkeletonFlag patWithSkelFlag = new PatternWithSkeletonFlag(pattern, skeletonToUse != null);
        this.skeleton2pattern.put(matcher, patWithSkelFlag);
        this.basePattern_pattern.put(basePattern, patWithSkelFlag);
        return this;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getSkeleton(String pattern) {
        DateTimePatternGenerator dateTimePatternGenerator = this;
        synchronized (dateTimePatternGenerator) {
            this.current.set(pattern, this.fp);
            return this.current.toString();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getBaseSkeleton(String pattern) {
        DateTimePatternGenerator dateTimePatternGenerator = this;
        synchronized (dateTimePatternGenerator) {
            this.current.set(pattern, this.fp);
            return this.current.getBasePattern();
        }
    }

    public Map<String, String> getSkeletons(Map<String, String> result) {
        if (result == null) {
            result = new LinkedHashMap<String, String>();
        }
        for (DateTimeMatcher item : this.skeleton2pattern.keySet()) {
            PatternWithSkeletonFlag patternWithSkelFlag = this.skeleton2pattern.get(item);
            String pattern = patternWithSkelFlag.pattern;
            if (CANONICAL_SET.contains(pattern)) continue;
            result.put(item.toString(), pattern);
        }
        return result;
    }

    public Set<String> getBaseSkeletons(Set<String> result) {
        if (result == null) {
            result = new HashSet<String>();
        }
        result.addAll(this.basePattern_pattern.keySet());
        return result;
    }

    public String replaceFieldTypes(String pattern, String skeleton) {
        return this.replaceFieldTypes(pattern, skeleton, 0);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String replaceFieldTypes(String pattern, String skeleton, int options) {
        DateTimePatternGenerator dateTimePatternGenerator = this;
        synchronized (dateTimePatternGenerator) {
            PatternWithMatcher patternNoMatcher = new PatternWithMatcher(pattern, null);
            return this.adjustFieldTypes(patternNoMatcher, this.current.set(skeleton, this.fp), false, options);
        }
    }

    public void setDateTimeFormat(String dateTimeFormat) {
        this.checkFrozen();
        this.dateTimeFormat = dateTimeFormat;
    }

    public String getDateTimeFormat() {
        return this.dateTimeFormat;
    }

    public void setDecimal(String decimal) {
        this.checkFrozen();
        this.decimal = decimal;
    }

    public String getDecimal() {
        return this.decimal;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection<String> getRedundants(Collection<String> output) {
        DateTimePatternGenerator dateTimePatternGenerator = this;
        synchronized (dateTimePatternGenerator) {
            if (output == null) {
                output = new LinkedHashSet<String>();
            }
            for (DateTimeMatcher cur : this.skeleton2pattern.keySet()) {
                String trial;
                PatternWithSkeletonFlag patternWithSkelFlag = this.skeleton2pattern.get(cur);
                String pattern = patternWithSkelFlag.pattern;
                if (CANONICAL_SET.contains(pattern) || !(trial = this.getBestPattern(cur.toString(), cur, 0)).equals(pattern)) continue;
                output.add(pattern);
            }
            return output;
        }
    }

    public void setAppendItemFormat(int field, String value) {
        this.checkFrozen();
        this.appendItemFormats[field] = value;
    }

    public String getAppendItemFormat(int field) {
        return this.appendItemFormats[field];
    }

    public void setAppendItemName(int field, String value) {
        this.checkFrozen();
        this.appendItemNames[field] = value;
    }

    public String getAppendItemName(int field) {
        return this.appendItemNames[field];
    }

    public static boolean isSingleField(String skeleton) {
        char first = skeleton.charAt(0);
        int i = 1;
        while (i < skeleton.length()) {
            if (skeleton.charAt(i) != first) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void setAvailableFormat(String key) {
        this.checkFrozen();
        this.cldrAvailableFormatKeys.add(key);
    }

    private boolean isAvailableFormatSet(String key) {
        return this.cldrAvailableFormatKeys.contains(key);
    }

    @Override
    public boolean isFrozen() {
        return this.frozen;
    }

    @Override
    public DateTimePatternGenerator freeze() {
        this.frozen = true;
        return this;
    }

    @Override
    public DateTimePatternGenerator cloneAsThawed() {
        DateTimePatternGenerator result = (DateTimePatternGenerator)this.clone();
        this.frozen = false;
        return result;
    }

    public Object clone() {
        try {
            DateTimePatternGenerator result = (DateTimePatternGenerator)super.clone();
            result.skeleton2pattern = (TreeMap)this.skeleton2pattern.clone();
            result.basePattern_pattern = (TreeMap)this.basePattern_pattern.clone();
            result.appendItemFormats = (String[])this.appendItemFormats.clone();
            result.appendItemNames = (String[])this.appendItemNames.clone();
            result.current = new DateTimeMatcher();
            result.fp = new FormatParser();
            result._distanceInfo = new DistanceInfo();
            result.frozen = false;
            return result;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            throw new IllegalArgumentException("Internal Error");
        }
    }

    public boolean skeletonsAreSimilar(String id, String skeleton) {
        if (id.equals(skeleton)) {
            return true;
        }
        List<Object> parser1 = this.fp.set(id).getItems();
        List<Object> parser2 = this.fp.set(skeleton).getItems();
        if (parser1.size() != parser2.size()) {
            return false;
        }
        int i = 0;
        while (i < parser1.size()) {
            int index2;
            int index1 = DateTimePatternGenerator.getCanonicalIndex(parser1.get(i).toString(), false);
            if (types[index1][1] != types[index2 = DateTimePatternGenerator.getCanonicalIndex(parser2.get(i).toString(), false)][1]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void checkFrozen() {
        if (this.isFrozen()) {
            throw new UnsupportedOperationException("Attempt to modify frozen object");
        }
    }

    private String getBestAppending(DateTimeMatcher source, int missingFields, DistanceInfo distInfo, DateTimeMatcher skipMatcher, int options) {
        String resultPattern = null;
        if (missingFields != 0) {
            PatternWithMatcher resultPatternWithMatcher = this.getBestRaw(source, missingFields, distInfo, skipMatcher);
            resultPattern = this.adjustFieldTypes(resultPatternWithMatcher, source, false, options);
            while (distInfo.missingFieldMask != 0) {
                if ((distInfo.missingFieldMask & 0x6000) == 16384 && (missingFields & 0x6000) == 24576) {
                    resultPatternWithMatcher.pattern = resultPattern;
                    resultPattern = this.adjustFieldTypes(resultPatternWithMatcher, source, true, options);
                    distInfo.missingFieldMask &= 0xFFFFBFFF;
                    continue;
                }
                int startingMask = distInfo.missingFieldMask;
                PatternWithMatcher tempWithMatcher = this.getBestRaw(source, distInfo.missingFieldMask, distInfo, skipMatcher);
                String temp = this.adjustFieldTypes(tempWithMatcher, source, false, options);
                int foundMask = startingMask & ~distInfo.missingFieldMask;
                int topField = this.getTopBitNumber(foundMask);
                resultPattern = MessageFormat.format(this.getAppendFormat(topField), resultPattern, temp, this.getAppendName(topField));
            }
        }
        return resultPattern;
    }

    private String getAppendName(int foundMask) {
        return "'" + this.appendItemNames[foundMask] + "'";
    }

    private String getAppendFormat(int foundMask) {
        return this.appendItemFormats[foundMask];
    }

    private int getTopBitNumber(int foundMask) {
        int i = 0;
        while (foundMask != 0) {
            foundMask >>>= 1;
            ++i;
        }
        return i - 1;
    }

    private void complete() {
        PatternInfo patternInfo = new PatternInfo();
        int i = 0;
        while (i < CANONICAL_ITEMS.length) {
            this.addPattern(String.valueOf(CANONICAL_ITEMS[i]), false, patternInfo);
            ++i;
        }
    }

    private PatternWithMatcher getBestRaw(DateTimeMatcher source, int includeMask, DistanceInfo missingFields, DateTimeMatcher skipMatcher) {
        int bestDistance = Integer.MAX_VALUE;
        PatternWithMatcher bestPatternWithMatcher = new PatternWithMatcher("", null);
        DistanceInfo tempInfo = new DistanceInfo();
        for (DateTimeMatcher trial : this.skeleton2pattern.keySet()) {
            int distance;
            if (trial.equals(skipMatcher) || (distance = source.getDistance(trial, includeMask, tempInfo)) >= bestDistance) continue;
            bestDistance = distance;
            PatternWithSkeletonFlag patternWithSkelFlag = this.skeleton2pattern.get(trial);
            bestPatternWithMatcher.pattern = patternWithSkelFlag.pattern;
            bestPatternWithMatcher.matcherWithSkeleton = patternWithSkelFlag.skeletonWasSpecified ? trial : null;
            missingFields.setTo(tempInfo);
            if (distance == 0) break;
        }
        return bestPatternWithMatcher;
    }

    private String adjustFieldTypes(PatternWithMatcher patternWithMatcher, DateTimeMatcher inputRequest, boolean fixFractionalSeconds, int options) {
        this.fp.set(patternWithMatcher.pattern);
        StringBuilder newPattern = new StringBuilder();
        for (Object item : this.fp.getItems()) {
            if (item instanceof String) {
                newPattern.append(this.fp.quoteLiteral((String)item));
                continue;
            }
            VariableField variableField = (VariableField)item;
            String field = variableField.toString();
            int type = variableField.getType();
            if (fixFractionalSeconds && type == 13) {
                String newField = inputRequest.original[14];
                field = String.valueOf(field) + this.decimal + newField;
            } else if (inputRequest.type[type] != 0) {
                int reqFieldLen;
                String reqField = inputRequest.original[type];
                int adjFieldLen = reqFieldLen = reqField.length();
                DateTimeMatcher matcherWithSkeleton = patternWithMatcher.matcherWithSkeleton;
                if (type == 11 && (options & 0x800) == 0 || type == 12 && (options & 0x1000) == 0 || type == 13 && (options & 0x2000) == 0) {
                    adjFieldLen = field.length();
                } else if (matcherWithSkeleton != null) {
                    String skelField = matcherWithSkeleton.origStringForField(type);
                    int skelFieldLen = skelField.length();
                    boolean patFieldIsNumeric = variableField.isNumeric();
                    boolean skelFieldIsNumeric = matcherWithSkeleton.fieldIsNumeric(type);
                    if (skelFieldLen == reqFieldLen || patFieldIsNumeric && !skelFieldIsNumeric || skelFieldIsNumeric && !patFieldIsNumeric) {
                        adjFieldLen = field.length();
                    }
                }
                char c = type != 11 && type != 3 ? reqField.charAt(0) : field.charAt(0);
                field = "";
                int i = adjFieldLen;
                while (i > 0) {
                    field = String.valueOf(field) + c;
                    --i;
                }
            }
            newPattern.append(field);
        }
        return newPattern.toString();
    }

    public String getFields(String pattern) {
        this.fp.set(pattern);
        StringBuilder newPattern = new StringBuilder();
        for (Object item : this.fp.getItems()) {
            if (item instanceof String) {
                newPattern.append(this.fp.quoteLiteral((String)item));
                continue;
            }
            newPattern.append("{" + DateTimePatternGenerator.getName(item.toString()) + "}");
        }
        return newPattern.toString();
    }

    private static String showMask(int mask) {
        String result = "";
        int i = 0;
        while (i < 16) {
            if ((mask & 1 << i) != 0) {
                if (result.length() != 0) {
                    result = String.valueOf(result) + " | ";
                }
                result = String.valueOf(result) + FIELD_NAME[i] + " ";
            }
            ++i;
        }
        return result;
    }

    private static String getName(String s) {
        boolean string;
        int i = DateTimePatternGenerator.getCanonicalIndex(s, true);
        String name = FIELD_NAME[types[i][1]];
        int subtype = types[i][2];
        boolean bl = string = subtype < 0;
        if (string) {
            subtype = -subtype;
        }
        name = subtype < 0 ? String.valueOf(name) + ":S" : String.valueOf(name) + ":N";
        return name;
    }

    private static int getCanonicalIndex(String s, boolean strict) {
        int len = s.length();
        if (len == 0) {
            return -1;
        }
        char ch = s.charAt(0);
        int i = 1;
        while (i < len) {
            if (s.charAt(i) != ch) {
                return -1;
            }
            ++i;
        }
        int bestRow = -1;
        int i2 = 0;
        while (i2 < types.length) {
            int[] row = types[i2];
            if (row[0] == ch) {
                bestRow = i2;
                if (row[3] <= len && row[row.length - 1] >= len) {
                    return i2;
                }
            }
            ++i2;
        }
        return strict ? -1 : bestRow;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class DateTimeMatcher
    implements Comparable<DateTimeMatcher> {
        private int[] type = new int[16];
        private String[] original = new String[16];
        private String[] baseOriginal = new String[16];

        private DateTimeMatcher() {
        }

        public String origStringForField(int field) {
            return this.original[field];
        }

        public boolean fieldIsNumeric(int field) {
            return this.type[field] > 0;
        }

        public String toString() {
            StringBuilder result = new StringBuilder();
            int i = 0;
            while (i < 16) {
                if (this.original[i].length() != 0) {
                    result.append(this.original[i]);
                }
                ++i;
            }
            return result.toString();
        }

        String getBasePattern() {
            StringBuilder result = new StringBuilder();
            int i = 0;
            while (i < 16) {
                if (this.baseOriginal[i].length() != 0) {
                    result.append(this.baseOriginal[i]);
                }
                ++i;
            }
            return result.toString();
        }

        DateTimeMatcher set(String pattern, FormatParser fp) {
            int i = 0;
            while (i < 16) {
                this.type[i] = 0;
                this.original[i] = "";
                this.baseOriginal[i] = "";
                ++i;
            }
            fp.set(pattern);
            for (Object obj : fp.getItems()) {
                VariableField item;
                String field;
                if (!(obj instanceof VariableField) || (field = (item = (VariableField)obj).toString()).charAt(0) == 'a') continue;
                int canonicalIndex = item.getCanonicalIndex();
                int[] row = types[canonicalIndex];
                int typeValue = row[1];
                if (this.original[typeValue].length() != 0) {
                    throw new IllegalArgumentException("Conflicting fields:\t" + this.original[typeValue] + ", " + field + "\t in " + pattern);
                }
                this.original[typeValue] = field;
                char repeatChar = (char)row[0];
                int repeatCount = row[3];
                if (repeatCount > 3) {
                    repeatCount = 3;
                }
                if ("GEzvQ".indexOf(repeatChar) >= 0) {
                    repeatCount = 1;
                }
                this.baseOriginal[typeValue] = Utility.repeat(String.valueOf(repeatChar), repeatCount);
                int subTypeValue = row[2];
                if (subTypeValue > 0) {
                    subTypeValue += field.length();
                }
                this.type[typeValue] = subTypeValue;
            }
            return this;
        }

        int getFieldMask() {
            int result = 0;
            int i = 0;
            while (i < this.type.length) {
                if (this.type[i] != 0) {
                    result |= 1 << i;
                }
                ++i;
            }
            return result;
        }

        void extractFrom(DateTimeMatcher source, int fieldMask) {
            int i = 0;
            while (i < this.type.length) {
                if ((fieldMask & 1 << i) != 0) {
                    this.type[i] = source.type[i];
                    this.original[i] = source.original[i];
                } else {
                    this.type[i] = 0;
                    this.original[i] = "";
                }
                ++i;
            }
        }

        int getDistance(DateTimeMatcher other, int includeMask, DistanceInfo distanceInfo) {
            int result = 0;
            distanceInfo.clear();
            int i = 0;
            while (i < this.type.length) {
                int otherType;
                int myType = (includeMask & 1 << i) == 0 ? 0 : this.type[i];
                if (myType != (otherType = other.type[i])) {
                    if (myType == 0) {
                        result += 65536;
                        distanceInfo.addExtra(i);
                    } else if (otherType == 0) {
                        result += 4096;
                        distanceInfo.addMissing(i);
                    } else {
                        result += Math.abs(myType - otherType);
                    }
                }
                ++i;
            }
            return result;
        }

        @Override
        public int compareTo(DateTimeMatcher that) {
            int i = 0;
            while (i < this.original.length) {
                int comp = this.original[i].compareTo(that.original[i]);
                if (comp != 0) {
                    return -comp;
                }
                ++i;
            }
            return 0;
        }

        public boolean equals(Object other) {
            if (other == null) {
                return false;
            }
            DateTimeMatcher that = (DateTimeMatcher)other;
            int i = 0;
            while (i < this.original.length) {
                if (!this.original[i].equals(that.original[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public int hashCode() {
            int result = 0;
            int i = 0;
            while (i < this.original.length) {
                result ^= this.original[i].hashCode();
                ++i;
            }
            return result;
        }
    }

    private static class DistanceInfo {
        int missingFieldMask;
        int extraFieldMask;

        private DistanceInfo() {
        }

        void clear() {
            this.extraFieldMask = 0;
            this.missingFieldMask = 0;
        }

        void setTo(DistanceInfo other) {
            this.missingFieldMask = other.missingFieldMask;
            this.extraFieldMask = other.extraFieldMask;
        }

        void addMissing(int field) {
            this.missingFieldMask |= 1 << field;
        }

        void addExtra(int field) {
            this.extraFieldMask |= 1 << field;
        }

        public String toString() {
            return "missingFieldMask: " + DateTimePatternGenerator.showMask(this.missingFieldMask) + ", extraFieldMask: " + DateTimePatternGenerator.showMask(this.extraFieldMask);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FormatParser {
        private transient PatternTokenizer tokenizer = new PatternTokenizer().setSyntaxCharacters(new UnicodeSet("[a-zA-Z]")).setExtraQuotingCharacters(new UnicodeSet("[[[:script=Latn:][:script=Cyrl:]]&[[:L:][:M:]]]")).setUsingQuote(true);
        private List<Object> items = new ArrayList<Object>();

        public final FormatParser set(String string) {
            return this.set(string, false);
        }

        public FormatParser set(String string, boolean strict) {
            this.items.clear();
            if (string.length() == 0) {
                return this;
            }
            this.tokenizer.setPattern(string);
            StringBuffer buffer = new StringBuffer();
            StringBuffer variable = new StringBuffer();
            while (true) {
                buffer.setLength(0);
                int status = this.tokenizer.next(buffer);
                if (status == 0) break;
                if (status == 1) {
                    if (variable.length() != 0 && buffer.charAt(0) != variable.charAt(0)) {
                        this.addVariable(variable, false);
                    }
                    variable.append(buffer);
                    continue;
                }
                this.addVariable(variable, false);
                this.items.add(buffer.toString());
            }
            this.addVariable(variable, false);
            return this;
        }

        private void addVariable(StringBuffer variable, boolean strict) {
            if (variable.length() != 0) {
                this.items.add(new VariableField(variable.toString(), strict));
                variable.setLength(0);
            }
        }

        public List<Object> getItems() {
            return this.items;
        }

        public String toString() {
            return this.toString(0, this.items.size());
        }

        public String toString(int start, int limit) {
            StringBuilder result = new StringBuilder();
            int i = start;
            while (i < limit) {
                Object item = this.items.get(i);
                if (item instanceof String) {
                    String itemString = (String)item;
                    result.append(this.tokenizer.quoteLiteral(itemString));
                } else {
                    result.append(this.items.get(i).toString());
                }
                ++i;
            }
            return result.toString();
        }

        public boolean hasDateAndTimeFields() {
            boolean isTime;
            int foundMask = 0;
            for (Object item : this.items) {
                if (!(item instanceof VariableField)) continue;
                int type = ((VariableField)item).getType();
                foundMask |= 1 << type;
            }
            boolean isDate = (foundMask & 0x3FF) != 0;
            boolean bl = isTime = (foundMask & 0xFC00) != 0;
            return isDate && isTime;
        }

        public Object quoteLiteral(String string) {
            return this.tokenizer.quoteLiteral(string);
        }
    }

    public static final class PatternInfo {
        public static final int OK = 0;
        public static final int BASE_CONFLICT = 1;
        public static final int CONFLICT = 2;
        public int status;
        public String conflictingPattern;
    }

    private static class PatternWithMatcher {
        public String pattern;
        public DateTimeMatcher matcherWithSkeleton;

        public PatternWithMatcher(String pat, DateTimeMatcher matcher) {
            this.pattern = pat;
            this.matcherWithSkeleton = matcher;
        }
    }

    private static class PatternWithSkeletonFlag {
        public String pattern;
        public boolean skeletonWasSpecified;

        public PatternWithSkeletonFlag(String pat, boolean skelSpecified) {
            this.pattern = pat;
            this.skeletonWasSpecified = skelSpecified;
        }
    }

    public static class VariableField {
        private final String string;
        private final int canonicalIndex;

        public VariableField(String string) {
            this(string, false);
        }

        public VariableField(String string, boolean strict) {
            this.canonicalIndex = DateTimePatternGenerator.getCanonicalIndex(string, strict);
            if (this.canonicalIndex < 0) {
                throw new IllegalArgumentException("Illegal datetime field:\t" + string);
            }
            this.string = string;
        }

        public int getType() {
            return types[this.canonicalIndex][1];
        }

        protected boolean isNumeric() {
            return types[this.canonicalIndex][2] > 0;
        }

        private int getCanonicalIndex() {
            return this.canonicalIndex;
        }

        public String toString() {
            return this.string;
        }
    }
}

