/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.Extension;
import com.ibm.icu.impl.locale.LanguageTag;
import com.ibm.icu.impl.locale.LocaleObjectCache;
import com.ibm.icu.impl.locale.LocaleSyntaxException;
import com.ibm.icu.impl.locale.StringTokenIterator;
import com.ibm.icu.impl.locale.UnicodeLocaleExtension;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LocaleExtensions {
    private SortedMap<Character, Extension> _map = EMPTY_MAP;
    private String _id = "";
    private static final SortedMap<Character, Extension> EMPTY_MAP = Collections.unmodifiableSortedMap(new TreeMap());
    private static final LocaleObjectCache<String, LocaleExtensions> LOCALEEXTENSIONS_CACHE = new LocaleObjectCache();
    public static LocaleExtensions EMPTY_EXTENSIONS = new LocaleExtensions();
    public static final LocaleExtensions CALENDAR_JAPANESE = new LocaleExtensions();
    public static final LocaleExtensions NUMBER_THAI;

    static {
        LocaleExtensions.CALENDAR_JAPANESE._id = UnicodeLocaleExtension.CA_JAPANESE.getID();
        LocaleExtensions.CALENDAR_JAPANESE._map = new TreeMap<Character, Extension>();
        LocaleExtensions.CALENDAR_JAPANESE._map.put(Character.valueOf(UnicodeLocaleExtension.CA_JAPANESE.getKey()), UnicodeLocaleExtension.CA_JAPANESE);
        LOCALEEXTENSIONS_CACHE.put(LocaleExtensions.CALENDAR_JAPANESE._id, CALENDAR_JAPANESE);
        NUMBER_THAI = new LocaleExtensions();
        LocaleExtensions.NUMBER_THAI._id = UnicodeLocaleExtension.NU_THAI.getID();
        LocaleExtensions.NUMBER_THAI._map = new TreeMap<Character, Extension>();
        LocaleExtensions.NUMBER_THAI._map.put(Character.valueOf(UnicodeLocaleExtension.NU_THAI.getKey()), UnicodeLocaleExtension.NU_THAI);
        LOCALEEXTENSIONS_CACHE.put(LocaleExtensions.NUMBER_THAI._id, NUMBER_THAI);
    }

    private LocaleExtensions() {
    }

    public static LocaleExtensions getInstance(String str) throws LocaleSyntaxException {
        if (str == null || str.length() == 0) {
            return EMPTY_EXTENSIONS;
        }
        LocaleExtensions exts = LOCALEEXTENSIONS_CACHE.get(str);
        if (exts == null) {
            StringTokenIterator itr = new StringTokenIterator(str, "-");
            LanguageTag.ParseStatus sts = new LanguageTag.ParseStatus();
            TreeMap<Character, Extension> map = new TreeMap<Character, Extension>();
            while (!itr.isDone()) {
                int startOffset = itr.currentEnd();
                Extension ext = Extension.create(itr, sts);
                if (sts.isError()) {
                    throw new LocaleSyntaxException(sts.errorMsg, sts.errorIndex);
                }
                if (ext == null) {
                    throw new LocaleSyntaxException("Invalid extension subtag: " + itr.current(), startOffset);
                }
                Character keyChar = Character.valueOf(ext.getKey());
                if (map.containsKey(keyChar)) {
                    throw new LocaleSyntaxException("Duplicated extension: " + keyChar, startOffset);
                }
                map.put(keyChar, ext);
            }
            String id = LocaleExtensions.toID(map);
            exts = LOCALEEXTENSIONS_CACHE.get(id);
            if (exts == null) {
                exts = new LocaleExtensions();
                exts._map = map;
                exts._id = id;
                exts = LOCALEEXTENSIONS_CACHE.put(id, exts);
            }
        }
        return exts;
    }

    static LocaleExtensions getInstance(SortedMap<Character, Extension> map) {
        if (map == null || map.isEmpty()) {
            return EMPTY_EXTENSIONS;
        }
        String id = LocaleExtensions.toID(map);
        LocaleExtensions exts = LOCALEEXTENSIONS_CACHE.get(id);
        if (exts == null) {
            exts = new LocaleExtensions();
            exts._map = new TreeMap<Character, Extension>(map);
            exts._id = id;
            exts = LOCALEEXTENSIONS_CACHE.put(id, exts);
        }
        return exts;
    }

    private static String toID(SortedMap<Character, Extension> map) {
        StringBuilder buf = new StringBuilder();
        Extension privuse = null;
        if (map != null && !map.isEmpty()) {
            Set<Map.Entry<Character, Extension>> entries = map.entrySet();
            for (Map.Entry<Character, Extension> entry : entries) {
                Character key = entry.getKey();
                if (key.charValue() == "x".charAt(0)) {
                    privuse = entry.getValue();
                    continue;
                }
                if (buf.length() > 0) {
                    buf.append("-");
                }
                buf.append(entry.getKey());
                buf.append("-");
                buf.append(entry.getValue().getValue());
            }
        }
        if (privuse != null) {
            if (buf.length() > 0) {
                buf.append("-");
            }
            buf.append("x");
            buf.append("-");
            buf.append(privuse.getValue());
        }
        return buf.toString();
    }

    public Set<Character> getKeys() {
        return Collections.unmodifiableSet(this._map.keySet());
    }

    public Extension getExtension(Character key) {
        return (Extension)this._map.get(key);
    }

    public String getExtensionValue(Character key) {
        Extension ext = (Extension)this._map.get(key);
        if (ext == null) {
            return "";
        }
        return ext.getValue();
    }

    public Set<String> getUnicodeLocaleKeys() {
        Extension ext = (Extension)this._map.get(Character.valueOf('u'));
        if (ext == null) {
            return Collections.emptySet();
        }
        assert (ext instanceof UnicodeLocaleExtension);
        return ((UnicodeLocaleExtension)ext).getKeys();
    }

    public String getUnicodeLocaleType(String unicodeLocaleKey) {
        Extension ext = (Extension)this._map.get(Character.valueOf('u'));
        if (ext == null) {
            return "";
        }
        assert (ext instanceof UnicodeLocaleExtension);
        return ((UnicodeLocaleExtension)ext).getType(unicodeLocaleKey);
    }

    public String toString() {
        return this._id;
    }

    public String getID() {
        return this._id;
    }

    public int hashCode() {
        return this._id.hashCode();
    }

    public static boolean isValidKey(String key) {
        return LanguageTag.isExtensionSingleton(key) || LanguageTag.isPrivateuseSingleton(key);
    }
}

