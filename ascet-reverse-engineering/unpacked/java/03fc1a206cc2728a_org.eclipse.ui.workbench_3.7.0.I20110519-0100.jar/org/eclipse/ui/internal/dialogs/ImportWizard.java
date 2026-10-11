/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizardNode
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.Wizard
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizardNode;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardListSelectionPage;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardNode;
import org.eclipse.ui.model.AdaptableList;
import org.eclipse.ui.wizards.IWizardCategory;

public class ImportWizard
extends Wizard {
    private IStructuredSelection selection;
    private IWorkbench workbench;

    public void addPages() {
        this.addPage((IWizardPage)new SelectionPage(this.workbench, this.selection, this.getAvailableImportWizards(), WorkbenchMessages.ImportWizard_selectSource));
    }

    protected AdaptableList getAvailableImportWizards() {
        IWizardCategory root = WorkbenchPlugin.getDefault().getImportWizardRegistry().getRootCategory();
        WizardCollectionElement otherCategory = (WizardCollectionElement)root.findCategory((IPath)new Path("org.eclipse.ui.Other"));
        if (otherCategory == null) {
            return new AdaptableList();
        }
        return otherCategory.getWizardAdaptableList();
    }

    public void init(IWorkbench aWorkbench, IStructuredSelection currentSelection) {
        this.workbench = aWorkbench;
        this.selection = currentSelection;
        this.setWindowTitle(WorkbenchMessages.ImportWizard_title);
        this.setDefaultPageImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_WIZBAN_IMPORT_WIZ"));
        this.setNeedsProgressMonitor(true);
    }

    public boolean performFinish() {
        ((SelectionPage)this.getPages()[0]).saveWidgetValues();
        return true;
    }

    class SelectionPage
    extends WorkbenchWizardListSelectionPage {
        SelectionPage(IWorkbench w, IStructuredSelection ss, AdaptableList e, String s) {
            super(w, ss, e, s, "org.eclipse.ui.importWizards");
        }

        public void createControl(Composite parent) {
            super.createControl(parent);
            this.getWorkbench().getHelpSystem().setHelp(this.getControl(), "org.eclipse.ui.import_wizard_selection_wizard_page_context");
        }

        public IWizardNode createWizardNode(WorkbenchWizardElement element) {
            return new WorkbenchWizardNode(this, this, element){
                final /* synthetic */ SelectionPage this$1;
                {
                    this.this$1 = selectionPage;
                }

                public IWorkbenchWizard createWizard() throws CoreException {
                    return this.wizardElement.createWizard();
                }
            };
        }
    }
}

