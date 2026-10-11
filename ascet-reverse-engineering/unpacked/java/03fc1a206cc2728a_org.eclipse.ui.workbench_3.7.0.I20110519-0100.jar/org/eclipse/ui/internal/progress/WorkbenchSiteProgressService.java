/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.progress.IJobBusyListener;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.part.WorkbenchPart;
import org.eclipse.ui.progress.IProgressService;
import org.eclipse.ui.progress.IWorkbenchSiteProgressService;
import org.eclipse.ui.progress.WorkbenchJob;

public class WorkbenchSiteProgressService
implements IWorkbenchSiteProgressService,
IJobBusyListener {
    PartSite site;
    private Map busyJobs = new HashMap();
    private Object busyLock = new Object();
    IPropertyChangeListener[] changeListeners = new IPropertyChangeListener[0];
    private Cursor waitCursor;
    private int waitCursorJobCount;
    private Object waitCursorLock = new Object();
    private SiteUpdateJob updateJob;
    private int busyCount = 0;

    public WorkbenchSiteProgressService(PartSite partSite) {
        this.site = partSite;
        this.updateJob = new SiteUpdateJob();
        this.updateJob.setSystem(true);
    }

    public void dispose() {
        if (this.updateJob != null) {
            this.updateJob.cancel();
        }
        ProgressManager.getInstance().removeListener(this);
        if (this.waitCursor == null) {
            return;
        }
        this.waitCursor.dispose();
        this.waitCursor = null;
    }

    public void busyCursorWhile(IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        this.getWorkbenchProgressService().busyCursorWhile(runnable);
    }

    public void schedule(Job job, long delay, boolean useHalfBusyCursor) {
        job.addJobChangeListener(this.getJobChangeListener(useHalfBusyCursor));
        job.schedule(delay);
    }

    public void schedule(Job job, long delay) {
        this.schedule(job, delay, false);
    }

    public void schedule(Job job) {
        this.schedule(job, 0L, false);
    }

    public void showBusyForFamily(Object family) {
        ProgressManager.getInstance().addListenerToFamily(family, this);
    }

    public IJobChangeListener getJobChangeListener(final boolean useHalfBusyCursor) {
        return new JobChangeAdapter(){

            public void aboutToRun(IJobChangeEvent event) {
                WorkbenchSiteProgressService.this.incrementBusy(event.getJob(), useHalfBusyCursor);
            }

            public void done(IJobChangeEvent event) {
                Job job = event.getJob();
                WorkbenchSiteProgressService.this.decrementBusy(job);
                job.removeJobChangeListener((IJobChangeListener)this);
            }
        };
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void decrementBusy(Job job) {
        Object halfBusyCursorState;
        Object object = this.busyLock;
        synchronized (object) {
            halfBusyCursorState = this.busyJobs.remove(job);
            if (halfBusyCursorState == null) {
                return;
            }
        }
        if (halfBusyCursorState == Boolean.TRUE) {
            object = this.waitCursorLock;
            synchronized (object) {
                --this.waitCursorJobCount;
            }
        }
        try {
            this.decrementBusy();
        }
        catch (Exception ex) {
            WorkbenchPlugin.log(ex);
        }
    }

    public void incrementBusy(Job job) {
        this.incrementBusy(job, false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void incrementBusy(Job job, boolean useHalfBusyCursor) {
        Object halfBusyCursorState;
        Object object = this.busyLock;
        synchronized (object) {
            halfBusyCursorState = this.busyJobs.get(job);
            if (useHalfBusyCursor || halfBusyCursorState != Boolean.TRUE) {
                this.busyJobs.put(job, useHalfBusyCursor);
            }
        }
        if (useHalfBusyCursor && halfBusyCursorState != Boolean.TRUE) {
            object = this.waitCursorLock;
            synchronized (object) {
                ++this.waitCursorJobCount;
            }
        }
        if (halfBusyCursorState != null) {
            if (useHalfBusyCursor && halfBusyCursorState == Boolean.FALSE) {
                object = this.busyLock;
                synchronized (object) {
                    this.updateJob.setBusy(true);
                }
                if (PlatformUI.isWorkbenchRunning()) {
                    this.updateJob.schedule(100L);
                } else {
                    this.updateJob.cancel();
                }
            }
            return;
        }
        this.incrementBusy();
    }

    public void warnOfContentChange() {
        this.site.getPane().showHighlight();
    }

    public void showInDialog(Shell shell, Job job) {
        this.getWorkbenchProgressService().showInDialog(shell, job);
    }

    private IProgressService getWorkbenchProgressService() {
        return this.site.getWorkbenchWindow().getWorkbench().getProgressService();
    }

    public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        this.getWorkbenchProgressService().run(fork, cancelable, runnable);
    }

    public void runInUI(IRunnableContext context, IRunnableWithProgress runnable, ISchedulingRule rule) throws InvocationTargetException, InterruptedException {
        this.getWorkbenchProgressService().runInUI(context, runnable, rule);
    }

    public int getLongOperationTime() {
        return this.getWorkbenchProgressService().getLongOperationTime();
    }

    public void registerIconForFamily(ImageDescriptor icon, Object family) {
        this.getWorkbenchProgressService().registerIconForFamily(icon, family);
    }

    public Image getIconFor(Job job) {
        return this.getWorkbenchProgressService().getIconFor(job);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void incrementBusy() {
        Object object = this.busyLock;
        synchronized (object) {
            ++this.busyCount;
            if (this.busyCount != 1) {
                return;
            }
            this.updateJob.setBusy(true);
        }
        if (PlatformUI.isWorkbenchRunning()) {
            this.updateJob.schedule(100L);
        } else {
            this.updateJob.cancel();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void decrementBusy() {
        Object object = this.busyLock;
        synchronized (object) {
            Assert.isTrue((this.busyCount > 0 ? 1 : 0) != 0, (String)"Ignoring unexpected call to IWorkbenchSiteProgressService.decrementBusy().  This might be due to an earlier call to this method.");
            --this.busyCount;
            if (this.busyCount != 0) {
                return;
            }
            this.updateJob.setBusy(false);
        }
        if (PlatformUI.isWorkbenchRunning()) {
            this.updateJob.schedule(100L);
        } else {
            this.updateJob.cancel();
        }
    }

    public SiteUpdateJob getUpdateJob() {
        return this.updateJob;
    }

    public class SiteUpdateJob
    extends WorkbenchJob {
        private boolean busy;
        Object lock = new Object();

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void setBusy(boolean cursorState) {
            Object object = this.lock;
            synchronized (object) {
                this.busy = cursorState;
            }
        }

        private SiteUpdateJob() {
            super(ProgressMessages.WorkbenchSiteProgressService_CursorJob);
        }

        private Cursor getWaitCursor(Display display) {
            if (WorkbenchSiteProgressService.this.waitCursor == null) {
                WorkbenchSiteProgressService.this.waitCursor = new Cursor((Device)display, 3);
            }
            return WorkbenchSiteProgressService.this.waitCursor;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IStatus runInUIThread(IProgressMonitor monitor) {
            Control control = WorkbenchSiteProgressService.this.site.getPane().getControl();
            if (control == null || control.isDisposed()) {
                return Status.CANCEL_STATUS;
            }
            Object object = this.lock;
            synchronized (object) {
                Cursor cursor = null;
                if (WorkbenchSiteProgressService.this.waitCursorJobCount != 0) {
                    cursor = this.getWaitCursor(control.getDisplay());
                }
                control.setCursor(cursor);
                WorkbenchSiteProgressService.this.site.getPane().setBusy(this.busy);
                IWorkbenchPart part = WorkbenchSiteProgressService.this.site.getPart();
                if (part instanceof WorkbenchPart) {
                    ((WorkbenchPart)part).showBusy(this.busy);
                }
            }
            return Status.OK_STATUS;
        }

        void clearCursors() {
            if (WorkbenchSiteProgressService.this.waitCursor != null) {
                WorkbenchSiteProgressService.this.waitCursor.dispose();
                WorkbenchSiteProgressService.this.waitCursor = null;
            }
        }
    }
}

