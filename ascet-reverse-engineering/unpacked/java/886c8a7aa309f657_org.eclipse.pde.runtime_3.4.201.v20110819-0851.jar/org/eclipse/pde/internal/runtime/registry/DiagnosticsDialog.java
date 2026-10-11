/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.pde.internal.runtime.registry;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;

public class DiagnosticsDialog
extends ErrorDialog {
    public DiagnosticsDialog(Shell parentShell, String dialogTitle, String message, IStatus status, int displayMask) {
        super(parentShell, dialogTitle, message, status, displayMask);
    }

    protected Control createDialogArea(Composite parent) {
        Control area = super.createDialogArea(parent);
        this.createDropDownList((Composite)area);
        return area;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
    }
}

