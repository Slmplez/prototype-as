/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.handlers;

import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.SelectPerspectiveDialog;

public final class ShowPerspectiveHandler
extends AbstractHandler {
    public final Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        Map parameters = event.getParameters();
        Object value = parameters.get("org.eclipse.ui.perspectives.showPerspective.perspectiveId");
        String newWindow = (String)parameters.get("org.eclipse.ui.perspectives.showPerspective.newWindow");
        if (value == null) {
            this.openOther(window);
        } else if (newWindow == null || newWindow.equalsIgnoreCase("false")) {
            this.openPerspective((String)value, window);
        } else {
            this.openNewWindowPerspective((String)value, window);
        }
        return null;
    }

    private void openNewWindowPerspective(String perspectiveId, IWorkbenchWindow activeWorkbenchWindow) throws ExecutionException {
        IWorkbench workbench = PlatformUI.getWorkbench();
        try {
            IAdaptable input = ((Workbench)workbench).getDefaultPageInput();
            workbench.openWorkbenchWindow(perspectiveId, input);
        }
        catch (WorkbenchException e) {
            ErrorDialog.openError((Shell)activeWorkbenchWindow.getShell(), (String)WorkbenchMessages.ChangeToPerspectiveMenu_errorTitle, (String)e.getMessage(), (IStatus)e.getStatus());
        }
    }

    private final void openOther(IWorkbenchWindow activeWorkbenchWindow) throws ExecutionException {
        SelectPerspectiveDialog dialog = new SelectPerspectiveDialog(activeWorkbenchWindow.getShell(), WorkbenchPlugin.getDefault().getPerspectiveRegistry());
        dialog.open();
        if (dialog.getReturnCode() == 1) {
            return;
        }
        IPerspectiveDescriptor descriptor = dialog.getSelection();
        if (descriptor != null) {
            int openPerspMode = WorkbenchPlugin.getDefault().getPreferenceStore().getInt("OPEN_PERSPECTIVE_MODE");
            IWorkbenchPage page = activeWorkbenchWindow.getActivePage();
            IPerspectiveDescriptor persp = page == null ? null : page.getPerspective();
            String perspectiveId = descriptor.getId();
            if (2 == openPerspMode && persp != null) {
                this.openNewWindowPerspective(perspectiveId, activeWorkbenchWindow);
            } else {
                this.openPerspective(perspectiveId, activeWorkbenchWindow);
            }
        }
    }

    private final void openPerspective(String perspectiveId, IWorkbenchWindow activeWorkbenchWindow) throws ExecutionException {
        IWorkbench workbench = PlatformUI.getWorkbench();
        IWorkbenchPage activePage = activeWorkbenchWindow.getActivePage();
        IPerspectiveDescriptor desc = activeWorkbenchWindow.getWorkbench().getPerspectiveRegistry().findPerspectiveWithId(perspectiveId);
        if (desc == null) {
            throw new ExecutionException("Perspective " + perspectiveId + " cannot be found.");
        }
        try {
            if (activePage != null) {
                activePage.setPerspective(desc);
            } else {
                IAdaptable input = ((Workbench)workbench).getDefaultPageInput();
                activeWorkbenchWindow.openPage(perspectiveId, input);
            }
        }
        catch (WorkbenchException e) {
            throw new ExecutionException("Perspective could not be opened.", (Throwable)((Object)e));
        }
    }
}

