/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.AsciiUtil;
import com.ibm.icu.impl.locale.Extension;
import com.ibm.icu.impl.locale.LanguageTag;
import com.ibm.icu.impl.locale.StringTokenIterator;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnicodeLocaleExtension
extends Extension {
    public static final char SINGLETON = 'u';
    public static final UnicodeLocaleExtension CA_JAPANESE = new UnicodeLocaleExtension().put("ca", "japanese");
    public static final UnicodeLocaleExtension NU_THAI = new UnicodeLocaleExtension().put("nu", "thai");
    private SortedMap<String, String> _keyTypeMap;

    protected UnicodeLocaleExtension() {
        super('u');
    }

    UnicodeLocaleExtension(SortedMap<String, String> keyTypeMap) {
        super('u');
        this._keyTypeMap = keyTypeMap;
        this.updateStringValue();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void setExtensionValue(StringTokenIterator itr, LanguageTag.ParseStatus sts) {
        if (sts.isError() || itr.isDone()) {
            this._value = null;
            return;
        }
        TreeMap<String, String> keyTypeMap = new TreeMap<String, String>();
        String ukey = null;
        StringBuilder buf = new StringBuilder();
        int typeEnd = -1;
        while (!itr.isDone()) {
            block15: {
                String s = itr.current();
                if (UnicodeLocaleExtension.isTypeSubtag(s)) {
                    if (ukey == null) {
                        sts.errorIndex = itr.currentStart();
                        sts.errorMsg = "Invalid Unicode locale extension key: " + s;
                        break;
                    }
                    if (buf.length() > 0) {
                        buf.append("-");
                    }
                    buf.append(UnicodeLocaleExtension.canonicalizeTypeSubtag(s));
                    typeEnd = itr.currentEnd();
                    if (!itr.hasNext()) {
                        keyTypeMap.put(ukey, buf.toString());
                        sts.parseLength = typeEnd;
                        itr.next();
                        break;
                    }
                } else {
                    if (ukey != null) {
                        if (buf.length() > 0) {
                            keyTypeMap.put(ukey, buf.toString());
                            sts.parseLength = typeEnd;
                        } else {
                            sts.errorIndex = itr.currentStart();
                            sts.errorMsg = "Invalid Unicode locale extension type: " + s;
                            break;
                        }
                    }
                    if (UnicodeLocaleExtension.isKey(s)) {
                        if (itr.hasNext()) {
                            ukey = UnicodeLocaleExtension.canonicalizeKey(s);
                            if (keyTypeMap.containsKey(ukey)) {
                                sts.errorIndex = itr.currentStart();
                                sts.errorMsg = "Duplicate Unicode locale extension key: " + s;
                                break;
                            }
                            buf.setLength(0);
                            typeEnd = -1;
                            break block15;
                        } else {
                            sts.errorIndex = itr.currentStart();
                            sts.errorMsg = "Missing subtag for Unicode locale extension: " + s;
                            itr.next();
                            break;
                        }
                    }
                    if (keyTypeMap.size() != 0) break;
                    sts.errorIndex = itr.currentStart();
                    sts.errorMsg = "Invalid Unicode locale extension key: " + s;
                    break;
                }
            }
            itr.next();
        }
        if (keyTypeMap.size() == 0) {
            this._value = null;
            return;
        }
        this._keyTypeMap = keyTypeMap;
        this.updateStringValue();
    }

    public Set<String> getKeys() {
        if (this._keyTypeMap == null) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet(this._keyTypeMap.keySet());
    }

    public String getType(String key) {
        String type = null;
        if (this._keyTypeMap != null) {
            type = (String)this._keyTypeMap.get(UnicodeLocaleExtension.canonicalizeKey(key));
        }
        return type == null ? "" : type;
    }

    public static boolean isKey(String s) {
        return s.length() == 2 && AsciiUtil.isAlphaNumericString(s);
    }

    public static boolean isTypeSubtag(String s) {
        return s.length() >= 3 && s.length() <= 8 && AsciiUtil.isAlphaNumericString(s);
    }

    public static String canonicalizeKey(String s) {
        return LanguageTag.canonicalizeExtensionSubtag(s);
    }

    public static String canonicalizeTypeSubtag(String s) {
        return LanguageTag.canonicalizeExtensionSubtag(s);
    }

    UnicodeLocaleExtension remove(String key) {
        if (this._keyTypeMap != null) {
            this._keyTypeMap.remove(key);
            this.updateStringValue();
        }
        return this;
    }

    UnicodeLocaleExtension put(String key, String type) {
        if (this._keyTypeMap == null) {
            this._keyTypeMap = new TreeMap<String, String>();
        }
        this._keyTypeMap.put(key, type);
        this.updateStringValue();
        return this;
    }

    boolean isEmpty() {
        return this._keyTypeMap.size() == 0;
    }

    private void updateStringValue() {
        this._value = null;
        if (this._keyTypeMap != null) {
            StringBuilder valBuf = new StringBuilder();
            Set<Map.Entry<String, String>> entries = this._keyTypeMap.entrySet();
            boolean isFirst = true;
            for (Map.Entry<String, String> e : entries) {
                if (isFirst) {
                    isFirst = false;
                } else {
                    valBuf.append("-");
                }
                valBuf.append(e.getKey());
                valBuf.append("-");
                valBuf.append(e.getValue());
            }
            if (valBuf.length() > 0) {
                this._value = valBuf.toString();
            }
        }
    }
}

