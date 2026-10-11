/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.ui.part;

import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchSite;

public interface IPageSite
extends IWorkbenchSite {
    public void registerContextMenu(String var1, MenuManager var2, ISelectionProvider var3);

    public IActionBars getActionBars();
}

