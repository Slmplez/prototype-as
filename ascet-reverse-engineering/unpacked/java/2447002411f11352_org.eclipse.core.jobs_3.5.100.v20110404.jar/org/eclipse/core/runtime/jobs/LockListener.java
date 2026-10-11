/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.jobs;

import org.eclipse.core.internal.jobs.JobManager;
import org.eclipse.core.internal.jobs.LockManager;
import org.eclipse.core.runtime.jobs.Job;

public class LockListener {
    private final LockManager manager = ((JobManager)Job.getJobManager()).getLockManager();

    public boolean aboutToWait(Thread lockOwner) {
        return false;
    }

    public void aboutToRelease() {
    }

    public boolean canBlock() {
        return true;
    }

    protected final boolean isLockOwnerThread() {
        return this.manager.isLockOwner();
    }
}

