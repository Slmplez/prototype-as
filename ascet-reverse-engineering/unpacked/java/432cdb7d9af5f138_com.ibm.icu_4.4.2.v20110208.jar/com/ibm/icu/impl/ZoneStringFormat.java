/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.TextTrieMap;
import com.ibm.icu.impl.ZoneMeta;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.util.BasicTimeZone;
import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.TimeZoneTransition;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;

public class ZoneStringFormat {
    private static final int LOCATION = 1;
    private static final int GENERIC_LONG = 2;
    private static final int GENERIC_SHORT = 4;
    private static final int STANDARD_LONG = 8;
    private static final int STANDARD_SHORT = 16;
    private static final int DAYLIGHT_LONG = 32;
    private static final int DAYLIGHT_SHORT = 64;
    private static final int ZSIDX_LOCATION = 0;
    private static final int ZSIDX_LONG_STANDARD = 1;
    private static final int ZSIDX_SHORT_STANDARD = 2;
    private static final int ZSIDX_LONG_DAYLIGHT = 3;
    private static final int ZSIDX_SHORT_DAYLIGHT = 4;
    private static final int ZSIDX_LONG_GENERIC = 5;
    private static final int ZSIDX_SHORT_GENERIC = 6;
    private static final int ZSIDX_MAX = 7;
    private static ICUCache<ULocale, ZoneStringFormat> TZFORMAT_CACHE = new SimpleCache<ULocale, ZoneStringFormat>();
    private static final String RESKEY_SHORT_GENERIC = "sg";
    private static final String RESKEY_SHORT_STANDARD = "ss";
    private static final String RESKEY_SHORT_DAYLIGHT = "sd";
    private static final String RESKEY_LONG_GENERIC = "lg";
    private static final String RESKEY_LONG_STANDARD = "ls";
    private static final String RESKEY_LONG_DAYLIGHT = "ld";
    private static final String RESKEY_EXEMPLAR_CITY = "ec";
    private static final String RESKEY_COMMONLY_USED = "cu";
    private static final long DST_CHECK_RANGE = 15897600000L;
    private Map<String, ZoneStrings> tzidToStrings;
    private Map<String, ZoneStrings> mzidToStrings;
    private TextTrieMap<ZoneStringInfo> zoneStringsTrie;
    private ULocale locale;
    private transient String region;
    private boolean isFullyLoaded = false;
    private static final int[] INDEXMAP;
    private static final int[] NAMETYPEMAP;

    static {
        int[] nArray = new int[8];
        nArray[0] = -1;
        nArray[1] = 1;
        nArray[2] = 2;
        nArray[3] = 3;
        nArray[4] = 4;
        nArray[6] = 5;
        nArray[7] = 6;
        INDEXMAP = nArray;
        NAMETYPEMAP = new int[]{1, 8, 16, 32, 64, 2, 4};
    }

    public ZoneStringFormat(String[][] zoneStrings) {
        this.tzidToStrings = new HashMap<String, ZoneStrings>();
        this.zoneStringsTrie = new TextTrieMap(true);
        int i = 0;
        while (i < zoneStrings.length) {
            String tzid = zoneStrings[i][0];
            String[] names = new String[7];
            int j = 1;
            while (j < zoneStrings[i].length) {
                int typeIdx;
                if (zoneStrings[i][j] != null && (typeIdx = ZoneStringFormat.getNameTypeIndex(j)) != -1) {
                    names[typeIdx] = zoneStrings[i][j];
                    int type = ZoneStringFormat.getNameType(typeIdx);
                    ZoneStringInfo zsinfo = new ZoneStringInfo(tzid, zoneStrings[i][j], type);
                    this.zoneStringsTrie.put(zoneStrings[i][j], zsinfo);
                }
                ++j;
            }
            ZoneStrings zstrings = new ZoneStrings(names, true, null);
            this.tzidToStrings.put(tzid, zstrings);
            ++i;
        }
        this.isFullyLoaded = true;
    }

