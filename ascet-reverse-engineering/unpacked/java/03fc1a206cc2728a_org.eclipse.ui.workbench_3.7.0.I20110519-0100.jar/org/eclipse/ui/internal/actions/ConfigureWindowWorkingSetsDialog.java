/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.actions;

import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.SimpleWorkingSetSelectionDialog;

class ConfigureWindowWorkingSetsDialog
extends SimpleWorkingSetSelectionDialog {
    private IWorkbenchWindow window;

    protected ConfigureWindowWorkingSetsDialog(IWorkbenchWindow window) {
        super(window.getShell(), null, window.getActivePage().getWorkingSets(), true);
        this.window = window;
        this.setTitle(WorkbenchMessages.WorkingSetSelectionDialog_title_multiSelect);
        this.setMessage(WorkbenchMessages.WorkingSetSelectionDialog_message_multiSelect);
    }

    protected void okPressed() {
        super.okPressed();
        this.window.getActivePage().setWorkingSets(this.getSelection());
    }
}

