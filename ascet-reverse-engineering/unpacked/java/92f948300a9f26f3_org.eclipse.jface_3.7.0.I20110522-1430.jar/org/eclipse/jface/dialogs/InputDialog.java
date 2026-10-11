/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IInputValidator;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

public class InputDialog
extends Dialog {
    private String title;
    private String message;
    private String value = "";
    private IInputValidator validator;
    private Button okButton;
    private Text text;
    private Text errorMessageText;
    private String errorMessage;

    public InputDialog(Shell parentShell, String dialogTitle, String dialogMessage, String initialValue, IInputValidator validator) {
        super(parentShell);
        this.title = dialogTitle;
        this.message = dialogMessage;
        this.value = initialValue == null ? "" : initialValue;
        this.validator = validator;
    }

    protected void buttonPressed(int buttonId) {
        this.value = buttonId == 0 ? this.text.getText() : null;
        super.buttonPressed(buttonId);
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        if (this.title != null) {
            shell.setText(this.title);
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
        this.text.setFocus();
        if (this.value != null) {
            this.text.setText(this.value);
            this.text.selectAll();
        }
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        if (this.message != null) {
            Label label = new Label(composite, 64);
            label.setText(this.message);
            GridData data = new GridData(1796);
            data.widthHint = this.convertHorizontalDLUsToPixels(300);
            label.setLayoutData((Object)data);
            label.setFont(parent.getFont());
        }
        this.text = new Text(composite, this.getInputTextStyle());
        this.text.setLayoutData((Object)new GridData(768));
        this.text.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                InputDialog.this.validateInput();
            }
        });
        this.errorMessageText = new Text(composite, 72);
        this.errorMessageText.setLayoutData((Object)new GridData(768));
        this.errorMessageText.setBackground(this.errorMessageText.getDisplay().getSystemColor(22));
        this.setErrorMessage(this.errorMessage);
        InputDialog.applyDialogFont((Control)composite);
        return composite;
    }

    protected Label getErrorMessageLabel() {
        return null;
    }

    protected Button getOkButton() {
        return this.okButton;
    }

    protected Text getText() {
        return this.text;
    }

    protected IInputValidator getValidator() {
        return this.validator;
    }

    public String getValue() {
        return this.value;
    }

    protected void validateInput() {
        String errorMessage = null;
        if (this.validator != null) {
            errorMessage = this.validator.isValid(this.text.getText());
        }
        this.setErrorMessage(errorMessage);
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
        if (this.errorMessageText != null && !this.errorMessageText.isDisposed()) {
            this.errorMessageText.setText(errorMessage == null ? " \n " : errorMessage);
            boolean hasError = errorMessage != null && StringConverter.removeWhiteSpaces(errorMessage).length() > 0;
            this.errorMessageText.setEnabled(hasError);
            this.errorMessageText.setVisible(hasError);
            this.errorMessageText.getParent().update();
            Button button = this.getButton(0);
            if (button != null) {
                button.setEnabled(errorMessage == null);
            }
        }
    }

    protected int getInputTextStyle() {
        return 2052;
    }
}

