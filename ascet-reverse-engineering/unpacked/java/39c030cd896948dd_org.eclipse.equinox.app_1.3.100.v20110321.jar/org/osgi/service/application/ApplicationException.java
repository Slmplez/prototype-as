/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.application;

public class ApplicationException
extends Exception {
    private static final long serialVersionUID = -7173190453622508207L;
    private final int errorCode;
    public static final int APPLICATION_LOCKED = 1;
    public static final int APPLICATION_NOT_LAUNCHABLE = 2;
    public static final int APPLICATION_INTERNAL_ERROR = 3;
    public static final int APPLICATION_SCHEDULING_FAILED = 4;
    public static final int APPLICATION_DUPLICATE_SCHEDULE_ID = 5;
    public static final int APPLICATION_EXITVALUE_NOT_AVAILABLE = 6;
    public static final int APPLICATION_INVALID_STARTUP_ARGUMENT = 7;

    public ApplicationException(int errorCode) {
        this.errorCode = errorCode;
    }

    public ApplicationException(int errorCode, Throwable cause) {
        super(cause);
        this.errorCode = errorCode;
    }

    public ApplicationException(int errorCode, String message) {
        super(message);
        this.errorCode = errorCode;
    }

    public ApplicationException(int errorCode, String message, Throwable cause) {
        super(message, cause);
        this.errorCode = errorCode;
    }

    public Throwable getCause() {
        return super.getCause();
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}

