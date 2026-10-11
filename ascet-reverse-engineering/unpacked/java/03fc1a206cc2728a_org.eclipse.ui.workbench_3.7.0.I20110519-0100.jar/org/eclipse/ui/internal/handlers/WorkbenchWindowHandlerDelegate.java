/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.handlers.ExecutableExtensionHandler;
import org.eclipse.ui.internal.handlers.IWorkbenchWindowHandlerDelegate;

public abstract class WorkbenchWindowHandlerDelegate
extends ExecutableExtensionHandler
implements IWorkbenchWindowHandlerDelegate {
    public void init(IWorkbenchWindow window) {
    }

    public void run(IAction action) {
        try {
            this.execute(new ExecutionEvent());
        }
        catch (ExecutionException executionException) {}
    }

    public void selectionChanged(IAction action, ISelection selection) {
    }
}

