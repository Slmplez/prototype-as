/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.progress.DetailedProgressViewer;
import org.eclipse.ui.internal.progress.ProgressLabelProvider;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressViewerContentProvider;

public class ProgressMonitorJobsDialog
extends ProgressMonitorDialog {
    private DetailedProgressViewer viewer;
    private int viewerHeight = -1;
    Composite viewerComposite;
    private Button detailsButton;
    private long watchTime = -1L;
    protected boolean alreadyClosed = false;
    private IProgressMonitor wrapperedMonitor;
    protected boolean enableDetailsButton = false;

    public ProgressMonitorJobsDialog(Shell parent) {
        super(parent);
    }

    protected Control createDialogArea(Composite parent) {
        Composite top = (Composite)super.createDialogArea(parent);
        this.createExtendedDialogArea(parent);
        return top;
    }

    protected void createExtendedDialogArea(Composite parent) {
        this.viewerComposite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.viewerComposite.setLayout((Layout)layout);
        GridData viewerData = new GridData(1808);
        viewerData.horizontalSpan = 2;
        viewerData.heightHint = 0;
        this.viewerComposite.setLayoutData((Object)viewerData);
    }

    void handleDetailsButtonSelect() {
        Shell shell = this.getShell();
        Point shellSize = shell.getSize();
        Composite composite = (Composite)this.getDialogArea();
        if (this.viewer != null) {
            this.viewer.getControl().dispose();
            this.viewer = null;
            composite.layout();
            shell.setSize(shellSize.x, shellSize.y - this.viewerHeight);
            this.detailsButton.setText(ProgressMessages.ProgressMonitorJobsDialog_DetailsTitle);
        } else {
            if (ProgressManager.getInstance().getRootElements(Policy.DEBUG_SHOW_ALL_JOBS).length == 0) {
                this.detailsButton.setEnabled(false);
                return;
            }
            this.viewer = new DetailedProgressViewer(this.viewerComposite, 2818);
            this.viewer.setComparator(new ViewerComparator(){

                public int compare(Viewer testViewer, Object e1, Object e2) {
                    return ((Comparable)e1).compareTo(e2);
                }
            });
            this.viewer.setContentProvider((IContentProvider)new ProgressViewerContentProvider(this.viewer, true, false){

                public Object[] getElements(Object inputElement) {
                    return super.getElements(inputElement);
                }
            });
            this.viewer.setLabelProvider((IBaseLabelProvider)new ProgressLabelProvider());
            this.viewer.setInput((Object)this);
            GridData viewerData = new GridData(1808);
            this.viewer.getControl().setLayoutData((Object)viewerData);
            GridData viewerCompositeData = (GridData)this.viewerComposite.getLayoutData();
            viewerCompositeData.heightHint = this.convertHeightInCharsToPixels(10);
            this.viewerComposite.layout(true);
            this.viewer.getControl().setVisible(true);
            this.viewerHeight = this.viewerComposite.computeTrim((int)0, (int)0, (int)0, (int)viewerCompositeData.heightHint).height;
            this.detailsButton.setText(ProgressMessages.ProgressMonitorJobsDialog_HideTitle);
            shell.setSize(shellSize.x, shellSize.y + this.viewerHeight);
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        super.createButtonsForButtonBar(parent);
        this.createDetailsButton(parent);
    }

    protected void createSpacer(Composite parent) {
        Label spacer = new Label(parent, 0);
        spacer.setLayoutData((Object)new GridData(768));
    }

    protected void createDetailsButton(Composite parent) {
        this.detailsButton = this.createButton(parent, 13, ProgressMessages.ProgressMonitorJobsDialog_DetailsTitle, false);
        this.detailsButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ProgressMonitorJobsDialog.this.handleDetailsButtonSelect();
            }
        });
        this.detailsButton.setCursor(this.arrowCursor);
        this.detailsButton.setEnabled(this.enableDetailsButton);
    }

    protected Control createButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 1;
        layout.makeColumnsEqualWidth = false;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        GridData data = new GridData(768);
        data.horizontalSpan = 2;
        data.horizontalAlignment = 3;
        data.grabExcessHorizontalSpace = true;
        composite.setLayoutData((Object)data);
        composite.setFont(parent.getFont());
        if (this.arrowCursor == null) {
            this.arrowCursor = new Cursor((Device)parent.getDisplay(), 0);
        }
        this.createButtonsForButtonBar(composite);
        return composite;
    }

    protected void clearCursors() {
        if (this.detailsButton != null && !this.detailsButton.isDisposed()) {
            this.detailsButton.setCursor(null);
        }
        super.clearCursors();
    }

    protected void updateForSetBlocked(IStatus reason) {
        if (this.alreadyClosed) {
            return;
        }
        super.updateForSetBlocked(reason);
        this.enableDetails(true);
        if (this.viewer == null) {
            this.handleDetailsButtonSelect();
        }
    }

    public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        if (!fork) {
            this.enableDetails(false);
        }
        super.run(fork, cancelable, runnable);
    }

    protected void enableDetails(boolean enableState) {
        if (this.detailsButton == null) {
            this.enableDetailsButton = enableState;
        } else {
            this.detailsButton.setEnabled(enableState);
        }
    }

    public void watchTicks() {
        this.watchTime = System.currentTimeMillis();
    }

    public void createWrapperedMonitor() {
        this.wrapperedMonitor = new IProgressMonitorWithBlocking(){
            IProgressMonitor superMonitor;
            {
                this.superMonitor = ProgressMonitorJobsDialog.super.getProgressMonitor();
            }

            public void beginTask(String name, int totalWork) {
                this.superMonitor.beginTask(name, totalWork);
                this.checkTicking();
            }

            private void checkTicking() {
                if (ProgressMonitorJobsDialog.this.watchTime < 0L) {
                    return;
                }
                if (System.currentTimeMillis() - ProgressMonitorJobsDialog.this.watchTime > (long)ProgressManager.getInstance().getLongOperationTime()) {
                    ProgressMonitorJobsDialog.this.watchTime = -1L;
                    this.openDialog();
                }
            }

            private void openDialog() {
                if (!PlatformUI.isWorkbenchRunning()) {
                    return;
                }
                PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable(this){
                    final /* synthetic */ 4 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        if (!ProgressManagerUtil.safeToOpen(4.access$0(this.this$1), null)) {
                            4.access$0(this.this$1).watchTicks();
                            return;
                        }
                        if (!4.access$0(this.this$1).alreadyClosed) {
                            4.access$0(this.this$1).open();
                        }
                    }
                });
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

            public void clearBlocked() {
                if (this.superMonitor instanceof IProgressMonitorWithBlocking) {
                    ((IProgressMonitorWithBlocking)this.superMonitor).clearBlocked();
                }
            }

            public void setBlocked(IStatus reason) {
                this.openDialog();
                if (this.superMonitor instanceof IProgressMonitorWithBlocking) {
                    ((IProgressMonitorWithBlocking)this.superMonitor).setBlocked(reason);
                }
            }

            static /* synthetic */ ProgressMonitorJobsDialog access$0(4 var0) {
                return var0.ProgressMonitorJobsDialog.this;
            }
        };
    }

    public IProgressMonitor getProgressMonitor() {
        if (this.wrapperedMonitor == null) {
            this.createWrapperedMonitor();
        }
        return this.wrapperedMonitor;
    }

    public boolean close() {
        this.alreadyClosed = true;
        boolean result = super.close();
        if (!result) {
            this.alreadyClosed = false;
        }
        return result;
    }

    protected boolean isResizable() {
        return true;
    }
}

