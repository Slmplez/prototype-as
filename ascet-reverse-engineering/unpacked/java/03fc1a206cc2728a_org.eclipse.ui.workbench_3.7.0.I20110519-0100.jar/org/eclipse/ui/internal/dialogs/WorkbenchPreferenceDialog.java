/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.IPreferencePage
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.FilteredPreferenceDialog;
import org.eclipse.ui.internal.dnd.SwtUtil;

public class WorkbenchPreferenceDialog
extends FilteredPreferenceDialog {
    private static WorkbenchPreferenceDialog instance = null;
    private static final String DIALOG_SETTINGS_SECTION = "WorkbenchPreferenceDialogSettings";
    private String initialPageId;

    public static final WorkbenchPreferenceDialog createDialogOn(Shell shell, String preferencePageId) {
        WorkbenchPreferenceDialog dialog;
        if (instance == null) {
            Object parentShell = shell;
            if (parentShell == null) {
                IWorkbench workbench = PlatformUI.getWorkbench();
                IWorkbenchWindow workbenchWindow = workbench.getActiveWorkbenchWindow();
                parentShell = workbenchWindow != null ? workbenchWindow.getShell() : null;
            }
            PreferenceManager preferenceManager = PlatformUI.getWorkbench().getPreferenceManager();
            dialog = new WorkbenchPreferenceDialog((Shell)parentShell, preferenceManager);
            if (preferencePageId != null) {
                dialog.setSelectedNode(preferencePageId);
                dialog.setInitialPage(preferencePageId);
            }
            dialog.create();
            PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.preference_dialog_context");
        } else {
            dialog = instance;
            if (preferencePageId != null) {
                dialog.setCurrentPageId(preferencePageId);
                dialog.setInitialPage(preferencePageId);
            }
        }
        return dialog;
    }

    public WorkbenchPreferenceDialog(Shell parentShell, PreferenceManager manager) {
        super(parentShell, manager);
        Assert.isTrue((instance == null ? 1 : 0) != 0, (String)"There cannot be two preference dialogs at once in the workbench.");
        instance = this;
    }

    public boolean close() {
        instance = null;
        return super.close();
    }

    protected IPreferenceNode findNodeMatching(String nodeId) {
        IPreferenceNode node = super.findNodeMatching(nodeId);
        if (WorkbenchActivityHelper.filterItem(node)) {
            return null;
        }
        return node;
    }

    protected void okPressed() {
        super.okPressed();
    }

    protected IDialogSettings getDialogBoundsSettings() {
        IDialogSettings settings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = settings.getSection(DIALOG_SETTINGS_SECTION);
        if (section == null) {
            section = settings.addNewSection(DIALOG_SETTINGS_SECTION);
        }
        return section;
    }

    protected int getDialogBoundsStrategy() {
        return 1;
    }

    public int open() {
        Shell shell;
        IPreferencePage selectedPage = this.getCurrentPage();
        if (this.initialPageId != null && selectedPage != null && (shell = this.getShell()) != null && !shell.isDisposed()) {
            shell.open();
            Control control = selectedPage.getControl();
            if (!SwtUtil.isFocusAncestor(control)) {
                control.setFocus();
            }
        }
        return super.open();
    }

    public void setInitialPage(String pageId) {
        this.initialPageId = pageId;
    }
}

