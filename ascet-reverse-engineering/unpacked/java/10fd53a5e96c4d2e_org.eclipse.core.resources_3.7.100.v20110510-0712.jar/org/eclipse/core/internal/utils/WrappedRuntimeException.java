/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.utils;

public class WrappedRuntimeException
extends RuntimeException {
    private static final long serialVersionUID = 1L;
    private Throwable target;

    public WrappedRuntimeException(Throwable target) {
        this.target = target;
    }

    public Throwable getTargetException() {
        return this.target;
    }

    public String getMessage() {
        return this.target.getMessage();
    }
}

