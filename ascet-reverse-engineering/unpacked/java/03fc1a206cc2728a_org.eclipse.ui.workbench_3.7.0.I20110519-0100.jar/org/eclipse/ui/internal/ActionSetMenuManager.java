/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.SubContributionItem
 *  org.eclipse.jface.action.SubMenuManager
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.action.SubMenuManager;
import org.eclipse.ui.internal.ActionSetContributionItem;

public class ActionSetMenuManager
extends SubMenuManager {
    private String actionSetId;

    public ActionSetMenuManager(IMenuManager mgr, String actionSetId) {
        super(mgr);
        this.actionSetId = actionSetId;
    }

    public IContributionItem find(String id) {
        IContributionItem item = this.getParentMenuManager().find(id);
        if (item instanceof SubContributionItem) {
            item = this.unwrap(item);
        }
        if (item instanceof IMenuManager) {
            IMenuManager menu = (IMenuManager)item;
            if (menu instanceof SubMenuManager) {
                menu = (IMenuManager)((SubMenuManager)menu).getParent();
            }
            item = this.getWrapper(menu);
        }
        return item;
    }

    public IContributionItem[] getItems() {
        return this.getParentMenuManager().getItems();
    }

    protected SubContributionItem wrap(IContributionItem item) {
        return new ActionSetContributionItem(item, this.actionSetId);
    }

    protected SubMenuManager wrapMenu(IMenuManager menu) {
        return new ActionSetMenuManager(menu, this.actionSetId);
    }
}

