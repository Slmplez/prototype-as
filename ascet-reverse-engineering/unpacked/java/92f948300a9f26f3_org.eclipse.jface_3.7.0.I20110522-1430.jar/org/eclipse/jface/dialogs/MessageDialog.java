/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IconAndMessageDialog;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;

public class MessageDialog
extends IconAndMessageDialog {
    public static final int NONE = 0;
    public static final int ERROR = 1;
    public static final int INFORMATION = 2;
    public static final int QUESTION = 3;
    public static final int WARNING = 4;
    public static final int CONFIRM = 5;
    public static final int QUESTION_WITH_CANCEL = 6;
    private String[] buttonLabels;
    private Button[] buttons;
    private int defaultButtonIndex;
    private String title;
    private Image titleImage;
    private Image image = null;
    private Control customArea;

    public MessageDialog(Shell parentShell, String dialogTitle, Image dialogTitleImage, String dialogMessage, int dialogImageType, String[] dialogButtonLabels, int defaultIndex) {
        super(parentShell);
        this.title = dialogTitle;
        this.titleImage = dialogTitleImage;
        this.message = dialogMessage;
        switch (dialogImageType) {
            case 1: {
                this.image = this.getErrorImage();
                break;
            }
            case 2: {
                this.image = this.getInfoImage();
                break;
            }
            case 3: 
            case 5: 
            case 6: {
                this.image = this.getQuestionImage();
                break;
            }
            case 4: {
                this.image = this.getWarningImage();
            }
        }
        this.buttonLabels = dialogButtonLabels;
        this.defaultButtonIndex = defaultIndex;
    }

    protected void buttonPressed(int buttonId) {
        this.setReturnCode(buttonId);
        this.close();
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        if (this.title != null) {
            shell.setText(this.title);
        }
        if (this.titleImage != null) {
            shell.setImage(this.titleImage);
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.buttons = new Button[this.buttonLabels.length];
        int i = 0;
        while (i < this.buttonLabels.length) {
            Button button;
            String label = this.buttonLabels[i];
            this.buttons[i] = button = this.createButton(parent, i, label, this.defaultButtonIndex == i);
            ++i;
        }
    }

    protected Control createCustomArea(Composite parent) {
        return null;
    }

    protected Control createDialogArea(Composite parent) {
        this.createMessageArea(parent);
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        composite.setLayout((Layout)layout);
        GridData data = new GridData(1808);
        data.horizontalSpan = 2;
        composite.setLayoutData((Object)data);
        this.customArea = this.createCustomArea(composite);
        if (this.customArea == null) {
            this.customArea = new Label(composite, 0);
        }
        return composite;
    }

    protected Button getButton(int index) {
        if (this.buttons == null || index < 0 || index >= this.buttons.length) {
            return null;
        }
        return this.buttons[index];
    }

    protected int getMinimumMessageWidth() {
        return this.convertHorizontalDLUsToPixels(300);
    }

    protected void handleShellCloseEvent() {
        super.handleShellCloseEvent();
        this.setReturnCode(-1);
    }

    public int open() {
        return super.open();
    }

    public static boolean open(int kind, Shell parent, String title, String message, int style) {
        MessageDialog dialog = new MessageDialog(parent, title, null, message, kind, MessageDialog.getButtonLabels(kind), 0);
        dialog.setShellStyle(dialog.getShellStyle() | (style &= 0x10000000));
        return dialog.open() == 0;
    }

    static String[] getButtonLabels(int kind) {
        String[] dialogButtonLabels;
        switch (kind) {
            case 1: 
            case 2: 
            case 4: {
                dialogButtonLabels = new String[]{IDialogConstants.OK_LABEL};
                break;
            }
            case 5: {
                dialogButtonLabels = new String[]{IDialogConstants.OK_LABEL, IDialogConstants.CANCEL_LABEL};
                break;
            }
            case 3: {
                dialogButtonLabels = new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL};
                break;
            }
            case 6: {
                dialogButtonLabels = new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.CANCEL_LABEL};
                break;
            }
            default: {
                throw new IllegalArgumentException("Illegal value for kind in MessageDialog.open()");
            }
        }
        return dialogButtonLabels;
    }

    public static boolean openConfirm(Shell parent, String title, String message) {
        return MessageDialog.open(5, parent, title, message, 0);
    }

    public static void openError(Shell parent, String title, String message) {
        MessageDialog.open(1, parent, title, message, 0);
    }

    public static void openInformation(Shell parent, String title, String message) {
        MessageDialog.open(2, parent, title, message, 0);
    }

    public static boolean openQuestion(Shell parent, String title, String message) {
        return MessageDialog.open(3, parent, title, message, 0);
    }

    public static void openWarning(Shell parent, String title, String message) {
        MessageDialog.open(4, parent, title, message, 0);
    }

    protected Button createButton(Composite parent, int id, String label, boolean defaultButton) {
        Button button = super.createButton(parent, id, label, defaultButton);
        if (defaultButton && !this.customShouldTakeFocus()) {
            button.setFocus();
        }
        return button;
    }

    protected boolean customShouldTakeFocus() {
        if (this.customArea instanceof Label) {
            return false;
        }
        if (this.customArea instanceof CLabel) {
            return (this.customArea.getStyle() & 0x80000) > 0;
        }
        return true;
    }

    public Image getImage() {
        return this.image;
    }

    protected String[] getButtonLabels() {
        return this.buttonLabels;
    }

    protected int getDefaultButtonIndex() {
        return this.defaultButtonIndex;
    }

    protected void setButtons(Button[] buttons) {
        if (buttons == null) {
            throw new NullPointerException("The array of buttons cannot be null.");
        }
        this.buttons = buttons;
    }

    protected void setButtonLabels(String[] buttonLabels) {
        if (buttonLabels == null) {
            throw new NullPointerException("The array of button labels cannot be null.");
        }
        this.buttonLabels = buttonLabels;
    }
}

