/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.wizard.Wizard
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.wizard.Wizard;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.dialogs.IWorkingSetEditWizard;
import org.eclipse.ui.dialogs.IWorkingSetPage;
import org.eclipse.ui.internal.WorkbenchMessages;

public class WorkingSetEditWizard
extends Wizard
implements IWorkingSetEditWizard {
    private IWorkingSetPage workingSetEditPage;
    private IWorkingSet workingSet;

    public WorkingSetEditWizard(IWorkingSetPage editPage) {
        this.workingSetEditPage = editPage;
        this.workingSetEditPage.setWizard(this);
        this.setWindowTitle(WorkbenchMessages.WorkingSetEditWizard_title);
    }

    public void addPages() {
        super.addPages();
        this.addPage(this.workingSetEditPage);
    }

    public boolean canFinish() {
        return this.workingSetEditPage.isPageComplete();
    }

    public IWorkingSet getSelection() {
        return this.workingSet;
    }

    public boolean performFinish() {
        this.workingSetEditPage.finish();
        return true;
    }

    public void setSelection(IWorkingSet workingSet) {
        this.workingSet = workingSet;
        this.workingSetEditPage.setSelection(workingSet);
    }
}

