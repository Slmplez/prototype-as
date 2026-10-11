/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.BaseSelectionListenerAction;
import org.eclipse.ui.internal.WorkbenchMessages;

public class ImportResourcesAction
extends BaseSelectionListenerAction
implements ActionFactory.IWorkbenchAction {
    private ActionFactory.IWorkbenchAction action;
    private IWorkbenchWindow workbenchWindow;

    public ImportResourcesAction(IWorkbenchWindow window) {
        super(WorkbenchMessages.ImportResourcesAction_text);
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.workbenchWindow = window;
        this.action = ActionFactory.IMPORT.create(window);
        this.setText(this.action.getText());
        this.setToolTipText(this.action.getToolTipText());
        this.setId(this.action.getId());
        this.setActionDefinitionId(this.action.getActionDefinitionId());
        window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.import_action_context");
        this.setImageDescriptor(this.action.getImageDescriptor());
    }

    public ImportResourcesAction(IWorkbench workbench) {
        this(workbench.getActiveWorkbenchWindow());
    }

    public void run() {
        if (this.workbenchWindow == null) {
            return;
        }
        this.action.run();
    }

    public void setSelection(IStructuredSelection selection) {
        this.selectionChanged(selection);
    }

    public void dispose() {
        this.workbenchWindow = null;
        if (this.action != null) {
            this.action.dispose();
        }
        this.action = null;
    }
}

