/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.IWizardContainer
 *  org.eclipse.jface.wizard.IWizardContainer2
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardContainer2;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.internal.dialogs.NewWizard;
import org.eclipse.ui.internal.dialogs.NewWizardCollectionComparator;
import org.eclipse.ui.internal.dialogs.NewWizardSelectionPage;
import org.eclipse.ui.internal.dialogs.WizardActivityFilter;
import org.eclipse.ui.internal.dialogs.WizardContentProvider;
import org.eclipse.ui.internal.dialogs.WizardPatternFilter;
import org.eclipse.ui.internal.dialogs.WizardTagFilter;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardNode;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.model.WorkbenchLabelProvider;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

class NewWizardNewPage
implements ISelectionChangedListener {
    private static final String DIALOG_SETTING_SECTION_NAME = "NewWizardSelectionPage.";
    private static final int SIZING_LISTS_HEIGHT = 200;
    private static final int SIZING_VIEWER_WIDTH = 300;
    private static final String STORE_EXPANDED_CATEGORIES_ID = "NewWizardSelectionPage.STORE_EXPANDED_CATEGORIES_ID";
    private static final String STORE_SELECTED_ID = "NewWizardSelectionPage.STORE_SELECTED_ID";
    private NewWizardSelectionPage page;
    private FilteredTree filteredTree;
    private WizardPatternFilter filteredTreeFilter;
    private Hashtable selectedWizards = new Hashtable();
    private IDialogSettings settings;
    private Button showAllCheck;
    private IWizardCategory wizardCategories;
    private IWizardDescriptor[] primaryWizards;
    private CLabel descImageCanvas;
    private Map imageTable = new HashMap();
    private IWizardDescriptor selectedElement;
    private WizardActivityFilter filter = new WizardActivityFilter();
    private boolean needShowAll;
    private boolean projectsOnly;
    private ViewerFilter projectFilter = new WizardTagFilter(new String[]{"project"});

    public NewWizardNewPage(NewWizardSelectionPage mainPage, IWizardCategory wizardCategories, IWizardDescriptor[] primaryWizards, boolean projectsOnly) {
        this.page = mainPage;
        this.wizardCategories = wizardCategories;
        this.primaryWizards = primaryWizards;
        this.projectsOnly = projectsOnly;
        this.trimPrimaryWizards();
        if (this.primaryWizards.length > 0) {
            if (this.allPrimary(wizardCategories)) {
                this.wizardCategories = null;
                this.needShowAll = false;
            } else {
                this.needShowAll = !this.allActivityEnabled(wizardCategories);
            }
        } else {
            this.needShowAll = !this.allActivityEnabled(wizardCategories);
        }
        IWizard wizard = mainPage.getWizard();
        if (wizard instanceof NewWizard && "org.eclipse.ui.Examples".equals(((NewWizard)wizard).getCategoryId())) {
            this.filter.setFilterPrimaryWizards(true);
        }
    }

    private boolean allActivityEnabled(IWizardCategory category) {
        IWizardDescriptor[] wizards = category.getWizards();
        int i = 0;
        while (i < wizards.length) {
            IWizardDescriptor wizard = wizards[i];
            if (WorkbenchActivityHelper.filterItem(wizard)) {
                return false;
            }
            ++i;
        }
        IWizardCategory[] children = category.getCategories();
        int i2 = 0;
        while (i2 < children.length) {
            if (!this.allActivityEnabled(children[i2])) {
                return false;
            }
            ++i2;
        }
        return true;
    }

    private void trimPrimaryWizards() {
        ArrayList<IWizardDescriptor> newPrimaryWizards = new ArrayList<IWizardDescriptor>(this.primaryWizards.length);
        if (this.wizardCategories == null) {
            return;
        }
        int i = 0;
        while (i < this.primaryWizards.length) {
            if (this.wizardCategories.findWizard(this.primaryWizards[i].getId()) != null) {
                newPrimaryWizards.add(this.primaryWizards[i]);
            }
            ++i;
        }
        this.primaryWizards = newPrimaryWizards.toArray(new WorkbenchWizardElement[newPrimaryWizards.size()]);
    }

    private boolean allPrimary(IWizardCategory category) {
        IWizardDescriptor[] wizards = category.getWizards();
        int i = 0;
        while (i < wizards.length) {
            IWizardDescriptor wizard = wizards[i];
            if (!this.isPrimary(wizard)) {
                return false;
            }
            ++i;
        }
        IWizardCategory[] children = category.getCategories();
        int i2 = 0;
        while (i2 < children.length) {
            if (!this.allPrimary(children[i2])) {
                return false;
            }
            ++i2;
        }
        return true;
    }

    private boolean isPrimary(IWizardDescriptor wizard) {
        int j = 0;
        while (j < this.primaryWizards.length) {
            if (this.primaryWizards[j].equals(wizard)) {
                return true;
            }
            ++j;
        }
        return false;
    }

    public void activate() {
        this.page.setDescription(WorkbenchMessages.NewWizardNewPage_description);
    }

    protected Control createControl(Composite parent) {
        Font wizardFont = parent.getFont();
        Composite outerContainer = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        outerContainer.setLayout((Layout)layout);
        Label wizardLabel = new Label(outerContainer, 0);
        GridData data = new GridData(1, 4, false, true);
        outerContainer.setLayoutData((Object)data);
        wizardLabel.setFont(wizardFont);
        wizardLabel.setText(WorkbenchMessages.NewWizardNewPage_wizardsLabel);
        Composite innerContainer = new Composite(outerContainer, 0);
        layout = new GridLayout(2, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        innerContainer.setLayout((Layout)layout);
        innerContainer.setFont(wizardFont);
        data = new GridData(4, 4, true, true);
        innerContainer.setLayoutData((Object)data);
        this.filteredTree = this.createFilteredTree(innerContainer);
        this.createOptionsButtons(innerContainer);
        this.createImage(innerContainer);
        this.updateDescription(null);
        this.restoreWidgetValues();
        return outerContainer;
    }

    protected FilteredTree createFilteredTree(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        composite.setLayout((Layout)layout);
        GridData data = new GridData(4, 4, true, true);
        data.widthHint = 300;
        data.horizontalSpan = 2;
        data.grabExcessHorizontalSpace = true;
        data.grabExcessVerticalSpace = true;
        boolean needsHint = DialogUtil.inRegularFontMode(parent);
        if (needsHint) {
            data.heightHint = 200;
        }
        composite.setLayoutData((Object)data);
        this.filteredTreeFilter = new WizardPatternFilter();
        FilteredTree filterTree = new FilteredTree(composite, 2820, this.filteredTreeFilter, true);
        final TreeViewer treeViewer = filterTree.getViewer();
        treeViewer.setContentProvider((IContentProvider)new WizardContentProvider());
        treeViewer.setLabelProvider((IBaseLabelProvider)new WorkbenchLabelProvider());
        treeViewer.setComparator((ViewerComparator)NewWizardCollectionComparator.INSTANCE);
        treeViewer.addSelectionChangedListener((ISelectionChangedListener)this);
        ArrayList<Object> inputArray = new ArrayList<Object>();
        int i = 0;
        while (i < this.primaryWizards.length) {
            inputArray.add(this.primaryWizards[i]);
            ++i;
        }
        boolean expandTop = false;
        if (this.wizardCategories != null) {
            if (this.wizardCategories.getParent() == null) {
                IWizardCategory[] children = this.wizardCategories.getCategories();
                int i2 = 0;
                while (i2 < children.length) {
                    inputArray.add(children[i2]);
                    ++i2;
                }
            } else {
                expandTop = true;
                inputArray.add(this.wizardCategories);
            }
        }
        if (expandTop) {
            treeViewer.setAutoExpandLevel(2);
        }
        AdaptableList input = new AdaptableList(inputArray);
        treeViewer.setInput((Object)input);
        filterTree.setBackground(parent.getDisplay().getSystemColor(22));
        treeViewer.getTree().setFont(parent.getFont());
        treeViewer.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                IStructuredSelection s = (IStructuredSelection)event.getSelection();
                NewWizardNewPage.this.selectionChanged(new SelectionChangedEvent((ISelectionProvider)event.getViewer(), (ISelection)s));
                Object element = s.getFirstElement();
                if (treeViewer.isExpandable(element)) {
                    treeViewer.setExpandedState(element, !treeViewer.getExpandedState(element));
                } else if (element instanceof WorkbenchWizardElement) {
                    NewWizardNewPage.this.page.advanceToNextPageOrFinish();
                }
            }
        });
        treeViewer.addFilter((ViewerFilter)this.filter);
        if (this.projectsOnly) {
            treeViewer.addFilter(this.projectFilter);
        }
        Dialog.applyDialogFont((Control)filterTree);
        return filterTree;
    }

    private void createOptionsButtons(Composite parent) {
        if (this.needShowAll) {
            this.showAllCheck = new Button(parent, 32);
            GridData data = new GridData();
            this.showAllCheck.setLayoutData((Object)data);
            this.showAllCheck.setFont(parent.getFont());
            this.showAllCheck.setText(WorkbenchMessages.NewWizardNewPage_showAll);
            this.showAllCheck.setSelection(false);
            this.showAllCheck.addSelectionListener((SelectionListener)new SelectionAdapter(){
                private Object[] delta = new Object[0];

                public void widgetSelected(SelectionEvent e) {
                    boolean showAll = NewWizardNewPage.this.showAllCheck.getSelection();
                    if (showAll) {
                        NewWizardNewPage.this.filteredTree.getViewer().getControl().setRedraw(false);
                    } else {
                        this.delta = NewWizardNewPage.this.filteredTree.getViewer().getExpandedElements();
                    }
                    try {
                        if (showAll) {
                            NewWizardNewPage.this.filteredTree.getViewer().resetFilters();
                            NewWizardNewPage.this.filteredTree.getViewer().addFilter((ViewerFilter)NewWizardNewPage.this.filteredTreeFilter);
                            if (NewWizardNewPage.this.projectsOnly) {
                                NewWizardNewPage.this.filteredTree.getViewer().addFilter(NewWizardNewPage.this.projectFilter);
                            }
                            Object[] currentExpanded = NewWizardNewPage.this.filteredTree.getViewer().getExpandedElements();
                            Object[] expanded = new Object[this.delta.length + currentExpanded.length];
                            System.arraycopy(currentExpanded, 0, expanded, 0, currentExpanded.length);
                            System.arraycopy(this.delta, 0, expanded, currentExpanded.length, this.delta.length);
                            NewWizardNewPage.this.filteredTree.getViewer().setExpandedElements(expanded);
                        } else {
                            NewWizardNewPage.this.filteredTree.getViewer().addFilter((ViewerFilter)NewWizardNewPage.this.filter);
                            if (NewWizardNewPage.this.projectsOnly) {
                                NewWizardNewPage.this.filteredTree.getViewer().addFilter(NewWizardNewPage.this.projectFilter);
                            }
                        }
                        NewWizardNewPage.this.filteredTree.getViewer().refresh(false);
                        if (!showAll) {
                            Object[] newExpanded = NewWizardNewPage.this.filteredTree.getViewer().getExpandedElements();
                            ArrayList<Object> deltaList = new ArrayList<Object>(Arrays.asList(this.delta));
                            deltaList.removeAll(Arrays.asList(newExpanded));
                        }
                    }
                    finally {
                        if (showAll) {
                            NewWizardNewPage.this.filteredTree.getViewer().getControl().setRedraw(true);
                        }
                    }
                }
            });
        }
    }

    private void createImage(Composite parent) {
        this.descImageCanvas = new CLabel(parent, 0);
        GridData data = new GridData(34);
        data.widthHint = 0;
        data.heightHint = 0;
        this.descImageCanvas.setLayoutData((Object)data);
        this.descImageCanvas.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                Iterator i = NewWizardNewPage.this.imageTable.values().iterator();
                while (i.hasNext()) {
                    ((Image)i.next()).dispose();
                }
                NewWizardNewPage.this.imageTable.clear();
            }
        });
    }

    protected void expandPreviouslyExpandedCategories() {
        String[] expandedCategoryPaths = this.settings.getArray(STORE_EXPANDED_CATEGORIES_ID);
        if (expandedCategoryPaths == null || expandedCategoryPaths.length == 0) {
            return;
        }
        ArrayList<IWizardCategory> categoriesToExpand = new ArrayList<IWizardCategory>(expandedCategoryPaths.length);
        if (this.wizardCategories != null) {
            int i = 0;
            while (i < expandedCategoryPaths.length) {
                IWizardCategory category = this.wizardCategories.findCategory((IPath)new Path(expandedCategoryPaths[i]));
                if (category != null) {
                    categoriesToExpand.add(category);
                }
                ++i;
            }
        }
        if (!categoriesToExpand.isEmpty()) {
            this.filteredTree.getViewer().setExpandedElements(categoriesToExpand.toArray());
        }
    }

    protected Object getSingleSelection(IStructuredSelection selection) {
        return selection.size() == 1 ? selection.getFirstElement() : null;
    }

    protected void restoreWidgetValues() {
        this.expandPreviouslyExpandedCategories();
        this.selectPreviouslySelected();
    }

    public void saveWidgetValues() {
        this.storeExpandedCategories();
        this.storeSelectedCategoryAndWizard();
    }

    public void selectionChanged(SelectionChangedEvent selectionEvent) {
        this.page.setErrorMessage(null);
        this.page.setMessage(null);
        Object selectedObject = this.getSingleSelection((IStructuredSelection)selectionEvent.getSelection());
        if (selectedObject instanceof IWizardDescriptor) {
            if (selectedObject == this.selectedElement) {
                return;
            }
            this.updateWizardSelection((IWizardDescriptor)selectedObject);
        } else {
            this.selectedElement = null;
            this.page.setHasPages(false);
            this.page.setCanFinishEarly(false);
            this.page.selectWizardNode(null);
            this.updateDescription(null);
        }
    }

    protected void selectPreviouslySelected() {
        String selectedId = this.settings.get(STORE_SELECTED_ID);
        if (selectedId == null) {
            return;
        }
        if (this.wizardCategories == null) {
            return;
        }
        Object selected = this.wizardCategories.findCategory((IPath)new Path(selectedId));
        if (selected == null && (selected = this.wizardCategories.findWizard(selectedId)) == null) {
            return;
        }
        final StructuredSelection selection = new StructuredSelection(selected);
        this.filteredTree.getViewer().getControl().getDisplay().asyncExec(new Runnable(){

            public void run() {
                NewWizardNewPage.this.filteredTree.getViewer().setSelection((ISelection)selection, true);
            }
        });
    }

    public void setDialogSettings(IDialogSettings settings) {
        this.settings = settings;
    }

    protected void storeExpandedCategories() {
        Object[] expandedElements = this.filteredTree.getViewer().getExpandedElements();
        ArrayList<String> expandedElementPaths = new ArrayList<String>(expandedElements.length);
        int i = 0;
        while (i < expandedElements.length) {
            if (expandedElements[i] instanceof IWizardCategory) {
                expandedElementPaths.add(((IWizardCategory)expandedElements[i]).getPath().toString());
            }
            ++i;
        }
        this.settings.put(STORE_EXPANDED_CATEGORIES_ID, expandedElementPaths.toArray(new String[expandedElementPaths.size()]));
    }

    protected void storeSelectedCategoryAndWizard() {
        Object selected = this.getSingleSelection((IStructuredSelection)this.filteredTree.getViewer().getSelection());
        if (selected != null) {
            if (selected instanceof IWizardCategory) {
                this.settings.put(STORE_SELECTED_ID, ((IWizardCategory)selected).getPath().toString());
            } else {
                this.settings.put(STORE_SELECTED_ID, ((IWizardDescriptor)selected).getId());
            }
        }
    }

    private void updateDescription(IWizardDescriptor selectedObject) {
        String string = "";
        if (selectedObject != null) {
            string = selectedObject.getDescription();
        }
        this.page.setDescription(string);
        if (this.hasImage(selectedObject)) {
            ImageDescriptor descriptor = null;
            if (selectedObject != null) {
                descriptor = selectedObject.getDescriptionImage();
            }
            if (descriptor != null) {
                GridData data = (GridData)this.descImageCanvas.getLayoutData();
                data.widthHint = -1;
                data.heightHint = -1;
                Image image = (Image)this.imageTable.get(descriptor);
                if (image == null) {
                    image = descriptor.createImage(false);
                    this.imageTable.put(descriptor, image);
                }
                this.descImageCanvas.setImage(image);
            }
        } else {
            GridData data = (GridData)this.descImageCanvas.getLayoutData();
            data.widthHint = 0;
            data.heightHint = 0;
            this.descImageCanvas.setImage(null);
        }
        this.descImageCanvas.getParent().layout(true);
        this.filteredTree.getViewer().getTree().showSelection();
        IWizardContainer container = this.page.getWizard().getContainer();
        if (container instanceof IWizardContainer2) {
            ((IWizardContainer2)container).updateSize();
        }
    }

    private boolean hasImage(IWizardDescriptor selectedObject) {
        if (selectedObject == null) {
            return false;
        }
        return selectedObject.getDescriptionImage() != null;
    }

    private void updateWizardSelection(IWizardDescriptor selectedObject) {
        WorkbenchWizardNode selectedNode;
        this.selectedElement = selectedObject;
        if (this.selectedWizards.containsKey(selectedObject)) {
            selectedNode = (WorkbenchWizardNode)this.selectedWizards.get(selectedObject);
        } else {
            selectedNode = new WorkbenchWizardNode(this.page, selectedObject){

                public IWorkbenchWizard createWizard() throws CoreException {
                    return this.wizardElement.createWizard();
                }
            };
            this.selectedWizards.put(selectedObject, selectedNode);
        }
        this.page.setCanFinishEarly(selectedObject.canFinishEarly());
        this.page.setHasPages(selectedObject.hasPages());
        this.page.selectWizardNode(selectedNode);
        this.updateDescription(selectedObject);
    }
}

