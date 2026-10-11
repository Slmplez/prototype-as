/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.jface.wizard.IWizardNode
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.wizard.IWizardNode;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.DataTransferWizardCollectionComparator;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.internal.dialogs.WizardActivityFilter;
import org.eclipse.ui.internal.dialogs.WizardContentProvider;
import org.eclipse.ui.internal.dialogs.WizardPatternFilter;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardNode;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardSelectionPage;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.model.WorkbenchLabelProvider;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public abstract class ImportExportPage
extends WorkbenchWizardSelectionPage {
    protected static final String DIALOG_SETTING_SECTION_NAME = "ImportExportPage.";
    private TreeViewer treeViewer;

    protected ImportExportPage(IWorkbench aWorkbench, IStructuredSelection currentSelection) {
        super("importExportPage", aWorkbench, currentSelection, null, null);
        this.setTitle(WorkbenchMessages.Select);
    }

    public void createControl(Composite parent) {
        Font font = parent.getFont();
        Composite outerContainer = new Composite(parent, 0);
        outerContainer.setLayout((Layout)new GridLayout());
        outerContainer.setLayoutData((Object)new GridData(1808));
        outerContainer.setFont(font);
        Composite comp = this.createTreeViewer(outerContainer);
        Dialog.applyDialogFont((Control)comp);
        this.restoreWidgetValues();
        this.setControl((Control)outerContainer);
        this.initialize();
    }

    protected abstract Composite createTreeViewer(Composite var1);

    protected void treeDoubleClicked(DoubleClickEvent event) {
        ISelection selection = event.getViewer().getSelection();
        IStructuredSelection ss = (IStructuredSelection)selection;
        this.listSelectionChanged((ISelection)ss);
        Object element = ss.getFirstElement();
        TreeViewer v = (TreeViewer)event.getViewer();
        if (v.isExpandable(element)) {
            v.setExpandedState(element, !v.getExpandedState(element));
        } else if (element instanceof WorkbenchWizardElement && this.canFlipToNextPage()) {
            this.getContainer().showPage(this.getNextPage());
            return;
        }
        this.getContainer().showPage(this.getNextPage());
    }

    private void updateSelectedNode(WorkbenchWizardElement wizardElement) {
        this.setErrorMessage(null);
        if (wizardElement == null) {
            this.updateMessage();
            this.setSelectedNode(null);
            return;
        }
        this.setSelectedNode(this.createWizardNode(wizardElement));
        this.setMessage(wizardElement.getDescription());
    }

    protected void updateMessage() {
        TreeViewer viewer = this.getTreeViewer();
        if (viewer != null) {
            ISelection selection = viewer.getSelection();
            IStructuredSelection ss = (IStructuredSelection)selection;
            Object sel = ss.getFirstElement();
            if (sel instanceof WorkbenchWizardElement) {
                this.updateSelectedNode((WorkbenchWizardElement)sel);
            } else {
                this.setSelectedNode(null);
            }
        } else {
            this.setMessage(null);
        }
    }

    protected void listSelectionChanged(ISelection selection) {
        this.setErrorMessage(null);
        IStructuredSelection ss = (IStructuredSelection)selection;
        Object sel = ss.getFirstElement();
        if (sel instanceof WorkbenchWizardElement) {
            WorkbenchWizardElement currentWizardSelection = (WorkbenchWizardElement)sel;
            this.updateSelectedNode(currentWizardSelection);
        } else {
            this.updateSelectedNode(null);
        }
    }

    private IWizardNode createWizardNode(IWizardDescriptor element) {
        return new WorkbenchWizardNode(this, element){

            public IWorkbenchWizard createWizard() throws CoreException {
                return this.wizardElement.createWizard();
            }
        };
    }

    protected void restoreWidgetValues() {
        this.updateMessage();
    }

    protected void expandPreviouslyExpandedCategories(String setting, IWizardCategory wizardCategories, TreeViewer viewer) {
        String[] expandedCategoryPaths = this.getDialogSettings().getArray(setting);
        if (expandedCategoryPaths == null || expandedCategoryPaths.length == 0) {
            return;
        }
        ArrayList<IWizardCategory> categoriesToExpand = new ArrayList<IWizardCategory>(expandedCategoryPaths.length);
        if (wizardCategories != null) {
            int i = 0;
            while (i < expandedCategoryPaths.length) {
                IWizardCategory category = wizardCategories.findCategory((IPath)new Path(expandedCategoryPaths[i]));
                if (category != null) {
                    categoriesToExpand.add(category);
                }
                ++i;
            }
        }
        if (!categoriesToExpand.isEmpty()) {
            viewer.setExpandedElements(categoriesToExpand.toArray());
        }
    }

    protected void selectPreviouslySelected(String setting, IWizardCategory wizardCategories, TreeViewer viewer) {
        String selectedId = this.getDialogSettings().get(setting);
        if (selectedId == null) {
            return;
        }
        if (wizardCategories == null) {
            return;
        }
        Object selected = wizardCategories.findCategory((IPath)new Path(selectedId));
        if (selected == null && (selected = wizardCategories.findWizard(selectedId)) == null) {
            return;
        }
        viewer.setSelection((ISelection)new StructuredSelection(selected), true);
    }

    protected void storeExpandedCategories(String setting, TreeViewer viewer) {
        Object[] expandedElements = viewer.getExpandedElements();
        ArrayList<String> expandedElementPaths = new ArrayList<String>(expandedElements.length);
        int i = 0;
        while (i < expandedElements.length) {
            if (expandedElements[i] instanceof IWizardCategory) {
                expandedElementPaths.add(((IWizardCategory)expandedElements[i]).getPath().toString());
            }
            ++i;
        }
        this.getDialogSettings().put(setting, expandedElementPaths.toArray(new String[expandedElementPaths.size()]));
    }

    protected void storeSelectedCategoryAndWizard(String setting, TreeViewer viewer) {
        Object selected = ((IStructuredSelection)viewer.getSelection()).getFirstElement();
        if (selected != null) {
            if (selected instanceof IWizardCategory) {
                this.getDialogSettings().put(setting, ((IWizardCategory)selected).getPath().toString());
            } else {
                this.getDialogSettings().put(setting, ((IWizardDescriptor)selected).getId());
            }
        }
    }

    public void saveWidgetValues() {
    }

    public IWizardPage getNextPage() {
        ITriggerPoint triggerPoint = this.getTriggerPoint();
        if (triggerPoint == null || WorkbenchActivityHelper.allowUseOf(triggerPoint, this.getSelectedNode())) {
            return super.getNextPage();
        }
        return null;
    }

    protected ITriggerPoint getTriggerPoint() {
        return null;
    }

    protected void setTreeViewer(TreeViewer viewer) {
        this.treeViewer = viewer;
    }

    protected TreeViewer getTreeViewer() {
        return this.treeViewer;
    }

    protected void initialize() {
    }

    protected class CategorizedWizardSelectionTree {
        private static final int SIZING_LISTS_HEIGHT = 200;
        private IWizardCategory wizardCategories;
        private String message;
        private TreeViewer viewer;

        protected CategorizedWizardSelectionTree(IWizardCategory categories, String msg) {
            this.wizardCategories = categories;
            this.message = msg;
        }

        protected Composite createControl(Composite parent) {
            Font font = parent.getFont();
            Composite outerContainer = new Composite(parent, 0);
            outerContainer.setLayout((Layout)new GridLayout());
            outerContainer.setLayoutData((Object)new GridData(1808));
            outerContainer.setFont(font);
            Label messageLabel = new Label(outerContainer, 0);
            if (this.message != null) {
                messageLabel.setText(this.message);
            }
            messageLabel.setFont(font);
            this.createFilteredTree(outerContainer);
            this.layoutTopControl(this.viewer.getControl());
            return outerContainer;
        }

        private void createFilteredTree(Composite parent) {
            FilteredTree filteredTree = new FilteredTree(parent, 2820, new WizardPatternFilter(), true);
            this.viewer = filteredTree.getViewer();
            filteredTree.setFont(parent.getFont());
            this.viewer.setContentProvider((IContentProvider)new WizardContentProvider());
            this.viewer.setLabelProvider((IBaseLabelProvider)new WorkbenchLabelProvider());
            this.viewer.setComparator((ViewerComparator)DataTransferWizardCollectionComparator.INSTANCE);
            ArrayList<IWizardCategory> inputArray = new ArrayList<IWizardCategory>();
            boolean expandTop = false;
            if (this.wizardCategories != null) {
                if (this.wizardCategories.getParent() == null) {
                    IWizardCategory[] children = this.wizardCategories.getCategories();
                    int i = 0;
                    while (i < children.length) {
                        inputArray.add(children[i]);
                        ++i;
                    }
                } else {
                    expandTop = true;
                    inputArray.add(this.wizardCategories);
                }
            }
            if (expandTop) {
                this.viewer.setAutoExpandLevel(2);
            }
            AdaptableList input = new AdaptableList(inputArray);
            this.viewer.addFilter((ViewerFilter)new WizardActivityFilter());
            this.viewer.setInput((Object)input);
        }

        protected TreeViewer getViewer() {
            return this.viewer;
        }

        private void layoutTopControl(Control control) {
            GridData data = new GridData(1808);
            int availableRows = DialogUtil.availableRows(control.getParent());
            data.heightHint = availableRows > 50 ? 200 : availableRows * 3;
            control.setLayoutData((Object)data);
        }
    }
}

