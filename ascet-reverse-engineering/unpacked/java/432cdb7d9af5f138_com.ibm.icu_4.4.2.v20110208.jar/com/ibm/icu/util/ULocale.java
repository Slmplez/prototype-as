/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.ICUCache;
import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.ICUResourceTableAccess;
import com.ibm.icu.impl.LocaleIDParser;
import com.ibm.icu.impl.LocaleIDs;
import com.ibm.icu.impl.LocaleUtility;
import com.ibm.icu.impl.SimpleCache;
import com.ibm.icu.impl.locale.AsciiUtil;
import com.ibm.icu.impl.locale.BaseLocale;
import com.ibm.icu.impl.locale.Extension;
import com.ibm.icu.impl.locale.InternalLocaleBuilder;
import com.ibm.icu.impl.locale.LanguageTag;
import com.ibm.icu.impl.locale.LocaleExtensions;
import com.ibm.icu.impl.locale.LocaleSyntaxException;
import com.ibm.icu.impl.locale.UnicodeLocaleExtension;
import com.ibm.icu.text.LocaleDisplayNames;
import com.ibm.icu.util.IllformedLocaleException;
import com.ibm.icu.util.UResourceBundle;
import java.io.Serializable;
import java.text.ParseException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Set;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ULocale
implements Serializable {
    private static final long serialVersionUID = 3715177670352309217L;
    public static final ULocale ENGLISH = new ULocale("en", Locale.ENGLISH);
    public static final ULocale FRENCH = new ULocale("fr", Locale.FRENCH);
    public static final ULocale GERMAN = new ULocale("de", Locale.GERMAN);
    public static final ULocale ITALIAN = new ULocale("it", Locale.ITALIAN);
    public static final ULocale JAPANESE = new ULocale("ja", Locale.JAPANESE);
    public static final ULocale KOREAN = new ULocale("ko", Locale.KOREAN);
    public static final ULocale CHINESE = new ULocale("zh", Locale.CHINESE);
    public static final ULocale SIMPLIFIED_CHINESE = new ULocale("zh_Hans", Locale.CHINESE);
    public static final ULocale TRADITIONAL_CHINESE = new ULocale("zh_Hant", Locale.CHINESE);
    public static final ULocale FRANCE = new ULocale("fr_FR", Locale.FRANCE);
    public static final ULocale GERMANY = new ULocale("de_DE", Locale.GERMANY);
    public static final ULocale ITALY = new ULocale("it_IT", Locale.ITALY);
    public static final ULocale JAPAN = new ULocale("ja_JP", Locale.JAPAN);
    public static final ULocale KOREA = new ULocale("ko_KR", Locale.KOREA);
    public static final ULocale CHINA;
    public static final ULocale PRC;
    public static final ULocale TAIWAN;
    public static final ULocale UK;
    public static final ULocale US;
    public static final ULocale CANADA;
    public static final ULocale CANADA_FRENCH;
    private static final String EMPTY_STRING = "";
    private static final char UNDERSCORE = '_';
    private static final Locale EMPTY_LOCALE;
    public static final ULocale ROOT;
    private static final SimpleCache<Locale, ULocale> CACHE;
    private volatile transient Locale locale;
    private String localeID;
    private volatile transient BaseLocale baseLocale;
    private volatile transient LocaleExtensions extensions;
    private static String[][] CANONICALIZE_MAP;
    private static String[][] variantsToKeywords;
    private static final String[][] _javaLocaleMap;
    private static ICUCache<String, String> nameCache;
    private static Locale defaultLocale;
    private static ULocale defaultULocale;
    public static Type ACTUAL_LOCALE;
    public static Type VALID_LOCALE;
    private static final String UNDEFINED_LANGUAGE = "und";
    private static final String UNDEFINED_SCRIPT = "Zzzz";
    private static final String UNDEFINED_REGION = "ZZ";
    public static final char PRIVATE_USE_EXTENSION = 'x';
    public static final char UNICODE_LOCALE_EXTENSION = 'u';

    static {
        PRC = CHINA = new ULocale("zh_Hans_CN", Locale.CHINA);
        TAIWAN = new ULocale("zh_Hant_TW", Locale.TAIWAN);
        UK = new ULocale("en_GB", Locale.UK);
        US = new ULocale("en_US", Locale.US);
        CANADA = new ULocale("en_CA", Locale.CANADA);
        CANADA_FRENCH = new ULocale("fr_CA", Locale.CANADA_FRENCH);
        EMPTY_LOCALE = new Locale(EMPTY_STRING, EMPTY_STRING);
        ROOT = new ULocale(EMPTY_STRING, EMPTY_LOCALE);
        CACHE = new SimpleCache();
        String[][] stringArrayArray = new String[3][];
        stringArrayArray[0] = new String[]{"ja_JP_JP", "ja_JP", "calendar", "japanese", "ja"};
        String[] stringArray = new String[5];
        stringArray[0] = "no_NO_NY";
        stringArray[1] = "nn_NO";
        stringArray[4] = "nn";
        stringArrayArray[1] = stringArray;
        stringArrayArray[2] = new String[]{"th_TH_TH", "th_TH", "numbers", "thai", "th"};
        _javaLocaleMap = stringArrayArray;
        nameCache = new SimpleCache<String, String>();
        defaultLocale = Locale.getDefault();
        defaultULocale = new ULocale(defaultLocale);
        ACTUAL_LOCALE = new Type();
        VALID_LOCALE = new Type();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private static void initCANONICALIZE_MAP() {
        Class<ULocale> clazz;
        if (CANONICALIZE_MAP == null) {
            String[][] stringArrayArray = new String[50][];
            String[] stringArray = new String[4];
            stringArray[0] = "C";
            stringArray[1] = "en_US_POSIX";
            stringArrayArray[0] = stringArray;
            String[] stringArray2 = new String[4];
            stringArray2[0] = "art_LOJBAN";
            stringArray2[1] = "jbo";
            stringArrayArray[1] = stringArray2;
            String[] stringArray3 = new String[4];
            stringArray3[0] = "az_AZ_CYRL";
            stringArray3[1] = "az_Cyrl_AZ";
            stringArrayArray[2] = stringArray3;
            String[] stringArray4 = new String[4];
            stringArray4[0] = "az_AZ_LATN";
            stringArray4[1] = "az_Latn_AZ";
            stringArrayArray[3] = stringArray4;
            stringArrayArray[4] = new String[]{"ca_ES_PREEURO", "ca_ES", "currency", "ESP"};
            String[] stringArray5 = new String[4];
            stringArray5[0] = "cel_GAULISH";
            stringArray5[1] = "cel__GAULISH";
            stringArrayArray[5] = stringArray5;
            String[] stringArray6 = new String[4];
            stringArray6[0] = "de_1901";
            stringArray6[1] = "de__1901";
            stringArrayArray[6] = stringArray6;
            String[] stringArray7 = new String[4];
            stringArray7[0] = "de_1906";
            stringArray7[1] = "de__1906";
            stringArrayArray[7] = stringArray7;
            stringArrayArray[8] = new String[]{"de__PHONEBOOK", "de", "collation", "phonebook"};
            stringArrayArray[9] = new String[]{"de_AT_PREEURO", "de_AT", "currency", "ATS"};
            stringArrayArray[10] = new String[]{"de_DE_PREEURO", "de_DE", "currency", "DEM"};
            stringArrayArray[11] = new String[]{"de_LU_PREEURO", "de_LU", "currency", "EUR"};
            stringArrayArray[12] = new String[]{"el_GR_PREEURO", "el_GR", "currency", "GRD"};
            String[] stringArray8 = new String[4];
            stringArray8[0] = "en_BOONT";
            stringArray8[1] = "en__BOONT";
            stringArrayArray[13] = stringArray8;
            String[] stringArray9 = new String[4];
            stringArray9[0] = "en_SCOUSE";
            stringArray9[1] = "en__SCOUSE";
            stringArrayArray[14] = stringArray9;
            stringArrayArray[15] = new String[]{"en_BE_PREEURO", "en_BE", "currency", "BEF"};
            stringArrayArray[16] = new String[]{"en_IE_PREEURO", "en_IE", "currency", "IEP"};
            stringArrayArray[17] = new String[]{"es__TRADITIONAL", "es", "collation", "traditional"};
            stringArrayArray[18] = new String[]{"es_ES_PREEURO", "es_ES", "currency", "ESP"};
            stringArrayArray[19] = new String[]{"eu_ES_PREEURO", "eu_ES", "currency", "ESP"};
            stringArrayArray[20] = new String[]{"fi_FI_PREEURO", "fi_FI", "currency", "FIM"};
            stringArrayArray[21] = new String[]{"fr_BE_PREEURO", "fr_BE", "currency", "BEF"};
            stringArrayArray[22] = new String[]{"fr_FR_PREEURO", "fr_FR", "currency", "FRF"};
            stringArrayArray[23] = new String[]{"fr_LU_PREEURO", "fr_LU", "currency", "LUF"};
            stringArrayArray[24] = new String[]{"ga_IE_PREEURO", "ga_IE", "currency", "IEP"};
            stringArrayArray[25] = new String[]{"gl_ES_PREEURO", "gl_ES", "currency", "ESP"};
            stringArrayArray[26] = new String[]{"hi__DIRECT", "hi", "collation", "direct"};
            stringArrayArray[27] = new String[]{"it_IT_PREEURO", "it_IT", "currency", "ITL"};
            stringArrayArray[28] = new String[]{"ja_JP_TRADITIONAL", "ja_JP", "calendar", "japanese"};
            stringArrayArray[29] = new String[]{"nl_BE_PREEURO", "nl_BE", "currency", "BEF"};
            stringArrayArray[30] = new String[]{"nl_NL_PREEURO", "nl_NL", "currency", "NLG"};
            stringArrayArray[31] = new String[]{"pt_PT_PREEURO", "pt_PT", "currency", "PTE"};
            String[] stringArray10 = new String[4];
            stringArray10[0] = "sl_ROZAJ";
            stringArray10[1] = "sl__ROZAJ";
            stringArrayArray[32] = stringArray10;
            String[] stringArray11 = new String[4];
            stringArray11[0] = "sr_SP_CYRL";
            stringArray11[1] = "sr_Cyrl_RS";
            stringArrayArray[33] = stringArray11;
            String[] stringArray12 = new String[4];
            stringArray12[0] = "sr_SP_LATN";
            stringArray12[1] = "sr_Latn_RS";
            stringArrayArray[34] = stringArray12;
            String[] stringArray13 = new String[4];
            stringArray13[0] = "sr_YU_CYRILLIC";
            stringArray13[1] = "sr_Cyrl_RS";
            stringArrayArray[35] = stringArray13;
            stringArrayArray[36] = new String[]{"th_TH_TRADITIONAL", "th_TH", "calendar", "buddhist"};
            String[] stringArray14 = new String[4];
            stringArray14[0] = "uz_UZ_CYRILLIC";
            stringArray14[1] = "uz_Cyrl_UZ";
            stringArrayArray[37] = stringArray14;
            String[] stringArray15 = new String[4];
            stringArray15[0] = "uz_UZ_CYRL";
            stringArray15[1] = "uz_Cyrl_UZ";
            stringArrayArray[38] = stringArray15;
            String[] stringArray16 = new String[4];
            stringArray16[0] = "uz_UZ_LATN";
            stringArray16[1] = "uz_Latn_UZ";
            stringArrayArray[39] = stringArray16;
            String[] stringArray17 = new String[4];
            stringArray17[0] = "zh_CHS";
            stringArray17[1] = "zh_Hans";
            stringArrayArray[40] = stringArray17;
            String[] stringArray18 = new String[4];
            stringArray18[0] = "zh_CHT";
            stringArray18[1] = "zh_Hant";
            stringArrayArray[41] = stringArray18;
            String[] stringArray19 = new String[4];
            stringArray19[0] = "zh_GAN";
            stringArray19[1] = "zh__GAN";
            stringArrayArray[42] = stringArray19;
            String[] stringArray20 = new String[4];
            stringArray20[0] = "zh_GUOYU";
            stringArray20[1] = "zh";
            stringArrayArray[43] = stringArray20;
            String[] stringArray21 = new String[4];
            stringArray21[0] = "zh_HAKKA";
            stringArray21[1] = "zh__HAKKA";
            stringArrayArray[44] = stringArray21;
            String[] stringArray22 = new String[4];
            stringArray22[0] = "zh_MIN";
            stringArray22[1] = "zh__MIN";
            stringArrayArray[45] = stringArray22;
            String[] stringArray23 = new String[4];
            stringArray23[0] = "zh_MIN_NAN";
            stringArray23[1] = "zh__MINNAN";
            stringArrayArray[46] = stringArray23;
            String[] stringArray24 = new String[4];
            stringArray24[0] = "zh_WUU";
            stringArray24[1] = "zh__WUU";
            stringArrayArray[47] = stringArray24;
            String[] stringArray25 = new String[4];
            stringArray25[0] = "zh_XIANG";
            stringArray25[1] = "zh__XIANG";
            stringArrayArray[48] = stringArray25;
            String[] stringArray26 = new String[4];
            stringArray26[0] = "zh_YUE";
            stringArray26[1] = "zh__YUE";
            stringArrayArray[49] = stringArray26;
            String[][] tempCANONICALIZE_MAP = stringArrayArray;
            clazz = ULocale.class;
            // MONITORENTER : com.ibm.icu.util.ULocale.class
            if (CANONICALIZE_MAP == null) {
                CANONICALIZE_MAP = tempCANONICALIZE_MAP;
            }
            // MONITOREXIT : clazz
        }
        if (variantsToKeywords != null) return;
        String[][] tempVariantsToKeywords = new String[][]{{"EURO", "currency", "EUR"}, {"PINYIN", "collation", "pinyin"}, {"STROKE", "collation", "stroke"}};
        clazz = ULocale.class;
        // MONITORENTER : com.ibm.icu.util.ULocale.class
        if (variantsToKeywords == null) {
            variantsToKeywords = tempVariantsToKeywords;
        }
        // MONITOREXIT : clazz
        return;
    }

    private ULocale(String localeID, Locale locale) {
        this.localeID = localeID;
        this.locale = locale;
    }

    private ULocale(Locale loc) {
        this.localeID = ULocale.getName(ULocale.forLocale(loc).toString());
        this.locale = loc;
    }

    public static ULocale forLocale(Locale loc) {
        if (loc == null) {
            return null;
        }
        ULocale result = CACHE.get(loc);
        if (result == null) {
            if (defaultULocale != null && loc == ULocale.defaultULocale.locale) {
                result = defaultULocale;
            } else {
                String locStr = loc.toString();
                if (locStr.length() == 0) {
                    result = ROOT;
                } else {
                    int i = 0;
                    while (i < _javaLocaleMap.length) {
                        if (_javaLocaleMap[i][0].equals(locStr)) {
                            LocaleIDParser p = new LocaleIDParser(_javaLocaleMap[i][1]);
                            p.setKeywordValue(_javaLocaleMap[i][2], _javaLocaleMap[i][3]);
                            locStr = p.getName();
                            break;
                        }
                        ++i;
                    }
                    result = new ULocale(locStr, loc);
                }
            }
            CACHE.put(loc, result);
        }
        return result;
    }

    public ULocale(String localeID) {
        this.localeID = ULocale.getName(localeID);
    }

    public ULocale(String a, String b) {
        this(a, b, null);
    }

    public ULocale(String a, String b, String c) {
        this.localeID = ULocale.getName(ULocale.lscvToID(a, b, c, EMPTY_STRING));
    }

    public static ULocale createCanonical(String nonCanonicalID) {
        return new ULocale(ULocale.canonicalize(nonCanonicalID), null);
    }

    private static String lscvToID(String lang, String script, String country, String variant) {
        StringBuilder buf = new StringBuilder();
        if (lang != null && lang.length() > 0) {
            buf.append(lang);
        }
        if (script != null && script.length() > 0) {
            buf.append('_');
            buf.append(script);
        }
        if (country != null && country.length() > 0) {
            buf.append('_');
            buf.append(country);
        }
        if (variant != null && variant.length() > 0) {
            if (country == null || country.length() == 0) {
                buf.append('_');
            }
            buf.append('_');
            buf.append(variant);
        }
        return buf.toString();
    }

    public Locale toLocale() {
        if (this.locale == null) {
            LocaleIDParser p = new LocaleIDParser(this.localeID);
            String base = p.getBaseName();
            int i = 0;
            while (i < _javaLocaleMap.length) {
                if (base.equals(_javaLocaleMap[i][1]) || base.equals(_javaLocaleMap[i][4])) {
                    if (_javaLocaleMap[i][2] != null) {
                        String val = p.getKeywordValue(_javaLocaleMap[i][2]);
                        if (val != null && val.equals(_javaLocaleMap[i][3])) {
                            p = new LocaleIDParser(_javaLocaleMap[i][0]);
                            break;
                        }
                    } else {
                        p = new LocaleIDParser(_javaLocaleMap[i][0]);
                        break;
                    }
                }
                ++i;
            }
            String[] names = p.getLanguageScriptCountryVariant();
            this.locale = new Locale(names[0], names[2], names[3]);
        }
        return this.locale;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static ULocale getDefault() {
        Class<ULocale> clazz = ULocale.class;
        synchronized (ULocale.class) {
            Locale currentDefault = Locale.getDefault();
            if (!defaultLocale.equals(currentDefault)) {
                defaultLocale = currentDefault;
                defaultULocale = new ULocale(defaultLocale);
            }
            // ** MonitorExit[var0] (shouldn't be in output)
            return defaultULocale;
        }
    }

    public static synchronized void setDefault(ULocale newLocale) {
        Locale.setDefault(newLocale.toLocale());
        defaultULocale = newLocale;
    }

    public Object clone() {
        return this;
    }

    public int hashCode() {
        return this.localeID.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof String) {
            return this.localeID.equals((String)obj);
        }
        if (obj instanceof ULocale) {
            return this.localeID.equals(((ULocale)obj).localeID);
        }
        return false;
    }

    public static ULocale[] getAvailableLocales() {
        return ICUResourceBundle.getAvailableULocales();
    }

    public static String[] getISOCountries() {
        return LocaleIDs.getISOCountries();
    }

    public static String[] getISOLanguages() {
        return LocaleIDs.getISOLanguages();
    }

    public String getLanguage() {
        return ULocale.getLanguage(this.localeID);
    }

    public static String getLanguage(String localeID) {
        return new LocaleIDParser(localeID).getLanguage();
    }

    public String getScript() {
        return ULocale.getScript(this.localeID);
    }

    public static String getScript(String localeID) {
        return new LocaleIDParser(localeID).getScript();
    }

    public String getCountry() {
        return ULocale.getCountry(this.localeID);
    }

    public static String getCountry(String localeID) {
        return new LocaleIDParser(localeID).getCountry();
    }

    public String getVariant() {
        return ULocale.getVariant(this.localeID);
    }

    public static String getVariant(String localeID) {
        return new LocaleIDParser(localeID).getVariant();
    }

    public static String getFallback(String localeID) {
        return ULocale.getFallbackString(ULocale.getName(localeID));
    }

    public ULocale getFallback() {
        if (this.localeID.length() == 0 || this.localeID.charAt(0) == '@') {
            return null;
        }
        return new ULocale(ULocale.getFallbackString(this.localeID), null);
    }

    /*
     * Unable to fully structure code
     */
    private static String getFallbackString(String fallback) {
        block2: {
            extStart = fallback.indexOf(64);
            if (extStart == -1) {
                extStart = fallback.length();
            }
            if ((last = fallback.lastIndexOf(95, extStart)) != -1) ** GOTO lbl9
            last = 0;
            break block2;
            while (fallback.charAt(last - 1) == '_') {
                --last;
lbl9:
                // 2 sources

                if (last > 0) continue;
            }
        }
        return String.valueOf(fallback.substring(0, last)) + fallback.substring(extStart);
    }

    public String getBaseName() {
        return ULocale.getBaseName(this.localeID);
    }

    public static String getBaseName(String localeID) {
        if (localeID.indexOf(64) == -1) {
            return localeID;
        }
        return new LocaleIDParser(localeID).getBaseName();
    }

    public String getName() {
        return this.localeID;
    }

    public static String getName(String localeID) {
        String name = nameCache.get(localeID);
        if (name == null) {
            name = new LocaleIDParser(localeID).getName();
            nameCache.put(localeID, name);
        }
        return name;
    }

    public String toString() {
        return this.localeID;
    }

    public Iterator<String> getKeywords() {
        return ULocale.getKeywords(this.localeID);
    }

    public static Iterator<String> getKeywords(String localeID) {
        return new LocaleIDParser(localeID).getKeywords();
    }

    public String getKeywordValue(String keywordName) {
        return ULocale.getKeywordValue(this.localeID, keywordName);
    }

    public static String getKeywordValue(String localeID, String keywordName) {
        return new LocaleIDParser(localeID).getKeywordValue(keywordName);
    }

    public static String canonicalize(String localeID) {
        String[] vals;
        LocaleIDParser parser = new LocaleIDParser(localeID, true);
        String baseName = parser.getBaseName();
        boolean foundVariant = false;
        if (localeID.equals(EMPTY_STRING)) {
            return EMPTY_STRING;
        }
        ULocale.initCANONICALIZE_MAP();
        int i = 0;
        while (i < variantsToKeywords.length) {
            vals = variantsToKeywords[i];
            int idx = baseName.lastIndexOf("_" + vals[0]);
            if (idx > -1) {
                foundVariant = true;
                if ((baseName = baseName.substring(0, idx)).endsWith("_")) {
                    baseName = baseName.substring(0, --idx);
                }
                parser.setBaseName(baseName);
                parser.defaultKeywordValue(vals[1], vals[2]);
                break;
            }
            ++i;
        }
        i = 0;
        while (i < CANONICALIZE_MAP.length) {
            if (CANONICALIZE_MAP[i][0].equals(baseName)) {
                foundVariant = true;
                vals = CANONICALIZE_MAP[i];
                parser.setBaseName(vals[1]);
                if (vals[2] == null) break;
                parser.defaultKeywordValue(vals[2], vals[3]);
                break;
            }
            ++i;
        }
        if (!foundVariant && parser.getLanguage().equals("nb") && parser.getVariant().equals("NY")) {
            parser.setBaseName(ULocale.lscvToID("nn", parser.getScript(), parser.getCountry(), null));
        }
        return parser.getName();
    }

    public ULocale setKeywordValue(String keyword, String value) {
        return new ULocale(ULocale.setKeywordValue(this.localeID, keyword, value), null);
    }

    public static String setKeywordValue(String localeID, String keyword, String value) {
        LocaleIDParser parser = new LocaleIDParser(localeID);
        parser.setKeywordValue(keyword, value);
        return parser.getName();
    }

    public String getISO3Language() {
        return ULocale.getISO3Language(this.localeID);
    }

    public static String getISO3Language(String localeID) {
        return LocaleIDs.getISO3Language(ULocale.getLanguage(localeID));
    }

    public String getISO3Country() {
        return ULocale.getISO3Country(this.localeID);
    }

    public static String getISO3Country(String localeID) {
        return LocaleIDs.getISO3Country(ULocale.getCountry(localeID));
    }

    public String getDisplayLanguage() {
        return ULocale.getDisplayLanguageInternal(this, ULocale.getDefault(), false);
    }

    public String getDisplayLanguage(ULocale displayLocale) {
        return ULocale.getDisplayLanguageInternal(this, displayLocale, false);
    }

    public static String getDisplayLanguage(String localeID, String displayLocaleID) {
        return ULocale.getDisplayLanguageInternal(new ULocale(localeID), new ULocale(displayLocaleID), false);
    }

    public static String getDisplayLanguage(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayLanguageInternal(new ULocale(localeID), displayLocale, false);
    }

    public String getDisplayLanguageWithDialect() {
        return ULocale.getDisplayLanguageInternal(this, ULocale.getDefault(), true);
    }

    public String getDisplayLanguageWithDialect(ULocale displayLocale) {
        return ULocale.getDisplayLanguageInternal(this, displayLocale, true);
    }

    public static String getDisplayLanguageWithDialect(String localeID, String displayLocaleID) {
        return ULocale.getDisplayLanguageInternal(new ULocale(localeID), new ULocale(displayLocaleID), true);
    }

    public static String getDisplayLanguageWithDialect(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayLanguageInternal(new ULocale(localeID), displayLocale, true);
    }

    private static String getDisplayLanguageInternal(ULocale locale, ULocale displayLocale, boolean useDialect) {
        String lang = useDialect ? locale.getBaseName() : locale.getLanguage();
        return LocaleDisplayNames.getInstance(displayLocale).languageDisplayName(lang);
    }

    public String getDisplayScript() {
        return ULocale.getDisplayScriptInternal(this, ULocale.getDefault());
    }

    public String getDisplayScript(ULocale displayLocale) {
        return ULocale.getDisplayScriptInternal(this, displayLocale);
    }

    public static String getDisplayScript(String localeID, String displayLocaleID) {
        return ULocale.getDisplayScriptInternal(new ULocale(localeID), new ULocale(displayLocaleID));
    }

    public static String getDisplayScript(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayScriptInternal(new ULocale(localeID), displayLocale);
    }

    private static String getDisplayScriptInternal(ULocale locale, ULocale displayLocale) {
        return LocaleDisplayNames.getInstance(displayLocale).scriptDisplayName(locale.getScript());
    }

    public String getDisplayCountry() {
        return ULocale.getDisplayCountryInternal(this, ULocale.getDefault());
    }

    public String getDisplayCountry(ULocale displayLocale) {
        return ULocale.getDisplayCountryInternal(this, displayLocale);
    }

    public static String getDisplayCountry(String localeID, String displayLocaleID) {
        return ULocale.getDisplayCountryInternal(new ULocale(localeID), new ULocale(displayLocaleID));
    }

    public static String getDisplayCountry(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayCountryInternal(new ULocale(localeID), displayLocale);
    }

    private static String getDisplayCountryInternal(ULocale locale, ULocale displayLocale) {
        return LocaleDisplayNames.getInstance(displayLocale).regionDisplayName(locale.getCountry());
    }

    public String getDisplayVariant() {
        return ULocale.getDisplayVariantInternal(this, ULocale.getDefault());
    }

    public String getDisplayVariant(ULocale displayLocale) {
        return ULocale.getDisplayVariantInternal(this, displayLocale);
    }

    public static String getDisplayVariant(String localeID, String displayLocaleID) {
        return ULocale.getDisplayVariantInternal(new ULocale(localeID), new ULocale(displayLocaleID));
    }

    public static String getDisplayVariant(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayVariantInternal(new ULocale(localeID), displayLocale);
    }

    private static String getDisplayVariantInternal(ULocale locale, ULocale displayLocale) {
        return LocaleDisplayNames.getInstance(displayLocale).variantDisplayName(locale.getVariant());
    }

    public static String getDisplayKeyword(String keyword) {
        return ULocale.getDisplayKeywordInternal(keyword, ULocale.getDefault());
    }

    public static String getDisplayKeyword(String keyword, String displayLocaleID) {
        return ULocale.getDisplayKeywordInternal(keyword, new ULocale(displayLocaleID));
    }

    public static String getDisplayKeyword(String keyword, ULocale displayLocale) {
        return ULocale.getDisplayKeywordInternal(keyword, displayLocale);
    }

    private static String getDisplayKeywordInternal(String keyword, ULocale displayLocale) {
        return LocaleDisplayNames.getInstance(displayLocale).keyDisplayName(keyword);
    }

    public String getDisplayKeywordValue(String keyword) {
        return ULocale.getDisplayKeywordValueInternal(this, keyword, ULocale.getDefault());
    }

    public String getDisplayKeywordValue(String keyword, ULocale displayLocale) {
        return ULocale.getDisplayKeywordValueInternal(this, keyword, displayLocale);
    }

    public static String getDisplayKeywordValue(String localeID, String keyword, String displayLocaleID) {
        return ULocale.getDisplayKeywordValueInternal(new ULocale(localeID), keyword, new ULocale(displayLocaleID));
    }

    public static String getDisplayKeywordValue(String localeID, String keyword, ULocale displayLocale) {
        return ULocale.getDisplayKeywordValueInternal(new ULocale(localeID), keyword, displayLocale);
    }

    private static String getDisplayKeywordValueInternal(ULocale locale, String keyword, ULocale displayLocale) {
        keyword = AsciiUtil.toLowerString(keyword.trim());
        String value = locale.getKeywordValue(keyword);
        return LocaleDisplayNames.getInstance(displayLocale).keyValueDisplayName(keyword, value);
    }

    public String getDisplayName() {
        return ULocale.getDisplayNameInternal(this, ULocale.getDefault());
    }

    public String getDisplayName(ULocale displayLocale) {
        return ULocale.getDisplayNameInternal(this, displayLocale);
    }

    public static String getDisplayName(String localeID, String displayLocaleID) {
        return ULocale.getDisplayNameInternal(new ULocale(localeID), new ULocale(displayLocaleID));
    }

    public static String getDisplayName(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayNameInternal(new ULocale(localeID), displayLocale);
    }

    private static String getDisplayNameInternal(ULocale locale, ULocale displayLocale) {
        return LocaleDisplayNames.getInstance(displayLocale).localeDisplayName(locale);
    }

    public String getDisplayNameWithDialect() {
        return ULocale.getDisplayNameWithDialectInternal(this, ULocale.getDefault());
    }

    public String getDisplayNameWithDialect(ULocale displayLocale) {
        return ULocale.getDisplayNameWithDialectInternal(this, displayLocale);
    }

    public static String getDisplayNameWithDialect(String localeID, String displayLocaleID) {
        return ULocale.getDisplayNameWithDialectInternal(new ULocale(localeID), new ULocale(displayLocaleID));
    }

    public static String getDisplayNameWithDialect(String localeID, ULocale displayLocale) {
        return ULocale.getDisplayNameWithDialectInternal(new ULocale(localeID), displayLocale);
    }

    private static String getDisplayNameWithDialectInternal(ULocale locale, ULocale displayLocale) {
        return LocaleDisplayNames.getInstance(displayLocale, LocaleDisplayNames.DialectHandling.DIALECT_NAMES).localeDisplayName(locale);
    }

    public String getCharacterOrientation() {
        return ICUResourceTableAccess.getTableString("com/ibm/icu/impl/data/icudt44b", this, "layout", "characters");
    }

    public String getLineOrientation() {
        return ICUResourceTableAccess.getTableString("com/ibm/icu/impl/data/icudt44b", this, "layout", "lines");
    }

    public static ULocale acceptLanguage(String acceptLanguageList, ULocale[] availableLocales, boolean[] fallback) {
        if (acceptLanguageList == null) {
            throw new NullPointerException();
        }
        ULocale[] acceptList = null;
        try {
            acceptList = ULocale.parseAcceptLanguage(acceptLanguageList, true);
        }
        catch (ParseException parseException) {
            acceptList = null;
        }
        if (acceptList == null) {
            return null;
        }
        return ULocale.acceptLanguage(acceptList, availableLocales, fallback);
    }

    public static ULocale acceptLanguage(ULocale[] acceptLanguageList, ULocale[] availableLocales, boolean[] fallback) {
        if (fallback != null) {
            fallback[0] = true;
        }
        int i = 0;
        while (i < acceptLanguageList.length) {
            ULocale aLocale = acceptLanguageList[i];
            boolean[] setFallback = fallback;
            do {
                int j = 0;
                while (j < availableLocales.length) {
                    if (availableLocales[j].equals(aLocale)) {
                        if (setFallback != null) {
                            setFallback[0] = false;
                        }
                        return availableLocales[j];
                    }
                    ++j;
                }
                Locale loc = aLocale.toLocale();
                Locale parent = LocaleUtility.fallback(loc);
                aLocale = parent != null ? new ULocale(parent) : null;
                setFallback = null;
            } while (aLocale != null);
            ++i;
        }
        return null;
    }

    public static ULocale acceptLanguage(String acceptLanguageList, boolean[] fallback) {
        return ULocale.acceptLanguage(acceptLanguageList, ULocale.getAvailableLocales(), fallback);
    }

    public static ULocale acceptLanguage(ULocale[] acceptLanguageList, boolean[] fallback) {
        return ULocale.acceptLanguage(acceptLanguageList, ULocale.getAvailableLocales(), fallback);
    }

    static ULocale[] parseAcceptLanguage(String acceptLanguage, boolean isLenient) throws ParseException {
        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class ULocaleAcceptLanguageQ
        implements Comparable<ULocaleAcceptLanguageQ> {
            private double q;
            private double serial;

            public ULocaleAcceptLanguageQ(double theq, int theserial) {
                this.q = theq;
                this.serial = theserial;
            }

            @Override
            public int compareTo(ULocaleAcceptLanguageQ other) {
                if (this.q > other.q) {
                    return -1;
                }
                if (this.q < other.q) {
                    return 1;
                }
                if (this.serial < other.serial) {
                    return -1;
                }
                if (this.serial > other.serial) {
                    return 1;
                }
                return 0;
            }
        }
        TreeMap<ULocaleAcceptLanguageQ, ULocale> map = new TreeMap<ULocaleAcceptLanguageQ, ULocale>();
        StringBuilder languageRangeBuf = new StringBuilder();
        StringBuilder qvalBuf = new StringBuilder();
        int state = 0;
        acceptLanguage = String.valueOf(acceptLanguage) + ",";
        boolean subTag = false;
        boolean q1 = false;
        int n = 0;
        while (n < acceptLanguage.length()) {
            boolean gotLanguageQ = false;
            char c = acceptLanguage.charAt(n);
            switch (state) {
                case 0: {
                    if ('A' <= c && c <= 'Z' || 'a' <= c && c <= 'z') {
                        languageRangeBuf.append(c);
                        state = 1;
                        subTag = false;
                        break;
                    }
                    if (c == '*') {
                        languageRangeBuf.append(c);
                        state = 2;
                        break;
                    }
                    if (c == ' ' || c == '\t') break;
                    state = -1;
                    break;
                }
                case 1: {
                    if ('A' <= c && c <= 'Z' || 'a' <= c && c <= 'z') {
                        languageRangeBuf.append(c);
                        break;
                    }
                    if (c == '-') {
                        subTag = true;
                        languageRangeBuf.append(c);
                        break;
                    }
                    if (c == '_') {
                        if (isLenient) {
                            subTag = true;
                            languageRangeBuf.append(c);
                            break;
                        }
                        state = -1;
                        break;
                    }
                    if ('0' <= c && c <= '9') {
                        if (subTag) {
                            languageRangeBuf.append(c);
                            break;
                        }
                        state = -1;
                        break;
                    }
                    if (c == ',') {
                        gotLanguageQ = true;
                        break;
                    }
                    if (c == ' ' || c == '\t') {
                        state = 3;
                        break;
                    }
                    if (c == ';') {
                        state = 4;
                        break;
                    }
                    state = -1;
                    break;
                }
                case 2: {
                    if (c == ',') {
                        gotLanguageQ = true;
                        break;
                    }
                    if (c == ' ' || c == '\t') {
                        state = 3;
                        break;
                    }
                    if (c == ';') {
                        state = 4;
                        break;
                    }
                    state = -1;
                    break;
                }
                case 3: {
                    if (c == ',') {
                        gotLanguageQ = true;
                        break;
                    }
                    if (c == ';') {
                        state = 4;
                        break;
                    }
                    if (c == ' ' || c == '\t') break;
                    state = -1;
                    break;
                }
                case 4: {
                    if (c == 'q') {
                        state = 5;
                        break;
                    }
                    if (c == ' ' || c == '\t') break;
                    state = -1;
                    break;
                }
                case 5: {
                    if (c == '=') {
                        state = 6;
                        break;
                    }
                    if (c == ' ' || c == '\t') break;
                    state = -1;
                    break;
                }
                case 6: {
                    if (c == '0') {
                        q1 = false;
                        qvalBuf.append(c);
                        state = 7;
                        break;
                    }
                    if (c == '1') {
                        qvalBuf.append(c);
                        state = 7;
                        break;
                    }
                    if (c == '.') {
                        if (isLenient) {
                            qvalBuf.append(c);
                            state = 8;
                            break;
                        }
                        state = -1;
                        break;
                    }
                    if (c == ' ' || c == '\t') break;
                    state = -1;
                    break;
                }
                case 7: {
                    if (c == '.') {
                        qvalBuf.append(c);
                        state = 8;
                        break;
                    }
                    if (c == ',') {
                        gotLanguageQ = true;
                        break;
                    }
                    if (c == ' ' || c == '\t') {
                        state = 10;
                        break;
                    }
                    state = -1;
                    break;
                }
                case 8: {
                    if ('0' <= c || c <= '9') {
                        if (q1 && c != '0' && !isLenient) {
                            state = -1;
                            break;
                        }
                        qvalBuf.append(c);
                        state = 9;
                        break;
                    }
                    state = -1;
                    break;
                }
                case 9: {
                    if ('0' <= c && c <= '9') {
                        if (q1 && c != '0') {
                            state = -1;
                            break;
                        }
                        qvalBuf.append(c);
                        break;
                    }
                    if (c == ',') {
                        gotLanguageQ = true;
                        break;
                    }
                    if (c == ' ' || c == '\t') {
                        state = 10;
                        break;
                    }
                    state = -1;
                    break;
                }
                case 10: {
                    if (c == ',') {
                        gotLanguageQ = true;
                        break;
                    }
                    if (c == ' ' || c == '\t') break;
                    state = -1;
                }
            }
            if (state == -1) {
                throw new ParseException("Invalid Accept-Language", n);
            }
            if (gotLanguageQ) {
                double q = 1.0;
                if (qvalBuf.length() != 0) {
                    try {
                        q = Double.parseDouble(qvalBuf.toString());
                    }
                    catch (NumberFormatException numberFormatException) {
                        q = 1.0;
                    }
                    if (q > 1.0) {
                        q = 1.0;
                    }
                }
                if (languageRangeBuf.charAt(0) != '*') {
                    int serial = map.size();
                    ULocaleAcceptLanguageQ entry = new ULocaleAcceptLanguageQ(q, serial);
                    map.put(entry, new ULocale(ULocale.canonicalize(languageRangeBuf.toString())));
                }
                languageRangeBuf.setLength(0);
                qvalBuf.setLength(0);
                state = 0;
            }
            ++n;
        }
        if (state != 0) {
            throw new ParseException("Invalid AcceptlLanguage", n);
        }
        ULocale[] acceptList = map.values().toArray(new ULocale[map.size()]);
        return acceptList;
    }

    public static ULocale addLikelySubtags(ULocale loc) {
        String newLocaleID;
        String[] tags = new String[3];
        String trailing = null;
        int trailingIndex = ULocale.parseTagString(loc.localeID, tags);
        if (trailingIndex < loc.localeID.length()) {
            trailing = loc.localeID.substring(trailingIndex);
        }
        return (newLocaleID = ULocale.createLikelySubtagsString(tags[0], tags[1], tags[2], trailing)) == null ? loc : new ULocale(newLocaleID);
    }

    public static ULocale minimizeSubtags(ULocale loc) {
        String maximizedLocaleID;
        String[] tags = new String[3];
        int trailingIndex = ULocale.parseTagString(loc.localeID, tags);
        String originalLang = tags[0];
        String originalScript = tags[1];
        String originalRegion = tags[2];
        String originalTrailing = null;
        if (trailingIndex < loc.localeID.length()) {
            originalTrailing = loc.localeID.substring(trailingIndex);
        }
        if (ULocale.isEmptyString(maximizedLocaleID = ULocale.createLikelySubtagsString(originalLang, originalScript, originalRegion, null))) {
            return loc;
        }
        String tag = ULocale.createLikelySubtagsString(originalLang, null, null, null);
        if (tag.equals(maximizedLocaleID)) {
            String newLocaleID = ULocale.createTagString(originalLang, null, null, originalTrailing);
            return new ULocale(newLocaleID);
        }
        if (originalRegion.length() != 0 && (tag = ULocale.createLikelySubtagsString(originalLang, null, originalRegion, null)).equals(maximizedLocaleID)) {
            String newLocaleID = ULocale.createTagString(originalLang, null, originalRegion, originalTrailing);
            return new ULocale(newLocaleID);
        }
        if (originalRegion.length() != 0 && originalScript.length() != 0 && (tag = ULocale.createLikelySubtagsString(originalLang, originalScript, null, null)).equals(maximizedLocaleID)) {
            String newLocaleID = ULocale.createTagString(originalLang, originalScript, null, originalTrailing);
            return new ULocale(newLocaleID);
        }
        return loc;
    }

    private static boolean isEmptyString(String string) {
        return string == null || string.length() == 0;
    }

    private static void appendTag(String tag, StringBuilder buffer) {
        if (buffer.length() != 0) {
            buffer.append('_');
        }
        buffer.append(tag);
    }

    private static String createTagString(String lang, String script, String region, String trailing, String alternateTags) {
        LocaleIDParser parser = null;
        boolean regionAppended = false;
        StringBuilder tag = new StringBuilder();
        if (!ULocale.isEmptyString(lang)) {
            ULocale.appendTag(lang, tag);
        } else if (ULocale.isEmptyString(alternateTags)) {
            ULocale.appendTag(UNDEFINED_LANGUAGE, tag);
        } else {
            parser = new LocaleIDParser(alternateTags);
            String alternateLang = parser.getLanguage();
            ULocale.appendTag(!ULocale.isEmptyString(alternateLang) ? alternateLang : UNDEFINED_LANGUAGE, tag);
        }
        if (!ULocale.isEmptyString(script)) {
            ULocale.appendTag(script, tag);
        } else if (!ULocale.isEmptyString(alternateTags)) {
            String alternateScript;
            if (parser == null) {
                parser = new LocaleIDParser(alternateTags);
            }
            if (!ULocale.isEmptyString(alternateScript = parser.getScript())) {
                ULocale.appendTag(alternateScript, tag);
            }
        }
        if (!ULocale.isEmptyString(region)) {
            ULocale.appendTag(region, tag);
            regionAppended = true;
        } else if (!ULocale.isEmptyString(alternateTags)) {
            String alternateRegion;
            if (parser == null) {
                parser = new LocaleIDParser(alternateTags);
            }
            if (!ULocale.isEmptyString(alternateRegion = parser.getCountry())) {
                ULocale.appendTag(alternateRegion, tag);
                regionAppended = true;
            }
        }
        if (trailing != null && trailing.length() > 1) {
            int separators = 0;
            if (trailing.charAt(0) == '_') {
                if (trailing.charAt(1) == '_') {
                    separators = 2;
                }
            } else {
                separators = 1;
            }
            if (regionAppended) {
                if (separators == 2) {
                    tag.append(trailing.substring(1));
                } else {
                    tag.append(trailing);
                }
            } else {
                if (separators == 1) {
                    tag.append('_');
                }
                tag.append(trailing);
            }
        }
        return tag.toString();
    }

    static String createTagString(String lang, String script, String region, String trailing) {
        return ULocale.createTagString(lang, script, region, trailing, null);
    }

    private static int parseTagString(String localeID, String[] tags) {
        LocaleIDParser parser = new LocaleIDParser(localeID);
        String lang = parser.getLanguage();
        String script = parser.getScript();
        String region = parser.getCountry();
        tags[0] = ULocale.isEmptyString(lang) ? UNDEFINED_LANGUAGE : lang;
        tags[1] = script.equals(UNDEFINED_SCRIPT) ? EMPTY_STRING : script;
        tags[2] = region.equals(UNDEFINED_REGION) ? EMPTY_STRING : region;
        String variant = parser.getVariant();
        if (!ULocale.isEmptyString(variant)) {
            int index = localeID.indexOf(variant);
            return index > 0 ? index - 1 : index;
        }
        int index = localeID.indexOf(64);
        return index == -1 ? localeID.length() : index;
    }

    private static String lookupLikelySubtags(String localeId) {
        UResourceBundle bundle = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "likelySubtags");
        try {
            return bundle.getString(localeId);
        }
        catch (MissingResourceException missingResourceException) {
            return null;
        }
    }

    private static String createLikelySubtagsString(String lang, String script, String region, String variants) {
        String searchTag;
        String likelySubtags;
        if (!ULocale.isEmptyString(script) && !ULocale.isEmptyString(region) && (likelySubtags = ULocale.lookupLikelySubtags(searchTag = ULocale.createTagString(lang, script, region, null))) != null) {
            return ULocale.createTagString(null, null, null, variants, likelySubtags);
        }
        if (!ULocale.isEmptyString(script) && (likelySubtags = ULocale.lookupLikelySubtags(searchTag = ULocale.createTagString(lang, script, null, null))) != null) {
            return ULocale.createTagString(null, null, region, variants, likelySubtags);
        }
        if (!ULocale.isEmptyString(region) && (likelySubtags = ULocale.lookupLikelySubtags(searchTag = ULocale.createTagString(lang, null, region, null))) != null) {
            return ULocale.createTagString(null, script, null, variants, likelySubtags);
        }
        searchTag = ULocale.createTagString(lang, null, null, null);
        likelySubtags = ULocale.lookupLikelySubtags(searchTag);
        if (likelySubtags != null) {
            return ULocale.createTagString(null, script, region, variants, likelySubtags);
        }
        return null;
    }

    public String getExtension(char key) {
        String strKey = String.valueOf(key);
        if (!LocaleExtensions.isValidKey(strKey)) {
            throw new IllegalArgumentException("Invalid extension key: " + strKey);
        }
        return this.extensions().getExtensionValue(Character.valueOf(key));
    }

    public Set<Character> getExtensionKeys() {
        return this.extensions().getKeys();
    }

    public String getUnicodeLocaleType(String key) {
        if (!LocaleExtensions.isValidKey(key)) {
            throw new IllegalArgumentException("Invalid Unicode locale key: " + key);
        }
        return this.extensions().getUnicodeLocaleType(key);
    }

    public Set<String> getUnicodeLocaleKeys() {
        return this.extensions().getUnicodeLocaleKeys();
    }

    public String toLanguageTag() {
        LanguageTag tag = LanguageTag.parseLocale(this.base(), this.extensions());
        return tag.getID();
    }

    public static ULocale forLanguageTag(String languageTag) {
        LanguageTag tag = LanguageTag.parse(languageTag, true);
        return ULocale.getInstance(tag.getBaseLocale(), tag.getLocaleExtensions());
    }

    private static ULocale getInstance(BaseLocale base, LocaleExtensions exts) {
        String id = ULocale.lscvToID(base.getLanguage(), base.getScript(), base.getRegion(), base.getVariant());
        Set<Character> extKeys = exts.getKeys();
        if (!extKeys.isEmpty()) {
            TreeMap<String, String> kwds = new TreeMap<String, String>();
            for (Character key : extKeys) {
                Extension ext = exts.getExtension(key);
                if (ext instanceof UnicodeLocaleExtension) {
                    UnicodeLocaleExtension uext = (UnicodeLocaleExtension)ext;
                    Set<String> ukeys = uext.getKeys();
                    for (String bcpKey : ukeys) {
                        String bcpType = uext.getType(bcpKey);
                        String lkey = ULocale.bcp47ToLDMLKey(bcpKey);
                        String ltype = ULocale.bcp47ToLDMLType(lkey, bcpType);
                        kwds.put(lkey, ltype);
                    }
                    continue;
                }
                kwds.put(String.valueOf(key), ext.getValue());
            }
            if (!kwds.isEmpty()) {
                StringBuilder buf = new StringBuilder(id);
                buf.append("@");
                Set kset = kwds.entrySet();
                boolean insertSep = false;
                for (Map.Entry kwd : kset) {
                    if (insertSep) {
                        buf.append(";");
                    } else {
                        insertSep = true;
                    }
                    buf.append((String)kwd.getKey());
                    buf.append("=");
                    buf.append((String)kwd.getValue());
                }
                id = buf.toString();
            }
        }
        return new ULocale(id);
    }

    private BaseLocale base() {
        if (this.baseLocale == null) {
            String language = this.getLanguage();
            if (this.equals(ROOT)) {
                language = EMPTY_STRING;
            }
            this.baseLocale = BaseLocale.getInstance(language, this.getScript(), this.getCountry(), this.getVariant());
        }
        return this.baseLocale;
    }

    private LocaleExtensions extensions() {
        if (this.extensions == null) {
            Iterator<String> kwitr = this.getKeywords();
            if (kwitr == null) {
                this.extensions = LocaleExtensions.EMPTY_EXTENSIONS;
            } else {
                InternalLocaleBuilder intbld = new InternalLocaleBuilder();
                while (kwitr.hasNext()) {
                    String key = kwitr.next();
                    if (key.length() >= 2) {
                        String bcpKey = ULocale.ldmlKeyToBCP47(key);
                        String bcpType = ULocale.ldmlTypeToBCP47(key, this.getKeywordValue(key));
                        if (bcpKey == null || bcpType == null) continue;
                        try {
                            intbld.setUnicodeLocaleExtension(bcpKey, bcpType);
                        }
                        catch (LocaleSyntaxException localeSyntaxException) {}
                        continue;
                    }
                    if (key.length() != 1 || key.charAt(0) == 'u') continue;
                    try {
                        intbld.setExtension(key.charAt(0), this.getKeywordValue(key).replace("_", "-"));
                    }
                    catch (LocaleSyntaxException localeSyntaxException) {}
                }
                this.extensions = intbld.getLocaleExtensions();
            }
        }
        return this.extensions;
    }

    private static String ldmlKeyToBCP47(String key) {
        UResourceBundle keyTypeData = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "keyTypeData", ICUResourceBundle.ICU_DATA_CLASS_LOADER);
        UResourceBundle keyMap = keyTypeData.get("keyMap");
        key = AsciiUtil.toLowerString(key);
        String bcpKey = null;
        try {
            bcpKey = keyMap.getString(key);
        }
        catch (MissingResourceException missingResourceException) {}
        if (bcpKey == null) {
            if (key.length() == 2 && LanguageTag.isExtensionSubtag(key)) {
                return key;
            }
            return null;
        }
        return bcpKey;
    }

    private static String bcp47ToLDMLKey(String bcpKey) {
        UResourceBundle keyTypeData = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "keyTypeData", ICUResourceBundle.ICU_DATA_CLASS_LOADER);
        UResourceBundle keyMap = keyTypeData.get("keyMap");
        bcpKey = AsciiUtil.toLowerString(bcpKey);
        String key = null;
        int i = 0;
        while (i < keyMap.getSize()) {
            UResourceBundle mapData = keyMap.get(i);
            if (bcpKey.equals(mapData.getString())) {
                key = mapData.getKey();
                break;
            }
            ++i;
        }
        if (key == null) {
            return bcpKey;
        }
        return key;
    }

    private static String ldmlTypeToBCP47(String key, String type) {
        UResourceBundle keyTypeData = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "keyTypeData", ICUResourceBundle.ICU_DATA_CLASS_LOADER);
        UResourceBundle typeMap = keyTypeData.get("typeMap");
        key = AsciiUtil.toLowerString(key);
        UResourceBundle typeMapForKey = null;
        String bcpType = null;
        String typeResKey = key.equals("timezone") ? type.replace('/', ':') : type;
        try {
            typeMapForKey = typeMap.get(key);
            bcpType = typeMapForKey.getString(typeResKey);
        }
        catch (MissingResourceException missingResourceException) {}
        if (bcpType == null && typeMapForKey != null) {
            UResourceBundle typeAlias = keyTypeData.get("typeAlias");
            try {
                UResourceBundle typeAliasForKey = typeAlias.get(key);
                typeResKey = typeAliasForKey.getString(typeResKey);
                bcpType = typeMapForKey.getString(typeResKey.replace('/', ':'));
            }
            catch (MissingResourceException missingResourceException) {}
        }
        if (bcpType == null) {
            int typeLen = type.length();
            if (typeLen >= 3 && typeLen <= 8 && LanguageTag.isExtensionSubtag(type)) {
                return type;
            }
            return null;
        }
        return bcpType;
    }

    private static String bcp47ToLDMLType(String key, String bcpType) {
        UResourceBundle keyTypeData = UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", "keyTypeData", ICUResourceBundle.ICU_DATA_CLASS_LOADER);
        UResourceBundle typeMap = keyTypeData.get("typeMap");
        key = AsciiUtil.toLowerString(key);
        bcpType = AsciiUtil.toLowerString(bcpType);
        String type = null;
        try {
            UResourceBundle typeMapForKey = typeMap.get(key);
            int i = 0;
            while (i < typeMapForKey.getSize()) {
                UResourceBundle mapData = typeMapForKey.get(i);
                if (bcpType.equals(mapData.getString())) {
                    type = mapData.getKey();
                    if (key.equals("timezone")) {
                        type = type.replace(':', '/');
                    }
                    break;
                }
                ++i;
            }
        }
        catch (MissingResourceException missingResourceException) {}
        if (type == null) {
            return bcpType;
        }
        return type;
    }

    public static final class Builder {
        private final InternalLocaleBuilder _locbld;

        public Builder() {
            this(false);
        }

        public Builder(boolean isLenientVariant) {
            this._locbld = new InternalLocaleBuilder(isLenientVariant);
        }

        public boolean isLenientVariant() {
            return this._locbld.isLenientVariant();
        }

        public Builder setLocale(ULocale locale) {
            try {
                this._locbld.setLocale(locale.base(), locale.extensions());
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setLanguageTag(String languageTag) {
            LanguageTag tag = null;
            try {
                tag = LanguageTag.parseStrict(languageTag, this._locbld.isLenientVariant());
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            try {
                this._locbld.setLocale(tag.getBaseLocale(), tag.getLocaleExtensions());
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setLanguage(String language) {
            try {
                this._locbld.setLanguage(language);
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setScript(String script) {
            try {
                this._locbld.setScript(script);
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setRegion(String region) {
            try {
                this._locbld.setRegion(region);
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setVariant(String variant) {
            try {
                this._locbld.setVariant(variant);
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setExtension(char key, String value) {
            try {
                this._locbld.setExtension(key, value);
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder setUnicodeLocaleKeyword(String key, String type) {
            try {
                this._locbld.setUnicodeLocaleExtension(key, type);
            }
            catch (LocaleSyntaxException e) {
                throw new IllformedLocaleException(e.getMessage(), e.getErrorIndex());
            }
            return this;
        }

        public Builder clear() {
            this._locbld.clear();
            return this;
        }

        public Builder clearExtensions() {
            this._locbld.removeLocaleExtensions();
            return this;
        }

        public ULocale build() {
            return ULocale.getInstance(this._locbld.getBaseLocale(), this._locbld.getLocaleExtensions());
        }
    }

    public static final class Type {
        private Type() {
        }
    }
}

