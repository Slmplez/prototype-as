/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public interface IAdvancedUndoableOperation2 {
    public IStatus computeExecutionStatus(IProgressMonitor var1) throws ExecutionException;

    public void setQuietCompute(boolean var1);

    public boolean runInBackground();
}

