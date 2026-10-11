/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.SavePerspectiveDialog;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;

public class SavePerspectiveHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) {
        PerspectiveDescriptor descriptor;
        WorkbenchPage page;
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        if (activeWorkbenchWindow != null && (page = (WorkbenchPage)activeWorkbenchWindow.getActivePage()) != null && (descriptor = (PerspectiveDescriptor)page.getPerspective()) != null) {
            if (descriptor.isSingleton()) {
                this.saveSingleton(page);
            } else {
                this.saveNonSingleton(page, descriptor);
            }
        }
        return null;
    }

    private void saveSingleton(IWorkbenchPage page) {
        String[] buttons = new String[]{IDialogConstants.OK_LABEL, IDialogConstants.CANCEL_LABEL};
        MessageDialog d = new MessageDialog(page.getWorkbenchWindow().getShell(), WorkbenchMessages.SavePerspective_overwriteTitle, null, WorkbenchMessages.SavePerspective_singletonQuestion, 3, buttons, 0);
        if (d.open() == 0) {
            page.savePerspective();
        }
    }

    private void saveNonSingleton(IWorkbenchPage page, PerspectiveDescriptor oldDesc) {
        String name;
        PerspectiveRegistry reg = (PerspectiveRegistry)WorkbenchPlugin.getDefault().getPerspectiveRegistry();
        SavePerspectiveDialog dlg = new SavePerspectiveDialog(page.getWorkbenchWindow().getShell(), reg);
        IPerspectiveDescriptor description = reg.findPerspectiveWithId(oldDesc.getId());
        dlg.setInitialSelection(description);
        if (dlg.open() != 0) {
            return;
        }
        PerspectiveDescriptor newDesc = (PerspectiveDescriptor)dlg.getPersp();
        if (newDesc == null && (newDesc = reg.createPerspective(name = dlg.getPerspName(), (PerspectiveDescriptor)description)) == null) {
            MessageDialog.openError((Shell)dlg.getShell(), (String)WorkbenchMessages.SavePerspective_errorTitle, (String)WorkbenchMessages.SavePerspective_errorMessage);
            return;
        }
        page.savePerspectiveAs(newDesc);
    }
}

