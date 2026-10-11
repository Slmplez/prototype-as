/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;

public abstract class InternalWorkspaceJob
extends Job {
    private Workspace workspace = (Workspace)ResourcesPlugin.getWorkspace();

    public InternalWorkspaceJob(String name) {
        super(name);
    }

    public final IStatus run(IProgressMonitor monitor) {
        IStatus iStatus;
        block9: {
            monitor = Policy.monitorFor(monitor);
            int depth = -1;
            try {
                this.workspace.prepareOperation(null, monitor);
                this.workspace.beginOperation(true);
                depth = this.workspace.getWorkManager().beginUnprotected();
                iStatus = this.runInWorkspace(monitor);
                if (depth < 0) break block9;
                this.workspace.getWorkManager().endUnprotected(depth);
            }
            catch (OperationCanceledException operationCanceledException) {
                IStatus iStatus2;
                block10: {
                    try {
                        this.workspace.getWorkManager().operationCanceled();
                        iStatus2 = Status.CANCEL_STATUS;
                        if (depth < 0) break block10;
                        this.workspace.getWorkManager().endUnprotected(depth);
                    }
                    catch (Throwable throwable) {
                        try {
                            if (depth >= 0) {
                                this.workspace.getWorkManager().endUnprotected(depth);
                            }
                            this.workspace.endOperation(null, false, monitor);
                            throw throwable;
                        }
                        catch (CoreException e) {
                            return e.getStatus();
                        }
                    }
                }
                this.workspace.endOperation(null, false, monitor);
                return iStatus2;
            }
        }
        this.workspace.endOperation(null, false, monitor);
        return iStatus;
    }

    protected abstract IStatus runInWorkspace(IProgressMonitor var1) throws CoreException;
}

