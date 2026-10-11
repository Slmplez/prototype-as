/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.debug;

public interface DebugTrace {
    public void trace(String var1, String var2);

    public void trace(String var1, String var2, Throwable var3);

    public void traceDumpStack(String var1);

    public void traceEntry(String var1);

    public void traceEntry(String var1, Object var2);

    public void traceEntry(String var1, Object[] var2);

    public void traceExit(String var1);

    public void traceExit(String var1, Object var2);
}

