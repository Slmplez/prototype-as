/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search.processing;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IJob {
    public static final int ForceImmediate = 1;
    public static final int CancelIfNotReady = 2;
    public static final int WaitUntilReady = 3;
    public static final boolean FAILED = false;
    public static final boolean COMPLETE = true;

    public boolean belongsTo(String var1);

    public void cancel();

    public void ensureReadyToRun();

    public boolean execute(IProgressMonitor var1);

    public String getJobFamily();
}

