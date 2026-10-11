/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;

public abstract class StatusDialog
extends TrayDialog {
    private Button fOkButton;
    private MessageLine fStatusLine;
    private IStatus fLastStatus = new Status(0, "org.eclipse.jface", 0, "", null);
    private String fTitle;
    private Image fImage;
    private boolean fStatusLineAboveButtons = true;

    public StatusDialog(Shell parent) {
        super(parent);
    }

    public void setStatusLineAboveButtons(boolean aboveButtons) {
        this.fStatusLineAboveButtons = aboveButtons;
    }

    protected void updateStatus(IStatus status) {
        this.fLastStatus = status;
        if (this.fStatusLine != null && !this.fStatusLine.isDisposed()) {
            this.updateButtonsEnableState(status);
            this.fStatusLine.setErrorStatus(status);
        }
    }

    public IStatus getStatus() {
        return this.fLastStatus;
    }

    protected void updateButtonsEnableState(IStatus status) {
        if (this.fOkButton != null && !this.fOkButton.isDisposed()) {
            this.fOkButton.setEnabled(!status.matches(4));
        }
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        if (this.fTitle != null) {
            shell.setText(this.fTitle);
        }
    }

    public void create() {
        super.create();
        if (this.fLastStatus != null) {
            if (this.fLastStatus.matches(4)) {
                this.fLastStatus = new Status(4, this.fLastStatus.getPlugin(), this.fLastStatus.getCode(), "", this.fLastStatus.getException());
            }
            this.updateStatus(this.fLastStatus);
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.fOkButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected Control createButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = this.fStatusLineAboveButtons ? 1 : 2;
        layout.marginHeight = 0;
        layout.marginLeft = this.convertHorizontalDLUsToPixels(7);
        layout.marginWidth = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(768));
        if (!this.fStatusLineAboveButtons && this.isHelpAvailable()) {
            this.createHelpControl(composite);
        }
        this.fStatusLine = new MessageLine(composite);
        this.fStatusLine.setAlignment(16384);
        GridData statusData = new GridData(768);
        this.fStatusLine.setErrorStatus(null);
        if (this.fStatusLineAboveButtons && this.isHelpAvailable()) {
            statusData.horizontalSpan = 2;
            this.createHelpControl(composite);
        }
        this.fStatusLine.setLayoutData(statusData);
        StatusDialog.applyDialogFont((Control)composite);
        boolean helpAvailable = this.isHelpAvailable();
        this.setHelpAvailable(false);
        super.createButtonBar(composite);
        this.setHelpAvailable(helpAvailable);
        return composite;
    }

    public void setTitle(String title) {
        this.fTitle = title != null ? title : "";
        Shell shell = this.getShell();
        if (shell != null && !shell.isDisposed()) {
            shell.setText(this.fTitle);
        }
    }

    public void setImage(Image image) {
        this.fImage = image;
        Shell shell = this.getShell();
        if (shell != null && !shell.isDisposed()) {
            shell.setImage(this.fImage);
        }
    }

    private class MessageLine
    extends CLabel {
        private Color fNormalMsgAreaBackground = this.getBackground();

        public MessageLine(Composite parent) {
            this(parent, 16384);
        }

        public MessageLine(Composite parent, int style) {
            super(parent, style);
        }

        private Image findImage(IStatus status) {
            if (status.isOK()) {
                return null;
            }
            if (status.matches(4)) {
                return JFaceResources.getImage("dialog_message_error_image");
            }
            if (status.matches(2)) {
                return JFaceResources.getImage("dialog_messasge_warning_image");
            }
            if (status.matches(1)) {
                return JFaceResources.getImage("dialog_messasge_info_image");
            }
            return null;
        }

        public void setErrorStatus(IStatus status) {
            String message;
            if (status != null && !status.isOK() && (message = status.getMessage()) != null && message.length() > 0) {
                this.setText(message);
                this.setImage(this.findImage(status));
                this.setBackground(JFaceColors.getErrorBackground(this.getDisplay()));
                return;
            }
            this.setText("");
            this.setImage(null);
            this.setBackground(this.fNormalMsgAreaBackground);
        }
    }
}

