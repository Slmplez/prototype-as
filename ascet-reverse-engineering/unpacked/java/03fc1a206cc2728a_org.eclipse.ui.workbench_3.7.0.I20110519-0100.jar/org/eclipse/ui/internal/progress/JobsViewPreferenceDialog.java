/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.preference.BooleanFieldEditor
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.preference.BooleanFieldEditor;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.preferences.ViewSettingsDialog;

public class JobsViewPreferenceDialog
extends ViewSettingsDialog {
    private BooleanFieldEditor verboseEditor;

    public JobsViewPreferenceDialog(Shell parentShell) {
        super(parentShell);
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(ProgressMessages.JobsViewPreferenceDialog_Title);
    }

    protected Control createDialogArea(Composite parent) {
        Composite top = (Composite)super.createDialogArea(parent);
        Composite editArea = new Composite(top, 0);
        editArea.setLayout((Layout)new GridLayout());
        editArea.setLayoutData((Object)new GridData(1808));
        this.verboseEditor = new BooleanFieldEditor("verbose", ProgressMessages.JobsViewPreferenceDialog_Note, editArea);
        this.verboseEditor.setPreferenceName("SHOW_SYSTEM_JOBS");
        this.verboseEditor.setPreferenceStore(PrefUtil.getAPIPreferenceStore());
        this.verboseEditor.load();
        Dialog.applyDialogFont((Control)top);
        return top;
    }

    protected void okPressed() {
        this.verboseEditor.store();
        super.okPressed();
    }

    protected void performDefaults() {
        this.verboseEditor.loadDefault();
    }
}

