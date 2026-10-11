/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.preferences;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;

public class ViewSettingsDialog
extends Dialog {
    private static int DEFAULTS_BUTTON_ID = 25;

    public ViewSettingsDialog(Shell parentShell) {
        super(parentShell);
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == DEFAULTS_BUTTON_ID) {
            this.performDefaults();
        }
        super.buttonPressed(buttonId);
    }

    protected void performDefaults() {
    }

    protected void createButtonsForButtonBar(Composite parent) {
        parent.setLayoutData((Object)new GridData(768));
        this.createButton(parent, DEFAULTS_BUTTON_ID, JFaceResources.getString((String)"defaults"), false);
        Label l = new Label(parent, 0);
        l.setLayoutData((Object)new GridData(768));
        l = new Label(parent, 0);
        l.setLayoutData((Object)new GridData(768));
        GridLayout layout = (GridLayout)parent.getLayout();
        layout.numColumns += 2;
        layout.makeColumnsEqualWidth = false;
        super.createButtonsForButtonBar(parent);
    }
}

