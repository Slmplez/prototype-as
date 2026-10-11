/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.ui;

import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IWorkbenchPartSite;

public interface IEditorSite
extends IWorkbenchPartSite {
    public IEditorActionBarContributor getActionBarContributor();

    public IActionBars getActionBars();

    public void registerContextMenu(MenuManager var1, ISelectionProvider var2, boolean var3);

    public void registerContextMenu(String var1, MenuManager var2, ISelectionProvider var3, boolean var4);
}

