/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.jobs;

import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobStatus;
import org.eclipse.core.runtime.jobs.Job;

public class JobStatus
extends Status
implements IJobStatus {
    private Job job;

    public JobStatus(int severity, Job job, String message) {
        super(severity, "org.eclipse.core.jobs", 1, message, null);
        this.job = job;
    }

    public Job getJob() {
        return this.job;
    }
}

