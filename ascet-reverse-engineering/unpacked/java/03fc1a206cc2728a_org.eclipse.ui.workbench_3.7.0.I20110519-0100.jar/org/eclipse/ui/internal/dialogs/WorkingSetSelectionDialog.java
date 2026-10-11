/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.AggregateWorkingSet;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.AbstractWorkingSetDialog;
import org.eclipse.ui.internal.dialogs.WorkingSetFilter;
import org.eclipse.ui.internal.dialogs.WorkingSetLabelProvider;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.WorkbenchViewerComparator;

public class WorkingSetSelectionDialog
extends AbstractWorkingSetDialog {
    private static final int SIZING_SELECTION_WIDGET_HEIGHT = 200;
    private static final int SIZING_SELECTION_WIDGET_WIDTH = 50;
    private ILabelProvider labelProvider;
    private IStructuredContentProvider contentProvider;
    private CheckboxTableViewer listViewer;
    private boolean multiSelect;
    private IWorkbenchWindow workbenchWindow;
    private Button buttonWindowSet;
    private Button buttonNoSet;
    private Button buttonSelectedSets;

    public WorkingSetSelectionDialog(Shell parentShell, boolean multi, String[] workingSetIds) {
        super(parentShell, workingSetIds, true);
        this.initWorkbenchWindow();
        this.contentProvider = new ArrayContentProvider();
        this.labelProvider = new WorkingSetLabelProvider();
        this.multiSelect = multi;
        if (this.multiSelect) {
            this.setTitle(WorkbenchMessages.WorkingSetSelectionDialog_title_multiSelect);
            this.setMessage(WorkbenchMessages.WorkingSetSelectionDialog_message_multiSelect);
        } else {
            this.setTitle(WorkbenchMessages.WorkingSetSelectionDialog_title);
            this.setMessage(WorkbenchMessages.WorkingSetSelectionDialog_message);
        }
    }

    private void initWorkbenchWindow() {
        Shell shellToCheck = this.getShell();
        this.workbenchWindow = Util.getWorkbenchWindowForShell(shellToCheck);
    }

    protected void cancelPressed() {
        this.restoreAddedWorkingSets();
        this.restoreChangedWorkingSets();
        this.restoreRemovedWorkingSets();
        this.setSelection(null);
        super.cancelPressed();
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.working_set_selection_dialog_context");
    }

    protected Control createDialogArea(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Composite composite = (Composite)super.createDialogArea(parent);
        this.createMessageArea(composite);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                WorkingSetSelectionDialog.this.updateButtonAvailability();
            }
        };
        this.buttonWindowSet = new Button(composite, 16);
        this.buttonWindowSet.setText(WorkbenchMessages.WindowWorkingSets);
        this.buttonWindowSet.setLayoutData((Object)new GridData(768));
        this.buttonWindowSet.addSelectionListener((SelectionListener)listener);
        this.buttonNoSet = new Button(composite, 16);
        this.buttonNoSet.setText(WorkbenchMessages.NoWorkingSet);
        this.buttonNoSet.setLayoutData((Object)new GridData(768));
        this.buttonNoSet.addSelectionListener((SelectionListener)listener);
        this.buttonSelectedSets = new Button(composite, 16);
        this.buttonSelectedSets.setText(WorkbenchMessages.SelectedWorkingSets);
        this.buttonSelectedSets.addSelectionListener((SelectionListener)listener);
        switch (this.getInitialRadioSelection()) {
            case 0: {
                this.buttonWindowSet.setSelection(true);
                break;
            }
            case 1: {
                this.buttonNoSet.setSelection(true);
                break;
            }
            case 2: {
                this.buttonSelectedSets.setSelection(true);
            }
        }
        this.buttonSelectedSets.setLayoutData((Object)new GridData(768));
        Composite viewerComposite = new Composite(composite, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        viewerComposite.setLayout((Layout)layout);
        GridData data = new GridData(1808);
        data.heightHint = 200;
        data.widthHint = 350;
        viewerComposite.setLayoutData((Object)data);
        this.listViewer = CheckboxTableViewer.newCheckList((Composite)viewerComposite, (int)2050);
        data = new GridData(1808);
        data.heightHint = 200;
        data.widthHint = 50;
        this.listViewer.getTable().setLayoutData((Object)data);
        this.listViewer.setLabelProvider((IBaseLabelProvider)this.labelProvider);
        this.listViewer.setContentProvider((IContentProvider)this.contentProvider);
        this.listViewer.setComparator((ViewerComparator)new WorkbenchViewerComparator());
        this.listViewer.addFilter((ViewerFilter)new WorkingSetFilter(this.getSupportedWorkingSetIds()));
        this.listViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                WorkingSetSelectionDialog.this.handleSelectionChanged();
            }
        });
        this.listViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                Object obj = ((IStructuredSelection)WorkingSetSelectionDialog.this.listViewer.getSelection()).getFirstElement();
                WorkingSetSelectionDialog.this.listViewer.setCheckedElements(new Object[]{obj});
                WorkingSetSelectionDialog.this.buttonWindowSet.setSelection(false);
                WorkingSetSelectionDialog.this.buttonNoSet.setSelection(false);
                WorkingSetSelectionDialog.this.buttonSelectedSets.setSelection(true);
                WorkingSetSelectionDialog.this.okPressed();
            }
        });
        this.listViewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                WorkingSetSelectionDialog.this.buttonWindowSet.setSelection(false);
                WorkingSetSelectionDialog.this.buttonNoSet.setSelection(false);
                WorkingSetSelectionDialog.this.buttonSelectedSets.setSelection(true);
            }
        });
        this.addModifyButtons(viewerComposite);
        this.addSelectionButtons(composite);
        this.listViewer.setInput(Arrays.asList(WorkbenchPlugin.getDefault().getWorkingSetManager().getWorkingSets()));
        List initialElementSelections = this.getInitialElementSelections();
        if (this.multiSelect) {
            this.listViewer.setCheckedElements(initialElementSelections.toArray());
        } else if (!initialElementSelections.isEmpty()) {
            IWorkingSet set = (IWorkingSet)initialElementSelections.get(0);
            if (set instanceof AggregateWorkingSet) {
                AggregateWorkingSet aggregate = (AggregateWorkingSet)set;
                this.listViewer.setCheckedElements((Object[])aggregate.getComponents());
            } else {
                this.listViewer.setCheckedElements(initialElementSelections.toArray());
            }
        }
        this.availableWorkingSetsChanged();
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    private int getInitialRadioSelection() {
        IWorkingSet windowSet = this.workbenchWindow.getActivePage().getAggregateWorkingSet();
        int selectionIndex = this.getSelection() != null && this.getSelection().length > 0 ? (windowSet.equals(this.getSelection()[0]) ? 0 : 2) : 1;
        return selectionIndex;
    }

    protected Control createContents(Composite parent) {
        Control control = super.createContents(parent);
        List selections = this.getInitialElementSelections();
        if (!selections.isEmpty()) {
            this.listViewer.setSelection((ISelection)new StructuredSelection(selections), true);
        }
        this.updateButtonAvailability();
        return control;
    }

    protected List getSelectedWorkingSets() {
        ISelection selection = this.listViewer.getSelection();
        if (selection instanceof IStructuredSelection) {
            return ((IStructuredSelection)selection).toList();
        }
        return null;
    }

    void handleSelectionChanged() {
        this.updateButtonAvailability();
    }

    protected void okPressed() {
        if (this.buttonWindowSet.getSelection()) {
            IWorkingSet[] windowSet = new IWorkingSet[]{this.workbenchWindow.getActivePage().getAggregateWorkingSet()};
            this.setSelection(windowSet);
            this.setResult(Arrays.asList(this.getSelection()));
        } else if (this.buttonNoSet.getSelection()) {
            this.setSelection(new IWorkingSet[0]);
            this.setResult(Arrays.asList(this.getSelection()));
        } else if (this.buttonSelectedSets.getSelection()) {
            Object[] untypedResult = this.listViewer.getCheckedElements();
            IWorkingSet[] typedResult = new IWorkingSet[untypedResult.length];
            System.arraycopy(untypedResult, 0, typedResult, 0, untypedResult.length);
            if (this.multiSelect || typedResult.length <= 1) {
                this.setSelection(typedResult);
                this.setResult(Arrays.asList(typedResult));
            } else {
                String setId = this.getAggregateIdForSets(typedResult);
                IWorkingSetManager workingSetManager = this.workbenchWindow.getWorkbench().getWorkingSetManager();
                IWorkingSet aggregate = workingSetManager.getWorkingSet(setId);
                if (aggregate != null) {
                    workingSetManager.removeWorkingSet(aggregate);
                }
                aggregate = workingSetManager.createAggregateWorkingSet(setId, WorkbenchMessages.WorkbenchPage_workingSet_multi_label, typedResult);
                workingSetManager.addWorkingSet(aggregate);
                this.setSelection(new IWorkingSet[]{aggregate});
                this.setResult(Collections.singletonList(aggregate));
            }
        }
        super.okPressed();
    }

    private String getAggregateIdForSets(IWorkingSet[] typedResult) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Aggregate:");
        int i = 0;
        while (i < typedResult.length) {
            buffer.append(typedResult[i].getName()).append(':');
            ++i;
        }
        return buffer.toString();
    }

    private void restoreAddedWorkingSets() {
        IWorkingSetManager manager = WorkbenchPlugin.getDefault().getWorkingSetManager();
        Iterator iterator = this.getAddedWorkingSets().iterator();
        while (iterator.hasNext()) {
            manager.removeWorkingSet((IWorkingSet)iterator.next());
        }
    }

    private void restoreChangedWorkingSets() {
        Iterator iterator = this.getEditedWorkingSets().keySet().iterator();
        while (iterator.hasNext()) {
            IWorkingSet editedWorkingSet = (IWorkingSet)iterator.next();
            IWorkingSet originalWorkingSet = (IWorkingSet)this.getEditedWorkingSets().get(editedWorkingSet);
            if (!editedWorkingSet.getName().equals(originalWorkingSet.getName())) {
                editedWorkingSet.setName(originalWorkingSet.getName());
            }
            if (editedWorkingSet.getElements().equals(originalWorkingSet.getElements())) continue;
            editedWorkingSet.setElements(originalWorkingSet.getElements());
        }
    }

    private void restoreRemovedWorkingSets() {
        IWorkingSetManager manager = WorkbenchPlugin.getDefault().getWorkingSetManager();
        Iterator iterator = this.getRemovedWorkingSets().iterator();
        while (iterator.hasNext()) {
            manager.addWorkingSet((IWorkingSet)iterator.next());
        }
        iterator = this.getRemovedMRUWorkingSets().iterator();
        while (iterator.hasNext()) {
            manager.addRecentWorkingSet((IWorkingSet)iterator.next());
        }
    }

    public void setSelection(IWorkingSet[] workingSets) {
        super.setSelection(workingSets);
        this.setInitialSelections(workingSets == null ? new Object[]{} : workingSets);
    }

    protected void availableWorkingSetsChanged() {
        this.listViewer.setInput((Object)PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSets());
        super.availableWorkingSetsChanged();
    }

    protected void selectAllSets() {
        this.listViewer.setCheckedElements((Object[])PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSets());
        this.buttonWindowSet.setSelection(false);
        this.buttonNoSet.setSelection(false);
        this.buttonSelectedSets.setSelection(true);
        this.updateButtonAvailability();
    }

    protected void deselectAllSets() {
        this.listViewer.setCheckedElements(new Object[0]);
        this.buttonWindowSet.setSelection(false);
        this.buttonNoSet.setSelection(false);
        this.buttonSelectedSets.setSelection(true);
        this.updateButtonAvailability();
    }
}

