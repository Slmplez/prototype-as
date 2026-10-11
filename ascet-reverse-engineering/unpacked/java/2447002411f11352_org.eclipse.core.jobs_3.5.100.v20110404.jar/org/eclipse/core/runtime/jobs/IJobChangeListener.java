/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.jobs;

import org.eclipse.core.runtime.jobs.IJobChangeEvent;

public interface IJobChangeListener {
    public void aboutToRun(IJobChangeEvent var1);

    public void awake(IJobChangeEvent var1);

    public void done(IJobChangeEvent var1);

    public void running(IJobChangeEvent var1);

    public void scheduled(IJobChangeEvent var1);

    public void sleeping(IJobChangeEvent var1);
}

