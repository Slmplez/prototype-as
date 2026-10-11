/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.preferences;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.internal.WorkbenchMessages;

public abstract class ViewPreferencesAction
extends Action {
    public ViewPreferencesAction() {
        super(WorkbenchMessages.OpenPreferences_text);
    }

    public void run() {
        this.openViewPreferencesDialog();
    }

    public abstract void openViewPreferencesDialog();
}

