/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.resources;

import org.eclipse.core.internal.resources.InternalWorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public abstract class WorkspaceJob
extends InternalWorkspaceJob {
    public WorkspaceJob(String name) {
        super(name);
    }

    public abstract IStatus runInWorkspace(IProgressMonitor var1) throws CoreException;
}

