/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.signedcontent;

import java.io.IOException;

public class InvalidContentException
extends IOException {
    private static final long serialVersionUID = -399150159330289387L;
    private final Throwable cause;

    public InvalidContentException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    public Throwable getCause() {
        return this.cause;
    }

    public Throwable initCause(Throwable t) {
        throw new IllegalStateException();
    }
}

