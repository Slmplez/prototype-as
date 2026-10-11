/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.Wizard
 */
package org.eclipse.ui.internal.wizards.preferences;

import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.ui.IImportWizard;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.wizards.preferences.PreferencesMessages;
import org.eclipse.ui.internal.wizards.preferences.WizardPreferencesImportPage1;

public class PreferencesImportWizard
extends Wizard
implements IImportWizard {
    private WizardPreferencesImportPage1 mainPage;

    public PreferencesImportWizard() {
        IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = workbenchSettings.getSection("PreferencesImportWizard");
        if (section == null) {
            section = workbenchSettings.addNewSection("PreferencesImportWizard");
        }
        this.setDialogSettings(section);
    }

    public void addPages() {
        super.addPages();
        this.mainPage = new WizardPreferencesImportPage1();
        this.addPage((IWizardPage)this.mainPage);
    }

    public void init(IWorkbench workbench, IStructuredSelection currentSelection) {
        this.setWindowTitle(PreferencesMessages.PreferencesImportWizard_import);
        this.setDefaultPageImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_WIZBAN_IMPORT_PREF_WIZ"));
        this.setNeedsProgressMonitor(true);
    }

    public boolean performFinish() {
        return this.mainPage.finish();
    }
}

