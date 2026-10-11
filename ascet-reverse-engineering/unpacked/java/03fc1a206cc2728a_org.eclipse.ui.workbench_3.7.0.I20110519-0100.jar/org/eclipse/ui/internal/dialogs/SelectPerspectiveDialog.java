/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.activities.ws.ActivityMessages;
import org.eclipse.ui.internal.activities.ws.ActivityViewerFilter;
import org.eclipse.ui.internal.dialogs.PerspContentProvider;
import org.eclipse.ui.model.PerspectiveLabelProvider;

public class SelectPerspectiveDialog
extends Dialog
implements ISelectionChangedListener {
    private static final int LIST_HEIGHT = 300;
    private static final int LIST_WIDTH = 300;
    private TableViewer list;
    private Button okButton;
    private IPerspectiveDescriptor perspDesc;
    private IPerspectiveRegistry perspReg;
    private ActivityViewerFilter activityViewerFilter = new ActivityViewerFilter();
    private Button showAllButton;

    public SelectPerspectiveDialog(Shell parentShell, IPerspectiveRegistry perspReg) {
        super(parentShell);
        this.perspReg = perspReg;
        this.setShellStyle(this.getShellStyle() | 0x10000000);
    }

    protected void cancelPressed() {
        this.perspDesc = null;
        super.cancelPressed();
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(WorkbenchMessages.SelectPerspective_shellTitle);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.select_perspective_dialog_context");
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        this.updateButtons();
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        composite.setFont(parent.getFont());
        this.createViewer(composite);
        this.layoutTopControl(this.list.getControl());
        if (this.needsShowAllButton()) {
            this.createShowAllButton(composite);
        }
        return composite;
    }

    private boolean needsShowAllButton() {
        return this.activityViewerFilter.getHasEncounteredFilteredItem();
    }

    private void createShowAllButton(Composite parent) {
        this.showAllButton = new Button(parent, 32);
        this.showAllButton.setText(ActivityMessages.Perspective_showAll);
        this.showAllButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (SelectPerspectiveDialog.this.showAllButton.getSelection()) {
                    SelectPerspectiveDialog.this.list.resetFilters();
                } else {
                    SelectPerspectiveDialog.this.list.addFilter((ViewerFilter)SelectPerspectiveDialog.this.activityViewerFilter);
                }
            }
        });
    }

    private void createViewer(Composite parent) {
        this.list = new TableViewer(parent, 2820);
        this.list.getTable().setFont(parent.getFont());
        this.list.setLabelProvider((IBaseLabelProvider)new PerspectiveLabelProvider());
        this.list.setContentProvider((IContentProvider)new PerspContentProvider());
        this.list.addFilter((ViewerFilter)this.activityViewerFilter);
        this.list.setComparator(new ViewerComparator());
        this.list.setInput((Object)this.perspReg);
        this.list.addSelectionChangedListener((ISelectionChangedListener)this);
        this.list.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                SelectPerspectiveDialog.this.handleDoubleClickEvent();
            }
        });
    }

    public IPerspectiveDescriptor getSelection() {
        return this.perspDesc;
    }

    protected void handleDoubleClickEvent() {
        this.okPressed();
    }

    private void layoutTopControl(Control control) {
        GridData spec = new GridData(1808);
        spec.widthHint = 300;
        spec.heightHint = 300;
        control.setLayoutData((Object)spec);
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.updateSelection(event);
        this.updateButtons();
    }

    protected void updateButtons() {
        this.okButton.setEnabled(this.getSelection() != null);
    }

    protected void updateSelection(SelectionChangedEvent event) {
        Object obj;
        this.perspDesc = null;
        IStructuredSelection sel = (IStructuredSelection)event.getSelection();
        if (!sel.isEmpty() && (obj = sel.getFirstElement()) instanceof IPerspectiveDescriptor) {
            this.perspDesc = (IPerspectiveDescriptor)obj;
        }
    }

    protected void okPressed() {
        ITriggerPoint triggerPoint = PlatformUI.getWorkbench().getActivitySupport().getTriggerPointManager().getTriggerPoint("org.eclipse.ui.openPerspectiveDialog");
        if (WorkbenchActivityHelper.allowUseOf(triggerPoint, this.getSelection())) {
            super.okPressed();
        }
    }

    protected boolean isResizable() {
        return true;
    }
}

