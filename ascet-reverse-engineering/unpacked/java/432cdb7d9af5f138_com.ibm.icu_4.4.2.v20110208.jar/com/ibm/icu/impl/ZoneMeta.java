/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.Grego;
import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.OlsonTimeZone;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.text.NumberFormat;
import com.ibm.icu.util.SimpleTimeZone;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ZoneMeta {
    private static final boolean ASSERT = false;
    private static final String ZONEINFORESNAME = "zoneinfo64";
    private static final String kREGIONS = "Regions";
    private static final String kZONES = "Zones";
    private static final String kNAMES = "Names";
    private static final String kGMT_ID = "GMT";
    private static final String kCUSTOM_TZ_PREFIX = "GMT";
    private static String[] ZONEIDS = null;
    private static ICUCache<String, String> CANONICAL_ID_CACHE = new SimpleCache<String, String>();
    private static ICUCache<String, String> REGION_CACHE = new SimpleCache<String, String>();
    private static ICUCache<String, Boolean> SINGLE_COUNTRY_CACHE = new SimpleCache<String, Boolean>();
    private static final String DEF_REGION_FORMAT = "{0}";
    private static final String DEF_FALLBACK_FORMAT = "{1} ({0})";
    public static final String HOUR = "hourFormat";
    public static final String GMT = "gmtFormat";
    public static final String REGION_FORMAT = "regionFormat";
    public static final String FALLBACK_FORMAT = "fallbackFormat";
    public static final String ZONE_STRINGS = "zoneStrings";
    public static final String FORWARD_SLASH = "/";
    private static ICUCache<String, TimeZone> SYSTEM_ZONE_CACHE = new SimpleCache<String, TimeZone>();
    private static final int kMAX_CUSTOM_HOUR = 23;
    private static final int kMAX_CUSTOM_MIN = 59;
    private static final int kMAX_CUSTOM_SEC = 59;
    private static ICUCache<String, List<OlsonToMetaMappingEntry>> OLSON_TO_META_CACHE = new SimpleCache<String, List<OlsonToMetaMappingEntry>>();
    private static ICUCache<String, Map<String, String>> META_TO_OLSON_CACHE = new SimpleCache<String, Map<String, String>>();

    public static synchronized String[] getAvailableIDs(String country) {
        String[] ids = null;
        try {
            ICUResourceBundle top = (ICUResourceBundle)ICUResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", ZONEINFORESNAME, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
            UResourceBundle regions = top.get(kREGIONS);
            ArrayList<String> countryZones = new ArrayList<String>();
            int i = 0;
            while (i < regions.getSize()) {
                if (country.equals(regions.getString(i))) {
                    String zoneName = ZoneMeta.getZoneID(i);
                    countryZones.add(zoneName);
                }
                ++i;
            }
            if (countryZones.size() > 0) {
                ids = countryZones.toArray(new String[countryZones.size()]);
            }
        }
        catch (MissingResourceException missingResourceException) {}
        if (ids == null) {
            ids = new String[]{};
        }
        return ids;
    }

    public static synchronized String[] getAvailableIDs() {
        String[] ids = ZoneMeta.getZoneIDs();
        if (ids == null) {
            return new String[0];
        }
        return (String[])ids.clone();
    }

    public static synchronized String[] getAvailableIDs(int offset) {
        String[] ids = null;
        String[] all = ZoneMeta.getZoneIDs();
        if (all != null) {
            ArrayList<String> zones = new ArrayList<String>();
            String[] stringArray = all;
            int n = all.length;
            int n2 = 0;
            while (n2 < n) {
                String zid = stringArray[n2];
                TimeZone z = TimeZone.getTimeZone(zid);
                if (z != null && z.getID().equals(zid) && z.getRawOffset() == offset) {
                    zones.add(zid);
                }
                ++n2;
            }
            if (zones.size() > 0) {
                ids = zones.toArray(new String[zones.size()]);
            }
        }
        if (ids == null) {
            ids = new String[]{};
        }
        return ids;
    }

    public static synchronized int countEquivalentIDs(String id) {
        int count = 0;
        try {
            UResourceBundle res = ZoneMeta.openOlsonResource(null, id);
            UResourceBundle links = res.get("links");
            int[] v = links.getIntVector();
            count = v.length;
        }
        catch (MissingResourceException missingResourceException) {}
        return count;
    }

    public static synchronized String getEquivalentID(String id, int index) {
        String tmp;
        String result = "";
        int zoneIdx = -1;
        if (index >= 0) {
            try {
                UResourceBundle res = ZoneMeta.openOlsonResource(null, id);
                UResourceBundle links = res.get("links");
                int[] zones = links.getIntVector();
                if (index < zones.length) {
                    zoneIdx = zones[index];
                }
            }
            catch (MissingResourceException missingResourceException) {
                zoneIdx = -1;
            }
        }
        if (zoneIdx >= 0 && (tmp = ZoneMeta.getZoneID(zoneIdx)) != null) {
            result = tmp;
        }
        return result;
    }

    private static synchronized String[] getZoneIDs() {
        if (ZONEIDS == null) {
            try {
                UResourceBundle top = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", ZONEINFORESNAME, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
                UResourceBundle names = top.get(kNAMES);
                ZONEIDS = names.getStringArray();
            }
            catch (MissingResourceException missingResourceException) {}
        }
        if (ZONEIDS == null) {
            ZONEIDS = new String[0];
        }
        return ZONEIDS;
    }

    private static String getZoneID(int idx) {
        String[] ids;
        if (idx >= 0 && idx < (ids = ZoneMeta.getZoneIDs()).length) {
            return ids[idx];
        }
        return null;
    }

    private static int getZoneIndex(String zid) {
        int zoneIdx = -1;
        String[] all = ZoneMeta.getZoneIDs();
        if (all.length > 0) {
            int mid;
            int start = 0;
            int limit = all.length;
            int lastMid = Integer.MAX_VALUE;
            while (lastMid != (mid = (start + limit) / 2)) {
                lastMid = mid;
                int r = zid.compareTo(all[mid]);
                if (r == 0) {
                    zoneIdx = mid;
                    break;
                }
                if (r < 0) {
                    limit = mid;
                    continue;
                }
                start = mid;
            }
        }
        return zoneIdx;
    }

    public static String getCanonicalSystemID(String tzid) {
        String canonical = CANONICAL_ID_CACHE.get(tzid);
        if (canonical == null) {
            int zoneIdx = ZoneMeta.getZoneIndex(tzid);
            if (zoneIdx >= 0) {
                try {
                    UResourceBundle keyTypeData;
                    UResourceBundle typeAlias;
                    UResourceBundle aliasesForKey;
                    String cldrCanonical;
                    UResourceBundle top = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", ZONEINFORESNAME, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
                    UResourceBundle zones = top.get(kZONES);
                    UResourceBundle zone = zones.get(zoneIdx);
                    if (zone.getType() == 7) {
                        String tmp = ZoneMeta.getZoneID(zone.getInt());
                        if (tmp != null) {
                            canonical = tmp;
                        }
                    } else {
                        canonical = tzid;
                    }
                    if ((cldrCanonical = (aliasesForKey = (typeAlias = (keyTypeData = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "keyTypeData", ICUResourceBundle.ICU_DATA_CLASS_LOADER)).get("typeAlias")).get("timezone")).getString(canonical.replace('/', ':'))) != null) {
                        canonical = cldrCanonical;
                    }
                }
                catch (MissingResourceException missingResourceException) {}
            }
            if (canonical != null) {
                CANONICAL_ID_CACHE.put(tzid, canonical);
            }
        }
        return canonical;
    }

    public static String getCanonicalCountry(String tzid) {
        int zoneIdx;
        String region = REGION_CACHE.get(tzid);
        if (region == null && (zoneIdx = ZoneMeta.getZoneIndex(tzid)) >= 0) {
            try {
                UResourceBundle top = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", ZONEINFORESNAME, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
                UResourceBundle regions = top.get(kREGIONS);
                if (zoneIdx < regions.getSize()) {
                    region = regions.getString(zoneIdx);
                }
            }
            catch (MissingResourceException missingResourceException) {}
            if (region != null) {
                REGION_CACHE.put(tzid, region);
            }
        }
        if (region.equals("001")) {
            return null;
        }
        return region;
    }

    public static String getSingleCountry(String tzid) {
        String country = ZoneMeta.getCanonicalCountry(tzid);
        if (country != null) {
            Boolean isSingle = SINGLE_COUNTRY_CACHE.get(tzid);
            if (isSingle == null) {
                boolean isSingleCountryZone = true;
                String[] ids = TimeZone.getAvailableIDs(country);
                if (ids.length > 1) {
                    String canonical = ZoneMeta.getCanonicalSystemID(ids[0]);
                    int i = 1;
                    while (i < ids.length) {
                        if (!canonical.equals(ZoneMeta.getCanonicalSystemID(ids[i]))) {
                            isSingleCountryZone = false;
                            break;
                        }
                        ++i;
                    }
                }
                isSingle = isSingleCountryZone;
                SINGLE_COUNTRY_CACHE.put(tzid, isSingle);
            }
            if (!isSingle.booleanValue()) {
                country = null;
            }
        }
        return country;
    }

    public static String getLocationFormat(String tzid, String city, ULocale locale) {
        String flbPat;
        MessageFormat mf;
        String country_code = ZoneMeta.getCanonicalCountry(tzid);
        if (country_code == null) {
            return null;
        }
        String country = null;
        try {
            ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/region", locale);
            ULocale rbloc = rb.getULocale();
            if (!rbloc.equals(ULocale.ROOT) && rbloc.getLanguage().equals(locale.getLanguage())) {
                country = ULocale.getDisplayCountry("xx_" + country_code, locale);
            }
        }
        catch (MissingResourceException missingResourceException) {}
        if (country == null || country.length() == 0) {
            country = country_code;
        }
        if (ZoneMeta.getSingleCountry(tzid) != null) {
            String regPat = ZoneMeta.getTZLocalizationInfo(locale, REGION_FORMAT);
            if (regPat == null) {
                regPat = DEF_REGION_FORMAT;
            }
            mf = new MessageFormat(regPat);
            return mf.format(new Object[]{country});
        }
        if (city == null) {
            city = tzid.substring(tzid.lastIndexOf(47) + 1).replace('_', ' ');
        }
        if ((flbPat = ZoneMeta.getTZLocalizationInfo(locale, FALLBACK_FORMAT)) == null) {
            flbPat = DEF_FALLBACK_FORMAT;
        }
        mf = new MessageFormat(flbPat);
        return mf.format(new Object[]{city, country});
    }

    public static String getTZLocalizationInfo(ULocale locale, String format) {
        String result = null;
        try {
            ICUResourceBundle bundle = (ICUResourceBundle)ICUResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/zone", locale);
            result = bundle.getStringWithFallback("zoneStrings/" + format);
        }
        catch (MissingResourceException missingResourceException) {
            result = null;
        }
        return result;
    }

    public static UResourceBundle openOlsonResource(UResourceBundle top, String id) {
        UResourceBundle res = null;
        int zoneIdx = ZoneMeta.getZoneIndex(id);
        if (zoneIdx >= 0) {
            try {
                UResourceBundle zones;
                UResourceBundle zone;
                if (top == null) {
                    top = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", ZONEINFORESNAME, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
                }
                if ((zone = (zones = top.get(kZONES)).get(zoneIdx)).getType() == 7) {
                    zone = zones.get(zone.getInt());
                }
                res = zone;
            }
            catch (MissingResourceException missingResourceException) {
                res = null;
            }
        }
        return res;
    }

    public static TimeZone getSystemTimeZone(String id) {
        TimeZone z = SYSTEM_ZONE_CACHE.get(id);
        if (z == null) {
            try {
                UResourceBundle top = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", ZONEINFORESNAME, ICUResourceBundle.ICU_DATA_CLASS_LOADER);
                UResourceBundle res = ZoneMeta.openOlsonResource(top, id);
                z = new OlsonTimeZone(top, res);
                z.setID(id);
                SYSTEM_ZONE_CACHE.put(id, z);
            }
            catch (Exception exception) {
                return null;
            }
        }
        return (TimeZone)z.clone();
    }

    public static TimeZone getGMT() {
        SimpleTimeZone z = new SimpleTimeZone(0, "GMT");
        ((TimeZone)z).setID("GMT");
        return z;
    }

    public static TimeZone getCustomTimeZone(String id) {
        int[] fields = new int[4];
        if (ZoneMeta.parseCustomID(id, fields)) {
            String zid = ZoneMeta.formatCustomID(fields[1], fields[2], fields[3], fields[0] < 0);
            int offset = fields[0] * ((fields[1] * 60 + fields[2]) * 60 + fields[3]) * 1000;
            return new SimpleTimeZone(offset, zid);
        }
        return null;
    }

    public static String getCustomID(String id) {
        int[] fields = new int[4];
        if (ZoneMeta.parseCustomID(id, fields)) {
            return ZoneMeta.formatCustomID(fields[1], fields[2], fields[3], fields[0] < 0);
        }
        return null;
    }

    static boolean parseCustomID(String id, int[] fields) {
        NumberFormat numberFormat = null;
        String idUppercase = id.toUpperCase();
        if (id != null && id.length() > "GMT".length() && idUppercase.startsWith("GMT")) {
            ParsePosition pos = new ParsePosition("GMT".length());
            int sign = 1;
            int hour = 0;
            int min = 0;
            int sec = 0;
            if (id.charAt(pos.getIndex()) == '-') {
                sign = -1;
            } else if (id.charAt(pos.getIndex()) != '+') {
                return false;
            }
            pos.setIndex(pos.getIndex() + 1);
            numberFormat = NumberFormat.getInstance();
            numberFormat.setParseIntegerOnly(true);
            int start = pos.getIndex();
            Number n = numberFormat.parse(id, pos);
            if (pos.getIndex() == start) {
                return false;
            }
            hour = n.intValue();
            if (pos.getIndex() < id.length()) {
                if (pos.getIndex() - start > 2 || id.charAt(pos.getIndex()) != ':') {
                    return false;
                }
                pos.setIndex(pos.getIndex() + 1);
                int oldPos = pos.getIndex();
                n = numberFormat.parse(id, pos);
                if (pos.getIndex() - oldPos != 2) {
                    return false;
                }
                min = n.intValue();
                if (pos.getIndex() < id.length()) {
                    if (id.charAt(pos.getIndex()) != ':') {
                        return false;
                    }
                    pos.setIndex(pos.getIndex() + 1);
                    oldPos = pos.getIndex();
                    n = numberFormat.parse(id, pos);
                    if (pos.getIndex() != id.length() || pos.getIndex() - oldPos != 2) {
                        return false;
                    }
                    sec = n.intValue();
                }
            } else {
                int length = pos.getIndex() - start;
                if (length <= 0 || 6 < length) {
                    return false;
                }
                switch (length) {
                    case 1: 
                    case 2: {
                        break;
                    }
                    case 3: 
                    case 4: {
                        min = hour % 100;
                        hour /= 100;
                        break;
                    }
                    case 5: 
                    case 6: {
                        sec = hour % 100;
                        min = hour / 100 % 100;
                        hour /= 10000;
                    }
                }
            }
            if (hour <= 23 && min <= 59 && sec <= 59) {
                if (fields != null) {
                    if (fields.length >= 1) {
                        fields[0] = sign;
                    }
                    if (fields.length >= 2) {
                        fields[1] = hour;
                    }
                    if (fields.length >= 3) {
                        fields[2] = min;
                    }
                    if (fields.length >= 4) {
                        fields[3] = sec;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static TimeZone getCustomTimeZone(int offset) {
        boolean negative = false;
        int tmp = offset;
        if (offset < 0) {
            negative = true;
            tmp = -offset;
        }
        int millis = tmp % 1000;
        int sec = (tmp /= 1000) % 60;
        int min = (tmp /= 60) % 60;
        int hour = tmp / 60;
        String zid = ZoneMeta.formatCustomID(hour, min, sec, negative);
        return new SimpleTimeZone(offset, zid);
    }

    static String formatCustomID(int hour, int min, int sec, boolean negative) {
        StringBuilder zid = new StringBuilder("GMT");
        if (hour != 0 || min != 0) {
            if (negative) {
                zid.append('-');
            } else {
                zid.append('+');
            }
            if (hour < 10) {
                zid.append('0');
            }
            zid.append(hour);
            zid.append(':');
            if (min < 10) {
                zid.append('0');
            }
            zid.append(min);
            if (sec != 0) {
                zid.append(':');
                if (sec < 10) {
                    zid.append('0');
                }
                zid.append(sec);
            }
        }
        return zid.toString();
    }

    public static String getMetazoneID(String olsonID, long date) {
        String mzid = null;
        List<OlsonToMetaMappingEntry> mappings = ZoneMeta.getOlsonToMatazones(olsonID);
        if (mappings != null) {
            int i = 0;
            while (i < mappings.size()) {
                OlsonToMetaMappingEntry mzm = mappings.get(i);
                if (date >= mzm.from && date < mzm.to) {
                    mzid = mzm.mzid;
                    break;
                }
                ++i;
            }
        }
        return mzid;
    }

    static List<OlsonToMetaMappingEntry> getOlsonToMatazones(String tzid) {
        List<OlsonToMetaMappingEntry> mzMappings = OLSON_TO_META_CACHE.get(tzid);
        if (mzMappings == null) {
            String canonicalID;
            UResourceBundle metazoneInfoBundle;
            block9: {
                UResourceBundle bundle = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "metaZones");
                metazoneInfoBundle = bundle.get("metazoneInfo");
                canonicalID = TimeZone.getCanonicalID(tzid);
                if (canonicalID != null) break block9;
                return null;
            }
            try {
                String tzkey = canonicalID.replace('/', ':');
                UResourceBundle zoneBundle = metazoneInfoBundle.get(tzkey);
                mzMappings = new LinkedList<OlsonToMetaMappingEntry>();
                int idx = 0;
                while (idx < zoneBundle.getSize()) {
                    block10: {
                        UResourceBundle mz = zoneBundle.get(idx);
                        String mzid = mz.getString(0);
                        String from = "1970-01-01 00:00";
                        String to = "9999-12-31 23:59";
                        if (mz.getSize() == 3) {
                            from = mz.getString(1);
                            to = mz.getString(2);
                        }
                        OlsonToMetaMappingEntry mzmap = new OlsonToMetaMappingEntry();
                        mzmap.mzid = mzid.intern();
                        try {
                            mzmap.from = ZoneMeta.parseDate(from);
                            mzmap.to = ZoneMeta.parseDate(to);
                        }
                        catch (IllegalArgumentException illegalArgumentException) {
                            break block10;
                        }
                        mzMappings.add(mzmap);
                    }
                    ++idx;
                }
            }
            catch (MissingResourceException missingResourceException) {}
            if (mzMappings != null) {
                OLSON_TO_META_CACHE.put(tzid, mzMappings);
            }
        }
        return mzMappings;
    }

    static long parseDate(String text) throws IllegalArgumentException {
        int n;
        int year = 0;
        int month = 0;
        int day = 0;
        int hour = 0;
        int min = 0;
        int idx = 0;
        while (idx <= 3) {
            n = text.charAt(idx) - 48;
            if (n < 0 || n >= 10) {
                throw new IllegalArgumentException("Bad year");
            }
            year = 10 * year + n;
            ++idx;
        }
        idx = 5;
        while (idx <= 6) {
            n = text.charAt(idx) - 48;
            if (n < 0 || n >= 10) {
                throw new IllegalArgumentException("Bad month");
            }
            month = 10 * month + n;
            ++idx;
        }
        idx = 8;
        while (idx <= 9) {
            n = text.charAt(idx) - 48;
            if (n < 0 || n >= 10) {
                throw new IllegalArgumentException("Bad day");
            }
            day = 10 * day + n;
            ++idx;
        }
        idx = 11;
        while (idx <= 12) {
            n = text.charAt(idx) - 48;
            if (n < 0 || n >= 10) {
                throw new IllegalArgumentException("Bad hour");
            }
            hour = 10 * hour + n;
            ++idx;
        }
        idx = 14;
        while (idx <= 15) {
            n = text.charAt(idx) - 48;
            if (n < 0 || n >= 10) {
                throw new IllegalArgumentException("Bad minute");
            }
            min = 10 * min + n;
            ++idx;
        }
        long date = Grego.fieldsToDay(year, month - 1, day) * 86400000L + (long)(hour * 3600000) + (long)(min * 60000);
        return date;
    }

    public static String getZoneIdByMetazone(String metazoneID, String region) {
        String tzid = null;
        Map<String, String> zoneMap = META_TO_OLSON_CACHE.get(metazoneID);
        if (zoneMap == null) {
            try {
                UResourceBundle bundle = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "metaZones");
                UResourceBundle mapTimezones = bundle.get("mapTimezones");
                UResourceBundle territoryMap = mapTimezones.get(metazoneID);
                zoneMap = new HashMap<String, String>();
                Set<String> territories = territoryMap.keySet();
                for (String territory : territories) {
                    String zone = territoryMap.getString(territory);
                    zoneMap.put(territory, zone);
                }
                META_TO_OLSON_CACHE.put(metazoneID, zoneMap);
            }
            catch (MissingResourceException missingResourceException) {}
        }
        if (zoneMap != null && (tzid = zoneMap.get(region)) == null) {
            tzid = zoneMap.get("001");
        }
        return tzid;
    }

    static class OlsonToMetaMappingEntry {
        String mzid;
        long from;
        long to;

        OlsonToMetaMappingEntry() {
        }
    }
}

