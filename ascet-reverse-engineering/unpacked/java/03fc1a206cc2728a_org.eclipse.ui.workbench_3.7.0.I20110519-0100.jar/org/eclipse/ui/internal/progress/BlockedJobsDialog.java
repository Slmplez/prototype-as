/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.IconAndMessageDialog
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IconAndMessageDialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.progress.DetailedProgressViewer;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressLabelProvider;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressViewerContentProvider;
import org.eclipse.ui.progress.WorkbenchJob;

public class BlockedJobsDialog
extends IconAndMessageDialog {
    protected static BlockedJobsDialog singleton;
    private DetailedProgressViewer viewer;
    private String blockedTaskName = ProgressMessages.SubTaskInfo_UndefinedTaskName;
    private Button cancelSelected;
    private Cursor arrowCursor;
    private Cursor waitCursor;
    private IProgressMonitor blockingMonitor;
    private JobTreeElement blockedElement = new BlockedUIElement();

    public static BlockedJobsDialog createBlockedDialog(Shell parentShell, IProgressMonitor blockedMonitor, IStatus reason, String taskName) {
        if (singleton != null) {
            return singleton;
        }
        singleton = new BlockedJobsDialog(parentShell, blockedMonitor, reason);
        if (taskName == null || taskName.length() == 0) {
            singleton.setBlockedTaskName(ProgressMessages.BlockedJobsDialog_UserInterfaceTreeElement);
        } else {
            singleton.setBlockedTaskName(taskName);
        }
        if (parentShell == null) {
            WorkbenchJob dialogJob = new WorkbenchJob(WorkbenchMessages.EventLoopProgressMonitor_OpenDialogJobName){

                public IStatus runInUIThread(IProgressMonitor monitor) {
                    if (singleton == null) {
                        return Status.CANCEL_STATUS;
                    }
                    if (ProgressManagerUtil.rescheduleIfModalShellOpen(this)) {
                        return Status.CANCEL_STATUS;
                    }
                    singleton.open();
                    return Status.OK_STATUS;
                }
            };
            dialogJob.setSystem(true);
            dialogJob.schedule(PlatformUI.getWorkbench().getProgressService().getLongOperationTime());
        } else {
            singleton.open();
        }
        return singleton;
    }

    public static void clear(IProgressMonitor monitor) {
        if (singleton == null) {
            return;
        }
        singleton.close(monitor);
    }

    private BlockedJobsDialog(Shell parentShell, IProgressMonitor blocking, IStatus blockingStatus) {
        super(parentShell == null ? ProgressManagerUtil.getDefaultParent() : parentShell);
        this.blockingMonitor = blocking;
        this.setShellStyle(0x10C30 | BlockedJobsDialog.getDefaultOrientation());
        this.setBlockOnOpen(false);
        this.setMessage(blockingStatus.getMessage());
    }

    protected Control createDialogArea(Composite parent) {
        this.setMessage(this.message);
        this.createMessageArea(parent);
        this.showJobDetails(parent);
        return parent;
    }

    void showJobDetails(Composite parent) {
        int heightHint;
        this.viewer = new DetailedProgressViewer(parent, 2818);
        this.viewer.setComparator(new ViewerComparator(){

            public int compare(Viewer testViewer, Object e1, Object e2) {
                return ((Comparable)e1).compareTo(e2);
            }
        });
        ProgressViewerContentProvider provider = this.getContentProvider();
        this.viewer.setContentProvider((IContentProvider)provider);
        this.viewer.setInput(provider);
        this.viewer.setLabelProvider((IBaseLabelProvider)new ProgressLabelProvider());
        GridData data = new GridData(1808);
        data.horizontalSpan = 2;
        data.heightHint = heightHint = this.convertHeightInCharsToPixels(10);
        this.viewer.getControl().setLayoutData((Object)data);
    }

    private ProgressViewerContentProvider getContentProvider() {
        return new ProgressViewerContentProvider(this.viewer, true, false){

            public Object[] getElements(Object inputElement) {
                Object[] elements = super.getElements(inputElement);
                Object[] result = new Object[elements.length + 1];
                System.arraycopy(elements, 0, result, 1, elements.length);
                result[0] = BlockedJobsDialog.this.blockedElement;
                return result;
            }
        };
    }

    private void clearCursors() {
        this.clearCursor((Control)this.cancelSelected);
        this.clearCursor((Control)this.getShell());
        if (this.arrowCursor != null) {
            this.arrowCursor.dispose();
        }
        if (this.waitCursor != null) {
            this.waitCursor.dispose();
        }
        this.arrowCursor = null;
        this.waitCursor = null;
    }

    private void clearCursor(Control control) {
        if (control != null && !control.isDisposed()) {
            control.setCursor(null);
        }
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(ProgressMessages.BlockedJobsDialog_BlockedTitle);
        if (this.waitCursor == null) {
            this.waitCursor = new Cursor((Device)shell.getDisplay(), 1);
        }
        shell.setCursor(this.waitCursor);
    }

    private void setMessage(String messageString) {
        String string = this.message = messageString == null ? "" : messageString;
        if (this.messageLabel == null || this.messageLabel.isDisposed()) {
            return;
        }
        this.messageLabel.setText(this.message);
    }

    protected Image getImage() {
        return this.getInfoImage();
    }

    public IProgressMonitor getProgressMonitor() {
        return this.blockingMonitor;
    }

    public boolean close(IProgressMonitor monitor) {
        if (this.blockingMonitor != monitor) {
            return false;
        }
        return this.close();
    }

    public boolean close() {
        singleton = null;
        this.clearCursors();
        return super.close();
    }

    protected Control createButtonBar(Composite parent) {
        return parent;
    }

    void setBlockedTaskName(String taskName) {
        this.blockedTaskName = taskName;
    }

    private class BlockedUIElement
    extends JobTreeElement {
        private BlockedUIElement() {
        }

        Object[] getChildren() {
            return ProgressManagerUtil.EMPTY_OBJECT_ARRAY;
        }

        String getDisplayString() {
            if (BlockedJobsDialog.this.blockedTaskName == null || BlockedJobsDialog.this.blockedTaskName.length() == 0) {
                return ProgressMessages.BlockedJobsDialog_UserInterfaceTreeElement;
            }
            return BlockedJobsDialog.this.blockedTaskName;
        }

        public Image getDisplayImage() {
            return JFaceResources.getImage((String)"WAITING_JOB");
        }

        boolean hasChildren() {
            return false;
        }

        boolean isActive() {
            return true;
        }

        boolean isJobInfo() {
            return false;
        }

        public void cancel() {
            BlockedJobsDialog.this.blockingMonitor.setCanceled(true);
        }

        public boolean isCancellable() {
            return true;
        }
    }
}

