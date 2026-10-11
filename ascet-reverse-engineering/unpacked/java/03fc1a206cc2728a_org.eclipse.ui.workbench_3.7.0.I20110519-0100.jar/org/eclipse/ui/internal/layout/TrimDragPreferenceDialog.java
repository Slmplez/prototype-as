/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.internal.TrimDragPreferences;

public class TrimDragPreferenceDialog
extends Dialog {
    private Text thresholdValue;
    private Button raggedTrimButton;

    public TrimDragPreferenceDialog(Shell parentShell) {
        super(parentShell);
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        composite.setLayout((Layout)new GridLayout(2, false));
        Label disclaimer = new Label(composite, 2112);
        disclaimer.setText("NOTE: This dialog is for testing purposes -only- and  will be removed from the code before release.");
        disclaimer.setForeground(this.getShell().getDisplay().getSystemColor(4));
        new Label(composite, 0);
        new Label(composite, 0);
        GridData dgd = new GridData();
        dgd.grabExcessHorizontalSpace = true;
        dgd.horizontalSpan = 2;
        dgd.minimumWidth = 50;
        disclaimer.setLayoutData((Object)dgd);
        Label tLabel = new Label(composite, 0);
        tLabel.setText("Drag Threshold");
        this.thresholdValue = new Text(composite, 2052);
        this.thresholdValue.setText(Integer.toString(TrimDragPreferences.getThreshold()));
        this.thresholdValue.setToolTipText("The minimum distance to snap to");
        GridData tgd = new GridData();
        tgd.grabExcessHorizontalSpace = true;
        tgd.minimumWidth = 50;
        this.thresholdValue.setLayoutData((Object)tgd);
        this.raggedTrimButton = new Button(composite, 32);
        this.raggedTrimButton.setText("Ragged Trim");
        this.raggedTrimButton.setSelection(TrimDragPreferences.showRaggedTrim());
        this.raggedTrimButton.setToolTipText("Allows trim in the same area to have different heights if checked");
        GridData rgd = new GridData();
        rgd.horizontalSpan = 2;
        this.raggedTrimButton.setLayoutData((Object)rgd);
        return composite;
    }

    protected void okPressed() {
        try {
            TrimDragPreferences.setThreshold(Integer.parseInt(this.thresholdValue.getText()));
        }
        catch (NumberFormatException numberFormatException) {}
        boolean val = this.raggedTrimButton.getSelection();
        TrimDragPreferences.setRaggedTrim(val);
        super.okPressed();
    }
}

