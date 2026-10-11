/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.action;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public class ToolBarManager
extends ContributionManager
implements IToolBarManager {
    private int itemStyle = 0;
    private ToolBar toolBar = null;
    private MenuManager contextMenuManager = null;

    public ToolBarManager() {
    }

    public ToolBarManager(int style) {
        this.itemStyle = style;
    }

    public ToolBarManager(ToolBar toolbar) {
        this();
        this.toolBar = toolbar;
    }

    public ToolBar createControl(Composite parent) {
        if (!this.toolBarExist() && parent != null) {
            this.toolBar = new ToolBar(parent, this.itemStyle);
            this.toolBar.setMenu(this.getContextMenuControl());
            this.update(true);
            this.toolBar.getAccessible().addAccessibleListener(this.getAccessibleListener());
        }
        return this.toolBar;
    }

    private AccessibleListener getAccessibleListener() {
        return new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                String toolTip;
                ToolItem item;
                if (e.childID != -1 && (item = ToolBarManager.this.toolBar.getItem(e.childID)) != null && (toolTip = item.getToolTipText()) != null) {
                    e.result = toolTip;
                }
            }
        };
    }

    public void dispose() {
        if (this.toolBarExist()) {
            this.toolBar.dispose();
        }
        this.toolBar = null;
        IContributionItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].dispose();
            ++i;
        }
        if (this.getContextMenuManager() != null) {
            this.getContextMenuManager().dispose();
            this.setContextMenuManager(null);
        }
    }

    public ToolBar getControl() {
        return this.toolBar;
    }

    protected void relayout(ToolBar layoutBar, int oldCount, int newCount) {
        if (oldCount != newCount && newCount != 0) {
            Point beforePack = layoutBar.getSize();
            layoutBar.pack(true);
            Point afterPack = layoutBar.getSize();
            if (beforePack.equals((Object)afterPack)) {
                return;
            }
            layoutBar.getParent().layout();
            if (layoutBar.getParent() instanceof CoolBar) {
                CoolBar cb = (CoolBar)layoutBar.getParent();
                CoolItem[] items = cb.getItems();
                int i = 0;
                while (i < items.length) {
                    if (items[i].getControl() == layoutBar) {
                        Point curSize = items[i].getSize();
                        items[i].setSize(curSize.x + (afterPack.x - beforePack.x), curSize.y + (afterPack.y - beforePack.y));
                        return;
                    }
                    ++i;
                }
            }
        }
    }

    private boolean toolBarExist() {
        return this.toolBar != null && !this.toolBar.isDisposed();
    }

    public void update(boolean force) {
        if ((this.isDirty() || force) && this.toolBarExist()) {
            int oldCount = this.toolBar.getItemCount();
            IContributionItem[] items = this.getItems();
            ArrayList<IContributionItem> clean = new ArrayList<IContributionItem>(items.length);
            IContributionItem separator = null;
            int i = 0;
            while (i < items.length) {
                IContributionItem ci = items[i];
                if (this.isChildVisible(ci)) {
                    if (ci.isSeparator()) {
                        separator = ci;
                    } else {
                        if (separator != null) {
                            if (clean.size() > 0) {
                                clean.add(separator);
                            }
                            separator = null;
                        }
                        clean.add(ci);
                    }
                }
                ++i;
            }
            ToolItem[] mi = this.toolBar.getItems();
            ArrayList<ToolItem> toRemove = new ArrayList<ToolItem>(mi.length);
            int i2 = 0;
            while (i2 < mi.length) {
                Object data;
                if (mi[i2] != null && ((data = mi[i2].getData()) == null || !clean.contains(data) || data instanceof IContributionItem && ((IContributionItem)data).isDynamic())) {
                    toRemove.add(mi[i2]);
                }
                ++i2;
            }
            boolean useRedraw = clean.size() - (mi.length - toRemove.size()) >= 3;
            try {
                if (useRedraw) {
                    this.toolBar.setRedraw(false);
                }
                int i3 = toRemove.size();
                while (--i3 >= 0) {
                    ToolItem item = (ToolItem)toRemove.get(i3);
                    if (item.isDisposed()) continue;
                    Control ctrl = item.getControl();
                    if (ctrl != null) {
                        item.setControl(null);
                        ctrl.dispose();
                    }
                    item.dispose();
                }
                mi = this.toolBar.getItems();
                int srcIx = 0;
                int destIx = 0;
                Iterator e = clean.iterator();
                while (e.hasNext()) {
                    IContributionItem src = (IContributionItem)e.next();
                    IContributionItem dest = srcIx < mi.length ? (IContributionItem)mi[srcIx].getData() : null;
                    if (dest != null && src.equals(dest)) {
                        ++srcIx;
                        ++destIx;
                        continue;
                    }
                    if (dest != null && dest.isSeparator() && src.isSeparator()) {
                        mi[srcIx].setData((Object)src);
                        ++srcIx;
                        ++destIx;
                        continue;
                    }
                    int start = this.toolBar.getItemCount();
                    src.fill(this.toolBar, destIx);
                    int newItems = this.toolBar.getItemCount() - start;
                    int i4 = 0;
                    while (i4 < newItems) {
                        ToolItem item = this.toolBar.getItem(destIx++);
                        item.setData((Object)src);
                        ++i4;
                    }
                }
                int i5 = mi.length;
                while (--i5 >= srcIx) {
                    ToolItem item = mi[i5];
                    if (item.isDisposed()) continue;
                    Control ctrl = item.getControl();
                    if (ctrl != null) {
                        item.setControl(null);
                        ctrl.dispose();
                    }
                    item.dispose();
                }
                this.setDirty(false);
            }
            finally {
                if (useRedraw) {
                    this.toolBar.setRedraw(true);
                }
            }
            int newCount = this.toolBar.getItemCount();
            if (force) {
                oldCount = newCount + 1;
            }
            this.relayout(this.toolBar, oldCount, newCount);
        }
    }

    private Menu getContextMenuControl() {
        if (this.contextMenuManager != null && this.toolBar != null) {
            Menu menuWidget = this.contextMenuManager.getMenu();
            if (menuWidget == null || menuWidget.isDisposed()) {
                menuWidget = this.contextMenuManager.createContextMenu((Control)this.toolBar);
            }
            return menuWidget;
        }
        return null;
    }

    public MenuManager getContextMenuManager() {
        return this.contextMenuManager;
    }

    public void setContextMenuManager(MenuManager contextMenuManager) {
        this.contextMenuManager = contextMenuManager;
        if (this.toolBar != null) {
            this.toolBar.setMenu(this.getContextMenuControl());
        }
    }

    private boolean isChildVisible(IContributionItem item) {
        IContributionManagerOverrides overrides = this.getOverrides();
        Boolean v = overrides == null ? null : this.getOverrides().getVisible(item);
        if (v != null) {
            return v;
        }
        return item.isVisible();
    }
}

