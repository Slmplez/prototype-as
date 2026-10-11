/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.WizardDialog
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.NewWizardNewPage;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardSelectionPage;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

class NewWizardSelectionPage
extends WorkbenchWizardSelectionPage {
    private IWizardCategory wizardCategories;
    private NewWizardNewPage newResourcePage;
    private IWizardDescriptor[] primaryWizards;
    private boolean projectsOnly;
    private boolean canFinishEarly = false;
    private boolean hasPages = true;

    public NewWizardSelectionPage(IWorkbench workbench, IStructuredSelection selection, IWizardCategory root, IWizardDescriptor[] primary, boolean projectsOnly) {
        super("newWizardSelectionPage", workbench, selection, null, "org.eclipse.ui.newWizards");
        this.setTitle(WorkbenchMessages.NewWizardSelectionPage_description);
        this.wizardCategories = root;
        this.primaryWizards = primary;
        this.projectsOnly = projectsOnly;
    }

    public void advanceToNextPageOrFinish() {
        if (this.canFlipToNextPage()) {
            this.getContainer().showPage(this.getNextPage());
        } else if (this.canFinishEarly() && this.getWizard().performFinish()) {
            ((WizardDialog)this.getContainer()).close();
        }
    }

    public void createControl(Composite parent) {
        IDialogSettings settings = this.getDialogSettings();
        this.newResourcePage = new NewWizardNewPage(this, this.wizardCategories, this.primaryWizards, this.projectsOnly);
        this.newResourcePage.setDialogSettings(settings);
        Control control = this.newResourcePage.createControl(parent);
        this.getWorkbench().getHelpSystem().setHelp(control, "org.eclipse.ui.new_wizard_selection_wizard_page_context");
        this.setControl(control);
    }

    protected void saveWidgetValues() {
        this.newResourcePage.saveWidgetValues();
    }

    public boolean canFlipToNextPage() {
        if (this.hasPages) {
            return super.canFlipToNextPage();
        }
        return false;
    }

    public void setHasPages(boolean newValue) {
        this.hasPages = newValue;
    }

    public void setCanFinishEarly(boolean newValue) {
        this.canFinishEarly = newValue;
    }

    public boolean canFinishEarly() {
        return this.canFinishEarly;
    }
}

