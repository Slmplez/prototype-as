/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.http;

public class NamespaceException
extends Exception {
    static final long serialVersionUID = 7235606031147877747L;

    public NamespaceException(String message) {
        super(message);
    }

    public NamespaceException(String message, Throwable cause) {
        super(message, cause);
    }

    public Throwable getException() {
        return this.getCause();
    }

    public Throwable getCause() {
        return super.getCause();
    }

    public Throwable initCause(Throwable cause) {
        return super.initCause(cause);
    }
}

