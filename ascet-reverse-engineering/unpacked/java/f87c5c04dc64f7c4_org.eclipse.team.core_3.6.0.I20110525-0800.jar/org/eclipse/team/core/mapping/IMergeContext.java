/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.mapping.ISynchronizationContext;

public interface IMergeContext
extends ISynchronizationContext {
    public int getMergeType();

    public void markAsMerged(IDiff var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void markAsMerged(IDiff[] var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public IStatus merge(IDiff var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public IStatus merge(IDiff[] var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void reject(IDiff var1, IProgressMonitor var2) throws CoreException;

    public void reject(IDiff[] var1, IProgressMonitor var2) throws CoreException;

    public void run(IWorkspaceRunnable var1, ISchedulingRule var2, int var3, IProgressMonitor var4) throws CoreException;

    public ISchedulingRule getMergeRule(IDiff var1);

    public ISchedulingRule getMergeRule(IDiff[] var1);
}

