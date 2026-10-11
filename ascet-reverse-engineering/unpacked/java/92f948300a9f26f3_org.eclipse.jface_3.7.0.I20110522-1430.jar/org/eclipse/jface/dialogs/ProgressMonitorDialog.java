/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IconAndMessageDialog;
import org.eclipse.jface.dialogs.ProgressIndicator;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.operation.ModalContext;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;

public class ProgressMonitorDialog
extends IconAndMessageDialog
implements IRunnableContext {
    private static String DEFAULT_TASKNAME = JFaceResources.getString("ProgressMonitorDialog.message");
    private static int LABEL_DLUS = 21;
    private static int BAR_DLUS = 9;
    protected ProgressIndicator progressIndicator;
    protected Label taskLabel;
    protected Label subTaskLabel;
    protected Button cancel;
    protected boolean operationCancelableState = false;
    protected boolean enableCancelButton;
    private ProgressMonitor progressMonitor = new ProgressMonitor();
    private String task;
    private int nestingDepth;
    protected Cursor arrowCursor;
    private Cursor waitCursor;
    private boolean openOnRun = true;

    protected void updateForClearBlocked() {
        this.progressIndicator.showNormal();
        this.setMessage(this.task, true);
        this.imageLabel.setImage(this.getImage());
    }

    protected void updateForSetBlocked(IStatus reason) {
        this.progressIndicator.showPaused();
        this.setMessage(reason.getMessage(), true);
        this.imageLabel.setImage(this.getImage());
    }

    public ProgressMonitorDialog(Shell parent) {
        super(parent);
        if (this.isResizable()) {
            this.setShellStyle(ProgressMonitorDialog.getDefaultOrientation() | 0x800 | 0x20 | 0x10000 | 0x10 | 0x400);
        } else {
            this.setShellStyle(ProgressMonitorDialog.getDefaultOrientation() | 0x800 | 0x20 | 0x10000);
        }
        this.setBlockOnOpen(false);
    }

    private void asyncSetOperationCancelButtonEnabled(final boolean b) {
        if (this.getShell() != null) {
            this.getShell().getDisplay().asyncExec(new Runnable(){

                public void run() {
                    ProgressMonitorDialog.this.setOperationCancelButtonEnabled(b);
                }
            });
        }
    }

    protected void cancelPressed() {
        this.cancel.setEnabled(false);
        this.progressMonitor.setCanceled(true);
        super.cancelPressed();
    }

    public boolean close() {
        if (this.getNestingDepth() <= 0) {
            this.clearCursors();
            return super.close();
        }
        return false;
    }

    protected void clearCursors() {
        Shell shell;
        if (this.cancel != null && !this.cancel.isDisposed()) {
            this.cancel.setCursor(null);
        }
        if ((shell = this.getShell()) != null && !shell.isDisposed()) {
            shell.setCursor(null);
        }
        if (this.arrowCursor != null) {
            this.arrowCursor.dispose();
        }
        if (this.waitCursor != null) {
            this.waitCursor.dispose();
        }
        this.arrowCursor = null;
        this.waitCursor = null;
    }

    protected void configureShell(final Shell shell) {
        super.configureShell(shell);
        shell.setText(JFaceResources.getString("ProgressMonitorDialog.title"));
        if (this.waitCursor == null) {
            this.waitCursor = new Cursor((Device)shell.getDisplay(), 1);
        }
        shell.setCursor(this.waitCursor);
        shell.addListener(22, new Listener(){

            public void handleEvent(Event event) {
                shell.getDisplay().asyncExec(new Runnable(this){
                    final /* synthetic */ 2 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        ProgressMonitorDialog.access$3(2.access$0(this.this$1), 2.access$0(this.this$1).message, true);
                    }
                });
            }

            static /* synthetic */ ProgressMonitorDialog access$0(2 var0) {
                return var0.ProgressMonitorDialog.this;
            }
        });
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createCancelButton(parent);
    }

    protected void createCancelButton(Composite parent) {
        this.cancel = this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, true);
        if (this.arrowCursor == null) {
            this.arrowCursor = new Cursor((Device)this.cancel.getDisplay(), 0);
        }
        this.cancel.setCursor(this.arrowCursor);
        this.setOperationCancelButtonEnabled(this.enableCancelButton);
    }

    protected Control createDialogArea(Composite parent) {
        this.setMessage(DEFAULT_TASKNAME, false);
        this.createMessageArea(parent);
        this.taskLabel = this.messageLabel;
        this.progressIndicator = new ProgressIndicator(parent);
        GridData gd = new GridData();
        gd.heightHint = this.convertVerticalDLUsToPixels(BAR_DLUS);
        gd.horizontalAlignment = 4;
        gd.grabExcessHorizontalSpace = true;
        gd.horizontalSpan = 2;
        this.progressIndicator.setLayoutData(gd);
        this.subTaskLabel = new Label(parent, 16448);
        gd = new GridData(768);
        gd.heightHint = this.convertVerticalDLUsToPixels(LABEL_DLUS);
        gd.horizontalSpan = 2;
        this.subTaskLabel.setLayoutData((Object)gd);
        this.subTaskLabel.setFont(parent.getFont());
        return parent;
    }

    protected Point getInitialSize() {
        Point calculatedSize = super.getInitialSize();
        if (calculatedSize.x < 450) {
            calculatedSize.x = 450;
        }
        return calculatedSize;
    }

    public IProgressMonitor getProgressMonitor() {
        return this.progressMonitor;
    }

    public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        this.setCancelable(cancelable);
        try {
            this.aboutToRun();
            this.progressMonitor.forked = fork;
            ModalContext.run(runnable, fork, this.getProgressMonitor(), this.getShell().getDisplay());
        }
        finally {
            this.finishedRun();
        }
    }

    public boolean getOpenOnRun() {
        return this.openOnRun;
    }

    public void setOpenOnRun(boolean openOnRun) {
        this.openOnRun = openOnRun;
    }

    protected int getNestingDepth() {
        return this.nestingDepth;
    }

    protected void incrementNestingDepth() {
        ++this.nestingDepth;
    }

    protected void decrementNestingDepth() {
        --this.nestingDepth;
    }

    protected void aboutToRun() {
        if (this.getOpenOnRun()) {
            this.open();
        } else {
            this.create();
        }
        this.incrementNestingDepth();
    }

    protected void finishedRun() {
        this.decrementNestingDepth();
        this.close();
    }

    public void setCancelable(boolean cancelable) {
        if (this.cancel == null) {
            this.enableCancelButton = cancelable;
        } else {
            this.asyncSetOperationCancelButtonEnabled(cancelable);
        }
    }

    protected void setOperationCancelButtonEnabled(boolean b) {
        this.operationCancelableState = b;
        if (this.cancel != null && !this.cancel.isDisposed()) {
            this.cancel.setEnabled(b);
        }
    }

    protected Image getImage() {
        return this.getInfoImage();
    }

    private void setMessage(String messageString, boolean force) {
        String string = this.message = messageString == null ? "" : messageString;
        if (this.messageLabel == null || this.messageLabel.isDisposed()) {
            return;
        }
        if (force || this.messageLabel.isVisible()) {
            this.messageLabel.setToolTipText(this.message);
            this.messageLabel.setText(ProgressMonitorDialog.shortenText(this.message, (Control)this.messageLabel));
        }
    }

    private void update() {
        if (this.messageLabel == null || this.messageLabel.isDisposed()) {
            return;
        }
        this.messageLabel.update();
    }

    public int open() {
        if (!this.getOpenOnRun() && this.getNestingDepth() == 0) {
            return 0;
        }
        int result = super.open();
        if (this.task == null || this.task.length() == 0) {
            this.setMessage(DEFAULT_TASKNAME, true);
        } else {
            this.setMessage(this.task, true);
        }
        return result;
    }

    private class ProgressMonitor
    implements IProgressMonitorWithBlocking {
        private String fSubTask = "";
        private volatile boolean fIsCanceled;
        protected boolean forked = false;
        protected boolean locked = false;

        private ProgressMonitor() {
        }

        public void beginTask(String name, int totalWork) {
            if (ProgressMonitorDialog.this.progressIndicator.isDisposed()) {
                return;
            }
            if (name == null) {
                ProgressMonitorDialog.this.task = "";
            } else {
                ProgressMonitorDialog.this.task = name;
            }
            String s = ProgressMonitorDialog.this.task;
            if (s.length() <= 0) {
                s = DEFAULT_TASKNAME;
            }
            ProgressMonitorDialog.this.setMessage(s, false);
            if (!this.forked) {
                ProgressMonitorDialog.this.update();
            }
            if (totalWork == -1) {
                ProgressMonitorDialog.this.progressIndicator.beginAnimatedTask();
            } else {
                ProgressMonitorDialog.this.progressIndicator.beginTask(totalWork);
            }
        }

        public void done() {
            if (!ProgressMonitorDialog.this.progressIndicator.isDisposed()) {
                ProgressMonitorDialog.this.progressIndicator.sendRemainingWork();
                ProgressMonitorDialog.this.progressIndicator.done();
            }
        }

        public void setTaskName(String name) {
            if (name == null) {
                ProgressMonitorDialog.this.task = "";
            } else {
                ProgressMonitorDialog.this.task = name;
            }
            String s = ProgressMonitorDialog.this.task;
            if (s.length() <= 0) {
                s = DEFAULT_TASKNAME;
            }
            ProgressMonitorDialog.this.setMessage(s, false);
            if (!this.forked) {
                ProgressMonitorDialog.this.update();
            }
        }

        public boolean isCanceled() {
            return this.fIsCanceled;
        }

        public void setCanceled(boolean b) {
            this.fIsCanceled = b;
            if (this.locked) {
                this.clearBlocked();
            }
        }

        public void subTask(String name) {
            if (ProgressMonitorDialog.this.subTaskLabel.isDisposed()) {
                return;
            }
            this.fSubTask = name == null ? "" : name;
            ProgressMonitorDialog.this.subTaskLabel.setText(ProgressMonitorDialog.shortenText(this.fSubTask, (Control)ProgressMonitorDialog.this.subTaskLabel));
            if (!this.forked) {
                ProgressMonitorDialog.this.subTaskLabel.update();
            }
        }

        public void worked(int work) {
            this.internalWorked(work);
        }

        public void internalWorked(double work) {
            if (!ProgressMonitorDialog.this.progressIndicator.isDisposed()) {
                ProgressMonitorDialog.this.progressIndicator.worked(work);
            }
        }

        public void clearBlocked() {
            if (ProgressMonitorDialog.this.getShell() == null || ProgressMonitorDialog.this.getShell().isDisposed()) {
                return;
            }
            this.locked = false;
            ProgressMonitorDialog.this.updateForClearBlocked();
        }

        public void setBlocked(IStatus reason) {
            if (ProgressMonitorDialog.this.getShell() == null || ProgressMonitorDialog.this.getShell().isDisposed()) {
                return;
            }
            this.locked = true;
            ProgressMonitorDialog.this.updateForSetBlocked(reason);
        }
    }
}

