/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.AsciiUtil;
import com.ibm.icu.impl.locale.LocaleObjectCache;

public final class BaseLocale {
    private static final boolean JDKIMPL = false;
    private String _language = "";
    private String _script = "";
    private String _region = "";
    private String _variant = "";
    private volatile transient int _hash = 0;
    private static final LocaleObjectCache<Key, BaseLocale> BASELOCALE_CACHE = new LocaleObjectCache();
    public static final BaseLocale ROOT = BaseLocale.getInstance("", "", "", "");

    private BaseLocale(String language, String script, String region, String variant) {
        if (language != null) {
            this._language = AsciiUtil.toLowerString(language).intern();
        }
        if (script != null) {
            this._script = AsciiUtil.toTitleString(script).intern();
        }
        if (region != null) {
            this._region = AsciiUtil.toUpperString(region).intern();
        }
        if (variant != null) {
            this._variant = AsciiUtil.toUpperString(variant).intern();
        }
    }

    public static BaseLocale getInstance(String language, String script, String region, String variant) {
        Key key = new Key(language, script, region, variant);
        BaseLocale baseLocale = BASELOCALE_CACHE.get(key);
        if (baseLocale == null) {
            baseLocale = new BaseLocale(language, script, region, variant);
            baseLocale = BASELOCALE_CACHE.put(baseLocale.createKey(), baseLocale);
        }
        return baseLocale;
    }

    public String getLanguage() {
        return this._language;
    }

    public String getScript() {
        return this._script;
    }

    public String getRegion() {
        return this._region;
    }

    public String getVariant() {
        return this._variant;
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        if (this._language.length() > 0) {
            buf.append("language=");
            buf.append(this._language);
        }
        if (this._script.length() > 0) {
            if (buf.length() > 0) {
                buf.append(", ");
            }
            buf.append("script=");
            buf.append(this._script);
        }
        if (this._region.length() > 0) {
            if (buf.length() > 0) {
                buf.append(", ");
            }
            buf.append("region=");
            buf.append(this._region);
        }
        if (this._variant.length() > 0) {
            if (buf.length() > 0) {
                buf.append(", ");
            }
            buf.append("variant=");
            buf.append(this._variant);
        }
        return buf.toString();
    }

    public int hashCode() {
        int h = this._hash;
        if (h == 0) {
            int i = 0;
            while (i < this._language.length()) {
                h = 31 * h + this._language.charAt(i);
                ++i;
            }
            i = 0;
            while (i < this._script.length()) {
                h = 31 * h + this._script.charAt(i);
                ++i;
            }
            i = 0;
            while (i < this._region.length()) {
                h = 31 * h + this._region.charAt(i);
                ++i;
            }
            i = 0;
            while (i < this._variant.length()) {
                h = 31 * h + this._variant.charAt(i);
                ++i;
            }
            this._hash = h;
        }
        return h;
    }

    private Key createKey() {
        return new Key(this._language, this._script, this._region, this._variant);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class Key
    implements Comparable<Key> {
        private String _lang = "";
        private String _scrt = "";
        private String _regn = "";
        private String _vart = "";
        private volatile int _hash;

        public Key(String language, String script, String region, String variant) {
            if (language != null) {
                this._lang = language;
            }
            if (script != null) {
                this._scrt = script;
            }
            if (region != null) {
                this._regn = region;
            }
            if (variant != null) {
                this._vart = variant;
            }
        }

        public boolean equals(Object obj) {
            return this == obj || obj instanceof Key && AsciiUtil.caseIgnoreMatch(((Key)obj)._lang, this._lang) && AsciiUtil.caseIgnoreMatch(((Key)obj)._scrt, this._scrt) && AsciiUtil.caseIgnoreMatch(((Key)obj)._regn, this._regn) && AsciiUtil.caseIgnoreMatch(((Key)obj)._vart, this._vart);
        }

        @Override
        public int compareTo(Key other) {
            int res = AsciiUtil.caseIgnoreCompare(this._lang, other._lang);
            if (res == 0 && (res = AsciiUtil.caseIgnoreCompare(this._scrt, other._scrt)) == 0 && (res = AsciiUtil.caseIgnoreCompare(this._regn, other._regn)) == 0) {
                res = AsciiUtil.caseIgnoreCompare(this._vart, other._vart);
            }
            return res;
        }

        public int hashCode() {
            int h = this._hash;
            if (h == 0) {
                int i = 0;
                while (i < this._lang.length()) {
                    h = 31 * h + AsciiUtil.toLower(this._lang.charAt(i));
                    ++i;
                }
                i = 0;
                while (i < this._scrt.length()) {
                    h = 31 * h + AsciiUtil.toLower(this._scrt.charAt(i));
                    ++i;
                }
                i = 0;
                while (i < this._regn.length()) {
                    h = 31 * h + AsciiUtil.toLower(this._regn.charAt(i));
                    ++i;
                }
                i = 0;
                while (i < this._vart.length()) {
                    h = 31 * h + AsciiUtil.toLower(this._vart.charAt(i));
                    ++i;
                }
                this._hash = h;
            }
            return h;
        }
    }
}

