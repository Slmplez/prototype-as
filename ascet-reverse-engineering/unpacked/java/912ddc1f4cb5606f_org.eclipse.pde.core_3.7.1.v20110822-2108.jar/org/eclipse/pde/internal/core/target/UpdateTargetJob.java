/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.IUBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;

public class UpdateTargetJob
extends Job {
    public static final int UPDATED = 2;
    public static final int DIRTY = 4;
    private static final String JOB_FAMILY_ID = "UpdateTargetJob";
    private Map toUpdate;
    private int result = 0;

    public static void update(Map toUpdate, IJobChangeListener listener) {
        Job.getJobManager().cancel((Object)JOB_FAMILY_ID);
        UpdateTargetJob job = new UpdateTargetJob(toUpdate);
        job.setUser(true);
        if (listener != null) {
            job.addJobChangeListener(listener);
        }
        job.schedule();
    }

    private UpdateTargetJob(Map toUpdate) {
        super(Messages.UpdateTargetJob_UpdateJobName);
        this.toUpdate = toUpdate;
    }

    protected IStatus run(IProgressMonitor monitor) {
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.UpdateTargetJob_UpdatingTarget, (int)this.toUpdate.size());
        this.result = 0;
        try {
            Iterator i = this.toUpdate.entrySet().iterator();
            while (i.hasNext()) {
                try {
                    try {
                        Map.Entry entry = i.next();
                        IBundleContainer container = (IBundleContainer)entry.getKey();
                        monitor.subTask(NLS.bind((String)Messages.UpdateTargetJob_UpdatingContainer, (Object)((AbstractBundleContainer)container).getLocation(false)));
                        if (!(container instanceof IUBundleContainer)) continue;
                        this.result |= ((IUBundleContainer)container).update((Set)entry.getValue(), (IProgressMonitor)progress.newChild(1));
                    }
                    catch (CoreException e1) {
                        IStatus iStatus = e1.getStatus();
                        monitor.worked(1);
                        monitor.done();
                        return iStatus;
                    }
                }
                finally {
                    monitor.worked(1);
                }
            }
        }
        finally {
            monitor.done();
        }
        return Status.OK_STATUS;
    }

    public boolean isDirty() {
        return (this.result & 4) != 0;
    }

    public boolean isUpdated() {
        return (this.result & 2) != 0;
    }
}

