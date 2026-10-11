/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

public class WrappedException
extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public WrappedException(Exception exception) {
        super(exception);
    }

    public WrappedException(String message, Exception exception) {
        super(message, exception);
    }

    public Exception exception() {
        return (Exception)this.getCause();
    }
}

