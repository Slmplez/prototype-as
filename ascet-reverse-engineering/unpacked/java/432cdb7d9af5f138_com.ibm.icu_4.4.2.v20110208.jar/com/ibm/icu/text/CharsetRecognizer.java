/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.CharsetDetector;

abstract class CharsetRecognizer {
    CharsetRecognizer() {
    }

    abstract String getName();

    public String getLanguage() {
        return null;
    }

    abstract int match(CharsetDetector var1);
}

