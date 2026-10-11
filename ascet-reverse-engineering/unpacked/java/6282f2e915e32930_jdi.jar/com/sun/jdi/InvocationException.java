/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.ObjectReference;

public class InvocationException
extends Exception {
    private static final long serialVersionUID = 1L;
    private ObjectReference exception;

    public InvocationException(ObjectReference arg1) {
        this.exception = arg1;
    }

    public ObjectReference exception() {
        return this.exception;
    }
}

