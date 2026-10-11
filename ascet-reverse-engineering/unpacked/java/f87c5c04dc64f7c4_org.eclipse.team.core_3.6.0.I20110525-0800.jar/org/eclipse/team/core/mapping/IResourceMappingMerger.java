/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.team.core.mapping.IMergeContext;

public interface IResourceMappingMerger {
    public IStatus merge(IMergeContext var1, IProgressMonitor var2) throws CoreException;

    public ISchedulingRule getMergeRule(IMergeContext var1);

    public IStatus validateMerge(IMergeContext var1, IProgressMonitor var2);
}

