/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchPage;

public class EditActionSetsHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) throws ExecutionException {
        WorkbenchPage page;
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        if (activeWorkbenchWindow != null && (page = (WorkbenchPage)activeWorkbenchWindow.getActivePage()) != null) {
            page.editActionSets();
        }
        return null;
    }
}

