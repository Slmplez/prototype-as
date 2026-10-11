/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.SubContributionItem;

public abstract class SubContributionManager
implements IContributionManager {
    private IContributionManager parentMgr;
    private Map mapItemToWrapper = new HashMap();
    private boolean visible = false;

    public SubContributionManager(IContributionManager mgr) {
        this.parentMgr = mgr;
    }

    public void add(IAction action) {
        this.add(new ActionContributionItem(action));
    }

    public void add(IContributionItem item) {
        SubContributionItem wrap = this.wrap(item);
        wrap.setVisible(this.visible);
        this.parentMgr.add(wrap);
        this.itemAdded(item, wrap);
    }

    public void appendToGroup(String groupName, IAction action) {
        this.appendToGroup(groupName, new ActionContributionItem(action));
    }

    public void appendToGroup(String groupName, IContributionItem item) {
        SubContributionItem wrap = this.wrap(item);
        wrap.setVisible(this.visible);
        this.parentMgr.appendToGroup(groupName, wrap);
        this.itemAdded(item, wrap);
    }

    public void disposeManager() {
        Iterator it = this.mapItemToWrapper.values().iterator();
        while (it.hasNext()) {
            IContributionItem item = (IContributionItem)it.next();
            item.dispose();
        }
        this.removeAll();
    }

    public IContributionItem find(String id) {
        IContributionItem item = this.parentMgr.find(id);
        item = this.unwrap(item);
        return item;
    }

    public IContributionItem[] getItems() {
        IContributionItem[] result = new IContributionItem[this.mapItemToWrapper.size()];
        this.mapItemToWrapper.keySet().toArray(result);
        return result;
    }

    public IContributionManager getParent() {
        return this.parentMgr;
    }

    public IContributionManagerOverrides getOverrides() {
        return this.parentMgr.getOverrides();
    }

    public void insertAfter(String id, IAction action) {
        this.insertAfter(id, new ActionContributionItem(action));
    }

    public void insertAfter(String id, IContributionItem item) {
        SubContributionItem wrap = this.wrap(item);
        wrap.setVisible(this.visible);
        this.parentMgr.insertAfter(id, wrap);
        this.itemAdded(item, wrap);
    }

    public void insertBefore(String id, IAction action) {
        this.insertBefore(id, new ActionContributionItem(action));
    }

    public void insertBefore(String id, IContributionItem item) {
        SubContributionItem wrap = this.wrap(item);
        wrap.setVisible(this.visible);
        this.parentMgr.insertBefore(id, wrap);
        this.itemAdded(item, wrap);
    }

    public boolean isDirty() {
        return this.parentMgr.isDirty();
    }

    public boolean isEmpty() {
        return this.parentMgr.isEmpty();
    }

    public boolean isVisible() {
        return this.visible;
    }

    protected void itemAdded(IContributionItem item, SubContributionItem wrap) {
        item.setParent(this);
        this.mapItemToWrapper.put(item, wrap);
    }

    protected void itemRemoved(IContributionItem item) {
        this.mapItemToWrapper.remove(item);
        item.setParent(null);
    }

    public Enumeration items() {
        final Iterator i = this.mapItemToWrapper.values().iterator();
        return new Enumeration(){

            public boolean hasMoreElements() {
                return i.hasNext();
            }

            public Object nextElement() {
                return i.next();
            }
        };
    }

    public void markDirty() {
        this.parentMgr.markDirty();
    }

    public void prependToGroup(String groupName, IAction action) {
        this.prependToGroup(groupName, new ActionContributionItem(action));
    }

    public void prependToGroup(String groupName, IContributionItem item) {
        SubContributionItem wrap = this.wrap(item);
        wrap.setVisible(this.visible);
        this.parentMgr.prependToGroup(groupName, wrap);
        this.itemAdded(item, wrap);
    }

    public IContributionItem remove(String id) {
        IContributionItem result = this.parentMgr.remove(id);
        if (result != null) {
            IContributionItem item = this.unwrap(result);
            this.itemRemoved(item);
        }
        return result;
    }

    public IContributionItem remove(IContributionItem item) {
        SubContributionItem wrap = (SubContributionItem)this.mapItemToWrapper.get(item);
        if (wrap == null) {
            return null;
        }
        IContributionItem result = this.parentMgr.remove(wrap);
        if (result == null) {
            return null;
        }
        this.itemRemoved(item);
        return item;
    }

    public void removeAll() {
        Object[] array = this.mapItemToWrapper.keySet().toArray();
        int i = 0;
        while (i < array.length) {
            IContributionItem item = (IContributionItem)array[i];
            this.remove(item);
            ++i;
        }
        this.mapItemToWrapper.clear();
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
        if (this.mapItemToWrapper.size() > 0) {
            Iterator it = this.mapItemToWrapper.values().iterator();
            while (it.hasNext()) {
                IContributionItem item = (IContributionItem)it.next();
                item.setVisible(visible);
            }
            this.parentMgr.markDirty();
        }
    }

    protected SubContributionItem wrap(IContributionItem item) {
        return new SubContributionItem(item);
    }

    protected IContributionItem unwrap(IContributionItem item) {
        if (item instanceof SubContributionItem) {
            return ((SubContributionItem)item).getInnerItem();
        }
        return item;
    }
}

