/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.specs;

public class TimeoutException
extends Exception {
    private static final long serialVersionUID = 1L;

    public TimeoutException() {
    }

    public TimeoutException(String string) {
        super(string);
    }

    public TimeoutException(String string, Throwable throwable) {
        super(string, throwable);
    }

    public TimeoutException(Throwable throwable) {
        super(throwable);
    }
}

