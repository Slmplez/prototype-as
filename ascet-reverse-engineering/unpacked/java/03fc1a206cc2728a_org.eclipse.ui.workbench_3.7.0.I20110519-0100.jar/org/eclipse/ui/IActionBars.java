/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 */
package org.eclipse.ui;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.ui.services.IServiceLocator;

public interface IActionBars {
    public void clearGlobalActionHandlers();

    public IAction getGlobalActionHandler(String var1);

    public IMenuManager getMenuManager();

    public IServiceLocator getServiceLocator();

    public IStatusLineManager getStatusLineManager();

    public IToolBarManager getToolBarManager();

    public void setGlobalActionHandler(String var1, IAction var2);

    public void updateActionBars();
}

