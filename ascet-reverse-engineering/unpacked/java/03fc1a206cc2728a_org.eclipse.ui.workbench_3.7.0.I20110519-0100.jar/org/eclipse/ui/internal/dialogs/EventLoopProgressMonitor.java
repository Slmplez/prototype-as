/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.ExceptionHandler;

public class EventLoopProgressMonitor
extends ProgressMonitorWrapper
implements IProgressMonitorWithBlocking {
    private static int T_THRESH = 100;
    private static int T_MAX = 50;
    private long lastTime = System.currentTimeMillis();
    private String taskName;

    public EventLoopProgressMonitor(IProgressMonitor monitor) {
        super(monitor);
    }

    public void beginTask(String name, int totalWork) {
        super.beginTask(name, totalWork);
        this.taskName = name;
        this.runEventLoop();
    }

    public void clearBlocked() {
        Dialog.getBlockedHandler().clearBlocked();
    }

    public void done() {
        super.done();
        this.taskName = null;
        this.runEventLoop();
    }

    public void internalWorked(double work) {
        super.internalWorked(work);
        this.runEventLoop();
    }

    public boolean isCanceled() {
        this.runEventLoop();
        return super.isCanceled();
    }

    private void runEventLoop() {
        long t = System.currentTimeMillis();
        if (t - this.lastTime < (long)T_THRESH) {
            return;
        }
        this.lastTime = t;
        Display disp = Display.getDefault();
        if (disp == null) {
            return;
        }
        ExceptionHandler handler = ExceptionHandler.getInstance();
        do {
            try {
                if (disp.readAndDispatch()) continue;
            }
            catch (Throwable e) {
                handler.handleException(e);
            }
            break;
        } while (System.currentTimeMillis() - t <= (long)T_MAX);
    }

    public void setBlocked(IStatus reason) {
        Dialog.getBlockedHandler().showBlocked((IProgressMonitor)this, reason, this.taskName);
    }

    public void setCanceled(boolean b) {
        super.setCanceled(b);
        this.taskName = null;
        this.runEventLoop();
    }

    public void setTaskName(String name) {
        super.setTaskName(name);
        this.taskName = name;
        this.runEventLoop();
    }

    public void subTask(String name) {
        if (this.taskName == null) {
            this.taskName = name;
        }
        super.subTask(name);
        this.runEventLoop();
    }

    public void worked(int work) {
        super.worked(work);
        this.runEventLoop();
    }

    protected String getTaskName() {
        return this.taskName;
    }
}

