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
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchSite;

public interface IWorkbenchPartSite
extends IWorkbenchSite {
    public String getId();

    public String getPluginId();

    public String getRegisteredName();

    public void registerContextMenu(String var1, MenuManager var2, ISelectionProvider var3);

    public void registerContextMenu(MenuManager var1, ISelectionProvider var2);

    public IKeyBindingService getKeyBindingService();

    public IWorkbenchPart getPart();
}

