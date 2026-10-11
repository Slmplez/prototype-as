/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.forms;

import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.ManagedForm;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.internal.forms.Messages;

public class FormDialog
extends TrayDialog {
    private FormToolkit toolkit;

    public FormDialog(Shell shell) {
        super(shell);
        this.setShellStyle(this.getShellStyle() | 0x10);
    }

    public FormDialog(IShellProvider parentShellProvider) {
        super(parentShellProvider);
    }

    public boolean close() {
        boolean rcode = super.close();
        this.toolkit.dispose();
        return rcode;
    }

    protected Control createDialogArea(Composite parent) {
        this.toolkit = new FormToolkit(parent.getDisplay());
        ScrolledForm sform = this.toolkit.createScrolledForm(parent);
        sform.setLayoutData(new GridData(1808));
        ManagedForm mform = new ManagedForm(this.toolkit, sform);
        this.createFormContent(mform);
        FormDialog.applyDialogFont((Control)sform.getBody());
        return sform;
    }

    protected Control createButtonBar(Composite parent) {
        GridData gd = new GridData(768);
        Label sep = new Label(parent, 258);
        sep.setLayoutData((Object)gd);
        Control bar = super.createButtonBar(parent);
        return bar;
    }

    protected void createFormContent(IManagedForm mform) {
        mform.getForm().setText(Messages.FormDialog_defaultTitle);
    }
}

