/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.impl.CalendarData;
import com.ibm.icu.impl.CalendarUtil;
import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.Utility;
import com.ibm.icu.impl.ZoneMeta;
import com.ibm.icu.impl.ZoneStringFormat;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DateFormatSymbols
implements Serializable,
Cloneable {
    public static final int FORMAT = 0;
    public static final int STANDALONE = 1;
    public static final int DT_CONTEXT_COUNT = 2;
    public static final int ABBREVIATED = 0;
    public static final int WIDE = 1;
    public static final int NARROW = 2;
    public static final int DT_WIDTH_COUNT = 3;
    String[] eras = null;
    String[] eraNames = null;
    String[] narrowEras = null;
    String[] months = null;
    String[] shortMonths = null;
    String[] narrowMonths = null;
    String[] standaloneMonths = null;
    String[] standaloneShortMonths = null;
    String[] standaloneNarrowMonths = null;
    String[] weekdays = null;
    String[] shortWeekdays = null;
    String[] narrowWeekdays = null;
    String[] standaloneWeekdays = null;
    String[] standaloneShortWeekdays = null;
    String[] standaloneNarrowWeekdays = null;
    String[] ampms = null;
    String[] shortQuarters = null;
    String[] quarters = null;
    String[] standaloneShortQuarters = null;
    String[] standaloneQuarters = null;
    String gmtFormat = null;
    String[][] gmtHourFormats = null;
    private String[][] zoneStrings = null;
    private transient ZoneStringFormat zsformat = null;
    static final String patternChars = "GyMdkHmsSEDFwWahKzYeugAZvcLQqV";
    String localPatternChars = null;
    private static final long serialVersionUID = -5987973545549424702L;
    static final int millisPerHour = 3600000;
    private static ICUCache<String, DateFormatSymbols> DFSCACHE = new SimpleCache<String, DateFormatSymbols>();
    static final String DEFAULT_GMT_PATTERN = "GMT{0}";
    static final String[][] DEFAULT_GMT_HOUR_PATTERNS = new String[][]{{"-HH:mm:ss", "-HH:mm"}, {"+HH:mm:ss", "+HH:mm"}};
    static final int OFFSET_HMS = 0;
    static final int OFFSET_HM = 1;
    static final int OFFSET_NEGATIVE = 0;
    static final int OFFSET_POSITIVE = 1;
    private ULocale requestedLocale;
    private ULocale validLocale;
    private ULocale actualLocale;

    public DateFormatSymbols() {
        this(ULocale.getDefault());
    }

    public DateFormatSymbols(Locale locale) {
        this(ULocale.forLocale(locale));
    }

    public DateFormatSymbols(ULocale locale) {
        this.initializeData(locale, CalendarUtil.getCalendarType(locale));
    }

    public static DateFormatSymbols getInstance() {
        return new DateFormatSymbols();
    }

    public static DateFormatSymbols getInstance(Locale locale) {
        return new DateFormatSymbols(locale);
    }

    public static DateFormatSymbols getInstance(ULocale locale) {
        return new DateFormatSymbols(locale);
    }

    public static Locale[] getAvailableLocales() {
        return ICUResourceBundle.getAvailableLocales();
    }

    public static ULocale[] getAvailableULocales() {
        return ICUResourceBundle.getAvailableULocales();
    }

    public String[] getEras() {
        return this.duplicate(this.eras);
    }

    public void setEras(String[] newEras) {
        this.eras = this.duplicate(newEras);
    }

    public String[] getEraNames() {
        return this.duplicate(this.eraNames);
    }

    public void setEraNames(String[] newEraNames) {
        this.eraNames = this.duplicate(newEraNames);
    }

    public String[] getMonths() {
        return this.duplicate(this.months);
    }

    public String[] getMonths(int context, int width) {
        String[] returnValue = null;
        block0 : switch (context) {
            case 0: {
                switch (width) {
                    case 1: {
                        returnValue = this.months;
                        break;
                    }
                    case 0: {
                        returnValue = this.shortMonths;
                        break;
                    }
                    case 2: {
                        returnValue = this.narrowMonths;
                    }
                }
                break;
            }
            case 1: {
                switch (width) {
                    case 1: {
                        returnValue = this.standaloneMonths;
                        break block0;
                    }
                    case 0: {
                        returnValue = this.standaloneShortMonths;
                        break block0;
                    }
                    case 2: {
                        returnValue = this.standaloneNarrowMonths;
                    }
                }
            }
        }
        return this.duplicate(returnValue);
    }

    public void setMonths(String[] newMonths) {
        this.months = this.duplicate(newMonths);
    }

    public void setMonths(String[] newMonths, int context, int width) {
        block0 : switch (context) {
            case 0: {
                switch (width) {
                    case 1: {
                        this.months = this.duplicate(newMonths);
                        break;
                    }
                    case 0: {
                        this.shortMonths = this.duplicate(newMonths);
                        break;
                    }
                    case 2: {
                        this.narrowMonths = this.duplicate(newMonths);
                    }
                }
                break;
            }
            case 1: {
                switch (width) {
                    case 1: {
                        this.standaloneMonths = this.duplicate(newMonths);
                        break block0;
                    }
                    case 0: {
                        this.standaloneShortMonths = this.duplicate(newMonths);
                        break block0;
                    }
                    case 2: {
                        this.standaloneNarrowMonths = this.duplicate(newMonths);
                    }
                }
            }
        }
    }

    public String[] getShortMonths() {
        return this.duplicate(this.shortMonths);
    }

    public void setShortMonths(String[] newShortMonths) {
        this.shortMonths = this.duplicate(newShortMonths);
    }

    public String[] getWeekdays() {
        return this.duplicate(this.weekdays);
    }

    public String[] getWeekdays(int context, int width) {
        String[] returnValue = null;
        block0 : switch (context) {
            case 0: {
                switch (width) {
                    case 1: {
                        returnValue = this.weekdays;
                        break;
                    }
                    case 0: {
                        returnValue = this.shortWeekdays;
                        break;
                    }
                    case 2: {
                        returnValue = this.narrowWeekdays;
                    }
                }
                break;
            }
            case 1: {
                switch (width) {
                    case 1: {
                        returnValue = this.standaloneWeekdays;
                        break block0;
                    }
                    case 0: {
                        returnValue = this.standaloneShortWeekdays;
                        break block0;
                    }
                    case 2: {
                        returnValue = this.standaloneNarrowWeekdays;
                    }
                }
            }
        }
        return this.duplicate(returnValue);
    }

    public void setWeekdays(String[] newWeekdays, int context, int width) {
        block0 : switch (context) {
            case 0: {
                switch (width) {
                    case 1: {
                        this.weekdays = this.duplicate(newWeekdays);
                        break;
                    }
                    case 0: {
                        this.shortWeekdays = this.duplicate(newWeekdays);
                        break;
                    }
                    case 2: {
                        this.narrowWeekdays = this.duplicate(newWeekdays);
                    }
                }
                break;
            }
            case 1: {
                switch (width) {
                    case 1: {
                        this.standaloneWeekdays = this.duplicate(newWeekdays);
                        break block0;
                    }
                    case 0: {
                        this.standaloneShortWeekdays = this.duplicate(newWeekdays);
                        break block0;
                    }
                    case 2: {
                        this.standaloneNarrowWeekdays = this.duplicate(newWeekdays);
                    }
                }
            }
        }
    }

    public void setWeekdays(String[] newWeekdays) {
        this.weekdays = this.duplicate(newWeekdays);
    }

    public String[] getShortWeekdays() {
        return this.duplicate(this.shortWeekdays);
    }

    public void setShortWeekdays(String[] newShortWeekdays) {
        this.shortWeekdays = this.duplicate(newShortWeekdays);
    }

    public String[] getQuarters(int context, int width) {
        String[] returnValue = null;
        block0 : switch (context) {
            case 0: {
                switch (width) {
                    case 1: {
                        returnValue = this.quarters;
                        break;
                    }
                    case 0: {
                        returnValue = this.shortQuarters;
                        break;
                    }
                    case 2: {
                        returnValue = null;
                    }
                }
                break;
            }
            case 1: {
                switch (width) {
                    case 1: {
                        returnValue = this.standaloneQuarters;
                        break block0;
                    }
                    case 0: {
                        returnValue = this.standaloneShortQuarters;
                        break block0;
                    }
                    case 2: {
                        returnValue = null;
                    }
                }
            }
        }
        return this.duplicate(returnValue);
    }

    public void setQuarters(String[] newQuarters, int context, int width) {
        block0 : switch (context) {
            case 0: {
                switch (width) {
                    case 1: {
                        this.quarters = this.duplicate(newQuarters);
                        break block0;
                    }
                    case 0: {
                        this.shortQuarters = this.duplicate(newQuarters);
                        break block0;
                    }
                }
                break;
            }
            case 1: {
                switch (width) {
                    case 1: {
                        this.standaloneQuarters = this.duplicate(newQuarters);
                        break block0;
                    }
                    case 0: {
                        this.standaloneShortQuarters = this.duplicate(newQuarters);
                        break block0;
                    }
                }
            }
        }
    }

    public String[] getAmPmStrings() {
        return this.duplicate(this.ampms);
    }

    public void setAmPmStrings(String[] newAmpms) {
        this.ampms = this.duplicate(newAmpms);
    }

    public String[][] getZoneStrings() {
        if (this.zoneStrings != null) {
            return this.duplicate(this.zoneStrings);
        }
        return ZoneStringFormat.getInstance(this.requestedLocale).getZoneStrings();
    }

    public void setZoneStrings(String[][] newZoneStrings) {
        this.zoneStrings = this.duplicate(newZoneStrings);
        this.zsformat = new ZoneStringFormat(this.zoneStrings);
    }

    public String getLocalPatternChars() {
        return this.localPatternChars;
    }

    public void setLocalPatternChars(String newLocalPatternChars) {
        this.localPatternChars = newLocalPatternChars;
    }

    public Object clone() {
        try {
            DateFormatSymbols other = (DateFormatSymbols)super.clone();
            return other;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            throw new IllegalStateException();
        }
    }

    public int hashCode() {
        return this.requestedLocale.toString().hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || this.getClass() != obj.getClass()) {
            return false;
        }
        DateFormatSymbols that = (DateFormatSymbols)obj;
        return Utility.arrayEquals(this.eras, (Object)that.eras) && Utility.arrayEquals(this.eraNames, (Object)that.eraNames) && Utility.arrayEquals(this.months, (Object)that.months) && Utility.arrayEquals(this.shortMonths, (Object)that.shortMonths) && Utility.arrayEquals(this.narrowMonths, (Object)that.narrowMonths) && Utility.arrayEquals(this.standaloneMonths, (Object)that.standaloneMonths) && Utility.arrayEquals(this.standaloneShortMonths, (Object)that.standaloneShortMonths) && Utility.arrayEquals(this.standaloneNarrowMonths, (Object)that.standaloneNarrowMonths) && Utility.arrayEquals(this.weekdays, (Object)that.weekdays) && Utility.arrayEquals(this.shortWeekdays, (Object)that.shortWeekdays) && Utility.arrayEquals(this.narrowWeekdays, (Object)that.narrowWeekdays) && Utility.arrayEquals(this.standaloneWeekdays, (Object)that.standaloneWeekdays) && Utility.arrayEquals(this.standaloneShortWeekdays, (Object)that.standaloneShortWeekdays) && Utility.arrayEquals(this.standaloneNarrowWeekdays, (Object)that.standaloneNarrowWeekdays) && Utility.arrayEquals(this.ampms, (Object)that.ampms) && this.gmtFormat.equals(that.gmtFormat) && DateFormatSymbols.arrayOfArrayEquals(this.gmtHourFormats, that.gmtHourFormats) && DateFormatSymbols.arrayOfArrayEquals(this.zoneStrings, that.zoneStrings) && this.requestedLocale.getDisplayName().equals(that.requestedLocale.getDisplayName()) && Utility.arrayEquals(this.localPatternChars, (Object)that.localPatternChars);
    }

    protected void initializeData(ULocale desiredLocale, String type) {
        String key = String.valueOf(desiredLocale.toString()) + "+" + type;
        DateFormatSymbols dfs = DFSCACHE.get(key);
        if (dfs == null) {
            CalendarData calData = new CalendarData(desiredLocale, type);
            this.initializeData(desiredLocale, calData);
            dfs = (DateFormatSymbols)this.clone();
            DFSCACHE.put(key, dfs);
        } else {
            this.initializeData(dfs);
        }
    }

    void initializeData(DateFormatSymbols dfs) {
        this.eras = dfs.eras;
        this.eraNames = dfs.eraNames;
        this.narrowEras = dfs.narrowEras;
        this.months = dfs.months;
        this.shortMonths = dfs.shortMonths;
        this.narrowMonths = dfs.narrowMonths;
        this.standaloneMonths = dfs.standaloneMonths;
        this.standaloneShortMonths = dfs.standaloneShortMonths;
        this.standaloneNarrowMonths = dfs.standaloneNarrowMonths;
        this.weekdays = dfs.weekdays;
        this.shortWeekdays = dfs.shortWeekdays;
        this.narrowWeekdays = dfs.narrowWeekdays;
        this.standaloneWeekdays = dfs.standaloneWeekdays;
        this.standaloneShortWeekdays = dfs.standaloneShortWeekdays;
        this.standaloneNarrowWeekdays = dfs.standaloneNarrowWeekdays;
        this.ampms = dfs.ampms;
        this.shortQuarters = dfs.shortQuarters;
        this.quarters = dfs.quarters;
        this.standaloneShortQuarters = dfs.standaloneShortQuarters;
        this.standaloneQuarters = dfs.standaloneQuarters;
        this.gmtFormat = dfs.gmtFormat;
        this.gmtHourFormats = dfs.gmtHourFormats;
        this.zoneStrings = dfs.zoneStrings;
        this.localPatternChars = dfs.localPatternChars;
        this.actualLocale = dfs.actualLocale;
        this.validLocale = dfs.validLocale;
        this.requestedLocale = dfs.requestedLocale;
    }

    protected void initializeData(ULocale desiredLocale, CalendarData calData) {
        this.eras = calData.getEras("abbreviated");
        try {
            this.eraNames = calData.getEras("wide");
        }
        catch (MissingResourceException missingResourceException) {
            this.eraNames = calData.getEras("abbreviated");
        }
        try {
            this.narrowEras = calData.getEras("narrow");
        }
        catch (MissingResourceException missingResourceException) {
            this.narrowEras = calData.getEras("abbreviated");
        }
        this.months = calData.getStringArray("monthNames", "wide");
        this.shortMonths = calData.getStringArray("monthNames", "abbreviated");
        try {
            this.narrowMonths = calData.getStringArray("monthNames", "narrow");
        }
        catch (MissingResourceException missingResourceException) {
            try {
                this.narrowMonths = calData.getStringArray("monthNames", "stand-alone", "narrow");
            }
            catch (MissingResourceException missingResourceException2) {
                this.narrowMonths = calData.getStringArray("monthNames", "abbreviated");
            }
        }
        try {
            this.standaloneMonths = calData.getStringArray("monthNames", "stand-alone", "wide");
        }
        catch (MissingResourceException missingResourceException) {
            this.standaloneMonths = calData.getStringArray("monthNames", "format", "wide");
        }
        try {
            this.standaloneShortMonths = calData.getStringArray("monthNames", "stand-alone", "abbreviated");
        }
        catch (MissingResourceException missingResourceException) {
            this.standaloneShortMonths = calData.getStringArray("monthNames", "format", "abbreviated");
        }
        try {
            this.standaloneNarrowMonths = calData.getStringArray("monthNames", "stand-alone", "narrow");
        }
        catch (MissingResourceException missingResourceException) {
            try {
                this.standaloneNarrowMonths = calData.getStringArray("monthNames", "format", "narrow");
            }
            catch (MissingResourceException missingResourceException3) {
                this.standaloneNarrowMonths = calData.getStringArray("monthNames", "format", "abbreviated");
            }
        }
        String[] lWeekdays = calData.getStringArray("dayNames", "wide");
        this.weekdays = new String[8];
        this.weekdays[0] = "";
        System.arraycopy(lWeekdays, 0, this.weekdays, 1, lWeekdays.length);
        String[] sWeekdays = calData.getStringArray("dayNames", "abbreviated");
        this.shortWeekdays = new String[8];
        this.shortWeekdays[0] = "";
        System.arraycopy(sWeekdays, 0, this.shortWeekdays, 1, sWeekdays.length);
        String[] nWeekdays = null;
        try {
            nWeekdays = calData.getStringArray("dayNames", "narrow");
        }
        catch (MissingResourceException missingResourceException) {
            try {
                nWeekdays = calData.getStringArray("dayNames", "stand-alone", "narrow");
            }
            catch (MissingResourceException missingResourceException4) {
                nWeekdays = calData.getStringArray("dayNames", "abbreviated");
            }
        }
        this.narrowWeekdays = new String[8];
        this.narrowWeekdays[0] = "";
        System.arraycopy(nWeekdays, 0, this.narrowWeekdays, 1, nWeekdays.length);
        String[] saWeekdays = null;
        try {
            saWeekdays = calData.getStringArray("dayNames", "stand-alone", "wide");
        }
        catch (MissingResourceException missingResourceException) {
            saWeekdays = calData.getStringArray("dayNames", "format", "wide");
        }
        this.standaloneWeekdays = new String[8];
        this.standaloneWeekdays[0] = "";
        System.arraycopy(saWeekdays, 0, this.standaloneWeekdays, 1, saWeekdays.length);
        String[] ssWeekdays = null;
        try {
            ssWeekdays = calData.getStringArray("dayNames", "stand-alone", "abbreviated");
        }
        catch (MissingResourceException missingResourceException) {
            ssWeekdays = calData.getStringArray("dayNames", "format", "abbreviated");
        }
        this.standaloneShortWeekdays = new String[8];
        this.standaloneShortWeekdays[0] = "";
        System.arraycopy(ssWeekdays, 0, this.standaloneShortWeekdays, 1, ssWeekdays.length);
        String[] snWeekdays = null;
        try {
            snWeekdays = calData.getStringArray("dayNames", "stand-alone", "narrow");
        }
        catch (MissingResourceException missingResourceException) {
            try {
                snWeekdays = calData.getStringArray("dayNames", "format", "narrow");
            }
            catch (MissingResourceException missingResourceException5) {
                snWeekdays = calData.getStringArray("dayNames", "format", "abbreviated");
            }
        }
        this.standaloneNarrowWeekdays = new String[8];
        this.standaloneNarrowWeekdays[0] = "";
        System.arraycopy(snWeekdays, 0, this.standaloneNarrowWeekdays, 1, snWeekdays.length);
        this.ampms = calData.getStringArray("AmPmMarkers");
        this.quarters = calData.getStringArray("quarters", "wide");
        this.shortQuarters = calData.getStringArray("quarters", "abbreviated");
        try {
            this.standaloneQuarters = calData.getStringArray("quarters", "stand-alone", "wide");
        }
        catch (MissingResourceException missingResourceException) {
            this.standaloneQuarters = calData.getStringArray("quarters", "format", "wide");
        }
        try {
            this.standaloneShortQuarters = calData.getStringArray("quarters", "stand-alone", "abbreviated");
        }
        catch (MissingResourceException missingResourceException) {
            this.standaloneShortQuarters = calData.getStringArray("quarters", "format", "abbreviated");
        }
        this.initializeGMTFormat(desiredLocale);
        this.requestedLocale = desiredLocale;
        ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", desiredLocale);
        this.localPatternChars = patternChars;
        ULocale uloc = rb.getULocale();
        this.setLocale(uloc, uloc);
    }

    private void initializeGMTFormat(ULocale desiredLocale) {
        this.gmtFormat = ZoneMeta.getTZLocalizationInfo(desiredLocale, "gmtFormat");
        if (this.gmtFormat == null) {
            this.gmtFormat = DEFAULT_GMT_PATTERN;
        }
        try {
            String offsetHM = ZoneMeta.getTZLocalizationInfo(desiredLocale, "hourFormat");
            this.gmtHourFormats = new String[2][2];
            int sepIdx = offsetHM.indexOf(59);
            if (sepIdx != -1) {
                this.gmtHourFormats[1][1] = offsetHM.substring(0, sepIdx);
                this.gmtHourFormats[0][1] = offsetHM.substring(sepIdx + 1);
            } else {
                this.gmtHourFormats[1][1] = "+HH:mm";
                this.gmtHourFormats[0][1] = "-HH:mm";
            }
            this.gmtHourFormats[1][0] = this.gmtHourFormats[1][1].indexOf(58) != -1 ? String.valueOf(this.gmtHourFormats[1][1]) + ":ss" : (this.gmtHourFormats[1][1].indexOf(46) != -1 ? String.valueOf(this.gmtHourFormats[1][1]) + ".ss" : String.valueOf(this.gmtHourFormats[1][1]) + "ss");
            this.gmtHourFormats[0][0] = this.gmtHourFormats[0][1].indexOf(58) != -1 ? String.valueOf(this.gmtHourFormats[0][1]) + ":ss" : (this.gmtHourFormats[0][1].indexOf(46) != -1 ? String.valueOf(this.gmtHourFormats[0][1]) + ".ss" : String.valueOf(this.gmtHourFormats[0][1]) + "ss");
        }
        catch (MissingResourceException missingResourceException) {
            this.gmtHourFormats = DEFAULT_GMT_HOUR_PATTERNS;
        }
    }

    private static final boolean arrayOfArrayEquals(Object[][] aa1, Object[][] aa2) {
        if (aa1 == aa2) {
            return true;
        }
        if (aa1 == null || aa2 == null) {
            return false;
        }
        if (aa1.length != aa2.length) {
            return false;
        }
        boolean equal = true;
        int i = 0;
        while (i < aa1.length) {
            equal = Utility.arrayEquals(aa1[i], (Object)aa2[i]);
            if (!equal) break;
            ++i;
        }
        return equal;
    }

    String getGmtFormat() {
        return this.gmtFormat;
    }

    String getGmtHourFormat(int sign, int width) {
        return this.gmtHourFormats[sign][width];
    }

    ZoneStringFormat getZoneStringFormat() {
        if (this.zsformat != null) {
            return this.zsformat;
        }
        if (this.zoneStrings != null) {
            this.zsformat = new ZoneStringFormat(this.zoneStrings);
            return this.zsformat;
        }
        return ZoneStringFormat.getInstance(this.requestedLocale);
    }

    private final String[] duplicate(String[] srcArray) {
        return (String[])srcArray.clone();
    }

    private final String[][] duplicate(String[][] srcArray) {
        String[][] aCopy = new String[srcArray.length][];
        int i = 0;
        while (i < srcArray.length) {
            aCopy[i] = this.duplicate(srcArray[i]);
            ++i;
        }
        return aCopy;
    }

    public DateFormatSymbols(Calendar cal, Locale locale) {
        this.initializeData(ULocale.forLocale(locale), cal.getType());
    }

    public DateFormatSymbols(Calendar cal, ULocale locale) {
        this.initializeData(locale, cal.getType());
    }

    public DateFormatSymbols(Class<? extends Calendar> calendarClass, Locale locale) {
        this(calendarClass, ULocale.forLocale(locale));
    }

    public DateFormatSymbols(Class<? extends Calendar> calendarClass, ULocale locale) {
        String fullName = calendarClass.getName();
        int lastDot = fullName.lastIndexOf(46);
        String className = fullName.substring(lastDot + 1);
        String calType = className.replaceAll("Calendar", "").toLowerCase();
        this.initializeData(locale, calType);
    }

    public DateFormatSymbols(ResourceBundle bundle, Locale locale) {
        this(bundle, ULocale.forLocale(locale));
    }

    public DateFormatSymbols(ResourceBundle bundle, ULocale locale) {
        this.initializeData(locale, new CalendarData((ICUResourceBundle)bundle, CalendarUtil.getCalendarType(locale)));
    }

    public static ResourceBundle getDateFormatBundle(Class<? extends Calendar> calendarClass, Locale locale) throws MissingResourceException {
        return null;
    }

    public static ResourceBundle getDateFormatBundle(Class<? extends Calendar> calendarClass, ULocale locale) throws MissingResourceException {
        return null;
    }

    public static ResourceBundle getDateFormatBundle(Calendar cal, Locale locale) throws MissingResourceException {
        return null;
    }

    public static ResourceBundle getDateFormatBundle(Calendar cal, ULocale locale) throws MissingResourceException {
        return null;
    }

    public final ULocale getLocale(ULocale.Type type) {
        return type == ULocale.ACTUAL_LOCALE ? this.actualLocale : this.validLocale;
    }

    final void setLocale(ULocale valid, ULocale actual) {
        if (valid == null != (actual == null)) {
            throw new IllegalArgumentException();
        }
        this.validLocale = valid;
        this.actualLocale = actual;
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        if (this.gmtFormat == null) {
            this.initializeGMTFormat(this.requestedLocale);
        }
    }
}

