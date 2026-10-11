/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.text.MeasureFormat;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.text.PluralRules;
import com.ibm.icu.util.TimeUnit;
import com.ibm.icu.util.TimeUnitAmount;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TimeUnitFormat
extends MeasureFormat {
    public static final int FULL_NAME = 0;
    public static final int ABBREVIATED_NAME = 1;
    private static final int TOTAL_STYLES = 2;
    private static final long serialVersionUID = -3707773153184971529L;
    private static final String DEFAULT_PATTERN_FOR_SECOND = "{0} s";
    private static final String DEFAULT_PATTERN_FOR_MINUTE = "{0} min";
    private static final String DEFAULT_PATTERN_FOR_HOUR = "{0} h";
    private static final String DEFAULT_PATTERN_FOR_DAY = "{0} d";
    private static final String DEFAULT_PATTERN_FOR_WEEK = "{0} w";
    private static final String DEFAULT_PATTERN_FOR_MONTH = "{0} m";
    private static final String DEFAULT_PATTERN_FOR_YEAR = "{0} y";
    private NumberFormat format;
    private ULocale locale;
    private transient Map<TimeUnit, Map<String, Object[]>> timeUnitToCountToPatterns;
    private transient PluralRules pluralRules;
    private transient boolean isReady;
    private int style;

    public TimeUnitFormat() {
        this.isReady = false;
        this.style = 0;
    }

    public TimeUnitFormat(ULocale locale) {
        this(locale, 0);
    }

    public TimeUnitFormat(Locale locale) {
        this(locale, 0);
    }

    public TimeUnitFormat(ULocale locale, int style) {
        if (style < 0 || style >= 2) {
            throw new IllegalArgumentException("style should be either FULL_NAME or ABBREVIATED_NAME style");
        }
        this.style = style;
        this.locale = locale;
        this.isReady = false;
    }

    public TimeUnitFormat(Locale locale, int style) {
        this(ULocale.forLocale(locale), style);
    }

    public TimeUnitFormat setLocale(ULocale locale) {
        if (locale != this.locale) {
            this.locale = locale;
            this.isReady = false;
        }
        return this;
    }

    public TimeUnitFormat setLocale(Locale locale) {
        return this.setLocale(ULocale.forLocale(locale));
    }

    public TimeUnitFormat setNumberFormat(NumberFormat format) {
        if (format == this.format) {
            return this;
        }
        if (format == null) {
            if (this.locale == null) {
                this.isReady = false;
                return this;
            }
            this.format = NumberFormat.getNumberInstance(this.locale);
        } else {
            this.format = format;
        }
        if (!this.isReady) {
            return this;
        }
        for (TimeUnit timeUnit : this.timeUnitToCountToPatterns.keySet()) {
            Map<String, Object[]> countToPattern = this.timeUnitToCountToPatterns.get(timeUnit);
            for (String count : countToPattern.keySet()) {
                Object[] pair = countToPattern.get(count);
                MessageFormat pattern = (MessageFormat)pair[0];
                pattern.setFormatByArgumentIndex(0, format);
                pattern = (MessageFormat)pair[1];
                pattern.setFormatByArgumentIndex(0, format);
            }
        }
        return this;
    }

    @Override
    public StringBuffer format(Object obj, StringBuffer toAppendTo, FieldPosition pos) {
        if (!(obj instanceof TimeUnitAmount)) {
            throw new IllegalArgumentException("can not format non TimeUnitAmount object");
        }
        if (!this.isReady) {
            this.setup();
        }
        TimeUnitAmount amount = (TimeUnitAmount)obj;
        Map<String, Object[]> countToPattern = this.timeUnitToCountToPatterns.get(amount.getTimeUnit());
        double number = amount.getNumber().doubleValue();
        String count = this.pluralRules.select(number);
        MessageFormat pattern = (MessageFormat)countToPattern.get(count)[this.style];
        return pattern.format(new Object[]{amount.getNumber()}, toAppendTo, pos);
    }

    @Override
    public Object parseObject(String source, ParsePosition pos) {
        if (!this.isReady) {
            this.setup();
        }
        Number resultNumber = null;
        TimeUnit resultTimeUnit = null;
        int oldPos = pos.getIndex();
        int newPos = -1;
        int longestParseDistance = 0;
        String countOfLongestMatch = null;
        for (TimeUnit timeUnit : this.timeUnitToCountToPatterns.keySet()) {
            Map<String, Object[]> countToPattern = this.timeUnitToCountToPatterns.get(timeUnit);
            for (String count : countToPattern.keySet()) {
                int styl = 0;
                while (styl < 2) {
                    MessageFormat pattern = (MessageFormat)countToPattern.get(count)[styl];
                    pos.setErrorIndex(-1);
                    pos.setIndex(oldPos);
                    Object parsed = pattern.parseObject(source, pos);
                    if (pos.getErrorIndex() == -1 && pos.getIndex() != oldPos) {
                        int parseDistance;
                        String select;
                        Number temp = null;
                        if ((((Object[])parsed).length == 0 || count.equals(select = this.pluralRules.select((temp = (Number)((Object[])parsed)[0]).doubleValue()))) && (parseDistance = pos.getIndex() - oldPos) > longestParseDistance) {
                            resultNumber = temp;
                            resultTimeUnit = timeUnit;
                            newPos = pos.getIndex();
                            longestParseDistance = parseDistance;
                            countOfLongestMatch = count;
                        }
                    }
                    ++styl;
                }
            }
        }
        if (resultNumber == null && longestParseDistance != 0) {
            resultNumber = countOfLongestMatch.equals("zero") ? new Integer(0) : (countOfLongestMatch.equals("one") ? new Integer(1) : (countOfLongestMatch.equals("two") ? new Integer(2) : new Integer(3)));
        }
        if (longestParseDistance == 0) {
            pos.setIndex(oldPos);
            pos.setErrorIndex(0);
            return null;
        }
        pos.setIndex(newPos);
        pos.setErrorIndex(-1);
        return new TimeUnitAmount(resultNumber, resultTimeUnit);
    }

    private void setup() {
        if (this.locale == null) {
            this.locale = this.format != null ? this.format.getLocale(null) : ULocale.getDefault();
        }
        if (this.format == null) {
            this.format = NumberFormat.getNumberInstance(this.locale);
        }
        this.pluralRules = PluralRules.forLocale(this.locale);
        this.timeUnitToCountToPatterns = new HashMap<TimeUnit, Map<String, Object[]>>();
        this.setup("units", this.timeUnitToCountToPatterns, 0);
        this.setup("unitsShort", this.timeUnitToCountToPatterns, 1);
        this.isReady = true;
    }

    private void setup(String resourceKey, Map<TimeUnit, Map<String, Object[]>> timeUnitToCountToPatterns, int style) {
        try {
            ICUResourceBundle resource = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", this.locale);
            ICUResourceBundle unitsRes = resource.getWithFallback(resourceKey);
            int size = unitsRes.getSize();
            int index = 0;
            while (index < size) {
                block20: {
                    TimeUnit timeUnit;
                    String timeUnitName;
                    block14: {
                        block19: {
                            block18: {
                                block17: {
                                    block16: {
                                        block15: {
                                            block13: {
                                                timeUnitName = unitsRes.get(index).getKey();
                                                timeUnit = null;
                                                if (!timeUnitName.equals("year")) break block13;
                                                timeUnit = TimeUnit.YEAR;
                                                break block14;
                                            }
                                            if (!timeUnitName.equals("month")) break block15;
                                            timeUnit = TimeUnit.MONTH;
                                            break block14;
                                        }
                                        if (!timeUnitName.equals("day")) break block16;
                                        timeUnit = TimeUnit.DAY;
                                        break block14;
                                    }
                                    if (!timeUnitName.equals("hour")) break block17;
                                    timeUnit = TimeUnit.HOUR;
                                    break block14;
                                }
                                if (!timeUnitName.equals("minute")) break block18;
                                timeUnit = TimeUnit.MINUTE;
                                break block14;
                            }
                            if (!timeUnitName.equals("second")) break block19;
                            timeUnit = TimeUnit.SECOND;
                            break block14;
                        }
                        if (!timeUnitName.equals("week")) break block20;
                        timeUnit = TimeUnit.WEEK;
                    }
                    ICUResourceBundle oneUnitRes = unitsRes.getWithFallback(timeUnitName);
                    int count = oneUnitRes.getSize();
                    Map<String, Object[]> countToPatterns = timeUnitToCountToPatterns.get(timeUnit);
                    if (countToPatterns == null) {
                        countToPatterns = new TreeMap<String, Object[]>();
                        timeUnitToCountToPatterns.put(timeUnit, countToPatterns);
                    }
                    int pluralIndex = 0;
                    while (pluralIndex < count) {
                        Object[] pair;
                        String pluralCount = oneUnitRes.get(pluralIndex).getKey();
                        String pattern = oneUnitRes.get(pluralIndex).getString();
                        MessageFormat messageFormat = new MessageFormat(pattern, this.locale);
                        if (this.format != null) {
                            messageFormat.setFormatByArgumentIndex(0, this.format);
                        }
                        if ((pair = countToPatterns.get(pluralCount)) == null) {
                            pair = new Object[2];
                            countToPatterns.put(pluralCount, pair);
                        }
                        pair[style] = messageFormat;
                        ++pluralIndex;
                    }
                }
                ++index;
            }
        }
        catch (MissingResourceException missingResourceException) {}
        TimeUnit[] timeUnits = TimeUnit.values();
        Set<String> keywords = this.pluralRules.getKeywords();
        int i = 0;
        while (i < timeUnits.length) {
            TimeUnit timeUnit = timeUnits[i];
            Map<String, Object[]> countToPatterns = timeUnitToCountToPatterns.get(timeUnit);
            if (countToPatterns == null) {
                countToPatterns = new TreeMap<String, Object[]>();
                timeUnitToCountToPatterns.put(timeUnit, countToPatterns);
            }
            for (String pluralCount : keywords) {
                if (countToPatterns.get(pluralCount) != null && countToPatterns.get(pluralCount)[style] != null) continue;
                this.searchInTree(resourceKey, style, timeUnit, pluralCount, pluralCount, countToPatterns);
            }
            ++i;
        }
    }

    private void searchInTree(String resourceKey, int styl, TimeUnit timeUnit, String srcPluralCount, String searchPluralCount, Map<String, Object[]> countToPatterns) {
        ULocale parentLocale = this.locale;
        String srcTimeUnitName = timeUnit.toString();
        while (parentLocale != null) {
            try {
                Object[] pair;
                ICUResourceBundle unitsRes = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", parentLocale);
                unitsRes = unitsRes.getWithFallback(resourceKey);
                ICUResourceBundle oneUnitRes = unitsRes.getWithFallback(srcTimeUnitName);
                String pattern = oneUnitRes.getStringWithFallback(searchPluralCount);
                MessageFormat messageFormat = new MessageFormat(pattern, this.locale);
                if (this.format != null) {
                    messageFormat.setFormatByArgumentIndex(0, this.format);
                }
                if ((pair = countToPatterns.get(srcPluralCount)) == null) {
                    pair = new Object[2];
                    countToPatterns.put(srcPluralCount, pair);
                }
                pair[styl] = messageFormat;
                return;
            }
            catch (MissingResourceException missingResourceException) {
                parentLocale = parentLocale.getFallback();
            }
        }
        if (searchPluralCount.equals("other")) {
            Object[] pair;
            MessageFormat messageFormat = null;
            if (timeUnit == TimeUnit.SECOND) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_SECOND, this.locale);
            } else if (timeUnit == TimeUnit.MINUTE) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_MINUTE, this.locale);
            } else if (timeUnit == TimeUnit.HOUR) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_HOUR, this.locale);
            } else if (timeUnit == TimeUnit.WEEK) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_WEEK, this.locale);
            } else if (timeUnit == TimeUnit.DAY) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_DAY, this.locale);
            } else if (timeUnit == TimeUnit.MONTH) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_MONTH, this.locale);
            } else if (timeUnit == TimeUnit.YEAR) {
                messageFormat = new MessageFormat(DEFAULT_PATTERN_FOR_YEAR, this.locale);
            }
            if (this.format != null && messageFormat != null) {
                messageFormat.setFormatByArgumentIndex(0, this.format);
            }
            if ((pair = countToPatterns.get(srcPluralCount)) == null) {
                pair = new Object[2];
                countToPatterns.put(srcPluralCount, pair);
            }
            pair[styl] = messageFormat;
        } else {
            this.searchInTree(resourceKey, styl, timeUnit, srcPluralCount, "other", countToPatterns);
        }
    }
}

