/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.services.IServiceLocator;

public class WWinActionBars
implements IActionBars2 {
    private WorkbenchWindow window;

    public WWinActionBars(WorkbenchWindow window) {
        this.window = window;
    }

    public void clearGlobalActionHandlers() {
    }

    public ICoolBarManager getCoolBarManager() {
        return this.window.getCoolBarManager2();
    }

    public IAction getGlobalActionHandler(String actionID) {
        return null;
    }

    public IMenuManager getMenuManager() {
        return this.window.getMenuManager();
    }

    public final IServiceLocator getServiceLocator() {
        return this.window;
    }

    public IStatusLineManager getStatusLineManager() {
        return this.window.getStatusLineManager();
    }

    public IToolBarManager getToolBarManager() {
        Assert.isTrue((boolean)false);
        return null;
    }

    public void setGlobalActionHandler(String actionID, IAction handler) {
    }

    public void updateActionBars() {
        this.window.updateActionBars();
    }
}

