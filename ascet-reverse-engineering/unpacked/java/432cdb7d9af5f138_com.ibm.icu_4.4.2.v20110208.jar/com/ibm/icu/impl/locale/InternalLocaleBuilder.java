/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.BaseLocale;
import com.ibm.icu.impl.locale.Extension;
import com.ibm.icu.impl.locale.LanguageTag;
import com.ibm.icu.impl.locale.LocaleExtensions;
import com.ibm.icu.impl.locale.LocaleSyntaxException;
import com.ibm.icu.impl.locale.PrivateuseExtension;
import com.ibm.icu.impl.locale.StringTokenIterator;
import com.ibm.icu.impl.locale.UnicodeLocaleExtension;
import java.util.List;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public final class InternalLocaleBuilder {
    private String _language = "";
    private String _script = "";
    private String _region = "";
    private String _variant = "";
    private SortedMap<Character, Extension> _extMap;
    private final boolean _lenientVariant;
    private static final String LOCALESEP = "_";

    public InternalLocaleBuilder() {
        this(false);
    }

    public InternalLocaleBuilder(boolean lenientVariant) {
        this._lenientVariant = lenientVariant;
    }

    public boolean isLenientVariant() {
        return this._lenientVariant;
    }

    public InternalLocaleBuilder setLanguage(String language) throws LocaleSyntaxException {
        String newval = "";
        if (language.length() > 0) {
            if (!LanguageTag.isLanguage(language)) {
                throw new LocaleSyntaxException("Ill-formed language: " + language, 0);
            }
            newval = LanguageTag.canonicalizeLanguage(language);
        }
        this._language = newval;
        return this;
    }

    public InternalLocaleBuilder setScript(String script) throws LocaleSyntaxException {
        String newval = "";
        if (script.length() > 0) {
            if (!LanguageTag.isScript(script)) {
                throw new LocaleSyntaxException("Ill-formed script: " + script, 0);
            }
            newval = LanguageTag.canonicalizeScript(script);
        }
        this._script = newval;
        return this;
    }

    public InternalLocaleBuilder setRegion(String region) throws LocaleSyntaxException {
        String newval = "";
        if (region.length() > 0) {
            if (!LanguageTag.isRegion(region)) {
                throw new LocaleSyntaxException("Ill-formed region: " + region);
            }
            newval = LanguageTag.canonicalizeRegion(region);
        }
        this._region = newval;
        return this;
    }

    public InternalLocaleBuilder setVariant(String variant) throws LocaleSyntaxException {
        String newval = "";
        if (variant.length() > 0) {
            newval = this._lenientVariant ? variant : this.processVariant(variant);
        }
        this._variant = newval;
        return this;
    }

    public InternalLocaleBuilder setUnicodeLocaleExtension(String key, String type) throws LocaleSyntaxException {
        if (key.length() == 0) {
            throw new LocaleSyntaxException("Empty Unicode locale extension key");
        }
        if (!UnicodeLocaleExtension.isKey(key)) {
            throw new LocaleSyntaxException("Ill-formed Unicode locale extension key: " + key, 0);
        }
        key = UnicodeLocaleExtension.canonicalizeKey(key);
        UnicodeLocaleExtension ulext = null;
        if (this._extMap != null) {
            ulext = (UnicodeLocaleExtension)this._extMap.get(Character.valueOf('u'));
        }
        if (type.length() == 0) {
            if (ulext != null) {
                ulext.remove(key);
                if (ulext.isEmpty()) {
                    this._extMap.remove(Character.valueOf('u'));
                }
            }
        } else {
            StringBuilder buf = new StringBuilder();
            StringTokenIterator sti = new StringTokenIterator(type, "-");
            String subtag = sti.first();
            while (!sti.isDone()) {
                if (!UnicodeLocaleExtension.isTypeSubtag(subtag)) {
                    throw new LocaleSyntaxException("Ill-formed Unicode locale extension type: " + type, sti.currentStart());
                }
                if (buf.length() > 0) {
                    buf.append("-");
                }
                buf.append(UnicodeLocaleExtension.canonicalizeTypeSubtag(subtag));
                subtag = sti.next();
            }
            if (ulext == null) {
                TreeMap<String, String> ktmap = new TreeMap<String, String>();
                ktmap.put(key, buf.toString());
                ulext = new UnicodeLocaleExtension(ktmap);
                if (this._extMap == null) {
                    this._extMap = new TreeMap<Character, Extension>();
                }
                this._extMap.put(Character.valueOf('u'), ulext);
            } else {
                ulext.put(key, buf.toString());
            }
        }
        return this;
    }

    public InternalLocaleBuilder setExtension(char singleton, String value) throws LocaleSyntaxException {
        String strSingleton = String.valueOf(singleton);
        if (!LanguageTag.isExtensionSingleton(strSingleton) && !LanguageTag.isPrivateuseSingleton(strSingleton)) {
            throw new LocaleSyntaxException("Ill-formed extension key: " + singleton);
        }
        strSingleton = LanguageTag.canonicalizeExtensionSingleton(strSingleton);
        Character key = Character.valueOf(strSingleton.charAt(0));
        if (value.length() == 0) {
            if (this._extMap != null) {
                this._extMap.remove(key);
            }
        } else {
            StringTokenIterator sti = new StringTokenIterator(value, "-");
            LanguageTag.ParseStatus sts = new LanguageTag.ParseStatus();
            Extension ext = Extension.create(key.charValue(), sti, sts);
            if (sts.isError()) {
                throw new LocaleSyntaxException(sts.errorMsg, sts.errorIndex);
            }
            if (sts.parseLength != value.length() || ext == null) {
                throw new LocaleSyntaxException("Ill-formed extension value: " + value, sti.currentStart());
            }
            if (this._extMap == null) {
                this._extMap = new TreeMap<Character, Extension>();
            }
            this._extMap.put(key, ext);
        }
        return this;
    }

    public InternalLocaleBuilder setLocale(BaseLocale base, LocaleExtensions extensions) throws LocaleSyntaxException {
        String language = base.getLanguage();
        String script = base.getScript();
        String region = base.getRegion();
        String variant = base.getVariant();
        if (language.length() > 0) {
            if (!LanguageTag.isLanguage(language)) {
                throw new LocaleSyntaxException("Ill-formed language: " + language);
            }
            language = LanguageTag.canonicalizeLanguage(language);
        }
        if (script.length() > 0) {
            if (!LanguageTag.isScript(script)) {
                throw new LocaleSyntaxException("Ill-formed script: " + script);
            }
            script = LanguageTag.canonicalizeScript(script);
        }
        if (region.length() > 0) {
            if (!LanguageTag.isRegion(region)) {
                throw new LocaleSyntaxException("Ill-formed region: " + region);
            }
            region = LanguageTag.canonicalizeRegion(region);
        }
        if (this._lenientVariant) {
            String privuse = extensions.getExtensionValue(Character.valueOf("x".charAt(0)));
            if (privuse != null) {
                variant = LanguageTag.getJavaCompatibleVariant(variant, privuse);
            }
        } else if (variant.length() > 0) {
            variant = this.processVariant(variant);
        }
        this._language = language;
        this._script = script;
        this._region = region;
        this._variant = variant;
        if (this._extMap == null) {
            this._extMap = new TreeMap<Character, Extension>();
        } else {
            this._extMap.clear();
        }
        Set<Character> extKeys = extensions.getKeys();
        for (Character key : extKeys) {
            String modPrivuse;
            Extension ext = extensions.getExtension(key);
            if (this._lenientVariant && ext instanceof PrivateuseExtension && !(modPrivuse = LanguageTag.getJavaCompatiblePrivateuse(ext.getValue())).equals(ext.getValue())) {
                ext = new PrivateuseExtension(modPrivuse);
            }
            this._extMap.put(key, ext);
        }
        return this;
    }

    public InternalLocaleBuilder clear() {
        this._language = "";
        this._script = "";
        this._region = "";
        this._variant = "";
        this.removeLocaleExtensions();
        return this;
    }

    public InternalLocaleBuilder removeLocaleExtensions() {
        if (this._extMap != null) {
            this._extMap.clear();
        }
        return this;
    }

    public BaseLocale getBaseLocale() {
        return BaseLocale.getInstance(this._language, this._script, this._region, this._variant);
    }

    public LocaleExtensions getLocaleExtensions() {
        if (this._extMap != null && this._extMap.size() > 0) {
            return LocaleExtensions.getInstance(this._extMap);
        }
        return LocaleExtensions.EMPTY_EXTENSIONS;
    }

    private String processVariant(String variant) throws LocaleSyntaxException {
        StringTokenIterator sti = new StringTokenIterator(variant, LOCALESEP);
        LanguageTag.ParseStatus sts = new LanguageTag.ParseStatus();
        List<String> variants = LanguageTag.DEFAULT_PARSER.parseVariants(sti, sts);
        if (sts.parseLength != variant.length()) {
            throw new LocaleSyntaxException("Ill-formed variant: " + variant, sti.currentStart());
        }
        StringBuilder buf = new StringBuilder();
        for (String var : variants) {
            if (buf.length() != 0) {
                buf.append(LOCALESEP);
            }
            buf.append(var);
        }
        return buf.toString();
    }
}

