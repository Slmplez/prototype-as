/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

public class AbortExecutionException
extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public AbortExecutionException() {
    }

    public AbortExecutionException(String message, Throwable cause) {
        super(message, cause);
    }

    public AbortExecutionException(String message) {
        super(message);
    }

    public AbortExecutionException(Throwable cause) {
        super(cause);
    }
}

