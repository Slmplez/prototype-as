/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.storage;

public final class StorageException
extends Exception {
    private static final long serialVersionUID = -6352767405585664435L;
    public static final int INTERNAL_ERROR = 0;
    public static final int NO_SECURE_MODULE = 1;
    public static final int ENCRYPTION_ERROR = 2;
    public static final int DECRYPTION_ERROR = 3;
    public static final int NO_PASSWORD = 4;
    private final int errorCode;

    public StorageException(int errorCode, Throwable exception) {
        super(exception.getMessage(), exception);
        this.errorCode = errorCode;
    }

    public StorageException(int errorCode, String message) {
        super(message);
        this.errorCode = errorCode;
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}

