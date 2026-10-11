/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.SubContributionManager;
import org.eclipse.jface.action.ToolBarContributionItem;

public class SubCoolBarManager
extends SubContributionManager
implements ICoolBarManager {
    public SubCoolBarManager(ICoolBarManager mgr) {
        super(mgr);
        Assert.isNotNull((Object)mgr);
    }

    public void add(IToolBarManager toolBarManager) {
        Assert.isNotNull((Object)toolBarManager);
        super.add(new ToolBarContributionItem(toolBarManager));
    }

    public int getStyle() {
        return ((ICoolBarManager)this.getParent()).getStyle();
    }

    protected final ICoolBarManager getParentCoolBarManager() {
        return (ICoolBarManager)this.getParent();
    }

    public boolean getLockLayout() {
        return this.getParentCoolBarManager().getLockLayout();
    }

    public void setLockLayout(boolean value) {
    }

    public IMenuManager getContextMenuManager() {
        return null;
    }

    public void setContextMenuManager(IMenuManager menuManager) {
    }

    public void update(boolean force) {
        this.getParentCoolBarManager().update(force);
    }
}

