/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.AbstractWorkingSetDialog;
import org.eclipse.ui.internal.dialogs.WorkingSetFilter;
import org.eclipse.ui.internal.dialogs.WorkingSetLabelProvider;

public class SimpleWorkingSetSelectionDialog
extends AbstractWorkingSetDialog {
    private static final int SIZING_SELECTION_WIDGET_HEIGHT = 200;
    private static final int SIZING_SELECTION_WIDGET_WIDTH = 50;
    private CheckboxTableViewer viewer;
    private IWorkingSet[] initialSelection;

    public SimpleWorkingSetSelectionDialog(Shell shell, String[] workingSetTypeIds, IWorkingSet[] selectedWorkingSets, boolean canEdit) {
        super(shell, workingSetTypeIds, canEdit);
        this.initialSelection = selectedWorkingSets;
        this.setTitle(WorkbenchMessages.WorkingSetSelectionDialog_title_multiSelect);
        this.setMessage(WorkbenchMessages.WorkingSetSelectionDialog_message_multiSelect);
    }

    protected Control createDialogArea(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        Composite composite = (Composite)super.createDialogArea(parent);
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
        this.viewer = CheckboxTableViewer.newCheckList((Composite)viewerComposite, (int)2048);
        this.viewer.getControl().setLayoutData((Object)new GridData(1808));
        this.viewer.setLabelProvider((IBaseLabelProvider)new WorkingSetLabelProvider());
        this.viewer.setContentProvider((IContentProvider)new ArrayContentProvider());
        this.viewer.addFilter((ViewerFilter)new WorkingSetFilter(null));
        this.viewer.setInput((Object)PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSets());
        this.viewer.setFilters(new ViewerFilter[]{new Filter()});
        this.viewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                SimpleWorkingSetSelectionDialog.this.handleSelectionChanged();
            }
        });
        this.viewer.setCheckedElements((Object[])this.initialSelection);
        data = new GridData(1808);
        data.heightHint = 200;
        data.widthHint = 50;
        this.viewer.getControl().setLayoutData((Object)data);
        this.addModifyButtons(viewerComposite);
        this.addSelectionButtons(composite);
        this.availableWorkingSetsChanged();
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    protected void okPressed() {
        Object[] checked = this.viewer.getCheckedElements();
        IWorkingSet[] workingSets = new IWorkingSet[checked.length];
        System.arraycopy(checked, 0, workingSets, 0, checked.length);
        this.setSelection(workingSets);
        super.okPressed();
    }

    protected List getSelectedWorkingSets() {
        ISelection selection = this.viewer.getSelection();
        if (selection instanceof IStructuredSelection) {
            return ((IStructuredSelection)selection).toList();
        }
        return null;
    }

    protected void availableWorkingSetsChanged() {
        this.viewer.setInput((Object)PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSets());
        super.availableWorkingSetsChanged();
    }

    void handleSelectionChanged() {
        this.updateButtonAvailability();
    }

    protected void selectAllSets() {
        this.viewer.setCheckedElements((Object[])PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSets());
        this.updateButtonAvailability();
    }

    protected void deselectAllSets() {
        this.viewer.setCheckedElements(new Object[0]);
        this.updateButtonAvailability();
    }

    private class Filter
    extends ViewerFilter {
        private Filter() {
        }

        public boolean select(Viewer viewer, Object parentElement, Object element) {
            return this.isCompatible((IWorkingSet)element);
        }

        private boolean isCompatible(IWorkingSet set) {
            if (set.isAggregateWorkingSet()) {
                return false;
            }
            if (!set.isVisible()) {
                return false;
            }
            if (!set.isEditable()) {
                return false;
            }
            Set workingSetTypeIds = SimpleWorkingSetSelectionDialog.this.getSupportedWorkingSetIds();
            if (workingSetTypeIds == null) {
                return true;
            }
            Iterator i = workingSetTypeIds.iterator();
            while (i.hasNext()) {
                String workingSetTypeId = (String)i.next();
                if (!workingSetTypeId.equals(set.getId())) continue;
                return true;
            }
            return false;
        }
    }
}

