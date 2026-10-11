/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.ImportExportPage;
import org.eclipse.ui.wizards.IWizardCategory;

public class ExportPage
extends ImportExportPage {
    private static final String STORE_SELECTED_EXPORT_WIZARD_ID = "ImportExportPage.STORE_SELECTED_EXPORT_WIZARD_ID";
    private static final String STORE_EXPANDED_EXPORT_CATEGORIES = "ImportExportPage.STORE_EXPANDED_EXPORT_CATEGORIES";
    ImportExportPage.CategorizedWizardSelectionTree exportTree;

    public ExportPage(IWorkbench aWorkbench, IStructuredSelection currentSelection) {
        super(aWorkbench, currentSelection);
    }

    protected void initialize() {
        this.workbench.getHelpSystem().setHelp(this.getControl(), "org.eclipse.ui.export_wizard_selection_wizard_page_context");
    }

    protected Composite createTreeViewer(Composite parent) {
        IWizardCategory root = WorkbenchPlugin.getDefault().getExportWizardRegistry().getRootCategory();
        this.exportTree = new ImportExportPage.CategorizedWizardSelectionTree(this, root, WorkbenchMessages.ExportWizard_selectDestination);
        Composite exportComp = this.exportTree.createControl(parent);
        this.exportTree.getViewer().addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ExportPage.this.listSelectionChanged(event.getSelection());
            }
        });
        this.exportTree.getViewer().addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                ExportPage.this.treeDoubleClicked(event);
            }
        });
        this.setTreeViewer(this.exportTree.getViewer());
        return exportComp;
    }

    public void saveWidgetValues() {
        this.storeExpandedCategories(STORE_EXPANDED_EXPORT_CATEGORIES, this.exportTree.getViewer());
        this.storeSelectedCategoryAndWizard(STORE_SELECTED_EXPORT_WIZARD_ID, this.exportTree.getViewer());
        super.saveWidgetValues();
    }

    protected void restoreWidgetValues() {
        IWizardCategory exportRoot = WorkbenchPlugin.getDefault().getExportWizardRegistry().getRootCategory();
        this.expandPreviouslyExpandedCategories(STORE_EXPANDED_EXPORT_CATEGORIES, exportRoot, this.exportTree.getViewer());
        this.selectPreviouslySelected(STORE_SELECTED_EXPORT_WIZARD_ID, exportRoot, this.exportTree.getViewer());
        super.restoreWidgetValues();
    }

    protected ITriggerPoint getTriggerPoint() {
        return this.getWorkbench().getActivitySupport().getTriggerPointManager().getTriggerPoint("org.eclipse.ui.exportWizards");
    }

    protected void updateMessage() {
        this.setMessage(WorkbenchMessages.ImportExportPage_chooseExportDestination);
        super.updateMessage();
    }
}

