/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.actions;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.action.Action;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.misc.StatusUtil;

public class OpenInNewWindowAction
extends Action
implements ActionFactory.IWorkbenchAction {
    private IWorkbenchWindow workbenchWindow;
    private IAdaptable pageInput;

    public OpenInNewWindowAction(IWorkbenchWindow window) {
        this(window, ((Workbench)window.getWorkbench()).getDefaultPageInput());
        this.setActionDefinitionId("org.eclipse.ui.window.newWindow");
    }

    public OpenInNewWindowAction(IWorkbenchWindow window, IAdaptable input) {
        super(WorkbenchMessages.OpenInNewWindowAction_text);
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.workbenchWindow = window;
        this.setToolTipText(WorkbenchMessages.OpenInNewWindowAction_toolTip);
        this.pageInput = input;
        window.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.open_new_window_action_context");
    }

    public void setPageInput(IAdaptable input) {
        this.pageInput = input;
    }

    public void run() {
        if (this.workbenchWindow == null) {
            return;
        }
        try {
            IWorkbenchPage page = this.workbenchWindow.getActivePage();
            String perspId = page != null && page.getPerspective() != null ? page.getPerspective().getId() : this.workbenchWindow.getWorkbench().getPerspectiveRegistry().getDefaultPerspective();
            this.workbenchWindow.getWorkbench().openWorkbenchWindow(perspId, this.pageInput);
        }
        catch (WorkbenchException e) {
            StatusUtil.handleStatus(e.getStatus(), String.valueOf(WorkbenchMessages.OpenInNewWindowAction_errorTitle) + ": " + e.getMessage(), 2);
        }
    }

    public void dispose() {
        this.workbenchWindow = null;
    }
}

