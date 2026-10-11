/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.jobs.Job;

public class InternalSaveable {
    private Job backgroundSaveJob;

    Job getBackgroundSaveJob() {
        return this.backgroundSaveJob;
    }

    void setBackgroundSaveJob(Job backgroundSaveJob) {
        this.backgroundSaveJob = backgroundSaveJob;
    }

    boolean isSavingInBackground() {
        Job saveJob = this.backgroundSaveJob;
        if (saveJob == null) {
            return false;
        }
        return (this.backgroundSaveJob.getState() & 6) != 0;
    }
}

