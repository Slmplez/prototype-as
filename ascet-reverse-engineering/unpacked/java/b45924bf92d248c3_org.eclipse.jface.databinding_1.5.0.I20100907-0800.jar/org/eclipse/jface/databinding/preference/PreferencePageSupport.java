/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.DataBindingContext
 *  org.eclipse.jface.dialogs.DialogPage
 *  org.eclipse.jface.preference.PreferencePage
 */
package org.eclipse.jface.databinding.preference;

import org.eclipse.core.databinding.DataBindingContext;
import org.eclipse.jface.databinding.dialog.DialogPageSupport;
import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.jface.preference.PreferencePage;

public class PreferencePageSupport
extends DialogPageSupport {
    private PreferencePageSupport(PreferencePage preferencePage, DataBindingContext dbc) {
        super((DialogPage)preferencePage, dbc);
    }

    public static PreferencePageSupport create(PreferencePage preferencePage, DataBindingContext dbc) {
        return new PreferencePageSupport(preferencePage, dbc);
    }

    protected void handleStatusChanged() {
        super.handleStatusChanged();
        boolean valid = true;
        if (this.currentStatusStale) {
            valid = false;
        } else if (this.currentStatus != null) {
            valid = !this.currentStatus.matches(12);
        }
        ((PreferencePage)this.getDialogPage()).setValid(valid);
    }
}

