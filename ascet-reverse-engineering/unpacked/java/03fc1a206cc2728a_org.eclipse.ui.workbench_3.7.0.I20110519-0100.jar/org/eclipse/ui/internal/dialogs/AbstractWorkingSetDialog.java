/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.WizardDialog
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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.WizardDialog;
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
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.IWorkingSetEditWizard;
import org.eclipse.ui.dialogs.IWorkingSetNewWizard;
import org.eclipse.ui.dialogs.IWorkingSetSelectionDialog;
import org.eclipse.ui.dialogs.SelectionDialog;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkingSet;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;

public abstract class AbstractWorkingSetDialog
extends SelectionDialog
implements IWorkingSetSelectionDialog {
    private static final int ID_NEW = 1025;
    private static final int ID_DETAILS = 1026;
    private static final int ID_REMOVE = 1027;
    private static final int ID_SELECTALL = 1028;
    private static final int ID_DESELECTALL = 1029;
    private Button newButton;
    private Button detailsButton;
    private Button removeButton;
    private Button selectAllButton;
    private Button deselectAllButton;
    private IWorkingSet[] result;
    private List addedWorkingSets;
    private List removedWorkingSets;
    private Map editedWorkingSets;
    private List removedMRUWorkingSets;
    private Set workingSetIds;
    private boolean canEdit;

    protected AbstractWorkingSetDialog(Shell parentShell, String[] workingSetIds, boolean canEdit) {
        super(parentShell);
        if (workingSetIds != null) {
            this.workingSetIds = new HashSet();
            int i = 0;
            while (i < workingSetIds.length) {
                this.workingSetIds.add(workingSetIds[i]);
                ++i;
            }
        }
        this.canEdit = canEdit;
    }

    protected Set getSupportedWorkingSetIds() {
        return this.workingSetIds;
    }

    protected void addModifyButtons(Composite composite) {
        Composite buttonComposite = new Composite(composite, 131072);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        buttonComposite.setLayout((Layout)layout);
        GridData data = new GridData(1026);
        buttonComposite.setLayoutData((Object)data);
        this.newButton = this.createButton(buttonComposite, 1025, WorkbenchMessages.WorkingSetSelectionDialog_newButton_label, false);
        this.newButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                AbstractWorkingSetDialog.this.createWorkingSet();
            }
        });
        if (this.canEdit) {
            this.detailsButton = this.createButton(buttonComposite, 1026, WorkbenchMessages.WorkingSetSelectionDialog_detailsButton_label, false);
            this.detailsButton.setEnabled(false);
            this.detailsButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    AbstractWorkingSetDialog.this.editSelectedWorkingSet();
                }
            });
            this.removeButton = this.createButton(buttonComposite, 1027, WorkbenchMessages.WorkingSetSelectionDialog_removeButton_label, false);
            this.removeButton.setEnabled(false);
            this.removeButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    AbstractWorkingSetDialog.this.removeSelectedWorkingSets();
                }
            });
        }
        layout.numColumns = 1;
    }

    protected void addSelectionButtons(Composite composite) {
        Composite buttonComposite = new Composite(composite, 0);
        GridLayout layout = new GridLayout(2, false);
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        buttonComposite.setLayout((Layout)layout);
        GridData data = new GridData(32);
        buttonComposite.setLayoutData((Object)data);
        this.selectAllButton = this.createButton(buttonComposite, 1028, WorkbenchMessages.SelectionDialog_selectLabel, false);
        this.selectAllButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                AbstractWorkingSetDialog.this.selectAllSets();
            }
        });
        this.deselectAllButton = this.createButton(buttonComposite, 1029, WorkbenchMessages.SelectionDialog_deselectLabel, false);
        this.deselectAllButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                AbstractWorkingSetDialog.this.deselectAllSets();
            }
        });
    }

    protected abstract void selectAllSets();

    protected abstract void deselectAllSets();

    void editSelectedWorkingSet() {
        boolean firstEdit;
        IWorkingSetManager manager = WorkbenchPlugin.getDefault().getWorkingSetManager();
        IWorkingSet editWorkingSet = (IWorkingSet)this.getSelectedWorkingSets().get(0);
        IWorkingSetEditWizard wizard = manager.createWorkingSetEditWizard(editWorkingSet);
        WizardDialog dialog = new WizardDialog(this.getShell(), (IWizard)wizard);
        IWorkingSet originalWorkingSet = (IWorkingSet)this.editedWorkingSets.get(editWorkingSet);
        boolean bl = firstEdit = originalWorkingSet == null;
        if (firstEdit) {
            originalWorkingSet = new WorkingSet(editWorkingSet.getName(), editWorkingSet.getLabel(), editWorkingSet.getElements());
        } else {
            this.editedWorkingSets.remove(editWorkingSet);
        }
        dialog.create();
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.working_set_edit_wizard_context");
        if (dialog.open() == 0) {
            editWorkingSet = wizard.getSelection();
            this.availableWorkingSetsChanged();
            this.updateButtonAvailability();
        }
        this.editedWorkingSets.put(editWorkingSet, originalWorkingSet);
    }

    void createWorkingSet() {
        IWorkingSetManager manager = WorkbenchPlugin.getDefault().getWorkingSetManager();
        String[] ids = null;
        if (this.workingSetIds != null) {
            ids = this.workingSetIds.toArray(new String[this.workingSetIds.size()]);
        }
        IWorkingSetNewWizard wizard = manager.createWorkingSetNewWizard(ids);
        WizardDialog dialog = new WizardDialog(this.getShell(), (IWizard)wizard);
        dialog.create();
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.working_set_new_wizard_context");
        if (dialog.open() == 0) {
            IWorkingSet workingSet = wizard.getSelection();
            manager.addWorkingSet(workingSet);
            this.addedWorkingSets.add(workingSet);
            this.availableWorkingSetsChanged();
        }
    }

    protected abstract List getSelectedWorkingSets();

    protected void availableWorkingSetsChanged() {
        boolean enable;
        boolean bl = enable = PlatformUI.getWorkbench().getWorkingSetManager().getWorkingSets().length > 0;
        if (this.selectAllButton != null && !this.selectAllButton.isDisposed()) {
            this.selectAllButton.setEnabled(enable);
        }
        if (this.deselectAllButton != null && !this.deselectAllButton.isDisposed()) {
            this.deselectAllButton.setEnabled(enable);
        }
    }

    public IWorkingSet[] getSelection() {
        return this.result;
    }

    public void setSelection(IWorkingSet[] selection) {
        this.result = selection;
    }

    public int open() {
        this.addedWorkingSets = new ArrayList();
        this.removedWorkingSets = new ArrayList();
        this.editedWorkingSets = new HashMap();
        this.removedMRUWorkingSets = new ArrayList();
        return super.open();
    }

    protected final List getAddedWorkingSets() {
        return this.addedWorkingSets;
    }

    protected final Map getEditedWorkingSets() {
        return this.editedWorkingSets;
    }

    protected final List getRemovedMRUWorkingSets() {
        return this.removedMRUWorkingSets;
    }

    protected final List getRemovedWorkingSets() {
        return this.removedWorkingSets;
    }

    protected void updateButtonAvailability() {
        boolean hasSelection;
        List selection = this.getSelectedWorkingSets();
        boolean hasSingleSelection = hasSelection = selection != null && !selection.isEmpty();
        WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
        this.newButton.setEnabled(registry.hasNewPageWorkingSetDescriptor());
        if (this.canEdit) {
            this.removeButton.setEnabled(hasSelection);
        }
        IWorkingSet selectedWorkingSet = null;
        if (hasSelection) {
            boolean bl = hasSingleSelection = selection.size() == 1;
            if (hasSingleSelection) {
                selectedWorkingSet = (IWorkingSet)selection.get(0);
            }
        }
        if (this.canEdit) {
            this.detailsButton.setEnabled(hasSingleSelection && selectedWorkingSet.isEditable());
        }
        this.getOkButton().setEnabled(true);
    }

    protected void removeSelectedWorkingSets() {
        List selection = this.getSelectedWorkingSets();
        this.removeSelectedWorkingSets(selection);
    }

    protected void removeSelectedWorkingSets(List selection) {
        IWorkingSetManager manager = WorkbenchPlugin.getDefault().getWorkingSetManager();
        Iterator iter = selection.iterator();
        while (iter.hasNext()) {
            IWorkingSet workingSet = (IWorkingSet)iter.next();
            if (this.getAddedWorkingSets().contains(workingSet)) {
                this.getAddedWorkingSets().remove(workingSet);
            } else {
                IWorkingSet[] recentWorkingSets = manager.getRecentWorkingSets();
                int i = 0;
                while (i < recentWorkingSets.length) {
                    if (workingSet.equals(recentWorkingSets[i])) {
                        this.getRemovedMRUWorkingSets().add(workingSet);
                        break;
                    }
                    ++i;
                }
                this.getRemovedWorkingSets().add(workingSet);
            }
            manager.removeWorkingSet(workingSet);
        }
        this.availableWorkingSetsChanged();
    }
}

