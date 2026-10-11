/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.util.Policy;

public abstract class ContributionManager
implements IContributionManager {
    private List contributions = new ArrayList();
    private boolean isDirty = true;
    private int dynamicItems = 0;
    private IContributionManagerOverrides overrides;

    protected ContributionManager() {
    }

    public void add(IAction action) {
        Assert.isNotNull((Object)action, (String)"Action must not be null");
        this.add(new ActionContributionItem(action));
    }

    public void add(IContributionItem item) {
        Assert.isNotNull((Object)item, (String)"Item must not be null");
        if (this.allowItem(item)) {
            this.contributions.add(item);
            this.itemAdded(item);
        }
    }

    private void addToGroup(String groupName, IContributionItem item, boolean append) {
        Iterator items = this.contributions.iterator();
        int i = 0;
        while (items.hasNext()) {
            String id;
            IContributionItem o = (IContributionItem)items.next();
            if (o.isGroupMarker() && (id = o.getId()) != null && id.equalsIgnoreCase(groupName)) {
                ++i;
                if (append) {
                    while (items.hasNext()) {
                        IContributionItem ci = (IContributionItem)items.next();
                        if (ci.isGroupMarker()) break;
                        ++i;
                    }
                }
                if (this.allowItem(item)) {
                    this.contributions.add(i, item);
                    this.itemAdded(item);
                }
                return;
            }
            ++i;
        }
        throw new IllegalArgumentException("Group not found: " + groupName);
    }

    public void appendToGroup(String groupName, IAction action) {
        this.addToGroup(groupName, new ActionContributionItem(action), true);
    }

    public void appendToGroup(String groupName, IContributionItem item) {
        this.addToGroup(groupName, item, true);
    }

    protected boolean allowItem(IContributionItem itemToAdd) {
        return true;
    }

    protected void dumpStatistics() {
        int size = 0;
        if (this.contributions != null) {
            size = this.contributions.size();
        }
        System.out.println(this.toString());
        System.out.println("   Number of elements: " + size);
        int sum = 0;
        int i = 0;
        while (i < size) {
            if (((IContributionItem)this.contributions.get(i)).isVisible()) {
                ++sum;
            }
            ++i;
        }
        System.out.println("   Number of visible elements: " + sum);
        System.out.println("   Is dirty: " + this.isDirty());
    }

    public IContributionItem find(String id) {
        Iterator e = this.contributions.iterator();
        while (e.hasNext()) {
            IContributionItem item = (IContributionItem)e.next();
            String itemId = item.getId();
            if (itemId == null || !itemId.equalsIgnoreCase(id)) continue;
            return item;
        }
        return null;
    }

    public IContributionItem[] getItems() {
        IContributionItem[] items = new IContributionItem[this.contributions.size()];
        this.contributions.toArray(items);
        return items;
    }

    public int getSize() {
        return this.contributions.size();
    }

    public IContributionManagerOverrides getOverrides() {
        if (this.overrides == null) {
            this.overrides = new IContributionManagerOverrides(){

                public Boolean getEnabled(IContributionItem item) {
                    return null;
                }

                public Integer getAccelerator(IContributionItem item) {
                    return null;
                }

                public String getAcceleratorText(IContributionItem item) {
                    return null;
                }

                public String getText(IContributionItem item) {
                    return null;
                }

                public Boolean getVisible(IContributionItem item) {
                    return null;
                }
            };
        }
        return this.overrides;
    }

    protected boolean hasDynamicItems() {
        return this.dynamicItems > 0;
    }

    public int indexOf(String id) {
        int i = 0;
        while (i < this.contributions.size()) {
            IContributionItem item = (IContributionItem)this.contributions.get(i);
            String itemId = item.getId();
            if (itemId != null && itemId.equalsIgnoreCase(id)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected int indexOf(IContributionItem item) {
        return this.contributions.indexOf(item);
    }

    public void insert(int index, IContributionItem item) {
        if (index > this.contributions.size()) {
            throw new IndexOutOfBoundsException("inserting " + item.getId() + " at " + index);
        }
        if (this.allowItem(item)) {
            this.contributions.add(index, item);
            this.itemAdded(item);
        }
    }

    public void insertAfter(String ID, IAction action) {
        this.insertAfter(ID, new ActionContributionItem(action));
    }

    public void insertAfter(String ID, IContributionItem item) {
        IContributionItem ci = this.find(ID);
        if (ci == null) {
            throw new IllegalArgumentException("can't find ID" + ID);
        }
        int ix = this.contributions.indexOf(ci);
        if (ix >= 0 && this.allowItem(item)) {
            this.contributions.add(ix + 1, item);
            this.itemAdded(item);
        }
    }

    public void insertBefore(String ID, IAction action) {
        this.insertBefore(ID, new ActionContributionItem(action));
    }

    public void insertBefore(String ID, IContributionItem item) {
        IContributionItem ci = this.find(ID);
        if (ci == null) {
            throw new IllegalArgumentException("can't find ID " + ID);
        }
        int ix = this.contributions.indexOf(ci);
        if (ix >= 0 && this.allowItem(item)) {
            this.contributions.add(ix, item);
            this.itemAdded(item);
        }
    }

    public boolean isDirty() {
        if (this.isDirty) {
            return true;
        }
        if (this.hasDynamicItems()) {
            Iterator iter = this.contributions.iterator();
            while (iter.hasNext()) {
                IContributionItem item = (IContributionItem)iter.next();
                if (!item.isDirty()) continue;
                return true;
            }
        }
        return false;
    }

    public boolean isEmpty() {
        return this.contributions.isEmpty();
    }

    protected void itemAdded(IContributionItem item) {
        item.setParent(this);
        this.markDirty();
        if (item.isDynamic()) {
            ++this.dynamicItems;
        }
    }

    protected void itemRemoved(IContributionItem item) {
        item.setParent(null);
        this.markDirty();
        if (item.isDynamic()) {
            --this.dynamicItems;
        }
    }

    public void markDirty() {
        this.setDirty(true);
    }

    public void prependToGroup(String groupName, IAction action) {
        this.addToGroup(groupName, new ActionContributionItem(action), false);
    }

    public void prependToGroup(String groupName, IContributionItem item) {
        this.addToGroup(groupName, item, false);
    }

    public IContributionItem remove(String ID) {
        IContributionItem ci = this.find(ID);
        if (ci == null) {
            return null;
        }
        return this.remove(ci);
    }

    public IContributionItem remove(IContributionItem item) {
        if (this.contributions.remove(item)) {
            this.itemRemoved(item);
            return item;
        }
        return null;
    }

    public void removeAll() {
        IContributionItem[] items = this.getItems();
        this.contributions.clear();
        int i = 0;
        while (i < items.length) {
            IContributionItem item = items[i];
            this.itemRemoved(item);
            ++i;
        }
        this.dynamicItems = 0;
        this.markDirty();
    }

    public boolean replaceItem(String identifier, IContributionItem replacementItem) {
        if (identifier == null) {
            return false;
        }
        int index = this.indexOf(identifier);
        if (index < 0) {
            return false;
        }
        IContributionItem oldItem = (IContributionItem)this.contributions.get(index);
        this.itemRemoved(oldItem);
        this.contributions.set(index, replacementItem);
        this.itemAdded(replacementItem);
        int i = this.contributions.size() - 1;
        while (i > index) {
            IContributionItem item = (IContributionItem)this.contributions.get(i);
            if (item != null && identifier.equals(item.getId())) {
                if (Policy.TRACE_TOOLBAR) {
                    System.out.println("Removing duplicate on replace: " + identifier);
                }
                this.contributions.remove(i);
                this.itemRemoved(item);
            }
            --i;
        }
        return true;
    }

    protected void setDirty(boolean dirty) {
        this.isDirty = dirty;
    }

    public void setOverrides(IContributionManagerOverrides newOverrides) {
        this.overrides = newOverrides;
    }

    protected void internalSetItems(IContributionItem[] items) {
        this.contributions.clear();
        int i = 0;
        while (i < items.length) {
            if (this.allowItem(items[i])) {
                this.contributions.add(items[i]);
            }
            ++i;
        }
    }
}

