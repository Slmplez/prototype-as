/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.WizardDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.actions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.WorkingSetFilterActionGroup;
import org.eclipse.ui.dialogs.IWorkingSetEditWizard;
import org.eclipse.ui.internal.WorkbenchMessages;

public class EditWorkingSetAction
extends Action {
    private Shell shell;
    private WorkingSetFilterActionGroup actionGroup;

    public EditWorkingSetAction(WorkingSetFilterActionGroup actionGroup, Shell shell) {
        super(WorkbenchMessages.EditWorkingSetAction_text);
        Assert.isNotNull((Object)actionGroup);
        this.setToolTipText(WorkbenchMessages.EditWorkingSetAction_toolTip);
        this.shell = shell;
        this.actionGroup = actionGroup;
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.edit_working_set_action_context");
    }

    public void run() {
        IWorkingSetManager manager = PlatformUI.getWorkbench().getWorkingSetManager();
        IWorkingSet workingSet = this.actionGroup.getWorkingSet();
        if (workingSet == null) {
            this.setEnabled(false);
            return;
        }
        IWorkingSetEditWizard wizard = manager.createWorkingSetEditWizard(workingSet);
        if (wizard == null) {
            String title = WorkbenchMessages.EditWorkingSetAction_error_nowizard_title;
            String message = WorkbenchMessages.EditWorkingSetAction_error_nowizard_message;
            MessageDialog.openError((Shell)this.shell, (String)title, (String)message);
            return;
        }
        WizardDialog dialog = new WizardDialog(this.shell, (IWizard)wizard);
        dialog.create();
        if (dialog.open() == 0) {
            this.actionGroup.setWorkingSet(wizard.getSelection());
        }
    }
}

