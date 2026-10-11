/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.component;

public class ComponentException
extends RuntimeException {
    static final long serialVersionUID = -7438212656298726924L;

    public ComponentException(String message, Throwable cause) {
        super(message, cause);
    }

    public ComponentException(String message) {
        super(message);
    }

    public ComponentException(Throwable cause) {
        super(cause);
    }

    public Throwable getCause() {
        return super.getCause();
    }

    public Throwable initCause(Throwable cause) {
        return super.initCause(cause);
    }
}