    public static ZoneStringFormat getInstance(ULocale locale) {
        ZoneStringFormat tzf = TZFORMAT_CACHE.get(locale);
        if (tzf == null) {
            tzf = new ZoneStringFormat(locale);
            TZFORMAT_CACHE.put(locale, tzf);
        }
        return tzf;
    }

    public String[][] getZoneStrings() {
        return this.getZoneStrings(System.currentTimeMillis());
    }

    public String getSpecificLongString(Calendar cal) {
        if (cal.get(16) == 0) {
            return this.getString(cal.getTimeZone().getID(), 1, cal.getTimeInMillis(), false);
        }
        return this.getString(cal.getTimeZone().getID(), 3, cal.getTimeInMillis(), false);
    }

    public String getSpecificShortString(Calendar cal, boolean commonlyUsedOnly) {
        if (cal.get(16) == 0) {
            return this.getString(cal.getTimeZone().getID(), 2, cal.getTimeInMillis(), commonlyUsedOnly);
        }
        return this.getString(cal.getTimeZone().getID(), 4, cal.getTimeInMillis(), commonlyUsedOnly);
    }

    public String getGenericLongString(Calendar cal) {
        return this.getGenericString(cal, false, false);
    }

    public String getGenericShortString(Calendar cal, boolean commonlyUsedOnly) {
        return this.getGenericString(cal, true, commonlyUsedOnly);
    }

    public String getGenericLocationString(Calendar cal) {
        return this.getString(cal.getTimeZone().getID(), 0, cal.getTimeInMillis(), false);
    }

    public ZoneStringInfo findSpecificLong(String text, int start) {
        return this.find(text, start, 40);
    }

    public ZoneStringInfo findSpecificShort(String text, int start) {
        return this.find(text, start, 80);
    }

    public ZoneStringInfo findGenericLong(String text, int start) {
        return this.find(text, start, 11);
    }

    public ZoneStringInfo findGenericShort(String text, int start) {
        return this.find(text, start, 21);
    }

    public ZoneStringInfo findGenericLocation(String text, int start) {
        return this.find(text, start, 1);
    }

    public String getLongStandard(String tzid, long date) {
        return this.getString(tzid, 1, date, false);
    }

    public String getLongDaylight(String tzid, long date) {
        return this.getString(tzid, 3, date, false);
    }

    public String getLongGenericNonLocation(String tzid, long date) {
        return this.getString(tzid, 5, date, false);
    }

    public String getLongGenericPartialLocation(String tzid, long date) {
        return this.getGenericPartialLocationString(tzid, false, date, false);
    }

    public String getShortStandard(String tzid, long date, boolean commonlyUsedOnly) {
        return this.getString(tzid, 2, date, commonlyUsedOnly);
    }

    public String getShortDaylight(String tzid, long date, boolean commonlyUsedOnly) {
        return this.getString(tzid, 4, date, commonlyUsedOnly);
    }

    public String getShortGenericNonLocation(String tzid, long date, boolean commonlyUsedOnly) {
        return this.getString(tzid, 6, date, commonlyUsedOnly);
    }

    public String getShortGenericPartialLocation(String tzid, long date, boolean commonlyUsedOnly) {
        return this.getGenericPartialLocationString(tzid, true, date, commonlyUsedOnly);
    }

    public String getGenericLocation(String tzid) {
        return this.getString(tzid, 0, 0L, false);
    }

    protected ZoneStringFormat(ULocale locale) {
        this.locale = locale;
        this.tzidToStrings = new HashMap<String, ZoneStrings>();
        this.mzidToStrings = new HashMap<String, ZoneStrings>();
        this.zoneStringsTrie = new TextTrieMap(true);
    }

