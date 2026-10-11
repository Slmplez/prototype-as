/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.WorkbenchPage;

public class WorkbookEditorsHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) throws ExecutionException {
        WorkbenchPage wbp;
        EditorAreaHelper eah;
        IWorkbenchWindow workbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        if (workbenchWindow == null) {
            return null;
        }
        IWorkbenchPage page = workbenchWindow.getActivePage();
        if (page != null && (eah = (wbp = (WorkbenchPage)page).getEditorPresentation()) != null) {
            eah.displayEditorList();
        }
        return null;
    }
}

