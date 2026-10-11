/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.SubContributionManager;

public class SubToolBarManager
extends SubContributionManager
implements IToolBarManager {
    public SubToolBarManager(IToolBarManager mgr) {
        super(mgr);
    }

    protected final IToolBarManager getParentToolBarManager() {
        return (IToolBarManager)this.getParent();
    }

    public void update(boolean force) {
        this.getParentToolBarManager().update(force);
    }
}

