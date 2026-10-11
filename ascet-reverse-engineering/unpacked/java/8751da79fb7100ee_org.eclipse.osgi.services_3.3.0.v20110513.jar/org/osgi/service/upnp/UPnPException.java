/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

public class UPnPException
extends Exception {
    static final long serialVersionUID = -262013318122195146L;
    public static final int INVALID_ACTION = 401;
    public static final int INVALID_ARGS = 402;
    public static final int INVALID_SEQUENCE_NUMBER = 403;
    public static final int INVALID_VARIABLE = 404;
    public static final int DEVICE_INTERNAL_ERROR = 501;
    private final int errorCode;

    public UPnPException(int errorCode, String errordesc) {
        super(errordesc);
        this.errorCode = errorCode;
    }

    public int getUPnPError_Code() {
        return this.errorCode;
    }
}

