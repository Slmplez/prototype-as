/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;

public class MessageDialogWithToggle
extends MessageDialog {
    public static final String ALWAYS = "always";
    public static final String NEVER = "never";
    public static final String PROMPT = "prompt";
    private String prefKey = null;
    private IPreferenceStore prefStore = null;
    private Button toggleButton = null;
    private String toggleMessage;
    private boolean toggleState;

    public static MessageDialogWithToggle open(int kind, Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key, int style) {
        MessageDialogWithToggle dialog = new MessageDialogWithToggle(parent, title, null, message, kind, MessageDialogWithToggle.getButtonLabels(kind), 0, toggleMessage, toggleState);
        dialog.setShellStyle(dialog.getShellStyle() | (style &= 0x10000000));
        dialog.prefStore = store;
        dialog.prefKey = key;
        dialog.open();
        return dialog;
    }

    public static MessageDialogWithToggle openError(Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key) {
        return MessageDialogWithToggle.open(1, parent, title, message, toggleMessage, toggleState, store, key, 0);
    }

    public static MessageDialogWithToggle openInformation(Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key) {
        return MessageDialogWithToggle.open(2, parent, title, message, toggleMessage, toggleState, store, key, 0);
    }

    public static MessageDialogWithToggle openOkCancelConfirm(Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key) {
        return MessageDialogWithToggle.open(5, parent, title, message, toggleMessage, toggleState, store, key, 0);
    }

    public static MessageDialogWithToggle openWarning(Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key) {
        return MessageDialogWithToggle.open(4, parent, title, message, toggleMessage, toggleState, store, key, 0);
    }

    public static MessageDialogWithToggle openYesNoCancelQuestion(Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key) {
        return MessageDialogWithToggle.open(6, parent, title, message, toggleMessage, toggleState, store, key, 0);
    }

    public static MessageDialogWithToggle openYesNoQuestion(Shell parent, String title, String message, String toggleMessage, boolean toggleState, IPreferenceStore store, String key) {
        return MessageDialogWithToggle.open(3, parent, title, message, toggleMessage, toggleState, store, key, 0);
    }

    public MessageDialogWithToggle(Shell parentShell, String dialogTitle, Image image, String message, int dialogImageType, String[] dialogButtonLabels, int defaultIndex, String toggleMessage, boolean toggleState) {
        super(parentShell, dialogTitle, image, message, dialogImageType, dialogButtonLabels, defaultIndex);
        this.toggleMessage = toggleMessage;
        this.toggleState = toggleState;
        this.setButtonLabels(dialogButtonLabels);
    }

    protected void buttonPressed(int buttonId) {
        super.buttonPressed(buttonId);
        if (buttonId != 1 && this.toggleState && this.prefStore != null && this.prefKey != null) {
            switch (buttonId) {
                case 0: 
                case 2: 
                case 4: 
                case 10: {
                    this.prefStore.setValue(this.prefKey, ALWAYS);
                    break;
                }
                case 3: 
                case 21: {
                    this.prefStore.setValue(this.prefKey, NEVER);
                }
            }
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        String[] buttonLabels = this.getButtonLabels();
        Button[] buttons = new Button[buttonLabels.length];
        int defaultButtonIndex = this.getDefaultButtonIndex();
        int suggestedId = 256;
        int i = 0;
        while (i < buttonLabels.length) {
            Button button;
            String label = buttonLabels[i];
            int id = this.mapButtonLabelToButtonID(label, suggestedId);
            if (id == suggestedId) {
                ++suggestedId;
            }
            buttons[i] = button = this.createButton(parent, id, label, defaultButtonIndex == i);
            ++i;
        }
        this.setButtons(buttons);
    }

    protected Control createDialogArea(Composite parent) {
        Composite dialogAreaComposite = (Composite)super.createDialogArea(parent);
        this.setToggleButton(this.createToggleButton(dialogAreaComposite));
        return dialogAreaComposite;
    }

    protected Button createToggleButton(Composite parent) {
        final Button button = new Button(parent, 16416);
        GridData data = new GridData(0);
        data.horizontalSpan = 2;
        button.setLayoutData((Object)data);
        button.setFont(parent.getFont());
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                MessageDialogWithToggle.this.toggleState = button.getSelection();
            }
        });
        return button;
    }

    protected Button getToggleButton() {
        return this.toggleButton;
    }

    public IPreferenceStore getPrefStore() {
        return this.prefStore;
    }

    public String getPrefKey() {
        return this.prefKey;
    }

    public boolean getToggleState() {
        return this.toggleState;
    }

    public void setPrefKey(String prefKey) {
        this.prefKey = prefKey;
    }

    public void setPrefStore(IPreferenceStore prefStore) {
        this.prefStore = prefStore;
    }

    protected void setToggleButton(Button button) {
        if (button == null) {
            throw new NullPointerException("A message dialog with toggle may not have a null toggle button.");
        }
        if (!button.isDisposed()) {
            String text = this.toggleMessage == null ? JFaceResources.getString("MessageDialogWithToggle.defaultToggleMessage") : this.toggleMessage;
            button.setText(text);
            button.setSelection(this.toggleState);
        }
        this.toggleButton = button;
    }

    protected void setToggleMessage(String message) {
        this.toggleMessage = message;
        if (this.toggleButton != null && !this.toggleButton.isDisposed()) {
            String text = this.toggleMessage == null ? JFaceResources.getString("MessageDialogWithToggle.defaultToggleMessage") : this.toggleMessage;
            this.toggleButton.setText(text);
        }
    }

    public void setToggleState(boolean toggleState) {
        this.toggleState = toggleState;
        if (this.toggleButton != null && !this.toggleButton.isDisposed()) {
            this.toggleButton.setSelection(toggleState);
        }
    }

    private int mapButtonLabelToButtonID(String buttonLabel, int defaultId) {
        if (IDialogConstants.OK_LABEL.equals(buttonLabel)) {
            return 0;
        }
        if (IDialogConstants.YES_LABEL.equals(buttonLabel)) {
            return 2;
        }
        if (IDialogConstants.NO_LABEL.equals(buttonLabel)) {
            return 3;
        }
        if (IDialogConstants.CANCEL_LABEL.equals(buttonLabel)) {
            return 1;
        }
        if (IDialogConstants.YES_TO_ALL_LABEL.equals(buttonLabel)) {
            return 4;
        }
        if (IDialogConstants.SKIP_LABEL.equals(buttonLabel)) {
            return 5;
        }
        if (IDialogConstants.STOP_LABEL.equals(buttonLabel)) {
            return 6;
        }
        if (IDialogConstants.ABORT_LABEL.equals(buttonLabel)) {
            return 7;
        }
        if (IDialogConstants.RETRY_LABEL.equals(buttonLabel)) {
            return 8;
        }
        if (IDialogConstants.IGNORE_LABEL.equals(buttonLabel)) {
            return 9;
        }
        if (IDialogConstants.PROCEED_LABEL.equals(buttonLabel)) {
            return 10;
        }
        if (IDialogConstants.OPEN_LABEL.equals(buttonLabel)) {
            return 11;
        }
        if (IDialogConstants.CLOSE_LABEL.equals(buttonLabel)) {
            return 12;
        }
        if (IDialogConstants.BACK_LABEL.equals(buttonLabel)) {
            return 14;
        }
        if (IDialogConstants.NEXT_LABEL.equals(buttonLabel)) {
            return 15;
        }
        if (IDialogConstants.FINISH_LABEL.equals(buttonLabel)) {
            return 16;
        }
        if (IDialogConstants.HELP_LABEL.equals(buttonLabel)) {
            return 17;
        }
        if (IDialogConstants.NO_TO_ALL_LABEL.equals(buttonLabel)) {
            return 21;
        }
        if (IDialogConstants.SHOW_DETAILS_LABEL.equals(buttonLabel)) {
            return 13;
        }
        if (IDialogConstants.HIDE_DETAILS_LABEL.equals(buttonLabel)) {
            return 13;
        }
        return defaultId;
    }
}

