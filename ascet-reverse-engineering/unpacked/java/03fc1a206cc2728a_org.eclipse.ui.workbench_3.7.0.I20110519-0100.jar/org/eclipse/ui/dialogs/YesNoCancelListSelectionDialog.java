/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dialogs.ListSelectionDialog;

public class YesNoCancelListSelectionDialog
extends ListSelectionDialog {
    public YesNoCancelListSelectionDialog(Shell parentShell, Object input, IStructuredContentProvider contentProvider, ILabelProvider labelProvider, String message) {
        super(parentShell, input, contentProvider, labelProvider, message);
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 2: {
                this.yesPressed();
                return;
            }
            case 3: {
                this.noPressed();
                return;
            }
            case 1: {
                this.cancelPressed();
                return;
            }
        }
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.yes_no_cancel_list_selection_dialog_context");
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 2, IDialogConstants.YES_LABEL, true);
        this.createButton(parent, 3, IDialogConstants.NO_LABEL, false);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected void noPressed() {
        this.setReturnCode(3);
        this.close();
    }

    protected void yesPressed() {
        this.okPressed();
        this.setReturnCode(2);
    }
}

