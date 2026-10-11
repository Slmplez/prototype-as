/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuListener;

public interface IMenuManager
extends IContributionManager,
IContributionItem {
    public void addMenuListener(IMenuListener var1);

    public IMenuManager findMenuUsingPath(String var1);

    public IContributionItem findUsingPath(String var1);

    public boolean getRemoveAllWhenShown();

    public boolean isEnabled();

    public void removeMenuListener(IMenuListener var1);

    public void setRemoveAllWhenShown(boolean var1);

    public void updateAll(boolean var1);
}

