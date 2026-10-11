/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.Wizard
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.ExportPage;
import org.eclipse.ui.internal.dialogs.ImportExportPage;
import org.eclipse.ui.internal.dialogs.ImportPage;

public class ImportExportWizard
extends Wizard {
    public static final String IMPORT = "import";
    public static final String EXPORT = "export";
    private IWorkbench workbench;
    private IStructuredSelection selection;
    private ImportExportPage importExportPage;
    private String page = null;

    public ImportExportWizard(String pageId) {
        this.page = pageId;
    }

    public boolean performFinish() {
        this.importExportPage.saveWidgetValues();
        return true;
    }

    public void addPages() {
        if (this.page.equals(IMPORT)) {
            this.importExportPage = new ImportPage(this.workbench, this.selection);
        } else if (this.page.equals(EXPORT)) {
            this.importExportPage = new ExportPage(this.workbench, this.selection);
        }
        if (this.importExportPage != null) {
            this.addPage((IWizardPage)this.importExportPage);
        }
    }

    public void init(IWorkbench aWorkbench, IStructuredSelection currentSelection) {
        this.workbench = aWorkbench;
        this.selection = currentSelection;
        ImageDescriptor wizardBannerImage = null;
        if (IMPORT.equals(this.page)) {
            wizardBannerImage = WorkbenchImages.getImageDescriptor("IMG_WIZBAN_IMPORT_WIZ");
            this.setWindowTitle(WorkbenchMessages.ImportWizard_title);
        } else if (EXPORT.equals(this.page)) {
            wizardBannerImage = WorkbenchImages.getImageDescriptor("IMG_WIZBAN_EXPORT_WIZ");
            this.setWindowTitle(WorkbenchMessages.ExportWizard_title);
        }
        if (wizardBannerImage != null) {
            this.setDefaultPageImageDescriptor(wizardBannerImage);
        }
        this.setNeedsProgressMonitor(true);
    }
}

