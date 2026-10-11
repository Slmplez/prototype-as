/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.wizard;

import org.eclipse.jface.dialogs.IDialogPage;
import org.eclipse.jface.wizard.IWizard;

public interface IWizardPage
extends IDialogPage {
    public boolean canFlipToNextPage();

    public String getName();

    public IWizardPage getNextPage();

    public IWizardPage getPreviousPage();

    public IWizard getWizard();

    public boolean isPageComplete();

    public void setPreviousPage(IWizardPage var1);

    public void setWizard(IWizard var1);
}

