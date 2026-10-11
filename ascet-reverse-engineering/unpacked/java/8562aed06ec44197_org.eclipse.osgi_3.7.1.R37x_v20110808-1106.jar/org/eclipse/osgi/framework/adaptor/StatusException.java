/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

public interface StatusException {
    public static final int CODE_OK = 1;
    public static final int CODE_INFO = 2;
    public static final int CODE_WARNING = 4;
    public static final int CODE_ERROR = 8;

    public Object getStatus();

    public int getStatusCode();
}

