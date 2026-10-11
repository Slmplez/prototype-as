/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.ui.internal;

import java.util.List;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.IObjectContributor;

public interface IObjectActionContributor
extends IObjectContributor {
    public boolean contributeObjectActions(IWorkbenchPart var1, IMenuManager var2, ISelectionProvider var3, List var4);

    public boolean contributeObjectMenus(IMenuManager var1, ISelectionProvider var2);

    public void contributeObjectActionIdOverrides(List var1);
}

