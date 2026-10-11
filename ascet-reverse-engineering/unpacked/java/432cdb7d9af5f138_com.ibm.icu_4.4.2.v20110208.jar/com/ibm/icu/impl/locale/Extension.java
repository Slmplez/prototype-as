/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.AsciiUtil;
import com.ibm.icu.impl.locale.LanguageTag;
import com.ibm.icu.impl.locale.PrivateuseExtension;
import com.ibm.icu.impl.locale.StringTokenIterator;
import com.ibm.icu.impl.locale.UnicodeLocaleExtension;

public class Extension {
    private char _key;
    protected String _value;

    protected Extension(char key) {
        this._key = key;
    }

    public char getKey() {
        return this._key;
    }

    public String getValue() {
        return this._value;
    }

    public String getID() {
        return String.valueOf(this._key) + "-" + this._value;
    }

    public String toString() {
        return this.getID();
    }

    public static Extension create(StringTokenIterator itr, LanguageTag.ParseStatus sts) {
        if (sts.isError() || itr.isDone()) {
            return null;
        }
        Extension ext = null;
        String key = itr.current();
        if (LanguageTag.isExtensionSingleton(key) || LanguageTag.isPrivateuseSingleton(key)) {
            itr.next();
            ext = Extension.create(key.charAt(0), itr, sts);
        }
        return ext;
    }

    public static Extension create(char key, StringTokenIterator val, LanguageTag.ParseStatus sts) {
        if (sts.isError()) {
            return null;
        }
        if (val.isDone()) {
            sts.errorIndex = val.currentStart();
            sts.errorMsg = "Missing extension subtag for extension :" + key;
            return null;
        }
        Extension ext = null;
        key = AsciiUtil.toLower(key);
        switch (key) {
            case 'u': {
                ext = new UnicodeLocaleExtension();
                break;
            }
            case 'x': {
                ext = new PrivateuseExtension();
                break;
            }
            default: {
                ext = new Extension(key);
            }
        }
        ext.setExtensionValue(val, sts);
        if (ext.getValue() == null) {
            return null;
        }
        return ext;
    }

    protected void setExtensionValue(StringTokenIterator itr, LanguageTag.ParseStatus sts) {
        if (sts.isError() || itr.isDone()) {
            this._value = null;
            return;
        }
        StringBuilder buf = new StringBuilder();
        while (!itr.isDone()) {
            String s = itr.current();
            if (!LanguageTag.isExtensionSubtag(s)) break;
            s = LanguageTag.canonicalizeExtensionSubtag(s);
            if (buf.length() != 0) {
                buf.append("-");
            }
            buf.append(s);
            sts.parseLength = itr.currentEnd();
            itr.next();
        }
        if (buf.length() == 0) {
            sts.errorIndex = itr.currentStart();
            sts.errorMsg = "Invalid extension subtag: " + itr.current();
            this._value = null;
        } else {
            this._value = buf.toString();
        }
    }
}

