/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.ICUResourceTableAccess;
import com.ibm.icu.lang.UScript;
import com.ibm.icu.text.LocaleDisplayNames;
import com.ibm.icu.text.MessageFormat;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.util.Iterator;
import java.util.Locale;

public class LocaleDisplayNamesImpl
extends LocaleDisplayNames {
    private final ULocale locale;
    private final LocaleDisplayNames.DialectHandling dialectHandling;
    private final DataTable langData;
    private final DataTable regionData;
    private final Appender appender;
    private final MessageFormat format;
    private static final Cache cache = new Cache();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static LocaleDisplayNames getInstance(ULocale locale, LocaleDisplayNames.DialectHandling dialectHandling) {
        Cache cache = LocaleDisplayNamesImpl.cache;
        synchronized (cache) {
            return LocaleDisplayNamesImpl.cache.get(locale, dialectHandling);
        }
    }

    public LocaleDisplayNamesImpl(ULocale locale, LocaleDisplayNames.DialectHandling dialectHandling) {
        this.dialectHandling = dialectHandling;
        this.langData = LangDataTables.impl.get(locale);
        this.regionData = RegionDataTables.impl.get(locale);
        this.locale = ULocale.ROOT.equals(this.langData.getLocale()) ? this.regionData.getLocale() : this.langData.getLocale();
        String sep = this.langData.get("localeDisplayPattern", "separator");
        if ("separator".equals(sep)) {
            sep = ", ";
        }
        this.appender = new Appender(sep);
        String pattern = this.langData.get("localeDisplayPattern", "pattern");
        if ("pattern".equals(pattern)) {
            pattern = "{0} ({1})";
        }
        this.format = new MessageFormat(pattern);
    }

    public ULocale getLocale() {
        return this.locale;
    }

    public LocaleDisplayNames.DialectHandling getDialectHandling() {
        return this.dialectHandling;
    }

    public String localeDisplayName(ULocale locale) {
        return this.localeDisplayNameInternal(locale);
    }

    public String localeDisplayName(Locale locale) {
        return this.localeDisplayNameInternal(ULocale.forLocale(locale));
    }

    public String localeDisplayName(String localeId) {
        return this.localeDisplayNameInternal(new ULocale(localeId));
    }

    private String localeDisplayNameInternal(ULocale locale) {
        Iterator<String> keys;
        boolean hasVariant;
        String resultName = null;
        String lang = locale.getLanguage();
        if (locale.getBaseName().length() == 0) {
            lang = "root";
        }
        String script = locale.getScript();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        boolean hasScript = script.length() > 0;
        boolean hasCountry = country.length() > 0;
        boolean bl = hasVariant = variant.length() > 0;
        if (this.dialectHandling == LocaleDisplayNames.DialectHandling.DIALECT_NAMES) {
            String langCountry;
            String langScript;
            String langScriptCountry;
            String result;
            if (hasScript && hasCountry && !(result = this.localeIdName(langScriptCountry = String.valueOf(lang) + '_' + script + '_' + country)).equals(langScriptCountry)) {
                resultName = result;
                hasScript = false;
                hasCountry = false;
            } else if (hasScript && !(result = this.localeIdName(langScript = String.valueOf(lang) + '_' + script)).equals(langScript)) {
                resultName = result;
                hasScript = false;
            } else if (hasCountry && !(result = this.localeIdName(langCountry = String.valueOf(lang) + '_' + country)).equals(langCountry)) {
                resultName = result;
                hasCountry = false;
            }
        }
        if (resultName == null) {
            resultName = this.localeIdName(lang);
        }
        StringBuilder buf = new StringBuilder();
        if (hasScript) {
            buf.append(this.scriptDisplayName(script));
        }
        if (hasCountry) {
            this.appender.append(this.regionDisplayName(country), buf);
        }
        if (hasVariant) {
            this.appender.append(this.variantDisplayName(variant), buf);
        }
        if ((keys = locale.getKeywords()) != null) {
            while (keys.hasNext()) {
                String key = keys.next();
                String value = locale.getKeywordValue(key);
                this.appender.append(this.keyDisplayName(key), buf).append("=").append(this.keyValueDisplayName(key, value));
            }
        }
        String resultRemainder = null;
        if (buf.length() > 0) {
            resultRemainder = buf.toString();
        }
        if (resultRemainder != null) {
            return this.format.format(new Object[]{resultName, resultRemainder});
        }
        return resultName;
    }

    private String localeIdName(String localeId) {
        return this.langData.get("Languages", localeId);
    }

    public String languageDisplayName(String lang) {
        if (lang.equals("root") || lang.indexOf(95) != -1) {
            return lang;
        }
        return this.langData.get("Languages", lang);
    }

    public String scriptDisplayName(String script) {
        return this.langData.get("Scripts", script);
    }

    public String scriptDisplayName(int scriptCode) {
        return this.scriptDisplayName(UScript.getShortName(scriptCode));
    }

    public String regionDisplayName(String region) {
        return this.regionData.get("Countries", region);
    }

    public String variantDisplayName(String variant) {
        return this.langData.get("Variants", variant);
    }

    public String keyDisplayName(String key) {
        return this.langData.get("Keys", key);
    }

    public String keyValueDisplayName(String key, String value) {
        return this.langData.get("Types", key, value);
    }

    public static boolean haveData(DataTableType type) {
        switch (type) {
            case LANG: {
                return LangDataTables.impl instanceof ICUDataTables;
            }
            case REGION: {
                return RegionDataTables.impl instanceof ICUDataTables;
            }
        }
        throw new IllegalArgumentException("unknown type: " + (Object)((Object)type));
    }

    static class Appender {
        private final String sep;

        Appender(String sep) {
            this.sep = sep;
        }

        StringBuilder append(String s, StringBuilder b) {
            if (b.length() > 0) {
                b.append(this.sep);
            }
            b.append(s);
            return b;
        }
    }

    private static class Cache {
        private ULocale locale;
        private LocaleDisplayNames.DialectHandling dialectHandling;
        private LocaleDisplayNames cache;

        private Cache() {
        }

        public LocaleDisplayNames get(ULocale locale, LocaleDisplayNames.DialectHandling dialectHandling) {
            if (dialectHandling != this.dialectHandling || !locale.equals(this.locale)) {
                this.locale = locale;
                this.dialectHandling = dialectHandling;
                this.cache = new LocaleDisplayNamesImpl(locale, dialectHandling);
            }
            return this.cache;
        }
    }

    public static class DataTable {
        ULocale getLocale() {
            return ULocale.ROOT;
        }

        String get(String tableName, String code) {
            return this.get(tableName, null, code);
        }

        String get(String tableName, String subTableName, String code) {
            return code;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum DataTableType {
        LANG,
        REGION;

    }

    static abstract class DataTables {
        DataTables() {
        }

        public abstract DataTable get(ULocale var1);

        public static DataTables load(String className) {
            try {
                return (DataTables)Class.forName(className).newInstance();
            }
            catch (Throwable throwable) {
                final DataTable NO_OP = new DataTable();
                return new DataTables(){

                    public DataTable get(ULocale locale) {
                        return NO_OP;
                    }
                };
            }
        }
    }

    static class ICUDataTable
    extends DataTable {
        private final ICUResourceBundle bundle;

        public ICUDataTable(String path, ULocale locale) {
            this.bundle = (ICUResourceBundle)UResourceBundle.getBundleInstance(path, locale.getBaseName());
        }

        public ULocale getLocale() {
            return this.bundle.getULocale();
        }

        public String get(String tableName, String subTableName, String code) {
            return ICUResourceTableAccess.getTableString(this.bundle, tableName, subTableName, code);
        }
    }

    static abstract class ICUDataTables
    extends DataTables {
        private final String path;

        protected ICUDataTables(String path) {
            this.path = path;
        }

        public DataTable get(ULocale locale) {
            return new ICUDataTable(this.path, locale);
        }
    }

    static class LangDataTables {
        static final DataTables impl = DataTables.load("com.ibm.icu.impl.ICULangDataTables");

        LangDataTables() {
        }
    }

    static class RegionDataTables {
        static final DataTables impl = DataTables.load("com.ibm.icu.impl.ICURegionDataTables");

        RegionDataTables() {
        }
    }
}

