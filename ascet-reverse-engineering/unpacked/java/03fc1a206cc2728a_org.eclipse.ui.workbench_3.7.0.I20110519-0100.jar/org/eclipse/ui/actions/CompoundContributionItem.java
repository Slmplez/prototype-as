/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;

public abstract class CompoundContributionItem
extends ContributionItem {
    private boolean dirty = true;
    private IMenuListener menuListener = new IMenuListener(){

        public void menuAboutToShow(IMenuManager manager) {
            manager.markDirty();
            CompoundContributionItem.this.dirty = true;
        }
    };
    private IContributionItem[] oldItems;

    protected CompoundContributionItem() {
    }

    protected CompoundContributionItem(String id) {
        super(id);
    }

    public void fill(Menu menu, int index) {
        if (index == -1) {
            index = menu.getItemCount();
        }
        if (!this.dirty && menu.getParentItem() != null) {
            new MenuItem(menu, 0, index);
            return;
        }
        IContributionItem[] items = this.getContributionItemsToFill();
        int i = 0;
        while (i < items.length) {
            IContributionItem item = items[i];
            int oldItemCount = menu.getItemCount();
            if (item.isVisible()) {
                item.fill(menu, index);
            }
            int newItemCount = menu.getItemCount();
            int numAdded = newItemCount - oldItemCount;
            index += numAdded;
            ++i;
        }
        this.dirty = false;
    }

    protected abstract IContributionItem[] getContributionItems();

    private IContributionItem[] getContributionItemsToFill() {
        this.disposeOldItems();
        this.oldItems = this.getContributionItems();
        return this.oldItems;
    }

    private void disposeOldItems() {
        if (this.oldItems != null) {
            int i = 0;
            while (i < this.oldItems.length) {
                IContributionItem oldItem = this.oldItems[i];
                oldItem.dispose();
                ++i;
            }
            this.oldItems = null;
        }
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isDynamic() {
        return true;
    }

    public void dispose() {
        this.disposeOldItems();
        super.dispose();
    }

    public void setParent(IContributionManager parent) {
        IMenuManager menuMgr;
        if (this.getParent() instanceof IMenuManager) {
            menuMgr = (IMenuManager)this.getParent();
            menuMgr.removeMenuListener(this.menuListener);
        }
        if (parent instanceof IMenuManager) {
            menuMgr = (IMenuManager)parent;
            menuMgr.addMenuListener(this.menuListener);
        }
        super.setParent(parent);
    }
}

