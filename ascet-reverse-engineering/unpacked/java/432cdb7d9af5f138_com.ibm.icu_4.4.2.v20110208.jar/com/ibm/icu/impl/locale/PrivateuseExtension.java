/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl.locale;

import com.ibm.icu.impl.locale.Extension;
import com.ibm.icu.impl.locale.LanguageTag;
import com.ibm.icu.impl.locale.StringTokenIterator;

public class PrivateuseExtension
extends Extension {
    public static final char SINGLETON = 'x';

    protected PrivateuseExtension() {
        super('x');
    }

    PrivateuseExtension(String privuse) {
        super('x');
        this._value = privuse;
    }

    protected void setExtensionValue(StringTokenIterator itr, LanguageTag.ParseStatus sts) {
        if (sts.isError() || itr.isDone()) {
            this._value = null;
            return;
        }
        StringBuilder buf = new StringBuilder();
        while (!itr.isDone()) {
            String s = itr.current();
            if (!LanguageTag.isPrivateuseSubtag(s)) break;
            s = LanguageTag.canonicalizePrivateuseSubtag(s);
            if (buf.length() != 0) {
                buf.append("-");
            }
            buf.append(s);
            sts.parseLength = itr.currentEnd();
            itr.next();
        }
        this._value = buf.length() == 0 ? null : buf.toString();
    }
}

