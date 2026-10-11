/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Menu;

class ApplicationMenuManager
extends MenuManager {
    private final Menu appMenu;
    private boolean disposing;

    public ApplicationMenuManager(Menu appMenu) {
        this.appMenu = appMenu;
    }

    public Menu createMenuBar(Decorations parent) {
        return this.appMenu;
    }

    protected boolean menuExist() {
        return !this.disposing;
    }

    protected int getMenuItemCount() {
        return this.appMenu.getItemCount();
    }

    protected Item getMenuItem(int index) {
        return this.appMenu.getItem(index);
    }

    protected Item[] getMenuItems() {
        return this.appMenu.getItems();
    }

    protected void doItemFill(IContributionItem ci, int index) {
        ci.fill(this.appMenu, index);
    }

    public void dispose() {
        this.disposing = true;
        super.dispose();
        this.disposing = false;
    }
}

