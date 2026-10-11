/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.exceptions;

public class UnsupportedTypeException
extends Exception {
    private static final long serialVersionUID = 2920349713451270307L;

    public UnsupportedTypeException() {
    }

    public UnsupportedTypeException(String text) {
        super(text);
    }

    public UnsupportedTypeException(String text, Throwable e) {
        super(text, e);
    }
}

