/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.log;

import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Logger {
    public void log(int var1, String var2);

    public void log(int var1, String var2, Throwable var3);

    public void log(ServiceReference<?> var1, int var2, String var3);

    public void log(ServiceReference<?> var1, int var2, String var3, Throwable var4);

    public void log(Object var1, int var2, String var3);

    public void log(Object var1, int var2, String var3, Throwable var4);

    public boolean isLoggable(int var1);

    public String getName();
}

