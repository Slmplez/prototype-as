/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.Wizard
 */
package org.eclipse.ui.internal.dialogs;

import java.util.StringTokenizer;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.NewWizardSelectionPage;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class NewWizard
extends Wizard {
    private static final String CATEGORY_SEPARATOR = "/";
    private String categoryId = null;
    private NewWizardSelectionPage mainPage;
    private boolean projectsOnly = false;
    private IStructuredSelection selection;
    private IWorkbench workbench;

    public void addPages() {
        IWizardCategory root = WorkbenchPlugin.getDefault().getNewWizardRegistry().getRootCategory();
        IWizardDescriptor[] primary = WorkbenchPlugin.getDefault().getNewWizardRegistry().getPrimaryWizards();
        if (this.categoryId != null) {
            IWizardCategory categories = root;
            StringTokenizer familyTokenizer = new StringTokenizer(this.categoryId, CATEGORY_SEPARATOR);
            while (familyTokenizer.hasMoreElements()) {
                if ((categories = this.getChildWithID(categories, familyTokenizer.nextToken())) == null) break;
            }
            if (categories != null) {
                root = categories;
            }
        }
        this.mainPage = new NewWizardSelectionPage(this.workbench, this.selection, root, primary, this.projectsOnly);
        this.addPage((IWizardPage)this.mainPage);
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    private IWizardCategory getChildWithID(IWizardCategory parent, String id) {
        IWizardCategory[] children = parent.getCategories();
        int i = 0;
        while (i < children.length) {
            IWizardCategory currentChild = children[i];
            if (currentChild.getId().equals(id)) {
                return currentChild;
            }
            ++i;
        }
        return null;
    }

    public void init(IWorkbench aWorkbench, IStructuredSelection currentSelection) {
        this.workbench = aWorkbench;
        this.selection = currentSelection;
        if (this.getWindowTitle() == null) {
            if (this.projectsOnly) {
                this.setWindowTitle(WorkbenchMessages.NewProject_title);
            } else {
                this.setWindowTitle(WorkbenchMessages.NewWizard_title);
            }
        }
        this.setDefaultPageImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_WIZBAN_NEW_WIZ"));
        this.setNeedsProgressMonitor(true);
    }

    public boolean performFinish() {
        this.mainPage.saveWidgetValues();
        if (this.getContainer().getCurrentPage() == this.mainPage && this.mainPage.canFinishEarly()) {
            IWizard wizard = this.mainPage.getSelectedNode().getWizard();
            wizard.setContainer(this.getContainer());
            return wizard.performFinish();
        }
        return true;
    }

    public void setCategoryId(String id) {
        this.categoryId = id;
    }

    public void setProjectsOnly(boolean b) {
        this.projectsOnly = b;
    }

    public boolean canFinish() {
        if (this.getContainer().getCurrentPage() == this.mainPage && this.mainPage.canFinishEarly()) {
            return true;
        }
        return super.canFinish();
    }
}

