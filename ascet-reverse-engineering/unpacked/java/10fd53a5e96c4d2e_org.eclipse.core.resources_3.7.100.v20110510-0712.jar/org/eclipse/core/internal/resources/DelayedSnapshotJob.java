/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.internal.resources.SaveManager;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;

public class DelayedSnapshotJob
extends Job {
    private static final String MSG_SNAPSHOT = Messages.resources_snapshot;
    private SaveManager saveManager;

    public DelayedSnapshotJob(SaveManager manager) {
        super(MSG_SNAPSHOT);
        this.saveManager = manager;
        this.setRule(ResourcesPlugin.getWorkspace().getRoot());
        this.setSystem(true);
    }

    public IStatus run(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        try {
            ResourcesPlugin.getWorkspace();
        }
        catch (IllegalStateException e) {
            Policy.log(2, null, e);
            return Status.OK_STATUS;
        }
        try {
            IStatus iStatus = this.saveManager.save(2, null, Policy.monitorFor(null));
            return iStatus;
        }
        catch (CoreException e) {
            IStatus iStatus = e.getStatus();
            return iStatus;
        }
        finally {
            this.saveManager.operationCount = 0;
            this.saveManager.snapshotRequested = false;
        }
    }
}

