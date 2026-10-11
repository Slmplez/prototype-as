/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.prefs;

public class BackingStoreException
extends Exception {
    static final long serialVersionUID = -1415637364122829574L;

    public BackingStoreException(String message) {
        super(message);
    }

    public BackingStoreException(String message, Throwable cause) {
        super(message, cause);
    }

    public Throwable getCause() {
        return super.getCause();
    }

    public Throwable initCause(Throwable cause) {
        return super.initCause(cause);
    }
}

