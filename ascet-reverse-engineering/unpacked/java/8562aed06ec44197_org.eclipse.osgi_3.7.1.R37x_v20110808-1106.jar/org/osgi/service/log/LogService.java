/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.log;

import org.osgi.framework.ServiceReference;

public interface LogService {
    public static final int LOG_ERROR = 1;
    public static final int LOG_WARNING = 2;
    public static final int LOG_INFO = 3;
    public static final int LOG_DEBUG = 4;

    public void log(int var1, String var2);

    public void log(int var1, String var2, Throwable var3);

    public void log(ServiceReference var1, int var2, String var3);

    public void log(ServiceReference var1, int var2, String var3, Throwable var4);
}