    private synchronized void loadZone(String id) {
        if (this.isFullyLoaded) {
            return;
        }
        String tzid = ZoneMeta.getCanonicalSystemID(id);
        if (tzid == null || this.tzidToStrings.containsKey(tzid)) {
            return;
        }
        ICUResourceBundle zoneStringsBundle = null;
        try {
            ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/zone", this.locale);
            zoneStringsBundle = bundle.getWithFallback("zoneStrings");
        }
        catch (MissingResourceException missingResourceException) {}
        String[] zstrarray = new String[7];
        String[] mzstrarray = new String[7];
        String[][] mzPartialLoc = new String[10][4];
        this.addSingleZone(tzid, zoneStringsBundle, ZoneStringFormat.getFallbackFormat(this.locale), ZoneStringFormat.getRegionFormat(this.locale), zstrarray, mzstrarray, mzPartialLoc);
    }

    private synchronized void loadFull() {
        if (this.isFullyLoaded) {
            return;
        }
        ICUResourceBundle zoneStringsBundle = null;
        try {
            ICUResourceBundle bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/zone", this.locale);
            zoneStringsBundle = bundle.getWithFallback("zoneStrings");
        }
        catch (MissingResourceException missingResourceException) {}
        String[] zoneIDs = TimeZone.getAvailableIDs();
        String[] zstrarray = new String[7];
        String[] mzstrarray = new String[7];
        String[][] mzPartialLoc = new String[10][4];
        int i = 0;
        while (i < zoneIDs.length) {
            String tzid = ZoneMeta.getCanonicalSystemID(zoneIDs[i]);
            if (tzid != null && zoneIDs[i].equals(tzid) && !this.tzidToStrings.containsKey(tzid)) {
                this.addSingleZone(tzid, zoneStringsBundle, ZoneStringFormat.getFallbackFormat(this.locale), ZoneStringFormat.getRegionFormat(this.locale), zstrarray, mzstrarray, mzPartialLoc);
            }
            ++i;
        }
        this.isFullyLoaded = true;
    }

