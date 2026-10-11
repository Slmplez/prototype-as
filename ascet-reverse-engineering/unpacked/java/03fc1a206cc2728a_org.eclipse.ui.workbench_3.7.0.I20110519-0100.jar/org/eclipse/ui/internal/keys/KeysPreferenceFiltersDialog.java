/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.keys.NewKeysPreferenceMessages;
import org.eclipse.ui.preferences.ViewSettingsDialog;

public class KeysPreferenceFiltersDialog
extends ViewSettingsDialog {
    private Button actionSetFilterCheckBox;
    private Button internalFilterCheckBox;
    private Button uncategorizedFilterCheckBox;
    private Button workbenchMenuFilterCheckBox;
    private boolean filterActionSet;
    private boolean filterInternal;
    private boolean filterUncategorized;
    private boolean filterWorkbenchMenu;
    private boolean filterShowUnboundCommands;

    void setFilterActionSet(boolean b) {
        this.filterActionSet = b;
    }

    void setFilterInternal(boolean b) {
        this.filterInternal = b;
    }

    void setFilterWorkbenchMenu(boolean b) {
        this.filterWorkbenchMenu = b;
    }

    void setFilterUncategorized(boolean b) {
        this.filterUncategorized = b;
    }

    boolean getFilterActionSet() {
        return this.filterActionSet;
    }

    boolean getFilterInternal() {
        return this.filterInternal;
    }

    boolean getFilterUncategorized() {
        return this.filterUncategorized;
    }

    boolean getFilterWorkbenchMenu() {
        return this.filterWorkbenchMenu;
    }

    public KeysPreferenceFiltersDialog(Shell parentShell) {
        super(parentShell);
    }

    protected void performDefaults() {
        this.actionSetFilterCheckBox.setSelection(true);
        this.internalFilterCheckBox.setSelection(true);
        this.uncategorizedFilterCheckBox.setSelection(true);
        this.workbenchMenuFilterCheckBox.setSelection(!Workbench.getInstance().hasAppMenu());
        super.performDefaults();
    }

    protected Control createDialogArea(Composite parent) {
        Composite topComposite = (Composite)super.createDialogArea(parent);
        GridLayout layout = new GridLayout(1, false);
        topComposite.setLayout((Layout)layout);
        topComposite.setLayoutData((Object)new GridData(512));
        this.actionSetFilterCheckBox = new Button(topComposite, 32);
        this.actionSetFilterCheckBox.setText(NewKeysPreferenceMessages.ActionSetFilterCheckBox_Text);
        this.internalFilterCheckBox = new Button(topComposite, 32);
        this.internalFilterCheckBox.setText(NewKeysPreferenceMessages.InternalFilterCheckBox_Text);
        this.uncategorizedFilterCheckBox = new Button(topComposite, 32);
        this.uncategorizedFilterCheckBox.setText(NewKeysPreferenceMessages.UncategorizedFilterCheckBox_Text);
        this.workbenchMenuFilterCheckBox = new Button(topComposite, 32);
        this.workbenchMenuFilterCheckBox.setText(NewKeysPreferenceMessages.WorkbenchMenuFilterCheckBox_Text);
        this.actionSetFilterCheckBox.setSelection(this.filterActionSet);
        this.internalFilterCheckBox.setSelection(this.filterInternal);
        this.uncategorizedFilterCheckBox.setSelection(this.filterUncategorized);
        this.workbenchMenuFilterCheckBox.setSelection(this.filterWorkbenchMenu);
        KeysPreferenceFiltersDialog.applyDialogFont((Control)topComposite);
        return topComposite;
    }

    protected void okPressed() {
        this.filterActionSet = this.actionSetFilterCheckBox.getSelection();
        this.filterInternal = this.internalFilterCheckBox.getSelection();
        this.filterUncategorized = this.uncategorizedFilterCheckBox.getSelection();
        this.filterWorkbenchMenu = this.workbenchMenuFilterCheckBox.getSelection();
        super.okPressed();
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(NewKeysPreferenceMessages.KeysPreferenceFilterDialog_Title);
    }

    boolean getFilterShowUnboundCommands() {
        return this.filterShowUnboundCommands;
    }

    void setFilterUnboundCommands(boolean filterUnboundCommands) {
        this.filterShowUnboundCommands = filterUnboundCommands;
    }
}

