/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.Job;

public class JobChangeEvent
implements IJobChangeEvent {
    Job job = null;
    IStatus result = null;
    long delay = -1L;
    boolean reschedule = false;

    public long getDelay() {
        return this.delay;
    }

    public Job getJob() {
        return this.job;
    }

    public IStatus getResult() {
        return this.result;
    }
}

