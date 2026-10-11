/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

public class InternalException
extends RuntimeException {
    private static final long serialVersionUID = 1L;
    private int error;

    public InternalException() {
    }

    public InternalException(int errorCode) {
        this.error = errorCode;
    }

    public InternalException(String s) {
        super(s);
    }

    public InternalException(String s, int errorCode) {
        super(s);
        this.error = errorCode;
    }

    public int errorCode() {
        return this.error;
    }
}

