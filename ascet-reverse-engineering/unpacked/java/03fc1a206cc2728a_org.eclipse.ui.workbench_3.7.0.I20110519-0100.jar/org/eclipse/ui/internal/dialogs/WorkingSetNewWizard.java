/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.Wizard
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.Wizard;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.dialogs.IWorkingSetNewWizard;
import org.eclipse.ui.dialogs.IWorkingSetPage;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WorkingSetTypePage;
import org.eclipse.ui.internal.registry.WorkingSetDescriptor;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;

public class WorkingSetNewWizard
extends Wizard
implements IWorkingSetNewWizard {
    private WorkingSetTypePage workingSetTypePage;
    private IWorkingSetPage workingSetEditPage;
    private String editPageId;
    private IWorkingSet workingSet;
    private WorkingSetDescriptor[] descriptors;

    public WorkingSetNewWizard(WorkingSetDescriptor[] descriptors) {
        Assert.isTrue((descriptors != null && descriptors.length > 0 ? 1 : 0) != 0);
        this.descriptors = descriptors;
        this.setWindowTitle(WorkbenchMessages.WorkingSetNewWizard_title);
    }

    public void addPages() {
        Object page;
        super.addPages();
        WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
        if (this.descriptors.length > 1) {
            page = this.workingSetTypePage = new WorkingSetTypePage(this.descriptors);
        } else {
            this.editPageId = this.descriptors[0].getId();
            this.workingSetEditPage = registry.getWorkingSetPage(this.editPageId);
            page = this.workingSetEditPage;
        }
        page.setWizard(this);
        this.addPage((IWizardPage)page);
        this.setForcePreviousAndNextButtons(this.descriptors.length > 1);
    }

    public boolean canFinish() {
        return this.workingSetEditPage != null && this.workingSetEditPage.isPageComplete();
    }

    public IWizardPage getNextPage(IWizardPage page) {
        String pageId;
        if (this.workingSetTypePage != null && page == this.workingSetTypePage && (pageId = this.workingSetTypePage.getSelection()) != null) {
            if (this.workingSetEditPage == null || pageId != this.editPageId) {
                WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
                this.workingSetEditPage = registry.getWorkingSetPage(pageId);
                this.addPage(this.workingSetEditPage);
                this.editPageId = pageId;
            }
            return this.workingSetEditPage;
        }
        return null;
    }

    public IWorkingSet getSelection() {
        return this.workingSet;
    }

    public boolean performFinish() {
        this.workingSetEditPage.finish();
        this.workingSet = this.workingSetEditPage.getSelection();
        this.workingSet.setId(this.editPageId);
        return true;
    }
}

