/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 */
package org.eclipse.ui.application;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;

public interface IActionBarConfigurer {
    public IWorkbenchWindowConfigurer getWindowConfigurer();

    public IMenuManager getMenuManager();

    public IStatusLineManager getStatusLineManager();

    public ICoolBarManager getCoolBarManager();

    public void registerGlobalAction(IAction var1);
}

