/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.AsciiUtil;
import com.ibm.icu.impl.locale.BaseLocale;
import com.ibm.icu.impl.locale.Extension;
import com.ibm.icu.impl.locale.LocaleExtensions;
import com.ibm.icu.impl.locale.LocaleSyntaxException;
import com.ibm.icu.impl.locale.PrivateuseExtension;
import com.ibm.icu.impl.locale.StringTokenIterator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LanguageTag {
    private static final boolean JDKIMPL = false;
    public static final String SEP = "-";
    public static final String PRIVATEUSE = "x";
    public static String UNDETERMINED;
    private static final String JAVAVARIANT = "variant";
    private static final String JAVASEP = "_";
    private static final SortedMap<Character, Extension> EMPTY_EXTENSION_MAP;
    public static final Parser DEFAULT_PARSER;
    public static final Parser JAVA_VARIANT_COMPATIBLE_PARSER;
    private String _grandfathered = "";
    private String _language = "";
    private String _script = "";
    private String _region = "";
    private String _privateuse = "";
    private List<String> _extlangs = Collections.emptyList();
    private List<String> _variants = Collections.emptyList();
    private SortedMap<Character, Extension> _extensions = EMPTY_EXTENSION_MAP;
    private boolean _javaCompatVariants = false;
    private static final Map<AsciiUtil.CaseInsensitiveKey, String[]> GRANDFATHERED;

    static {
        String[][] entries;
        UNDETERMINED = "und";
        EMPTY_EXTENSION_MAP = new TreeMap<Character, Extension>();
        DEFAULT_PARSER = new Parser(false);
        JAVA_VARIANT_COMPATIBLE_PARSER = new Parser(true);
        GRANDFATHERED = new HashMap<AsciiUtil.CaseInsensitiveKey, String[]>();
        String[][] stringArrayArray = entries = new String[][]{{"art-lojban", "jbo"}, {"cel-gaulish", "cel-gaulish"}, {"en-GB-oed", "en-GB"}, {"i-ami", "ami"}, {"i-bnn", "bnn"}, {"i-default", UNDETERMINED}, {"i-enochian", UNDETERMINED}, {"i-hak", "hak"}, {"i-klingon", "tlh"}, {"i-lux", "lb"}, {"i-mingo", UNDETERMINED}, {"i-navajo", "nv"}, {"i-pwn", "pwn"}, {"i-tao", "tao"}, {"i-tay", "tay"}, {"i-tsu", "tsu"}, {"no-bok", "nb"}, {"no-nyn", "nn"}, {"sgn-BE-FR", "sfb"}, {"sgn-BE-NL", "vgt"}, {"sgn-CH-DE", "sgg"}, {"zh-guoyu", "cmn"}, {"zh-hakka", "hak"}, {"zh-min", "zh"}, {"zh-min-nan", "nan"}, {"zh-xiang", "hsn"}};
        int n = entries.length;
        int n2 = 0;
        while (n2 < n) {
            String[] e = stringArrayArray[n2];
            GRANDFATHERED.put(new AsciiUtil.CaseInsensitiveKey(e[0]), e);
            ++n2;
        }
    }

    private LanguageTag() {
    }

    public String getLanguage() {
        return this._language;
    }

    public List<String> getExtlangs() {
        return Collections.unmodifiableList(this._extlangs);
    }

    public String getScript() {
        return this._script;
    }

    public String getRegion() {
        return this._region;
    }

    public List<String> getVariants() {
        return Collections.unmodifiableList(this._variants);
    }

    public SortedMap<Character, Extension> getExtensions() {
        return Collections.unmodifiableSortedMap(this._extensions);
    }

    public String getPrivateuse() {
        return this._privateuse;
    }

    public String getGrandfathered() {
        return this._grandfathered;
    }

    private String getJavaVariant() {
        StringBuilder buf = new StringBuilder();
        for (String var : this._variants) {
            if (buf.length() > 0) {
                buf.append(JAVASEP);
            }
            buf.append(var);
        }
        if (this._javaCompatVariants) {
            return LanguageTag.getJavaCompatibleVariant(buf.toString(), this._privateuse);
        }
        return buf.toString();
    }

    private String getJavaPrivateuse() {
        if (this._javaCompatVariants) {
            return LanguageTag.getJavaCompatiblePrivateuse(this._privateuse);
        }
        return this._privateuse;
    }

    static String getJavaCompatibleVariant(String bcpVariants, String bcpPrivuse) {
        StringBuilder buf = new StringBuilder(bcpVariants);
        if (bcpPrivuse.length() > 0) {
            int idx = -1;
            if (bcpPrivuse.startsWith("variant-")) {
                idx = "variant-".length();
            } else {
                idx = bcpPrivuse.indexOf("-variant-");
                if (idx != -1) {
                    idx += "-variant-".length();
                }
            }
            if (idx != -1) {
                if (buf.length() != 0) {
                    buf.append(JAVASEP);
                }
                buf.append(bcpPrivuse.substring(idx).replace(SEP, JAVASEP));
            }
        }
        return buf.toString();
    }

    static String getJavaCompatiblePrivateuse(String bcpPrivuse) {
        if (bcpPrivuse.length() > 0) {
            int idx = -1;
            idx = bcpPrivuse.startsWith("variant-") ? 0 : bcpPrivuse.indexOf("-variant-");
            if (idx != -1) {
                return bcpPrivuse.substring(0, idx);
            }
        }
        return bcpPrivuse;
    }

    public BaseLocale getBaseLocale() {
        String lang = this._language;
        if (this._extlangs.size() > 0) {
            lang = this._extlangs.get(0);
        }
        if (lang.equals(UNDETERMINED)) {
            lang = "";
        }
        return BaseLocale.getInstance(lang, this._script, this._region, this.getJavaVariant());
    }

    public LocaleExtensions getLocaleExtensions() {
        String javaPrivuse = this.getJavaPrivateuse();
        if (this._extensions == null && javaPrivuse.length() == 0) {
            return LocaleExtensions.EMPTY_EXTENSIONS;
        }
        TreeMap<Character, Extension> exts = new TreeMap<Character, Extension>();
        if (this._extensions != null) {
            exts.putAll(this._extensions);
        }
        if (javaPrivuse.length() > 0) {
            PrivateuseExtension pext = new PrivateuseExtension(javaPrivuse);
            exts.put(Character.valueOf('x'), pext);
        }
        return LocaleExtensions.getInstance(exts);
    }

    public String getID() {
        if (this._grandfathered.length() > 0) {
            return this._grandfathered;
        }
        StringBuilder buf = new StringBuilder();
        if (this._language.length() > 0) {
            buf.append(this._language);
            if (this._extlangs.size() > 0) {
                for (String el : this._extlangs) {
                    buf.append(SEP);
                    buf.append(el);
                }
            }
            if (this._script.length() > 0) {
                buf.append(SEP);
                buf.append(this._script);
            }
            if (this._region.length() > 0) {
                buf.append(SEP);
                buf.append(this._region);
            }
            if (this._variants.size() > 0) {
                for (String var : this._variants) {
                    buf.append(SEP);
                    buf.append(var);
                }
            }
            if (this._extensions.size() > 0) {
                Set<Map.Entry<Character, Extension>> exts = this._extensions.entrySet();
                for (Map.Entry<Character, Extension> ext : exts) {
                    buf.append(SEP);
                    buf.append(ext.getKey());
                    buf.append(SEP);
                    buf.append(ext.getValue().getValue());
                }
            }
        }
        if (this._privateuse.length() > 0) {
            if (buf.length() > 0) {
                buf.append(SEP);
            }
            buf.append(PRIVATEUSE);
            buf.append(SEP);
            buf.append(this._privateuse);
        }
        return buf.toString();
    }

    public String toString() {
        return this.getID();
    }

    public static boolean isLanguage(String s) {
        return s.length() >= 2 && s.length() <= 8 && AsciiUtil.isAlphaString(s);
    }

    public static boolean isExtlang(String s) {
        return s.length() == 3 && AsciiUtil.isAlphaString(s);
    }

    public static boolean isScript(String s) {
        return s.length() == 4 && AsciiUtil.isAlphaString(s);
    }

    public static boolean isRegion(String s) {
        return s.length() == 2 && AsciiUtil.isAlphaString(s) || s.length() == 3 && AsciiUtil.isNumericString(s);
    }

    public static boolean isVariant(String s) {
        int len = s.length();
        if (len >= 5 && len <= 8) {
            return AsciiUtil.isAlphaNumericString(s);
        }
        if (len == 4) {
            return AsciiUtil.isNumeric(s.charAt(0)) && AsciiUtil.isAlphaNumeric(s.charAt(1)) && AsciiUtil.isAlphaNumeric(s.charAt(2)) && AsciiUtil.isAlphaNumeric(s.charAt(3));
        }
        return false;
    }

    public static boolean isExtensionSingleton(String s) {
        return s.length() == 1 && AsciiUtil.isAlphaString(s) && !AsciiUtil.caseIgnoreMatch(PRIVATEUSE, s);
    }

    public static boolean isExtensionSubtag(String s) {
        return s.length() >= 2 && s.length() <= 8 && AsciiUtil.isAlphaNumericString(s);
    }

    public static boolean isPrivateuseSingleton(String s) {
        return s.length() == 1 && AsciiUtil.caseIgnoreMatch(PRIVATEUSE, s);
    }

    public static boolean isPrivateuseSubtag(String s) {
        return s.length() >= 1 && s.length() <= 8 && AsciiUtil.isAlphaNumericString(s);
    }

    public static String canonicalizeLanguage(String s) {
        return AsciiUtil.toLowerString(s);
    }

    public static String canonicalizeExtlang(String s) {
        return AsciiUtil.toLowerString(s);
    }

    public static String canonicalizeScript(String s) {
        return AsciiUtil.toTitleString(s);
    }

    public static String canonicalizeRegion(String s) {
        return AsciiUtil.toUpperString(s);
    }

    public static String canonicalizeVariant(String s) {
        return AsciiUtil.toLowerString(s);
    }

    public static String canonicalizeExtensionSingleton(String s) {
        return AsciiUtil.toLowerString(s);
    }

    public static String canonicalizeExtensionSubtag(String s) {
        return AsciiUtil.toLowerString(s);
    }

    public static String canonicalizePrivateuseSubtag(String s) {
        return AsciiUtil.toLowerString(s);
    }

    public static LanguageTag parse(String str, boolean javaCompatVar) {
        LanguageTag tag = new LanguageTag();
        tag.parseString(str, javaCompatVar);
        return tag;
    }

    public static LanguageTag parseStrict(String str, boolean javaCompatVar) throws LocaleSyntaxException {
        LanguageTag tag = new LanguageTag();
        ParseStatus sts = tag.parseString(str, javaCompatVar);
        if (sts.isError()) {
            throw new LocaleSyntaxException(sts.errorMsg, sts.errorIndex);
        }
        return tag;
    }

    public static LanguageTag parseLocale(BaseLocale base, LocaleExtensions locExts) {
        LanguageTag tag = new LanguageTag();
        tag._javaCompatVariants = true;
        String language = base.getLanguage();
        String script = base.getScript();
        String region = base.getRegion();
        String variant = base.getVariant();
        String privuseVar = null;
        if (language.length() > 0 && LanguageTag.isLanguage(language)) {
            if ((language = LanguageTag.canonicalizeLanguage(language)).equals("iw")) {
                language = "he";
            } else if (language.equals("ji")) {
                language = "yi";
            } else if (language.equals("in")) {
                language = "id";
            }
            tag._language = language;
        }
        if (script.length() > 0 && LanguageTag.isScript(script)) {
            tag._script = LanguageTag.canonicalizeScript(script);
        }
        if (region.length() > 0 && LanguageTag.isRegion(region)) {
            tag._region = LanguageTag.canonicalizeRegion(region);
        }
        if (variant.length() > 0) {
            ArrayList<String> variants = null;
            StringTokenIterator varitr = new StringTokenIterator(variant, JAVASEP);
            while (!varitr.isDone()) {
                String var = varitr.current();
                if (!LanguageTag.isVariant(var)) break;
                if (variants == null) {
                    variants = new ArrayList<String>();
                }
                variants.add(LanguageTag.canonicalizeVariant(var));
                varitr.next();
            }
            if (variants != null) {
                tag._variants = variants;
            }
            if (!varitr.isDone()) {
                StringBuilder buf = new StringBuilder();
                while (!varitr.isDone()) {
                    String prvv = varitr.current();
                    if (!LanguageTag.isPrivateuseSubtag(prvv)) break;
                    if (buf.length() > 0) {
                        buf.append(SEP);
                    }
                    prvv = AsciiUtil.toLowerString(prvv);
                    buf.append(prvv);
                    varitr.next();
                }
                if (buf.length() > 0) {
                    privuseVar = buf.toString();
                }
            }
        }
        TreeMap<Character, Extension> extensions = null;
        String privateuse = null;
        Set<Character> locextKeys = locExts.getKeys();
        for (Character locextKey : locextKeys) {
            Extension ext = locExts.getExtension(locextKey);
            if (ext instanceof PrivateuseExtension) {
                privateuse = ext.getValue();
                continue;
            }
            if (extensions == null) {
                extensions = new TreeMap<Character, Extension>();
            }
            extensions.put(locextKey, ext);
        }
        if (extensions != null) {
            tag._extensions = extensions;
        }
        if (privuseVar != null) {
            privateuse = privateuse == null ? "variant-" + privuseVar : String.valueOf(privateuse) + SEP + JAVAVARIANT + SEP + privuseVar.replace(JAVASEP, SEP);
        }
        if (privateuse != null) {
            tag._privateuse = privateuse;
        } else if (tag._language.length() == 0) {
            tag._language = UNDETERMINED;
        }
        return tag;
    }

    private ParseStatus parseString(String str, boolean javaCompatVar) {
        ParseStatus sts;
        String[] gfmap = GRANDFATHERED.get(new AsciiUtil.CaseInsensitiveKey(str));
        if (gfmap != null) {
            this._grandfathered = gfmap[0];
            sts = this.parseLanguageTag(gfmap[1], javaCompatVar);
            sts.parseLength = str.length();
        } else {
            this._grandfathered = "";
            sts = this.parseLanguageTag(str, javaCompatVar);
        }
        return sts;
    }

    private ParseStatus parseLanguageTag(String langtag, boolean javaCompat) {
        ParseStatus sts = new ParseStatus();
        StringTokenIterator itr = new StringTokenIterator(langtag, SEP);
        Parser parser = javaCompat ? JAVA_VARIANT_COMPATIBLE_PARSER : DEFAULT_PARSER;
        this._javaCompatVariants = javaCompat;
        this._language = parser.parseLanguage(itr, sts);
        if (this._language.length() > 0) {
            this._extlangs = parser.parseExtlangs(itr, sts);
            this._script = parser.parseScript(itr, sts);
            this._region = parser.parseRegion(itr, sts);
            this._variants = parser.parseVariants(itr, sts);
            this._extensions = parser.parseExtensions(itr, sts);
        }
        this._privateuse = parser.parsePrivateuse(itr, sts);
        if (!itr.isDone() && !sts.isError()) {
            String s = itr.current();
            sts.errorIndex = itr.currentStart();
            sts.errorMsg = s.length() == 0 ? "Empty subtag" : "Invalid subtag: " + s;
        }
        return sts;
    }

    static /* synthetic */ SortedMap access$0() {
        return EMPTY_EXTENSION_MAP;
    }

    public static class ParseStatus {
        int parseLength = 0;
        int errorIndex = -1;
        String errorMsg = null;

        public void reset() {
            this.parseLength = 0;
            this.errorIndex = -1;
            this.errorMsg = null;
        }

        boolean isError() {
            return this.errorIndex >= 0;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class Parser {
        private boolean _javaCompatVar;

        Parser(boolean javaCompatVar) {
            this._javaCompatVar = javaCompatVar;
        }

        public String parseLanguage(StringTokenIterator itr, ParseStatus sts) {
            String language = "";
            if (itr.isDone() || sts.isError()) {
                return language;
            }
            String s = itr.current();
            if (LanguageTag.isLanguage(s)) {
                language = LanguageTag.canonicalizeLanguage(s);
                sts.parseLength = itr.currentEnd();
                itr.next();
            }
            return language;
        }

        /*
         * Unable to fully structure code
         */
        public List<String> parseExtlangs(StringTokenIterator itr, ParseStatus sts) {
            extlangs = null;
            if (!itr.isDone() && !sts.isError()) ** GOTO lbl13
            return Collections.emptyList();
            while (LanguageTag.isExtlang(s = itr.current())) {
                if (extlangs == null) {
                    extlangs = new ArrayList<String>(3);
                }
                extlangs.add(LanguageTag.canonicalizeExtlang(s));
                sts.parseLength = itr.currentEnd();
                itr.next();
                if (extlangs.size() == 3) break;
lbl13:
                // 2 sources

                if (!itr.isDone()) continue;
            }
            if (extlangs == null) {
                return Collections.emptyList();
            }
            return extlangs;
        }

        public String parseScript(StringTokenIterator itr, ParseStatus sts) {
            String script = "";
            if (itr.isDone() || sts.isError()) {
                return script;
            }
            String s = itr.current();
            if (LanguageTag.isScript(s)) {
                script = LanguageTag.canonicalizeScript(s);
                sts.parseLength = itr.currentEnd();
                itr.next();
            }
            return script;
        }

        public String parseRegion(StringTokenIterator itr, ParseStatus sts) {
            String region = "";
            if (itr.isDone() || sts.isError()) {
                return region;
            }
            String s = itr.current();
            if (LanguageTag.isRegion(s)) {
                region = LanguageTag.canonicalizeRegion(s);
                sts.parseLength = itr.currentEnd();
                itr.next();
            }
            return region;
        }

        /*
         * Unable to fully structure code
         */
        public List<String> parseVariants(StringTokenIterator itr, ParseStatus sts) {
            variants = null;
            if (!itr.isDone() && !sts.isError()) ** GOTO lbl16
            return Collections.emptyList();
            while (LanguageTag.isVariant(s = itr.current())) {
                if (variants == null) {
                    variants = new ArrayList<String>(3);
                }
                if (this._javaCompatVar) {
                    variants.add(s);
                } else {
                    variants.add(LanguageTag.canonicalizeVariant(s));
                }
                sts.parseLength = itr.currentEnd();
                itr.next();
lbl16:
                // 2 sources

                if (!itr.isDone()) continue;
            }
            if (variants == null) {
                return Collections.emptyList();
            }
            return variants;
        }

        /*
         * Unable to fully structure code
         */
        public SortedMap<Character, Extension> parseExtensions(StringTokenIterator itr, ParseStatus sts) {
            extensionMap = null;
            if (!itr.isDone() && !sts.isError()) ** GOTO lbl22
            return LanguageTag.access$0();
            while (LanguageTag.isExtensionSingleton(s = itr.current())) {
                if (!itr.hasNext()) {
                    sts.errorIndex = itr.currentStart();
                    sts.errorMsg = "Missing extension subtag for extension :" + s;
                    break;
                }
                if (extensionMap == null) {
                    extensionMap = new TreeMap<Character, Extension>();
                }
                if (extensionMap.containsKey(singleton = Character.valueOf((singletonStr = LanguageTag.canonicalizeExtensionSingleton(s)).charAt(0)))) {
                    sts.errorIndex = itr.currentStart();
                    sts.errorMsg = "Duplicated extension: " + s;
                    break;
                }
                itr.next();
                ext = Extension.create(singleton.charValue(), itr, sts);
                if (ext != null) {
                    extensionMap.put(singleton, ext);
                }
                if (sts.isError()) break;
lbl22:
                // 2 sources

                if (!itr.isDone()) continue;
            }
            if (extensionMap == null || extensionMap.size() == 0) {
                return LanguageTag.access$0();
            }
            return extensionMap;
        }

        public String parsePrivateuse(StringTokenIterator itr, ParseStatus sts) {
            String privateuse = "";
            if (itr.isDone() || sts.isError()) {
                return privateuse;
            }
            String s = itr.current();
            if (LanguageTag.isPrivateuseSingleton(s)) {
                StringBuilder buf = new StringBuilder();
                int singletonOffset = itr.currentStart();
                boolean preserveCasing = false;
                itr.next();
                while (!itr.isDone()) {
                    s = itr.current();
                    if (!LanguageTag.isPrivateuseSubtag(s)) break;
                    if (buf.length() != 0) {
                        buf.append(LanguageTag.SEP);
                    }
                    if (!preserveCasing) {
                        s = LanguageTag.canonicalizePrivateuseSubtag(s);
                    }
                    buf.append(s);
                    sts.parseLength = itr.currentEnd();
                    if (this._javaCompatVar && s.equals(LanguageTag.JAVAVARIANT)) {
                        preserveCasing = true;
                    }
                    itr.next();
                }
                if (buf.length() == 0) {
                    sts.errorIndex = singletonOffset;
                    sts.errorMsg = "Incomplete privateuse";
                } else {
                    privateuse = buf.toString();
                }
            }
            return privateuse;
        }
    }
}

