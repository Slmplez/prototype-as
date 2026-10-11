/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.profile;

public interface ProfileLogger {
    public void initProps();

    public void logTime(int var1, String var2, String var3, String var4);

    public void accumLogEnter(String var1);

    public void accumLogExit(String var1);

    public String getProfileLog();
}

