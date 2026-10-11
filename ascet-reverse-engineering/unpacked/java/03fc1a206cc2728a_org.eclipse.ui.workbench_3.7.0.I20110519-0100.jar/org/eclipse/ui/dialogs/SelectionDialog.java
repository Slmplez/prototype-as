/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchMessages;

public abstract class SelectionDialog
extends TrayDialog {
    private Object[] result;
    private List initialSelections = new ArrayList();
    private String title;
    private String message = "";
    private int dialogBoundsStrategy = 3;
    private IDialogSettings dialogBoundsSettings = null;
    static String SELECT_ALL_TITLE = WorkbenchMessages.SelectionDialog_selectLabel;
    static String DESELECT_ALL_TITLE = WorkbenchMessages.SelectionDialog_deselectLabel;

    protected SelectionDialog(Shell parentShell) {
        super(parentShell);
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        if (this.title != null) {
            shell.setText(this.title);
        }
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected Label createMessageArea(Composite composite) {
        Label label = new Label(composite, 0);
        if (this.message != null) {
            label.setText(this.message);
        }
        label.setFont(composite.getFont());
        return label;
    }

    protected List getInitialSelections() {
        if (this.initialSelections.isEmpty()) {
            return null;
        }
        return this.getInitialElementSelections();
    }

    protected List getInitialElementSelections() {
        return this.initialSelections;
    }

    protected String getMessage() {
        return this.message;
    }

    public Button getOkButton() {
        return this.getButton(0);
    }

    public Object[] getResult() {
        return this.result;
    }

    public void setInitialSelections(Object[] selectedElements) {
        this.initialSelections = new ArrayList(selectedElements.length);
        int i = 0;
        while (i < selectedElements.length) {
            this.initialSelections.add(selectedElements[i]);
            ++i;
        }
    }

    public void setInitialElementSelections(List selectedElements) {
        this.initialSelections = selectedElements;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    protected void setResult(List newResult) {
        if (newResult == null) {
            this.result = null;
        } else {
            this.result = new Object[newResult.size()];
            newResult.toArray(this.result);
        }
    }

    protected void setSelectionResult(Object[] newResult) {
        this.result = newResult;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDialogBoundsSettings(IDialogSettings settings, int strategy) {
        this.dialogBoundsStrategy = strategy;
        this.dialogBoundsSettings = settings;
    }

    protected IDialogSettings getDialogBoundsSettings() {
        return this.dialogBoundsSettings;
    }

    protected int getDialogBoundsStrategy() {
        return this.dialogBoundsStrategy;
    }

    protected boolean isResizable() {
        return true;
    }
}

