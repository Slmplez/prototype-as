/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.progress.UIJob;

public abstract class WorkbenchJob
extends UIJob {
    public WorkbenchJob(Display jobDisplay, String name) {
        super(jobDisplay, name);
        this.addDefaultJobChangeListener();
    }

    public WorkbenchJob(String name) {
        super(name);
        this.addDefaultJobChangeListener();
    }

    private void addDefaultJobChangeListener() {
        this.addJobChangeListener((IJobChangeListener)new JobChangeAdapter(){

            public void done(IJobChangeEvent event) {
                if (!PlatformUI.isWorkbenchRunning()) {
                    return;
                }
                if (event.getResult().getCode() == 0) {
                    WorkbenchJob.this.performDone(event);
                }
            }
        });
    }

    public void performDone(IJobChangeEvent event) {
    }

    public boolean shouldSchedule() {
        return super.shouldSchedule() && PlatformUI.isWorkbenchRunning();
    }

    public boolean shouldRun() {
        return super.shouldRun() && PlatformUI.isWorkbenchRunning();
    }
}

