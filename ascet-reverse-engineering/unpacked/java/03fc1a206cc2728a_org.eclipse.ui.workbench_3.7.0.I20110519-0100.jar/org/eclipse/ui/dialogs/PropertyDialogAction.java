/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.jface.window.SameShellProvider
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.dialogs;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.jface.window.SameShellProvider;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.SelectionProviderAction;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.PropertyDialog;
import org.eclipse.ui.internal.dialogs.PropertyPageContributorManager;

public class PropertyDialogAction
extends SelectionProviderAction {
    private IShellProvider shellProvider;
    private String initialPageId;

    public PropertyDialogAction(Shell shell, ISelectionProvider provider) {
        this((IShellProvider)new SameShellProvider((Control)shell), provider);
    }

    public PropertyDialogAction(IShellProvider shell, ISelectionProvider provider) {
        super(provider, WorkbenchMessages.PropertyDialog_text);
        Assert.isNotNull((Object)shell);
        this.shellProvider = shell;
        this.setToolTipText(WorkbenchMessages.PropertyDialog_toolTip);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.property_dialog_action_context");
    }

    private boolean hasPropertyPagesFor(IStructuredSelection object) {
        return PropertyPageContributorManager.getManager().getApplicableContributors(object).size() != 0;
    }

    public boolean isApplicableForSelection() {
        if (!this.isEnabled()) {
            return false;
        }
        return this.isApplicableForSelection(this.getStructuredSelection());
    }

    public boolean isApplicableForSelection(IStructuredSelection selection) {
        return !selection.isEmpty() && this.hasPropertyPagesFor(selection);
    }

    public void run() {
        PreferenceDialog dialog = this.createDialog();
        if (dialog != null) {
            dialog.open();
        }
    }

    public PreferenceDialog createDialog() {
        if (this.getStructuredSelection().isEmpty()) {
            return null;
        }
        return PropertyDialog.createDialogOn(this.shellProvider.getShell(), this.initialPageId, this.getStructuredSelection());
    }

    public void selectionChanged(IStructuredSelection selection) {
        this.setEnabled(!selection.isEmpty());
    }
}

