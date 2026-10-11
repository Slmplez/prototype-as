/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.util;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

class SafeRunnableDialog
extends ErrorDialog {
    private TableViewer statusListViewer;
    private Collection statuses = new ArrayList();

    SafeRunnableDialog(IStatus status) {
        super(null, JFaceResources.getString("error"), status.getMessage(), status, 4);
        this.setShellStyle(0xCF0 | SafeRunnableDialog.getDefaultOrientation());
        this.setStatus(status);
        this.statuses.add(status);
        this.setBlockOnOpen(false);
        String reason = JFaceResources.getString("SafeRunnableDialog_checkDetailsMessage");
        if (status.getException() != null) {
            reason = status.getException().getMessage() == null ? status.getException().toString() : status.getException().getMessage();
        }
        this.message = JFaceResources.format("SafeRunnableDialog_reason", new Object[]{status.getMessage(), reason});
    }

    void refresh() {
        if (AUTOMATED_MODE) {
            return;
        }
        this.createStatusList((Composite)this.dialogArea);
        this.updateEnablements();
    }

    protected Control createDialogArea(Composite parent) {
        Control area = super.createDialogArea(parent);
        this.createStatusList((Composite)area);
        return area;
    }

    private void createStatusList(Composite parent) {
        if (this.isMultipleStatusDialog()) {
            if (this.statusListViewer == null) {
                this.setMessage(JFaceResources.getString("SafeRunnableDialog_MultipleErrorsMessage"));
                this.getShell().setText(JFaceResources.getString("SafeRunnableDialog_MultipleErrorsTitle"));
                this.createStatusListArea(parent);
                this.showDetailsArea();
            }
            this.refreshStatusList();
        }
    }

    private void updateEnablements() {
        Button details = this.getButton(13);
        if (details != null) {
            details.setEnabled(true);
        }
    }

    private void setMessage(String messageString) {
        String string = this.message = messageString == null ? "" : messageString;
        if (this.messageLabel == null || this.messageLabel.isDisposed()) {
            return;
        }
        this.messageLabel.setText(this.message);
    }

    private void createStatusListArea(Composite parent) {
        this.statusListViewer = new TableViewer(parent, 2820);
        this.statusListViewer.setComparator(this.getViewerComparator());
        Control control = this.statusListViewer.getControl();
        GridData data = new GridData(1808);
        data.heightHint = this.convertHeightInCharsToPixels(10);
        data.horizontalSpan = 2;
        control.setLayoutData((Object)data);
        this.statusListViewer.setContentProvider(this.getStatusContentProvider());
        this.statusListViewer.setLabelProvider(this.getStatusListLabelProvider());
        this.statusListViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                SafeRunnableDialog.this.handleSelectionChange();
            }
        });
        SafeRunnableDialog.applyDialogFont((Control)parent);
        this.statusListViewer.setInput(this);
    }

    private CellLabelProvider getStatusListLabelProvider() {
        return new CellLabelProvider(){

            public void update(ViewerCell cell) {
                cell.setText(((IStatus)cell.getElement()).getMessage());
            }
        };
    }

    private IStructuredContentProvider getStatusContentProvider() {
        return new IStructuredContentProvider(){

            public Object[] getElements(Object inputElement) {
                return SafeRunnableDialog.this.statuses.toArray();
            }

            public void dispose() {
            }

            public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
            }
        };
    }

    private boolean isMultipleStatusDialog() {
        return this.statuses.size() > 1;
    }

    private ViewerComparator getViewerComparator() {
        return new ViewerComparator(){

            public int compare(Viewer testViewer, Object e1, Object e2) {
                String message1 = ((IStatus)e1).getMessage();
                String message2 = ((IStatus)e2).getMessage();
                if (message1 == null) {
                    return 1;
                }
                if (message2 == null) {
                    return -1;
                }
                return message1.compareTo(message2);
            }
        };
    }

    void refreshStatusList() {
        if (this.statusListViewer != null && !this.statusListViewer.getControl().isDisposed()) {
            this.statusListViewer.refresh();
            Point newSize = this.getShell().computeSize(-1, -1);
            this.getShell().setSize(newSize);
        }
    }

    private IStatus getSingleSelection() {
        IStructuredSelection selection;
        ISelection rawSelection = this.statusListViewer.getSelection();
        if (rawSelection != null && rawSelection instanceof IStructuredSelection && (selection = (IStructuredSelection)rawSelection).size() == 1) {
            return (IStatus)selection.getFirstElement();
        }
        return null;
    }

    void handleSelectionChange() {
        IStatus newSelection = this.getSingleSelection();
        this.setStatus(newSelection);
        this.updateEnablements();
        this.showDetailsArea();
    }

    protected boolean shouldShowDetailsButton() {
        return true;
    }

    public void addStatus(IStatus status) {
        this.statuses.add(status);
        this.refresh();
    }
}

