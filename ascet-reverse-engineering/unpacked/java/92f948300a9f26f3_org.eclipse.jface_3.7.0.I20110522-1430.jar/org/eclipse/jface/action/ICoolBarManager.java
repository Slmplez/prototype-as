/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;

public interface ICoolBarManager
extends IContributionManager {
    public static final String SIZE = "size";

    public void add(IToolBarManager var1);

    public IMenuManager getContextMenuManager();

    public boolean getLockLayout();

    public int getStyle();

    public void setContextMenuManager(IMenuManager var1);

    public void setLockLayout(boolean var1);
}

