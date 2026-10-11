/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.DataBindingContext
 *  org.eclipse.jface.dialogs.DialogPage
 *  org.eclipse.jface.wizard.WizardPage
 */
package org.eclipse.jface.databinding.wizard;

import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.jface.databinding.dialog.DialogPageSupport;
import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.jface.wizard.WizardPage;

public class WizardPageSupport
extends DialogPageSupport {
    private WizardPageSupport(WizardPage wizardPage, DataBindingContext dbc) {
        super((DialogPage)wizardPage, dbc);
    }

    public static WizardPageSupport create(WizardPage wizardPage, DataBindingContext dbc) {
        return new WizardPageSupport(wizardPage, dbc);
    }

    protected void handleStatusChanged() {
        super.handleStatusChanged();
        boolean pageComplete = true;
        if (this.currentStatusStale) {
            pageComplete = false;
        } else if (this.currentStatus != null) {
            pageComplete = !this.currentStatus.matches(12);
        }
        ((WizardPage)this.getDialogPage()).setPageComplete(pageComplete);
    }
}

