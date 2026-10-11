/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.Grego;
import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUConfig;
import com.ibm.icu.impl.ICULogger;
import com.ibm.icu.impl.JavaTimeZone;
import com.ibm.icu.impl.OlsonTimeZone;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.TimeZoneAdapter;
import com.ibm.icu.impl.ZoneMeta;
import com.ibm.icu.text.SimpleDateFormat;
import com.ibm.icu.util.GregorianCalendar;
import com.ibm.icu.util.SimpleTimeZone;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.io.Serializable;
import java.util.Date;
import java.util.Locale;

public abstract class TimeZone
implements Serializable,
Cloneable {
    public static ICULogger TimeZoneLogger = ICULogger.getICULogger(TimeZone.class.getName());
    private static final long serialVersionUID = -744942128318337471L;
    public static final int TIMEZONE_ICU = 0;
    public static final int TIMEZONE_JDK = 1;
    public static final int SHORT = 0;
    public static final int LONG = 1;
    public static final int SHORT_GENERIC = 2;
    public static final int LONG_GENERIC = 3;
    public static final int SHORT_GMT = 4;
    public static final int LONG_GMT = 5;
    public static final int SHORT_COMMONLY_USED = 6;
    public static final int GENERIC_LOCATION = 7;
    private static ICUCache<ULocale, SimpleDateFormat> cachedLocaleData = new SimpleCache<ULocale, SimpleDateFormat>();
    private String ID;
    private static TimeZone defaultZone = null;
    private static String TZDATA_VERSION = null;
    private static int TZ_IMPL = 0;
    private static final String TZIMPL_CONFIG_KEY = "com.ibm.icu.util.TimeZone.DefaultTimeZoneType";
    private static final String TZIMPL_CONFIG_ICU = "ICU";
    private static final String TZIMPL_CONFIG_JDK = "JDK";

    static {
        String type = ICUConfig.get(TZIMPL_CONFIG_KEY, TZIMPL_CONFIG_ICU);
        if (type.equalsIgnoreCase(TZIMPL_CONFIG_JDK)) {
            TZ_IMPL = 1;
        }
    }

    public abstract int getOffset(int var1, int var2, int var3, int var4, int var5, int var6);

    public int getOffset(long date) {
        int[] result = new int[2];
        this.getOffset(date, false, result);
        return result[0] + result[1];
    }

    public void getOffset(long date, boolean local, int[] offsets) {
        offsets[0] = this.getRawOffset();
        if (!local) {
            date += (long)offsets[0];
        }
        int[] fields = new int[6];
        int pass = 0;
        while (true) {
            Grego.timeToFields(date, fields);
            offsets[1] = this.getOffset(1, fields[0], fields[1], fields[2], fields[3], fields[5]) - offsets[0];
            if (pass != 0 || !local || offsets[1] == 0) break;
            date -= (long)offsets[1];
            ++pass;
        }
    }

    public abstract void setRawOffset(int var1);

    public abstract int getRawOffset();

    public String getID() {
        return this.ID;
    }

    public void setID(String ID) {
        if (ID == null) {
            throw new NullPointerException();
        }
        this.ID = ID;
    }

    public final String getDisplayName() {
        return this._getDisplayName(false, 3, ULocale.getDefault());
    }

    public final String getDisplayName(Locale locale) {
        return this._getDisplayName(false, 3, ULocale.forLocale(locale));
    }

    public final String getDisplayName(ULocale locale) {
        return this._getDisplayName(false, 3, locale);
    }

    public final String getDisplayName(boolean daylight, int style) {
        return this.getDisplayName(daylight, style, ULocale.getDefault());
    }

    public String getDisplayName(boolean daylight, int style, Locale locale) {
        return this.getDisplayName(daylight, style, ULocale.forLocale(locale));
    }

    public String getDisplayName(boolean daylight, int style, ULocale locale) {
        if (style < 0 || style > 7) {
            throw new IllegalArgumentException("Illegal style: " + style);
        }
        return this._getDisplayName(daylight, style, locale);
    }

    private synchronized String _getDisplayName(boolean daylight, int style, ULocale locale) {
        SimpleDateFormat format;
        if (locale == null) {
            throw new NullPointerException("locale is null");
        }
        SimpleDateFormat tmpfmt = cachedLocaleData.get(locale);
        if (tmpfmt == null) {
            format = new SimpleDateFormat(null, locale);
            cachedLocaleData.put(locale, format);
        } else {
            format = (SimpleDateFormat)tmpfmt.clone();
        }
        String[] patterns = new String[]{"z", "zzzz", "v", "vvvv", "Z", "ZZZZ", "V", "VVVV"};
        format.applyPattern(patterns[style]);
        format.setTimeZone(this);
        Date d = new Date();
        if (style == 2 || style == 3) {
            return format.format(d);
        }
        int[] offsets = new int[2];
        this.getOffset(d.getTime(), false, offsets);
        if (daylight && offsets[1] != 0 || !daylight && offsets[1] == 0) {
            return format.format(d);
        }
        if (daylight && this.useDaylightTime()) {
            GregorianCalendar cal = new GregorianCalendar(this);
            cal.set(2, 6);
            cal.set(5, 1);
            d = cal.getTime();
            if (cal.get(16) == 0) {
                SimpleTimeZone tz = new SimpleTimeZone(offsets[0], this.getID(), 5, 1, 0, 0, 7, 1, 0, 0, this.getDSTSavings());
                format.setTimeZone(tz);
            }
        } else {
            SimpleTimeZone tz = new SimpleTimeZone(offsets[0], this.getID());
            format.setTimeZone(tz);
        }
        return format.format(d);
    }

    public int getDSTSavings() {
        if (this.useDaylightTime()) {
            return 3600000;
        }
        return 0;
    }

    public abstract boolean useDaylightTime();

    public abstract boolean inDaylightTime(Date var1);

    public static synchronized TimeZone getTimeZone(String ID) {
        return TimeZone.getTimeZone(ID, TZ_IMPL);
    }

    public static synchronized TimeZone getTimeZone(String ID, int type) {
        TimeZone result;
        if (type == 1) {
            result = new JavaTimeZone(ID);
        } else {
            if (ID == null) {
                throw new NullPointerException();
            }
            result = ZoneMeta.getSystemTimeZone(ID);
            if (result == null) {
                result = ZoneMeta.getCustomTimeZone(ID);
            }
            if (result == null) {
                if (TimeZoneLogger != null && TimeZoneLogger.isLoggingOn()) {
                    TimeZoneLogger.warning("\"" + ID + "\" is a bogus id so timezone is falling back to GMT.");
                }
                result = ZoneMeta.getGMT();
            }
        }
        return result;
    }

    public static synchronized void setDefaultTimeZoneType(int type) {
        if (type != 0 && type != 1) {
            throw new IllegalArgumentException("Invalid timezone type");
        }
        TZ_IMPL = type;
    }

    public static int getDefaultTimeZoneType() {
        return TZ_IMPL;
    }

    public static String[] getAvailableIDs(int rawOffset) {
        return ZoneMeta.getAvailableIDs(rawOffset);
    }

    public static String[] getAvailableIDs(String country) {
        return ZoneMeta.getAvailableIDs(country);
    }

    public static String[] getAvailableIDs() {
        return ZoneMeta.getAvailableIDs();
    }

    public static int countEquivalentIDs(String id) {
        return ZoneMeta.countEquivalentIDs(id);
    }

    public static String getEquivalentID(String id, int index) {
        return ZoneMeta.getEquivalentID(id, index);
    }

    public static synchronized TimeZone getDefault() {
        if (defaultZone == null) {
            if (TZ_IMPL == 1) {
                defaultZone = new JavaTimeZone();
            } else {
                java.util.TimeZone temp = java.util.TimeZone.getDefault();
                defaultZone = TimeZone.getTimeZone(temp.getID());
            }
        }
        return (TimeZone)defaultZone.clone();
    }

    public static synchronized void setDefault(TimeZone tz) {
        defaultZone = tz;
        java.util.TimeZone jdkZone = null;
        if (defaultZone instanceof JavaTimeZone) {
            jdkZone = ((JavaTimeZone)defaultZone).unwrap();
        } else if (tz != null) {
            String icuID;
            if (tz instanceof OlsonTimeZone && !(icuID = tz.getID()).equals((jdkZone = java.util.TimeZone.getTimeZone(icuID)).getID())) {
                jdkZone = null;
            }
            if (jdkZone == null) {
                jdkZone = TimeZoneAdapter.wrap(tz);
            }
        }
        java.util.TimeZone.setDefault(jdkZone);
    }

    public boolean hasSameRules(TimeZone other) {
        return other != null && this.getRawOffset() == other.getRawOffset() && this.useDaylightTime() == other.useDaylightTime();
    }

    public Object clone() {
        try {
            TimeZone other = (TimeZone)super.clone();
            other.ID = this.ID;
            return other;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || this.getClass() != obj.getClass()) {
            return false;
        }
        return this.ID.equals(((TimeZone)obj).ID);
    }

    public int hashCode() {
        return this.ID.hashCode();
    }

    public static synchronized String getTZDataVersion() {
        if (TZDATA_VERSION == null) {
            UResourceBundle tzbundle = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "zoneinfo64");
            TZDATA_VERSION = tzbundle.getString("TZVersion");
        }
        return TZDATA_VERSION;
    }

    public static String getCanonicalID(String id) {
        return TimeZone.getCanonicalID(id, null);
    }

    public static String getCanonicalID(String id, boolean[] isSystemID) {
        String canonicalID = null;
        boolean systemTzid = false;
        if (id != null && id.length() != 0) {
            canonicalID = ZoneMeta.getCanonicalSystemID(id);
            if (canonicalID != null) {
                systemTzid = true;
            } else {
                canonicalID = ZoneMeta.getCustomID(id);
            }
        }
        if (isSystemID != null) {
            isSystemID[0] = systemTzid;
        }
        return canonicalID;
    }
}

