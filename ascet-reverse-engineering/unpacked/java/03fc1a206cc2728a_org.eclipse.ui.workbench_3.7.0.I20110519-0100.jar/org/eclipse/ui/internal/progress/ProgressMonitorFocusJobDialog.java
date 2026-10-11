/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressMonitorJobsDialog;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.progress.WorkbenchJob;

class ProgressMonitorFocusJobDialog
extends ProgressMonitorJobsDialog {
    Job job;
    private boolean showDialog;

    public ProgressMonitorFocusJobDialog(Shell parentShell) {
        super(parentShell == null ? ProgressManagerUtil.getNonModalShell() : parentShell);
        this.setShellStyle(ProgressMonitorFocusJobDialog.getDefaultOrientation() | 0x800 | 0x20 | 0x10 | 0x400);
        this.setCancelable(true);
        this.enableDetailsButton = true;
    }

    protected void cancelPressed() {
        this.job.cancel();
        super.cancelPressed();
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(this.job.getName());
    }

    protected void createButtonsForButtonBar(Composite parent) {
        Button runInWorkspace = this.createButton(parent, 12, ProgressMessages.ProgressMonitorFocusJobDialog_RunInBackgroundButton, true);
        runInWorkspace.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                Rectangle shellPosition = ProgressMonitorFocusJobDialog.this.getShell().getBounds();
                ProgressMonitorFocusJobDialog.this.job.setProperty(IProgressConstants.PROPERTY_IN_DIALOG, (Object)Boolean.FALSE);
                ProgressMonitorFocusJobDialog.this.finishedRun();
                ProgressManagerUtil.animateDown(shellPosition);
            }
        });
        runInWorkspace.setCursor(this.arrowCursor);
        this.cancel = this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        this.cancel.setCursor(this.arrowCursor);
        this.createDetailsButton(parent);
    }

    private IJobChangeListener createCloseListener() {
        return new JobChangeAdapter(){

            public void done(IJobChangeEvent event) {
                event.getJob().removeJobChangeListener((IJobChangeListener)this);
                if (!PlatformUI.isWorkbenchRunning()) {
                    return;
                }
                if (ProgressMonitorFocusJobDialog.this.getShell() == null) {
                    return;
                }
                WorkbenchJob closeJob = new WorkbenchJob(this, ProgressMessages.ProgressMonitorFocusJobDialog_CLoseDialogJob){
                    final /* synthetic */ 2 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public IStatus runInUIThread(IProgressMonitor monitor) {
                        Shell currentShell = 2.access$0(this.this$1).getShell();
                        if (currentShell == null || currentShell.isDisposed()) {
                            return Status.CANCEL_STATUS;
                        }
                        ProgressMonitorFocusJobDialog.access$0(2.access$0(this.this$1));
                        return Status.OK_STATUS;
                    }
                };
                closeJob.setSystem(true);
                closeJob.schedule();
            }

            static /* synthetic */ ProgressMonitorFocusJobDialog access$0(2 var0) {
                return var0.ProgressMonitorFocusJobDialog.this;
            }
        };
    }

    private IProgressMonitorWithBlocking getBlockingProgressMonitor() {
        return new IProgressMonitorWithBlocking(){

            public void beginTask(String name, int totalWork) {
                String finalName = name;
                int finalWork = totalWork;
                this.runAsync(new Runnable(this, finalName, finalWork){
                    final /* synthetic */ 4 this$1;
                    private final /* synthetic */ String val$finalName;
                    private final /* synthetic */ int val$finalWork;
                    {
                        this.this$1 = var1_1;
                        this.val$finalName = string;
                        this.val$finalWork = n;
                    }

                    public void run() {
                        4.access$0(this.this$1).getProgressMonitor().beginTask(this.val$finalName, this.val$finalWork);
                    }
                });
            }

            public void clearBlocked() {
                this.runAsync(new Runnable(this){
                    final /* synthetic */ 4 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        ((IProgressMonitorWithBlocking)4.access$0(this.this$1).getProgressMonitor()).clearBlocked();
                    }
                });
            }

            public void done() {
                this.runAsync(new Runnable(this){
                    final /* synthetic */ 4 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        4.access$0(this.this$1).getProgressMonitor().done();
                    }
                });
            }

            public void internalWorked(double work) {
                double finalWork = work;
                this.runAsync(new Runnable(this, finalWork){
                    final /* synthetic */ 4 this$1;
                    private final /* synthetic */ double val$finalWork;
                    {
                        this.this$1 = var1_1;
                        this.val$finalWork = d;
                    }

                    public void run() {
                        4.access$0(this.this$1).getProgressMonitor().internalWorked(this.val$finalWork);
                    }
                });
            }

            public boolean isCanceled() {
                return ProgressMonitorFocusJobDialog.this.getProgressMonitor().isCanceled();
            }

            private void runAsync(Runnable runnable) {
                Display display;
                if (ProgressMonitorFocusJobDialog.this.alreadyClosed) {
                    return;
                }
                Shell currentShell = ProgressMonitorFocusJobDialog.this.getShell();
                if (currentShell == null) {
                    display = Display.getDefault();
                } else {
                    if (currentShell.isDisposed()) {
                        return;
                    }
                    display = currentShell.getDisplay();
                }
                display.asyncExec(new Runnable(this, runnable){
                    final /* synthetic */ 4 this$1;
                    private final /* synthetic */ Runnable val$runnable;
                    {
                        this.this$1 = var1_1;
                        this.val$runnable = runnable;
                    }

                    public void run() {
                        if (4.access$0(this.this$1).alreadyClosed) {
                            return;
                        }
                        Shell shell = 4.access$0(this.this$1).getShell();
                        if (shell != null && shell.isDisposed()) {
                            return;
                        }
                        this.val$runnable.run();
                    }
                });
            }

            public void setBlocked(IStatus reason) {
                IStatus finalReason = reason;
                this.runAsync(new Runnable(this, finalReason){
                    final /* synthetic */ 4 this$1;
                    private final /* synthetic */ IStatus val$finalReason;
                    {
                        this.this$1 = var1_1;
                        this.val$finalReason = iStatus;
                    }

                    public void run() {
                        ((IProgressMonitorWithBlocking)4.access$0(this.this$1).getProgressMonitor()).setBlocked(this.val$finalReason);
                    }
                });
            }

            public void setCanceled(boolean value) {
            }

            public void setTaskName(String name) {
                String finalName = name;
                this.runAsync(new Runnable(this, finalName){
                    final /* synthetic */ 4 this$1;
                    private final /* synthetic */ String val$finalName;
                    {
                        this.this$1 = var1_1;
                        this.val$finalName = string;
                    }

                    public void run() {
                        4.access$0(this.this$1).getProgressMonitor().setTaskName(this.val$finalName);
                    }
                });
            }

            public void subTask(String name) {
                String finalName = name;
                this.runAsync(new Runnable(this, finalName){
                    final /* synthetic */ 4 this$1;
                    private final /* synthetic */ String val$finalName;
                    {
                        this.this$1 = var1_1;
                        this.val$finalName = string;
                    }

                    public void run() {
                        4.access$0(this.this$1).getProgressMonitor().subTask(this.val$finalName);
                    }
                });
            }

            public void worked(int work) {
                this.internalWorked(work);
            }

            static /* synthetic */ ProgressMonitorFocusJobDialog access$0(4 var0) {
                return var0.ProgressMonitorFocusJobDialog.this;
            }
        };
    }

    public int open() {
        int result = super.open();
        IJobChangeListener listener = this.createCloseListener();
        this.job.addJobChangeListener(listener);
        if (this.job.getState() == 0) {
            this.job.removeJobChangeListener(listener);
            this.finishedRun();
            this.cleanUpFinishedJob();
        }
        return result;
    }

    public void show(Job jobToWatch, final Shell originatingShell) {
        this.job = jobToWatch;
        this.job.setProperty(IProgressConstants.PROPERTY_IN_DIALOG, (Object)Boolean.TRUE);
        ProgressManager.getInstance().progressFor(this.job).addProgressListener(this.getBlockingProgressMonitor());
        this.setOpenOnRun(false);
        this.aboutToRun();
        final Object jobIsDone = new Object();
        JobChangeAdapter jobListener = new JobChangeAdapter(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public void done(IJobChangeEvent event) {
                Object object = jobIsDone;
                synchronized (object) {
                    jobIsDone.notify();
                }
            }
        };
        this.job.addJobChangeListener((IJobChangeListener)jobListener);
        BusyIndicator.showWhile((Display)PlatformUI.getWorkbench().getDisplay(), (Runnable)new Runnable(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public void run() {
                try {
                    Object object = jobIsDone;
                    synchronized (object) {
                        if (ProgressMonitorFocusJobDialog.this.job.getState() != 0) {
                            jobIsDone.wait(ProgressManagerUtil.SHORT_OPERATION_TIME);
                        }
                    }
                }
                catch (InterruptedException interruptedException) {}
            }
        });
        this.job.removeJobChangeListener((IJobChangeListener)jobListener);
        WorkbenchJob openJob = new WorkbenchJob(ProgressMessages.ProgressMonitorFocusJobDialog_UserDialogJob){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                if (ProgressMonitorFocusJobDialog.this.job.getState() == 0) {
                    ProgressMonitorFocusJobDialog.this.finishedRun();
                    ProgressMonitorFocusJobDialog.this.cleanUpFinishedJob();
                    return Status.CANCEL_STATUS;
                }
                if (!ProgressManagerUtil.safeToOpen(ProgressMonitorFocusJobDialog.this, originatingShell)) {
                    return Status.CANCEL_STATUS;
                }
                if (ProgressMonitorFocusJobDialog.this.getParentShell() != null && ProgressMonitorFocusJobDialog.this.getParentShell().isDisposed()) {
                    return Status.CANCEL_STATUS;
                }
                ProgressMonitorFocusJobDialog.this.open();
                return Status.OK_STATUS;
            }
        };
        openJob.setSystem(true);
        openJob.schedule();
    }

    private void cleanUpFinishedJob() {
        ProgressManager.getInstance().checkForStaleness(this.job);
    }

    protected Control createDialogArea(Composite parent) {
        Control area = super.createDialogArea(parent);
        this.getProgressMonitor().setTaskName(ProgressManager.getInstance().getJobInfo(this.job).getDisplayString());
        return area;
    }

    protected void createExtendedDialogArea(Composite parent) {
        this.showDialog = WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("RUN_IN_BACKGROUND");
        final Button showUserDialogButton = new Button(parent, 32);
        showUserDialogButton.setText(WorkbenchMessages.WorkbenchPreference_RunInBackgroundButton);
        showUserDialogButton.setToolTipText(WorkbenchMessages.WorkbenchPreference_RunInBackgroundToolTip);
        GridData gd = new GridData();
        gd.horizontalSpan = 2;
        gd.horizontalAlignment = 4;
        showUserDialogButton.setLayoutData((Object)gd);
        showUserDialogButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ProgressMonitorFocusJobDialog.this.showDialog = showUserDialogButton.getSelection();
            }
        });
        super.createExtendedDialogArea(parent);
    }

    public boolean close() {
        if (this.getReturnCode() != 1) {
            WorkbenchPlugin.getDefault().getPreferenceStore().setValue("RUN_IN_BACKGROUND", this.showDialog);
        }
        return super.close();
    }
}

