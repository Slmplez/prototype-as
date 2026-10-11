/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import org.eclipse.emf.common.util.Diagnostic;

public interface Monitor {
    public static final int UNKNOWN = -1;

    public boolean isCanceled();

    public void setCanceled(boolean var1);

    public void setBlocked(Diagnostic var1);

    public void clearBlocked();

    public void beginTask(String var1, int var2);

    public void setTaskName(String var1);

    public void subTask(String var1);

    public void worked(int var1);

    public void internalWorked(double var1);

    public void done();
}

