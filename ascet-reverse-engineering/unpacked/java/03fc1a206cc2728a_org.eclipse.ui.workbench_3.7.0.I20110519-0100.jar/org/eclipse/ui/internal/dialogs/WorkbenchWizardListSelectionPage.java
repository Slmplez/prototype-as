/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogSettings
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
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.wizard.IWizardNode
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.dialogs.IDialogSettings;
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
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.wizard.IWizardNode;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.internal.dialogs.WizardContentProvider;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardSelectionPage;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.model.WorkbenchLabelProvider;
import org.eclipse.ui.model.WorkbenchViewerComparator;

public abstract class WorkbenchWizardListSelectionPage
extends WorkbenchWizardSelectionPage
implements ISelectionChangedListener,
IDoubleClickListener {
    private static final String DIALOG_SETTING_SECTION_NAME = "WizardListSelectionPage.";
    private static final int SIZING_LISTS_HEIGHT = 200;
    private static final String STORE_SELECTED_WIZARD_ID = "WizardListSelectionPage.STORE_SELECTED_WIZARD_ID";
    private TableViewer viewer;
    private String message;

    protected WorkbenchWizardListSelectionPage(IWorkbench aWorkbench, IStructuredSelection currentSelection, AdaptableList wizardElements, String message, String triggerPointId) {
        super("singleWizardSelectionPage", aWorkbench, currentSelection, wizardElements, triggerPointId);
        this.setDescription(WorkbenchMessages.WizardList_description);
        this.message = message;
    }

    public void createControl(Composite parent) {
        Font font = parent.getFont();
        Composite outerContainer = new Composite(parent, 0);
        outerContainer.setLayout((Layout)new GridLayout());
        outerContainer.setLayoutData((Object)new GridData(272));
        outerContainer.setFont(font);
        Label messageLabel = new Label(outerContainer, 0);
        messageLabel.setText(this.message);
        messageLabel.setFont(font);
        this.createViewer(outerContainer);
        this.layoutTopControl(this.viewer.getControl());
        this.restoreWidgetValues();
        this.setControl((Control)outerContainer);
    }

    private void createViewer(Composite parent) {
        Table table = new Table(parent, 2048);
        table.setFont(parent.getFont());
        this.viewer = new TableViewer(table);
        this.viewer.setContentProvider((IContentProvider)new WizardContentProvider());
        this.viewer.setLabelProvider((IBaseLabelProvider)new WorkbenchLabelProvider());
        this.viewer.setComparator((ViewerComparator)new WorkbenchViewerComparator());
        this.viewer.addSelectionChangedListener((ISelectionChangedListener)this);
        this.viewer.addDoubleClickListener((IDoubleClickListener)this);
        this.viewer.setInput((Object)this.wizardElements);
    }

    protected abstract IWizardNode createWizardNode(WorkbenchWizardElement var1);

    public void doubleClick(DoubleClickEvent event) {
        this.selectionChanged(new SelectionChangedEvent((ISelectionProvider)event.getViewer(), event.getViewer().getSelection()));
        this.getContainer().showPage(this.getNextPage());
    }

    private void layoutTopControl(Control control) {
        GridData data = new GridData(1808);
        int availableRows = DialogUtil.availableRows(control.getParent());
        data.heightHint = availableRows > 50 ? 200 : availableRows * 3;
        control.setLayoutData((Object)data);
    }

    private void restoreWidgetValues() {
        IDialogSettings settings = this.getDialogSettings();
        if (settings == null) {
            return;
        }
        String wizardId = settings.get(STORE_SELECTED_WIZARD_ID);
        WorkbenchWizardElement wizard = this.findWizard(wizardId);
        if (wizard == null) {
            return;
        }
        StructuredSelection selection = new StructuredSelection((Object)wizard);
        this.viewer.setSelection((ISelection)selection);
    }

    public void saveWidgetValues() {
        IStructuredSelection sel = (IStructuredSelection)this.viewer.getSelection();
        if (sel.size() > 0) {
            WorkbenchWizardElement selectedWizard = (WorkbenchWizardElement)sel.getFirstElement();
            this.getDialogSettings().put(STORE_SELECTED_WIZARD_ID, selectedWizard.getId());
        }
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.setErrorMessage(null);
        IStructuredSelection selection = (IStructuredSelection)event.getSelection();
        WorkbenchWizardElement currentWizardSelection = (WorkbenchWizardElement)selection.getFirstElement();
        if (currentWizardSelection == null) {
            this.setMessage(null);
            this.setSelectedNode(null);
            return;
        }
        this.setSelectedNode(this.createWizardNode(currentWizardSelection));
        this.setMessage(currentWizardSelection.getDescription());
    }
}

