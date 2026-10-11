/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.dialogs.PropertyDialog;

public class PropertyDialogHandler
extends AbstractHandler {
    private String initialPageId = null;

    public Object execute(ExecutionEvent event) throws ExecutionException {
        Shell shell;
        PropertyDialog dialog;
        Object element = null;
        ISelection currentSelection = HandlerUtil.getCurrentSelection(event);
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        if (!(currentSelection instanceof IStructuredSelection)) {
            return null;
        }
        element = ((IStructuredSelection)currentSelection).getFirstElement();
        if (activeWorkbenchWindow != null && (dialog = PropertyDialog.createDialogOn(shell = activeWorkbenchWindow.getShell(), this.initialPageId, element)) != null) {
            dialog.open();
        }
        return null;
    }
}