    private void addSingleZone(String tzid, ICUResourceBundle zoneStringsBundle, MessageFormat fallbackFmt, MessageFormat regionFmt, String[] zstrarray, String[] mzstrarray, String[][] mzPartialLoc) {
        if (this.tzidToStrings.containsKey(tzid)) {
            return;
        }
        String zoneKey = tzid.replace('/', ':');
        zstrarray[1] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_LONG_STANDARD);
        zstrarray[2] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_SHORT_STANDARD);
        zstrarray[3] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_LONG_DAYLIGHT);
        zstrarray[4] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_SHORT_DAYLIGHT);
        zstrarray[5] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_LONG_GENERIC);
        zstrarray[6] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_SHORT_GENERIC);
        String countryCode = ZoneMeta.getCanonicalCountry(tzid);
        String country = null;
        String city = null;
        if (countryCode != null) {
            city = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, zoneKey, RESKEY_EXEMPLAR_CITY);
            if (city == null) {
                city = tzid.substring(tzid.lastIndexOf(47) + 1).replace('_', ' ');
            }
            country = ZoneStringFormat.getLocalizedCountry(countryCode, this.locale);
            zstrarray[0] = ZoneMeta.getSingleCountry(tzid) != null ? regionFmt.format(new Object[]{country}) : fallbackFmt.format(new Object[]{city, country});
        } else if (tzid.startsWith("Etc/")) {
            zstrarray[0] = null;
        } else {
            String location = tzid;
            int slashIdx = location.lastIndexOf(47);
            if (slashIdx == -1) {
                zstrarray[0] = null;
            } else {
                location = tzid.substring(slashIdx + 1);
                zstrarray[0] = regionFmt.format(new Object[]{location});
            }
        }
        boolean commonlyUsed = ZoneStringFormat.isCommonlyUsed(zoneStringsBundle, zoneKey);
        int mzPartialLocIdx = 0;
        List<ZoneMeta.OlsonToMetaMappingEntry> metazoneMappings = ZoneMeta.getOlsonToMatazones(tzid);
        if (metazoneMappings != null) {
            for (ZoneMeta.OlsonToMetaMappingEntry mzmap : metazoneMappings) {
                int j;
                ZoneStrings mzStrings = this.mzidToStrings.get(mzmap.mzid);
                if (mzStrings == null) {
                    String mzkey = "meta:" + mzmap.mzid;
                    boolean mzCommonlyUsed = ZoneStringFormat.isCommonlyUsed(zoneStringsBundle, mzkey);
                    mzstrarray[1] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, mzkey, RESKEY_LONG_STANDARD);
                    mzstrarray[2] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, mzkey, RESKEY_SHORT_STANDARD);
                    mzstrarray[3] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, mzkey, RESKEY_LONG_DAYLIGHT);
                    mzstrarray[4] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, mzkey, RESKEY_SHORT_DAYLIGHT);
                    mzstrarray[5] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, mzkey, RESKEY_LONG_GENERIC);
                    mzstrarray[6] = ZoneStringFormat.getZoneStringFromBundle(zoneStringsBundle, mzkey, RESKEY_SHORT_GENERIC);
                    mzstrarray[0] = null;
                    mzStrings = new ZoneStrings(mzstrarray, mzCommonlyUsed, null);
                    this.mzidToStrings.put(mzmap.mzid, mzStrings);
                    String preferredIdForLocale = ZoneMeta.getZoneIdByMetazone(mzmap.mzid, this.getRegion());
                    j = 0;
                    while (j < mzstrarray.length) {
                        if (mzstrarray[j] != null) {
                            int type = ZoneStringFormat.getNameType(j);
                            ZoneStringInfo zsinfo = new ZoneStringInfo(preferredIdForLocale, mzstrarray[j], type);
                            this.zoneStringsTrie.put(mzstrarray[j], zsinfo);
                        }
                        ++j;
                    }
                }
                String lg = mzStrings.getString(5);
                String sg = mzStrings.getString(6);
                if (lg == null && sg == null) continue;
                boolean addMzPartialLocationNames = true;
                j = 0;
                while (j < mzPartialLocIdx) {
                    if (mzPartialLoc[j][0].equals(mzmap.mzid)) {
                        addMzPartialLocationNames = false;
                        break;
                    }
                    ++j;
                }
                if (!addMzPartialLocationNames) continue;
                String locationPart = null;
                String preferredID = ZoneMeta.getZoneIdByMetazone(mzmap.mzid, countryCode);
                locationPart = tzid.equals(preferredID) ? country : city;
                mzPartialLoc[mzPartialLocIdx][0] = mzmap.mzid;
                mzPartialLoc[mzPartialLocIdx][1] = null;
                mzPartialLoc[mzPartialLocIdx][2] = null;
                mzPartialLoc[mzPartialLocIdx][3] = null;
                if (locationPart != null) {
                    if (lg != null) {
                        mzPartialLoc[mzPartialLocIdx][1] = fallbackFmt.format(new Object[]{locationPart, lg});
                    }
                    if (sg != null) {
                        mzPartialLoc[mzPartialLocIdx][2] = fallbackFmt.format(new Object[]{locationPart, sg});
                        boolean shortMzCommonlyUsed = mzStrings.isShortFormatCommonlyUsed();
                        if (shortMzCommonlyUsed) {
                            mzPartialLoc[mzPartialLocIdx][3] = "1";
                        }
                    }
                }
                ++mzPartialLocIdx;
            }
        }
        String[][] genericPartialLocationNames = null;
        if (mzPartialLocIdx != 0) {
            genericPartialLocationNames = new String[mzPartialLocIdx][];
            int mzi = 0;
            while (mzi < mzPartialLocIdx) {
                genericPartialLocationNames[mzi] = (String[])mzPartialLoc[mzi].clone();
                ++mzi;
            }
        }
        ZoneStrings zstrings = new ZoneStrings(zstrarray, commonlyUsed, genericPartialLocationNames);
        this.tzidToStrings.put(tzid, zstrings);
        int j = 0;
        while (j < zstrarray.length) {
            if (zstrarray[j] != null) {
                int type = ZoneStringFormat.getNameType(j);
                ZoneStringInfo zsinfo = new ZoneStringInfo(tzid, zstrarray[j], type);
                this.zoneStringsTrie.put(zstrarray[j], zsinfo);
            }
            ++j;
        }
        if (genericPartialLocationNames != null) {
            j = 0;
            while (j < genericPartialLocationNames.length) {
                if (genericPartialLocationNames[j][1] != null) {
                    ZoneStringInfo zsinfo = new ZoneStringInfo(tzid, genericPartialLocationNames[j][1], 2);
                    this.zoneStringsTrie.put(genericPartialLocationNames[j][1], zsinfo);
                }
                if (genericPartialLocationNames[j][2] != null) {
                    ZoneStringInfo zsinfo = new ZoneStringInfo(tzid, genericPartialLocationNames[j][1], 4);
                    this.zoneStringsTrie.put(genericPartialLocationNames[j][2], zsinfo);
                }
                ++j;
            }
        }
    }

    private String getString(String tzid, int typeIdx, long date, boolean commonlyUsedOnly) {
        ZoneStrings mzstrings;
        String mzid;
        String canonicalID;
        if (!this.isFullyLoaded) {
            this.loadZone(tzid);
        }
        String result = null;
        ZoneStrings zstrings = this.tzidToStrings.get(tzid);
        if (zstrings == null && (canonicalID = ZoneMeta.getCanonicalSystemID(tzid)) != null && !canonicalID.equals(tzid)) {
            tzid = canonicalID;
            zstrings = this.tzidToStrings.get(tzid);
        }
        if (zstrings != null) {
            switch (typeIdx) {
                case 0: 
                case 1: 
                case 3: 
                case 5: {
                    result = zstrings.getString(typeIdx);
                    break;
                }
                case 2: 
                case 4: 
                case 6: {
                    if (commonlyUsedOnly && !zstrings.isShortFormatCommonlyUsed()) break;
                    result = zstrings.getString(typeIdx);
                }
            }
        }
        if (result == null && this.mzidToStrings != null && typeIdx != 0 && (mzid = ZoneMeta.getMetazoneID(tzid, date)) != null && (mzstrings = this.mzidToStrings.get(mzid)) != null) {
            switch (typeIdx) {
                case 1: 
                case 3: 
                case 5: {
                    result = mzstrings.getString(typeIdx);
                    break;
                }
                case 2: 
                case 4: 
                case 6: {
                    if (commonlyUsedOnly && !mzstrings.isShortFormatCommonlyUsed()) break;
                    result = mzstrings.getString(typeIdx);
                }
            }
        }
        return result;
    }

    private String getGenericString(Calendar cal, boolean isShort, boolean commonlyUsedOnly) {
        long time;
        String mzid;
        String canonicalID;
        ZoneStrings zstrings;
        String result = null;
        TimeZone tz = cal.getTimeZone();
        String tzid = tz.getID();
        if (!this.isFullyLoaded) {
            this.loadZone(tzid);
        }
        if ((zstrings = this.tzidToStrings.get(tzid)) == null && (canonicalID = ZoneMeta.getCanonicalSystemID(tzid)) != null && !canonicalID.equals(tzid)) {
            tzid = canonicalID;
            zstrings = this.tzidToStrings.get(tzid);
        }
        if (zstrings != null) {
            if (isShort) {
                if (!commonlyUsedOnly || zstrings.isShortFormatCommonlyUsed()) {
                    result = zstrings.getString(6);
                }
            } else {
                result = zstrings.getString(5);
            }
        }
        if (result == null && this.mzidToStrings != null && (mzid = ZoneMeta.getMetazoneID(tzid, time = cal.getTimeInMillis())) != null) {
            String genericNonLocation;
            boolean useStandard = false;
            if (cal.get(16) == 0) {
                useStandard = true;
                if (tz instanceof BasicTimeZone) {
                    BasicTimeZone btz = (BasicTimeZone)tz;
                    TimeZoneTransition before = btz.getPreviousTransition(time, true);
                    if (before != null && time - before.getTime() < 15897600000L && before.getFrom().getDSTSavings() != 0) {
                        useStandard = false;
                    } else {
                        TimeZoneTransition after = btz.getNextTransition(time, false);
                        if (after != null && after.getTime() - time < 15897600000L && after.getTo().getDSTSavings() != 0) {
                            useStandard = false;
                        }
                    }
                } else {
                    int[] offsets = new int[2];
                    tz.getOffset(time - 15897600000L, false, offsets);
                    if (offsets[1] != 0) {
                        useStandard = false;
                    } else {
                        tz.getOffset(time + 15897600000L, false, offsets);
                        if (offsets[1] != 0) {
                            useStandard = false;
                        }
                    }
                }
            }
            if (useStandard && (result = this.getString(tzid, isShort ? 2 : 1, time, commonlyUsedOnly)) != null && (genericNonLocation = this.getString(tzid, isShort ? 6 : 5, time, commonlyUsedOnly)) != null && result.equalsIgnoreCase(genericNonLocation)) {
                result = null;
            }
            if (result == null) {
                String preferredId;
                ZoneStrings mzstrings = this.mzidToStrings.get(mzid);
                if (mzstrings != null) {
                    if (isShort) {
                        if (!commonlyUsedOnly || mzstrings.isShortFormatCommonlyUsed()) {
                            result = mzstrings.getString(6);
                        }
                    } else {
                        result = mzstrings.getString(5);
                    }
                }
                if (result != null && !tzid.equals(preferredId = ZoneMeta.getZoneIdByMetazone(mzid, this.getRegion()))) {
                    int raw = cal.get(15);
                    int sav = cal.get(16);
                    TimeZone preferredZone = TimeZone.getTimeZone(preferredId);
                    int[] preferredOffsets = new int[2];
                    preferredZone.getOffset(time + (long)raw + (long)sav, true, preferredOffsets);
                    if (raw != preferredOffsets[0] || sav != preferredOffsets[1]) {
                        result = zstrings.getGenericPartialLocationString(mzid, isShort, commonlyUsedOnly);
                    }
                }
            }
        }
        if (result == null) {
            result = this.getString(tzid, 0, cal.getTimeInMillis(), false);
        }
        return result;
    }

    private String getGenericPartialLocationString(String tzid, boolean isShort, long date, boolean commonlyUsedOnly) {
        ZoneStrings zstrings;
        if (!this.isFullyLoaded) {
            this.loadZone(tzid);
        }
        String result = null;
        String mzid = ZoneMeta.getMetazoneID(tzid, date);
        if (mzid != null && (zstrings = this.tzidToStrings.get(tzid)) != null) {
            result = zstrings.getGenericPartialLocationString(mzid, isShort, commonlyUsedOnly);
        }
        return result;
    }

    private String[][] getZoneStrings(long date) {
        this.loadFull();
        Set<String> tzids = this.tzidToStrings.keySet();
        String[][] zoneStrings = new String[tzids.size()][8];
        int idx = 0;
        Iterator<String> iterator = tzids.iterator();
        while (iterator.hasNext()) {
            String tzid;
            zoneStrings[idx][0] = tzid = iterator.next();
            zoneStrings[idx][1] = this.getLongStandard(tzid, date);
            zoneStrings[idx][2] = this.getShortStandard(tzid, date, false);
            zoneStrings[idx][3] = this.getLongDaylight(tzid, date);
            zoneStrings[idx][4] = this.getShortDaylight(tzid, date, false);
            zoneStrings[idx][5] = this.getGenericLocation(tzid);
            zoneStrings[idx][6] = this.getLongGenericNonLocation(tzid, date);
            zoneStrings[idx][7] = this.getShortGenericNonLocation(tzid, date, false);
            ++idx;
        }
        return zoneStrings;
    }

    private static String getZoneStringFromBundle(ICUResourceBundle bundle, String key, String type) {
        String zstring = null;
        if (bundle != null) {
            try {
                zstring = bundle.getStringWithFallback(String.valueOf(key) + "/" + type);
            }
            catch (MissingResourceException missingResourceException) {}
        }
        return zstring;
    }

    private static boolean isCommonlyUsed(ICUResourceBundle bundle, String key) {
        boolean commonlyUsed = false;
        if (bundle != null) {
            try {
                ICUResourceBundle cuRes = bundle.getWithFallback(String.valueOf(key) + "/" + RESKEY_COMMONLY_USED);
                int cuValue = cuRes.getInt();
                commonlyUsed = cuValue != 0;
            }
            catch (MissingResourceException missingResourceException) {}
        }
        return commonlyUsed;
    }

    private static String getLocalizedCountry(String countryCode, ULocale locale) {
        String countryStr = null;
        if (countryCode != null) {
            ICUResourceBundle rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b/region", locale);
            ULocale rbloc = rb.getULocale();
            if (!rbloc.equals(ULocale.ROOT) && rbloc.getLanguage().equals(locale.getLanguage())) {
                countryStr = ULocale.getDisplayCountry("xx_" + countryCode, locale);
            }
            if (countryStr == null || countryStr.length() == 0) {
                countryStr = countryCode;
            }
        }
        return countryStr;
    }

    private static MessageFormat getFallbackFormat(ULocale locale) {
        String fallbackPattern = ZoneMeta.getTZLocalizationInfo(locale, "fallbackFormat");
        if (fallbackPattern == null) {
            fallbackPattern = "{1} ({0})";
        }
        return new MessageFormat(fallbackPattern, locale);
    }

    private static MessageFormat getRegionFormat(ULocale locale) {
        String regionPattern = ZoneMeta.getTZLocalizationInfo(locale, "regionFormat");
        if (regionPattern == null) {
            regionPattern = "{0}";
        }
        return new MessageFormat(regionPattern, locale);
    }

    private static int getNameTypeIndex(int i) {
        int idx = -1;
        if (i >= 1 && i < INDEXMAP.length) {
            idx = INDEXMAP[i];
        }
        return idx;
    }

    private static int getNameType(int typeIdx) {
        int type = -1;
        if (typeIdx >= 0 && typeIdx < NAMETYPEMAP.length) {
            type = NAMETYPEMAP[typeIdx];
        }
        return type;
    }

    private String getRegion() {
        if (this.region == null) {
            if (this.locale != null) {
                this.region = this.locale.getCountry();
                if (this.region.length() == 0) {
                    ULocale tmp = ULocale.addLikelySubtags(this.locale);
                    this.region = tmp.getCountry();
                }
            } else {
                this.region = "";
            }
        }
        return this.region;
    }

    private ZoneStringInfo find(String text, int start, int types) {
        ZoneStringInfo result = this.subFind(text, start, types);
        if (this.isFullyLoaded) {
            return result;
        }
        if (result != null) {
            int matchLen = result.getString().length();
            if (text.length() - start == matchLen) {
                return result;
            }
        }
        this.loadFull();
        return this.subFind(text, start, types);
    }

    private ZoneStringInfo subFind(String text, int start, int types) {
        ZoneStringInfo result = null;
        ZoneStringSearchResultHandler handler = new ZoneStringSearchResultHandler();
        this.zoneStringsTrie.find(text, start, handler);
        List<ZoneStringInfo> list = handler.getMatchedZoneStrings();
        ZoneStringInfo fallback = null;
        if (list != null && list.size() > 0) {
            for (ZoneStringInfo tmp : list) {
                if ((types & tmp.getType()) != 0) {
                    if (result == null || result.getString().length() < tmp.getString().length()) {
                        result = tmp;
                        continue;
                    }
                    if (result.getString().length() != tmp.getString().length() || !tmp.isGeneric() || result.isGeneric()) continue;
                    result = tmp;
                    continue;
                }
                if (result != null) continue;
                if (fallback == null || fallback.getString().length() < tmp.getString().length()) {
                    fallback = tmp;
                    continue;
                }
                if (fallback.getString().length() != tmp.getString().length() || !tmp.isGeneric() || fallback.isGeneric()) continue;
                fallback = tmp;
            }
        }
        if (result == null && fallback != null) {
            result = fallback;
        }
        return result;
    }

    public static class ZoneStringInfo {
        private String id;
        private String str;
        private int type;

        private ZoneStringInfo(String id, String str, int type) {
            this.id = id;
            this.str = str;
            this.type = type;
        }

        public String getID() {
            return this.id;
        }

        public String getString() {
            return this.str;
        }

        public boolean isStandard() {
            return (this.type & 8) != 0 || (this.type & 0x10) != 0;
        }

        public boolean isDaylight() {
            return (this.type & 0x20) != 0 || (this.type & 0x40) != 0;
        }

        public boolean isGeneric() {
            return !this.isStandard() && !this.isDaylight();
        }

        private int getType() {
            return this.type;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ZoneStringSearchResultHandler
    implements TextTrieMap.ResultHandler<ZoneStringInfo> {
        private ArrayList<ZoneStringInfo> resultList;

        private ZoneStringSearchResultHandler() {
        }

        @Override
        public boolean handlePrefixMatch(int matchLength, Iterator<ZoneStringInfo> values) {
            if (this.resultList == null) {
                this.resultList = new ArrayList();
            }
            while (values.hasNext()) {
                ZoneStringInfo zsitem = values.next();
                if (zsitem == null) break;
                int i = 0;
                while (i < this.resultList.size()) {
                    ZoneStringInfo tmp = this.resultList.get(i);
                    if (zsitem.getType() == tmp.getType()) {
                        if (matchLength <= tmp.getString().length()) break;
                        this.resultList.set(i, zsitem);
                        break;
                    }
                    ++i;
                }
                if (i != this.resultList.size()) continue;
                this.resultList.add(zsitem);
            }
            return true;
        }

        List<ZoneStringInfo> getMatchedZoneStrings() {
            if (this.resultList == null || this.resultList.size() == 0) {
                return null;
            }
            return this.resultList;
        }
    }

    private static class ZoneStrings {
        private String[] strings;
        private String[][] genericPartialLocationStrings;
        private boolean commonlyUsed;

        private ZoneStrings(String[] zstrarray, boolean commonlyUsed, String[][] genericPartialLocationStrings) {
            if (zstrarray != null) {
                int lastIdx = -1;
                int i = 0;
                while (i < zstrarray.length) {
                    if (zstrarray[i] != null) {
                        lastIdx = i;
                    }
                    ++i;
                }
                if (lastIdx != -1) {
                    this.strings = new String[lastIdx + 1];
                    System.arraycopy(zstrarray, 0, this.strings, 0, lastIdx + 1);
                }
            }
            this.commonlyUsed = commonlyUsed;
            this.genericPartialLocationStrings = genericPartialLocationStrings;
        }

        private String getString(int typeIdx) {
            if (this.strings != null && typeIdx >= 0 && typeIdx < this.strings.length) {
                return this.strings[typeIdx];
            }
            return null;
        }

        private boolean isShortFormatCommonlyUsed() {
            return this.commonlyUsed;
        }

        private String getGenericPartialLocationString(String mzid, boolean isShort, boolean commonlyUsedOnly) {
            String result = null;
            if (this.genericPartialLocationStrings != null) {
                int i = 0;
                while (i < this.genericPartialLocationStrings.length) {
                    if (this.genericPartialLocationStrings[i][0].equals(mzid)) {
                        if (isShort) {
                            if (commonlyUsedOnly && this.genericPartialLocationStrings[i][3] == null) break;
                            result = this.genericPartialLocationStrings[i][2];
                            break;
                        }
                        result = this.genericPartialLocationStrings[i][1];
                        break;
                    }
                    ++i;
                }
            }
            return result;
        }
    }
}

