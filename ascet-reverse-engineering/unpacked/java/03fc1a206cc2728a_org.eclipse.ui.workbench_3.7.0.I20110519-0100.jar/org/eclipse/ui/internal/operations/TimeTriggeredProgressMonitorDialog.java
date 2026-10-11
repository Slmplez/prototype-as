/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.operations;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;

public class TimeTriggeredProgressMonitorDialog
extends ProgressMonitorDialog {
    private int longOperationTime;
    private long triggerTime = -1L;
    private boolean dialogOpened = false;
    private IProgressMonitor wrapperedMonitor;

    public TimeTriggeredProgressMonitorDialog(Shell parent, int longOperationTime) {
        super(parent);
        this.setOpenOnRun(false);
        this.longOperationTime = longOperationTime;
    }

    public void createWrapperedMonitor() {
        this.wrapperedMonitor = new IProgressMonitor(){
            IProgressMonitor superMonitor;
            {
                this.superMonitor = TimeTriggeredProgressMonitorDialog.super.getProgressMonitor();
            }

            public void beginTask(String name, int totalWork) {
                this.superMonitor.beginTask(name, totalWork);
                this.checkTicking();
            }

            private void checkTicking() {
                if (TimeTriggeredProgressMonitorDialog.this.triggerTime < 0L) {
                    TimeTriggeredProgressMonitorDialog.this.triggerTime = System.currentTimeMillis() + (long)TimeTriggeredProgressMonitorDialog.this.longOperationTime;
                }
                if (!TimeTriggeredProgressMonitorDialog.this.dialogOpened && System.currentTimeMillis() > TimeTriggeredProgressMonitorDialog.this.triggerTime) {
                    TimeTriggeredProgressMonitorDialog.this.open();
                    TimeTriggeredProgressMonitorDialog.this.dialogOpened = true;
                }
            }

            public void done() {
                this.superMonitor.done();
                this.checkTicking();
            }

            public void internalWorked(double work) {
                this.superMonitor.internalWorked(work);
                this.checkTicking();
            }

            public boolean isCanceled() {
                return this.superMonitor.isCanceled();
            }

            public void setCanceled(boolean value) {
                this.superMonitor.setCanceled(value);
            }

            public void setTaskName(String name) {
                this.superMonitor.setTaskName(name);
                this.checkTicking();
            }

            public void subTask(String name) {
                this.superMonitor.subTask(name);
                this.checkTicking();
            }

            public void worked(int work) {
                this.superMonitor.worked(work);
                this.checkTicking();
            }
        };
    }

    public IProgressMonitor getProgressMonitor() {
        if (this.wrapperedMonitor == null) {
            this.createWrapperedMonitor();
        }
        return this.wrapperedMonitor;
    }

    public void run(final boolean fork, final boolean cancelable, final IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        final InvocationTargetException[] invokes = new InvocationTargetException[1];
        final InterruptedException[] interrupt = new InterruptedException[1];
        Runnable dialogWaitRunnable = new Runnable(){

            public void run() {
                try {
                    TimeTriggeredProgressMonitorDialog.super.run(fork, cancelable, runnable);
                }
                catch (InvocationTargetException e) {
                    invokes[0] = e;
                }
                catch (InterruptedException e) {
                    interrupt[0] = e;
                }
            }
        };
        Display display = PlatformUI.getWorkbench().getDisplay();
        if (display == null) {
            return;
        }
        BusyIndicator.showWhile((Display)display, (Runnable)dialogWaitRunnable);
        if (invokes[0] != null) {
            throw invokes[0];
        }
        if (interrupt[0] != null) {
            throw interrupt[0];
        }
    }
}

