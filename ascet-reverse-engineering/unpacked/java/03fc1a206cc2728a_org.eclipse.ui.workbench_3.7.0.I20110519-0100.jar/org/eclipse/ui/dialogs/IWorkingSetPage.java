/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.wizard.IWizardPage
 */
package org.eclipse.ui.dialogs;

import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.ui.IWorkingSet;

public interface IWorkingSetPage
extends IWizardPage {
    public void finish();

    public IWorkingSet getSelection();

    public void setSelection(IWorkingSet var1);
}

