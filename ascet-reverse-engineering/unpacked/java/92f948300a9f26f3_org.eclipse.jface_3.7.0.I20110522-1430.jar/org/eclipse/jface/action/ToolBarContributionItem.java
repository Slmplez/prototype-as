/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.action;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public class ToolBarContributionItem
extends ContributionItem
implements IToolBarContributionItem {
    public static final int SHOW_ALL_ITEMS = -1;
    private MenuManager chevronMenuManager = null;
    private CoolItem coolItem = null;
    private int currentHeight = -1;
    private int currentWidth = -1;
    private boolean disposed = false;
    private int minimumItemsToShow = -1;
    private ToolBarManager toolBarManager = null;
    private boolean useChevron = true;

    public ToolBarContributionItem() {
        this(new ToolBarManager(), null);
    }

    public ToolBarContributionItem(IToolBarManager toolBarManager) {
        this(toolBarManager, null);
    }

    public ToolBarContributionItem(IToolBarManager toolBarManager, String id) {
        super(id);
        Assert.isTrue((boolean)(toolBarManager instanceof ToolBarManager));
        this.toolBarManager = (ToolBarManager)toolBarManager;
    }

    private final boolean checkDisposed() {
        if (this.disposed) {
            if (Policy.TRACE_TOOLBAR) {
                System.out.println("Method invocation on a disposed tool bar contribution item.");
                new Exception().printStackTrace(System.out);
            }
            return true;
        }
        return false;
    }

    public void dispose() {
        if (this.toolBarManager != null) {
            this.toolBarManager.dispose();
            this.toolBarManager = null;
        }
        if (this.coolItem != null && !this.coolItem.isDisposed()) {
            this.coolItem.dispose();
            this.coolItem = null;
        }
        this.disposed = true;
    }

    public void fill(CoolBar coolBar, int index) {
        if (this.checkDisposed()) {
            return;
        }
        if (this.coolItem == null && coolBar != null) {
            ToolBar oldToolBar = this.toolBarManager.getControl();
            ToolBar toolBar = this.toolBarManager.createControl((Composite)coolBar);
            if (oldToolBar != null && oldToolBar.equals(toolBar)) {
                this.toolBarManager.update(true);
            }
            if (toolBar.getItemCount() < 1) {
                return;
            }
            int flags = 4;
            this.coolItem = index >= 0 ? new CoolItem(coolBar, flags, index) : new CoolItem(coolBar, flags);
            this.coolItem.setData((Object)this);
            this.coolItem.setControl((Control)toolBar);
            if (oldToolBar != toolBar) {
                toolBar.addListener(35, new Listener(){

                    public void handleEvent(Event event) {
                        if (ToolBarContributionItem.this.toolBarManager.getContextMenuManager() == null) {
                            ToolBarContributionItem.this.handleContextMenu(event);
                        }
                    }
                });
            }
            if (this.getUseChevron()) {
                this.coolItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

                    public void widgetSelected(SelectionEvent event) {
                        if (event.detail == 4) {
                            ToolBarContributionItem.this.handleChevron(event);
                        }
                    }
                });
            }
            this.coolItem.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    ToolBarContributionItem.this.handleWidgetDispose(event);
                }
            });
            this.updateSize(true);
        }
    }

    private int[] getAdjustedWrapIndices(int[] wraps) {
        int[] adjustedWrapIndices;
        if (wraps.length == 0) {
            adjustedWrapIndices = new int[1];
        } else if (wraps[0] != 0) {
            adjustedWrapIndices = new int[wraps.length + 1];
            adjustedWrapIndices[0] = 0;
            int i = 0;
            while (i < wraps.length) {
                adjustedWrapIndices[i + 1] = wraps[i];
                ++i;
            }
        } else {
            adjustedWrapIndices = wraps;
        }
        return adjustedWrapIndices;
    }

    public int getCurrentHeight() {
        if (this.checkDisposed()) {
            return -1;
        }
        return this.currentHeight;
    }

    public int getCurrentWidth() {
        if (this.checkDisposed()) {
            return -1;
        }
        return this.currentWidth;
    }

    public int getMinimumItemsToShow() {
        if (this.checkDisposed()) {
            return -1;
        }
        return this.minimumItemsToShow;
    }

    public IToolBarManager getToolBarManager() {
        if (this.checkDisposed()) {
            return null;
        }
        return this.toolBarManager;
    }

    public boolean getUseChevron() {
        if (this.checkDisposed()) {
            return false;
        }
        return this.useChevron;
    }

    private void handleChevron(SelectionEvent event) {
        CoolItem item = (CoolItem)event.widget;
        Control control = item.getControl();
        if (!(control instanceof ToolBar)) {
            return;
        }
        CoolBar coolBar = item.getParent();
        ToolBar toolBar = (ToolBar)control;
        Rectangle toolBarBounds = toolBar.getBounds();
        ToolItem[] items = toolBar.getItems();
        ArrayList<ToolItem> hidden = new ArrayList<ToolItem>();
        int i = 0;
        while (i < items.length) {
            Rectangle itemBounds = items[i].getBounds();
            if (itemBounds.x + itemBounds.width > toolBarBounds.width || itemBounds.y + itemBounds.height > toolBarBounds.height) {
                hidden.add(items[i]);
            }
            ++i;
        }
        if (this.chevronMenuManager != null) {
            this.chevronMenuManager.dispose();
        }
        this.chevronMenuManager = new MenuManager();
        Iterator i2 = hidden.iterator();
        while (i2.hasNext()) {
            ToolItem toolItem = (ToolItem)i2.next();
            IContributionItem data = (IContributionItem)toolItem.getData();
            if (data instanceof ActionContributionItem) {
                ActionContributionItem contribution = new ActionContributionItem(((ActionContributionItem)data).getAction());
                this.chevronMenuManager.add(contribution);
                continue;
            }
            if (data instanceof SubContributionItem) {
                IContributionItem innerData = ((SubContributionItem)data).getInnerItem();
                if (!(innerData instanceof ActionContributionItem)) continue;
                ActionContributionItem contribution = new ActionContributionItem(((ActionContributionItem)innerData).getAction());
                this.chevronMenuManager.add(contribution);
                continue;
            }
            if (!data.isSeparator()) continue;
            this.chevronMenuManager.add(new Separator());
        }
        Menu popup = this.chevronMenuManager.createContextMenu((Control)coolBar);
        Point chevronPosition = coolBar.toDisplay(event.x, event.y);
        popup.setLocation(chevronPosition.x, chevronPosition.y);
        popup.setVisible(true);
    }

    private void handleContextMenu(Event event) {
        ToolBar toolBar = this.toolBarManager.getControl();
        Menu parentMenu = toolBar.getParent().getMenu();
        if (parentMenu != null && !parentMenu.isDisposed()) {
            toolBar.setMenu(parentMenu);
            parentMenu.addListener(23, new Listener(){

                public void handleEvent(Event innerEvent) {
                    ToolBar innerToolBar = ToolBarContributionItem.this.toolBarManager.getControl();
                    if (innerToolBar != null) {
                        innerToolBar.setMenu(null);
                        Menu innerParentMenu = innerToolBar.getParent().getMenu();
                        if (innerParentMenu != null) {
                            innerParentMenu.removeListener(23, (Listener)this);
                        }
                    }
                }
            });
        }
    }

    private void handleWidgetDispose(DisposeEvent event) {
        this.coolItem = null;
    }

    public boolean isVisible() {
        if (this.checkDisposed()) {
            return false;
        }
        boolean visibleItem = false;
        if (this.toolBarManager != null) {
            IContributionItem[] contributionItems = this.toolBarManager.getItems();
            int i = 0;
            while (i < contributionItems.length) {
                IContributionItem contributionItem = contributionItems[i];
                if (!contributionItem.isGroupMarker() && !contributionItem.isSeparator()) {
                    visibleItem = true;
                    break;
                }
                ++i;
            }
        }
        return visibleItem || super.isVisible();
    }

    public void saveWidgetState() {
        if (this.checkDisposed()) {
            return;
        }
        if (this.coolItem == null) {
            return;
        }
        CoolBar coolBar = this.coolItem.getParent();
        boolean isLastOnRow = false;
        int lastIndex = coolBar.getItemCount() - 1;
        int coolItemIndex = coolBar.indexOf(this.coolItem);
        int[] wrapIndicies = this.getAdjustedWrapIndices(coolBar.getWrapIndices());
        int row = wrapIndicies.length - 1;
        while (row >= 0) {
            if (wrapIndicies[row] <= coolItemIndex) {
                int nextRow = row + 1;
                int nextRowStartIndex = nextRow > wrapIndicies.length - 1 ? lastIndex + 1 : wrapIndicies[nextRow];
                if (coolItemIndex != nextRowStartIndex - 1) break;
                isLastOnRow = true;
                break;
            }
            --row;
        }
        int nCurrentWidth = isLastOnRow ? this.coolItem.getPreferredSize().x : this.coolItem.getSize().x;
        this.setCurrentWidth(nCurrentWidth);
        this.setCurrentHeight(this.coolItem.getSize().y);
    }

    public void setCurrentHeight(int currentHeight) {
        if (this.checkDisposed()) {
            return;
        }
        this.currentHeight = currentHeight;
    }

    public void setCurrentWidth(int currentWidth) {
        if (this.checkDisposed()) {
            return;
        }
        this.currentWidth = currentWidth;
    }

    public void setMinimumItemsToShow(int minimumItemsToShow) {
        if (this.checkDisposed()) {
            return;
        }
        this.minimumItemsToShow = minimumItemsToShow;
    }

    public void setUseChevron(boolean value) {
        if (this.checkDisposed()) {
            return;
        }
        this.useChevron = value;
    }

    public void update(String propertyName) {
        if (this.checkDisposed()) {
            return;
        }
        if (this.coolItem != null) {
            IToolBarManager manager = this.getToolBarManager();
            if (manager != null) {
                manager.update(true);
            }
            if (propertyName == null || propertyName.equals("size")) {
                this.updateSize(true);
            }
        }
    }

    private void updateSize(boolean changeCurrentSize) {
        if (this.checkDisposed()) {
            return;
        }
        if (this.coolItem == null || this.coolItem.isDisposed()) {
            return;
        }
        boolean locked = false;
        CoolBar coolBar = this.coolItem.getParent();
        try {
            ToolBar toolBar;
            if (coolBar != null && coolBar.getLocked()) {
                coolBar.setLocked(false);
                locked = true;
            }
            if ((toolBar = (ToolBar)this.coolItem.getControl()) == null || toolBar.isDisposed() || toolBar.getItemCount() <= 0) {
                this.coolItem.setData(null);
                Control control = this.coolItem.getControl();
                if (control != null && !control.isDisposed()) {
                    control.dispose();
                    this.coolItem.setControl(null);
                }
                if (!this.coolItem.isDisposed()) {
                    this.coolItem.dispose();
                }
            } else {
                Point toolBarSize = toolBar.computeSize(-1, -1);
                Point preferredSize = this.coolItem.computeSize(toolBarSize.x, toolBarSize.y);
                this.coolItem.setPreferredSize(preferredSize);
                if (this.getMinimumItemsToShow() != -1) {
                    int toolItemWidth = toolBar.getItems()[0].getWidth();
                    int minimumWidth = toolItemWidth * this.getMinimumItemsToShow();
                    this.coolItem.setMinimumSize(minimumWidth, toolBarSize.y);
                } else {
                    this.coolItem.setMinimumSize(toolBarSize.x, toolBarSize.y);
                }
                if (changeCurrentSize) {
                    this.coolItem.setSize(preferredSize);
                }
            }
        }
        finally {
            if (locked && coolBar != null) {
                coolBar.setLocked(true);
            }
        }
    }
}

