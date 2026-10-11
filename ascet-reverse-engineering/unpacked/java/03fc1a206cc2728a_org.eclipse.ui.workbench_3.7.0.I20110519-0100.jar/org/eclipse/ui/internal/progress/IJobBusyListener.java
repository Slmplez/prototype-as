/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.core.runtime.jobs.Job;

interface IJobBusyListener {
    public void incrementBusy(Job var1);

    public void decrementBusy(Job var1);
}

