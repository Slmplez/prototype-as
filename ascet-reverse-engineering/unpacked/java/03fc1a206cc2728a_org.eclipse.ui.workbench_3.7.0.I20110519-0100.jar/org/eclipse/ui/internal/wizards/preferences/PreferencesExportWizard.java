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
import org.eclipse.ui.IExportWizard;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.wizards.preferences.PreferencesMessages;
import org.eclipse.ui.internal.wizards.preferences.WizardPreferencesExportPage1;

public class PreferencesExportWizard
extends Wizard
implements IExportWizard {
    private WizardPreferencesExportPage1 mainPage;

    public PreferencesExportWizard() {
        IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = workbenchSettings.getSection("PreferencesExportWizard");
        if (section == null) {
            section = workbenchSettings.addNewSection("PreferencesExportWizard");
        }
        this.setDialogSettings(section);
    }

    public void addPages() {
        super.addPages();
        this.mainPage = new WizardPreferencesExportPage1();
        this.addPage((IWizardPage)this.mainPage);
    }

    public void init(IWorkbench workbench, IStructuredSelection currentSelection) {
        this.setWindowTitle(PreferencesMessages.PreferencesExportWizard_export);
        this.setDefaultPageImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_WIZBAN_EXPORT_PREF_WIZ"));
        this.setNeedsProgressMonitor(true);
    }

    public boolean performFinish() {
        return this.mainPage.finish();
    }
}

