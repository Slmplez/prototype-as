/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.action.SubContributionManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;

public class SubMenuManager
extends SubContributionManager
implements IMenuManager {
    private Map mapMenuToWrapper;
    private ListenerList menuListeners = new ListenerList();
    private IMenuListener menuListener;

    public SubMenuManager(IMenuManager mgr) {
        super(mgr);
    }

    public void addMenuListener(IMenuListener listener) {
        this.menuListeners.add((Object)listener);
        if (this.menuListener == null) {
            this.menuListener = new IMenuListener(){

                public void menuAboutToShow(IMenuManager manager) {
                    Object[] listeners = SubMenuManager.this.menuListeners.getListeners();
                    int i = 0;
                    while (i < listeners.length) {
                        ((IMenuListener)listeners[i]).menuAboutToShow(SubMenuManager.this);
                        ++i;
                    }
                }
            };
        }
        this.getParentMenuManager().addMenuListener(this.menuListener);
    }

    public void dispose() {
    }

    public void disposeManager() {
        if (this.menuListener != null) {
            this.getParentMenuManager().removeMenuListener(this.menuListener);
            this.menuListener = null;
            this.menuListeners.clear();
        }
        if (this.mapMenuToWrapper != null) {
            Iterator iter = this.mapMenuToWrapper.values().iterator();
            while (iter.hasNext()) {
                SubMenuManager wrapper = (SubMenuManager)iter.next();
                wrapper.disposeManager();
            }
            this.mapMenuToWrapper.clear();
            this.mapMenuToWrapper = null;
        }
        super.disposeManager();
    }

    public void fill(Composite parent) {
        if (this.isVisible()) {
            this.getParentMenuManager().fill(parent);
        }
    }

    public void fill(CoolBar parent, int index) {
    }

    public void fill(Menu parent, int index) {
        if (this.isVisible()) {
            this.getParentMenuManager().fill(parent, index);
        }
    }

    public void fill(ToolBar parent, int index) {
        if (this.isVisible()) {
            this.getParentMenuManager().fill(parent, index);
        }
    }

    public IContributionItem find(String id) {
        IContributionItem item = this.getParentMenuManager().find(id);
        if (item instanceof SubContributionItem) {
            item = this.unwrap(item);
        }
        if (item instanceof IMenuManager) {
            IMenuManager menu = (IMenuManager)item;
            item = this.getWrapper(menu);
        }
        return item;
    }

    public IMenuManager findMenuUsingPath(String path) {
        IContributionItem item = this.findUsingPath(path);
        if (item instanceof IMenuManager) {
            return (IMenuManager)item;
        }
        return null;
    }

    public IContributionItem findUsingPath(String path) {
        String id = path;
        String rest = null;
        int separator = path.indexOf(47);
        if (separator != -1) {
            id = path.substring(0, separator);
            rest = path.substring(separator + 1);
        }
        IContributionItem item = this.find(id);
        if (rest != null && item instanceof IMenuManager) {
            IMenuManager menu = (IMenuManager)item;
            item = menu.findUsingPath(rest);
        }
        return item;
    }

    public String getId() {
        return this.getParentMenuManager().getId();
    }

    protected final IMenuManager getParentMenuManager() {
        return (IMenuManager)this.getParent();
    }

    public boolean getRemoveAllWhenShown() {
        return false;
    }

    protected IMenuManager getWrapper(IMenuManager mgr) {
        SubMenuManager wrapper;
        if (this.mapMenuToWrapper == null) {
            this.mapMenuToWrapper = new HashMap(4);
        }
        if ((wrapper = (SubMenuManager)this.mapMenuToWrapper.get(mgr)) == null) {
            wrapper = this.wrapMenu(mgr);
            this.mapMenuToWrapper.put(mgr, wrapper);
        }
        return wrapper;
    }

    public boolean isDynamic() {
        return this.getParentMenuManager().isDynamic();
    }

    public boolean isEnabled() {
        return this.isVisible() && this.getParentMenuManager().isEnabled();
    }

    public boolean isGroupMarker() {
        return this.getParentMenuManager().isGroupMarker();
    }

    public boolean isSeparator() {
        return this.getParentMenuManager().isSeparator();
    }

    public void removeAll() {
        super.removeAll();
        if (this.mapMenuToWrapper != null) {
            Iterator iter = this.mapMenuToWrapper.values().iterator();
            while (iter.hasNext()) {
                SubMenuManager wrapper = (SubMenuManager)iter.next();
                wrapper.removeAll();
            }
            this.mapMenuToWrapper.clear();
            this.mapMenuToWrapper = null;
        }
    }

    public void removeMenuListener(IMenuListener listener) {
        this.menuListeners.remove((Object)listener);
    }

    public void saveWidgetState() {
    }

    public void setParent(IContributionManager parent) {
    }

    public void setRemoveAllWhenShown(boolean removeAll) {
        Assert.isTrue((boolean)false, (String)"Should not be called on submenu manager");
    }

    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (this.mapMenuToWrapper != null) {
            Iterator iter = this.mapMenuToWrapper.values().iterator();
            while (iter.hasNext()) {
                SubMenuManager wrapper = (SubMenuManager)iter.next();
                wrapper.setVisible(visible);
            }
        }
    }

    public void update() {
        this.getParentMenuManager().update();
    }

    public void update(boolean force) {
        this.getParentMenuManager().update(force);
    }

    public void update(String id) {
        this.getParentMenuManager().update(id);
    }

    public void updateAll(boolean force) {
        this.getParentMenuManager().updateAll(force);
    }

    protected SubMenuManager wrapMenu(IMenuManager menu) {
        SubMenuManager mgr = new SubMenuManager(menu);
        mgr.setVisible(this.isVisible());
        return mgr;
    }
}

