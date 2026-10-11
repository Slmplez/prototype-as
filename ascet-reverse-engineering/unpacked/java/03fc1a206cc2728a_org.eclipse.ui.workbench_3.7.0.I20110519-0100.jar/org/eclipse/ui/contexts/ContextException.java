/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.contexts;

public abstract class ContextException
extends Exception {
    private static final long serialVersionUID = -5143404124388080211L;
    private Throwable cause;

    public ContextException(String message) {
        super(message);
    }

    public ContextException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    public Throwable getCause() {
        return this.cause;
    }
}

