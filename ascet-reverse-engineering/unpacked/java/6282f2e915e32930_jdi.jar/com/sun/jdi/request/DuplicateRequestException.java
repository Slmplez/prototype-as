/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

public class DuplicateRequestException
extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public DuplicateRequestException() {
    }

    public DuplicateRequestException(String message) {
        super(message);
    }
}

