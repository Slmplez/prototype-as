/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.quickaccess.QuickAccessDialog;

public class QuickAccessHandler
extends AbstractHandler {
    private IWorkbenchWindow window;

    public Object execute(ExecutionEvent executionEvent) {
        this.window = HandlerUtil.getActiveWorkbenchWindow(executionEvent);
        if (this.window == null) {
            return null;
        }
        QuickAccessDialog popupDialog = new QuickAccessDialog(this.window, executionEvent.getCommand());
        popupDialog.open();
        return null;
    }
}

