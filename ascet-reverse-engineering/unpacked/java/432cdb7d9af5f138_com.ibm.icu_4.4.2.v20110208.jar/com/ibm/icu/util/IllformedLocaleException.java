/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

public class IllformedLocaleException
extends IllegalArgumentException {
    private static final long serialVersionUID = 1L;
    private int _errIdx = -1;

    public IllformedLocaleException(String msg) {
        this(msg, -1);
    }

    public IllformedLocaleException(String msg, int errIdx) {
        super(String.valueOf(msg) + (errIdx == -1 ? "" : " [at index " + errIdx + "]"));
        this._errIdx = errIdx;
    }

    public int getErrorIndex() {
        return this._errIdx;
    }
}

