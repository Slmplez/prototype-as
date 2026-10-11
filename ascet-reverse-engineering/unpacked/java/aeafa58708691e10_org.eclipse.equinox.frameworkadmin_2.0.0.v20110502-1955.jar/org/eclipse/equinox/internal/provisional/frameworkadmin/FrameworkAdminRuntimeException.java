/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

public class FrameworkAdminRuntimeException
extends RuntimeException {
    private static final long serialVersionUID = -2292498677000772317L;
    public static final String FRAMEWORKADMIN_UNAVAILABLE = "FrameworkAdmin service created this object is not available any more";
    public static final String UNSUPPORTED_OPERATION = "This implementation doesn't support this method.";
    private final String reason;
    private Throwable cause;

    public FrameworkAdminRuntimeException(String message, String reason) {
        super(message);
        this.reason = reason;
        this.cause = null;
    }

    public FrameworkAdminRuntimeException(String message, Throwable cause, String reason) {
        super(message);
        this.reason = reason;
        this.cause = cause;
    }

    public FrameworkAdminRuntimeException(Throwable cause, String reason) {
        super(cause.getLocalizedMessage());
        this.reason = reason;
        this.cause = cause;
    }

    public String getReason() {
        return this.reason;
    }

    public Throwable getCause() {
        return this.cause;
    }
}

