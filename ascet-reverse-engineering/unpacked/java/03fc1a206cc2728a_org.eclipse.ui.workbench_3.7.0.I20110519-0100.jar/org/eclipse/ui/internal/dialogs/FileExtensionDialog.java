/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.TitleAreaDialog
 *  org.eclipse.jface.layout.GridLayoutFactory
 *  org.eclipse.jface.layout.LayoutConstants
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.TitleAreaDialog;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.layout.LayoutConstants;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class FileExtensionDialog
extends TitleAreaDialog {
    private static final String DIALOG_SETTINGS_SECTION = "FileExtensionDialogSettings";
    private String filename = "";
    private String initialValue;
    private Text filenameField;
    private Button okButton;
    private String title;
    private String helpContextId;
    private final String headerTitle;
    private final String message2;
    private final String label;

    public FileExtensionDialog(Shell parentShell) {
        this(parentShell, WorkbenchMessages.FileExtension_shellTitle, "org.eclipse.ui.file_extension_dialog_context", WorkbenchMessages.FileExtension_dialogTitle, WorkbenchMessages.FileExtension_fileTypeMessage, WorkbenchMessages.FileExtension_fileTypeLabel);
        this.setShellStyle(this.getShellStyle() | 0x10000000);
    }

    public FileExtensionDialog(Shell parentShell, String title, String helpContextId, String headerTitle, String message, String label) {
        super(parentShell);
        this.title = title;
        this.helpContextId = helpContextId;
        this.headerTitle = headerTitle;
        this.message2 = message;
        this.label = label;
        this.setShellStyle(this.getShellStyle() | 0x10000000);
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        shell.setText(this.title);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)shell, this.helpContextId);
    }

    protected Control createDialogArea(Composite parent) {
        Composite parentComposite = (Composite)super.createDialogArea(parent);
        Composite contents = new Composite(parentComposite, 0);
        contents.setLayoutData((Object)new GridData(4, 4, true, true));
        this.setTitle(this.headerTitle);
        this.setMessage(this.message2);
        new Label(contents, 16384).setText(this.label);
        this.filenameField = new Text(contents, 2052);
        if (this.initialValue != null) {
            this.filenameField.setText(this.initialValue);
        }
        this.filenameField.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent event) {
                if (event.widget == FileExtensionDialog.this.filenameField) {
                    FileExtensionDialog.this.filename = FileExtensionDialog.this.filenameField.getText().trim();
                    FileExtensionDialog.this.okButton.setEnabled(FileExtensionDialog.this.validateFileType());
                }
            }
        });
        this.filenameField.setFocus();
        Dialog.applyDialogFont((Control)parentComposite);
        Point defaultMargins = LayoutConstants.getMargins();
        GridLayoutFactory.fillDefaults().numColumns(2).margins(defaultMargins.x, defaultMargins.y).generateLayout(contents);
        return contents;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.okButton = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.okButton.setEnabled(false);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    private boolean validateFileType() {
        if (this.filename.length() == 0) {
            this.setErrorMessage(null);
            return false;
        }
        int index = this.filename.lastIndexOf(46);
        if (index == this.filename.length() - 1 && (index == 0 || index == 1 && this.filename.charAt(0) == '*')) {
            this.setErrorMessage(WorkbenchMessages.FileExtension_extensionEmptyMessage);
            return false;
        }
        index = this.filename.indexOf(42);
        if (index > -1) {
            if (this.filename.length() == 1) {
                this.setErrorMessage(WorkbenchMessages.FileExtension_extensionEmptyMessage);
                return false;
            }
            if (index != 0 || this.filename.charAt(1) != '.') {
                this.setErrorMessage(WorkbenchMessages.FileExtension_fileNameInvalidMessage);
                return false;
            }
            if (this.filename.length() > index && this.filename.indexOf(42, index + 1) != -1) {
                this.setErrorMessage(WorkbenchMessages.FileExtension_fileNameInvalidMessage);
                return false;
            }
        }
        this.setErrorMessage(null);
        return true;
    }

    public String getExtension() {
        int index = this.filename.lastIndexOf(46);
        if (index == -1) {
            return "";
        }
        if (index == this.filename.length()) {
            return "";
        }
        return this.filename.substring(index + 1, this.filename.length());
    }

    public String getName() {
        int index = this.filename.lastIndexOf(46);
        if (index == -1) {
            return this.filename;
        }
        if (index == 0) {
            return "*";
        }
        return this.filename.substring(0, index);
    }

    public void setInitialValue(String initialValue) {
        this.initialValue = initialValue;
    }

    protected IDialogSettings getDialogBoundsSettings() {
        IDialogSettings settings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = settings.getSection(DIALOG_SETTINGS_SECTION);
        if (section == null) {
            section = settings.addNewSection(DIALOG_SETTINGS_SECTION);
        }
        return section;
    }

    protected boolean isResizable() {
        return true;
    }
}

