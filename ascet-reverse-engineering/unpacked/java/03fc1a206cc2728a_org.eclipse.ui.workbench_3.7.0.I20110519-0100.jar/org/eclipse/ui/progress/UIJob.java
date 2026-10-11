/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.progress.ProgressMessages;

public abstract class UIJob
extends Job {
    private Display cachedDisplay;

    public UIJob(String name) {
        super(name);
    }

    public UIJob(Display jobDisplay, String name) {
        this(name);
        this.setDisplay(jobDisplay);
    }

    public static IStatus errorStatus(Throwable exception) {
        return WorkbenchPlugin.getStatus(exception);
    }

    public final IStatus run(final IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        Display asyncDisplay = this.getDisplay();
        if (asyncDisplay == null || asyncDisplay.isDisposed()) {
            return Status.CANCEL_STATUS;
        }
        asyncDisplay.asyncExec(new Runnable(){

            public void run() {
                block8: {
                    IStatus result = null;
                    Throwable throwable = null;
                    try {
                        try {
                            UIJob.this.setThread(Thread.currentThread());
                            if (monitor.isCanceled()) {
                                result = Status.CANCEL_STATUS;
                                break block8;
                            }
                            UIStats.start(13, UIJob.this.getName());
                            result = UIJob.this.runInUIThread(monitor);
                        }
                        catch (Throwable t) {
                            throwable = t;
                            UIStats.end(13, (Object)UIJob.this, UIJob.this.getName());
                            if (result == null) {
                                result = new Status(4, "org.eclipse.ui", 4, ProgressMessages.InternalError, throwable);
                            }
                            UIJob.this.done(result);
                        }
                    }
                    finally {
                        UIStats.end(13, (Object)UIJob.this, UIJob.this.getName());
                        if (result == null) {
                            result = new Status(4, "org.eclipse.ui", 4, ProgressMessages.InternalError, throwable);
                        }
                        UIJob.this.done(result);
                    }
                }
            }
        });
        return Job.ASYNC_FINISH;
    }

    public abstract IStatus runInUIThread(IProgressMonitor var1);

    public void setDisplay(Display runDisplay) {
        Assert.isNotNull((Object)runDisplay);
        this.cachedDisplay = runDisplay;
    }

    public Display getDisplay() {
        if (this.cachedDisplay == null && PlatformUI.isWorkbenchRunning()) {
            return PlatformUI.getWorkbench().getDisplay();
        }
        return this.cachedDisplay;
    }
}

