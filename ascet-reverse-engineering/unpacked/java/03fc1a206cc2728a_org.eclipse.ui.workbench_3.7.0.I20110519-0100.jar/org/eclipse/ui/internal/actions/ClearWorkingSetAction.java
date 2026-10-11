/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal.actions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.WorkingSetFilterActionGroup;
import org.eclipse.ui.internal.WorkbenchMessages;

public class ClearWorkingSetAction
extends Action {
    private WorkingSetFilterActionGroup actionGroup;

    public ClearWorkingSetAction(WorkingSetFilterActionGroup actionGroup) {
        super(WorkbenchMessages.ClearWorkingSetAction_text);
        Assert.isNotNull((Object)actionGroup);
        this.setToolTipText(WorkbenchMessages.ClearWorkingSetAction_toolTip);
        this.setEnabled(actionGroup.getWorkingSet() != null);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, "org.eclipse.ui.clear_working_set_action_context");
        this.actionGroup = actionGroup;
    }

    public void run() {
        this.actionGroup.setWorkingSet(null);
    }
}

