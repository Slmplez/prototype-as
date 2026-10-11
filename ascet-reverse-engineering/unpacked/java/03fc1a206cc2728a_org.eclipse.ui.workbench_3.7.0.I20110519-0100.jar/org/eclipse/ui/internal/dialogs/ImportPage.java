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

public class ImportPage
extends ImportExportPage {
    private static final String STORE_SELECTED_IMPORT_WIZARD_ID = "ImportExportPage.STORE_SELECTED_IMPORT_WIZARD_ID";
    private static final String STORE_EXPANDED_IMPORT_CATEGORIES = "ImportExportPage.STORE_EXPANDED_IMPORT_CATEGORIES";
    protected ImportExportPage.CategorizedWizardSelectionTree importTree;

    public ImportPage(IWorkbench aWorkbench, IStructuredSelection currentSelection) {
        super(aWorkbench, currentSelection);
    }

    protected void initialize() {
        this.workbench.getHelpSystem().setHelp(this.getControl(), "org.eclipse.ui.import_wizard_selection_wizard_page_context");
    }

    protected Composite createTreeViewer(Composite parent) {
        IWizardCategory root = WorkbenchPlugin.getDefault().getImportWizardRegistry().getRootCategory();
        this.importTree = new ImportExportPage.CategorizedWizardSelectionTree(root, WorkbenchMessages.ImportWizard_selectSource);
        Composite importComp = this.importTree.createControl(parent);
        this.importTree.getViewer().addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                ImportPage.this.listSelectionChanged(event.getSelection());
            }
        });
        this.importTree.getViewer().addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                ImportPage.this.treeDoubleClicked(event);
            }
        });
        this.setTreeViewer(this.importTree.getViewer());
        return importComp;
    }

    public void saveWidgetValues() {
        this.storeExpandedCategories(STORE_EXPANDED_IMPORT_CATEGORIES, this.importTree.getViewer());
        this.storeSelectedCategoryAndWizard(STORE_SELECTED_IMPORT_WIZARD_ID, this.importTree.getViewer());
        super.saveWidgetValues();
    }

    protected void restoreWidgetValues() {
        IWizardCategory importRoot = WorkbenchPlugin.getDefault().getImportWizardRegistry().getRootCategory();
        this.expandPreviouslyExpandedCategories(STORE_EXPANDED_IMPORT_CATEGORIES, importRoot, this.importTree.getViewer());
        this.selectPreviouslySelected(STORE_SELECTED_IMPORT_WIZARD_ID, importRoot, this.importTree.getViewer());
        super.restoreWidgetValues();
    }

    protected ITriggerPoint getTriggerPoint() {
        return this.getWorkbench().getActivitySupport().getTriggerPointManager().getTriggerPoint("org.eclipse.ui.importWizards");
    }

    protected void updateMessage() {
        this.setMessage(WorkbenchMessages.ImportExportPage_chooseImportSource);
        super.updateMessage();
    }
}

