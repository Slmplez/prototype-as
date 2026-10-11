/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.services.IServiceLocator;

public interface IWorkbenchSite
extends IAdaptable,
IShellProvider,
IServiceLocator {
    public IWorkbenchPage getPage();

    public ISelectionProvider getSelectionProvider();

    public Shell getShell();

    public IWorkbenchWindow getWorkbenchWindow();

    public void setSelectionProvider(ISelectionProvider var1);
}

