/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.dialogs.MessageDialogWithToggle
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.MessageDialogWithToggle;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;

public class ResetPerspectiveHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) {
        IPerspectiveDescriptor descriptor;
        WorkbenchPage page;
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        if (activeWorkbenchWindow != null && (page = (WorkbenchPage)activeWorkbenchWindow.getActivePage()) != null && (descriptor = page.getPerspective()) != null) {
            String message;
            boolean offerRevertToBase = false;
            if (descriptor instanceof PerspectiveDescriptor) {
                PerspectiveDescriptor desc = (PerspectiveDescriptor)descriptor;
                boolean bl = offerRevertToBase = desc.isPredefined() && desc.hasCustomDefinition();
            }
            if (offerRevertToBase) {
                message = NLS.bind((String)WorkbenchMessages.RevertPerspective_message, (Object)descriptor.getLabel());
                boolean toggleState = false;
                MessageDialogWithToggle dialog = MessageDialogWithToggle.open((int)3, (Shell)activeWorkbenchWindow.getShell(), (String)WorkbenchMessages.RevertPerspective_title, (String)message, (String)WorkbenchMessages.RevertPerspective_option, (boolean)toggleState, null, null, (int)0x10000000);
                if (dialog.getReturnCode() == 2) {
                    if (dialog.getToggleState()) {
                        PerspectiveRegistry reg = (PerspectiveRegistry)PlatformUI.getWorkbench().getPerspectiveRegistry();
                        reg.revertPerspective(descriptor);
                    }
                    page.resetPerspective();
                }
            } else {
                message = NLS.bind((String)WorkbenchMessages.ResetPerspective_message, (Object)descriptor.getLabel());
                boolean result = MessageDialog.open((int)3, (Shell)activeWorkbenchWindow.getShell(), (String)WorkbenchMessages.ResetPerspective_title, (String)message, (int)0x10000000);
                if (result) {
                    page.resetPerspective();
                }
            }
        }
        return null;
    }
}

