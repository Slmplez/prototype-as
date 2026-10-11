/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.provisional.action;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IToolBarManager;

public interface IToolBarContributionItem
extends IContributionItem {
    public int getCurrentHeight();

    public int getCurrentWidth();

    public int getMinimumItemsToShow();

    public boolean getUseChevron();

    public void setCurrentHeight(int var1);

    public void setCurrentWidth(int var1);

    public void setMinimumItemsToShow(int var1);

    public void setUseChevron(boolean var1);

    public IToolBarManager getToolBarManager();

    public IContributionManager getParent();
}

