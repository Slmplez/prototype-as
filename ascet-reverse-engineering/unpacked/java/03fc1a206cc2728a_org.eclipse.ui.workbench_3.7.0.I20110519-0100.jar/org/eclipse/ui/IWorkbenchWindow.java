/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPageService;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.services.IServiceLocator;

public interface IWorkbenchWindow
extends IPageService,
IRunnableContext,
IServiceLocator,
IShellProvider {
    public boolean close();

    public IWorkbenchPage getActivePage();

    public IWorkbenchPage[] getPages();

    public IPartService getPartService();

    public ISelectionService getSelectionService();

    public Shell getShell();

    public IWorkbench getWorkbench();

    public boolean isApplicationMenu(String var1);

    public IWorkbenchPage openPage(String var1, IAdaptable var2) throws WorkbenchException;

    public IWorkbenchPage openPage(IAdaptable var1) throws WorkbenchException;

    public void run(boolean var1, boolean var2, IRunnableWithProgress var3) throws InvocationTargetException, InterruptedException;

    public void setActivePage(IWorkbenchPage var1);

    public IExtensionTracker getExtensionTracker();
}

