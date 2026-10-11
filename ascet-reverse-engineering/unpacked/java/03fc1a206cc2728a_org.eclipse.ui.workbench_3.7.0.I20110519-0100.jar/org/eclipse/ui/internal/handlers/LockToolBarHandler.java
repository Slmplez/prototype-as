/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.jface.action.ICoolBarManager
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.WorkbenchWindow;

public class LockToolBarHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) throws ExecutionException {
        ICoolBarManager coolBarManager;
        WorkbenchWindow workbenchWindow = (WorkbenchWindow)HandlerUtil.getActiveWorkbenchWindow(event);
        if (workbenchWindow != null && (coolBarManager = workbenchWindow.getCoolBarManager2()) != null) {
            boolean oldValue = HandlerUtil.toggleCommandState(event.getCommand());
            coolBarManager.setLockLayout(!oldValue);
        }
        return null;
    }
}

