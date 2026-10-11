/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.internal.PerspectiveBarContributionItem;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.util.PrefUtil;

public class PerspectiveBarManager
extends ToolBarManager {
    private CoolBar coolBar;
    private Menu chevronMenu = null;

    public PerspectiveBarManager(int style) {
        super(style);
    }

    public ToolBar createControl(Composite parent) {
        ToolBar control = super.createControl(parent);
        return control;
    }

    public void handleChevron(SelectionEvent event) {
        CoolItem item = (CoolItem)event.widget;
        ToolBar control = this.getControl();
        if (!(control instanceof ToolBar)) {
            return;
        }
        Rectangle itemBounds = item.getBounds();
        Point pt = this.coolBar.toDisplay(new Point(itemBounds.x, itemBounds.y));
        itemBounds.x = pt.x;
        itemBounds.y = pt.y;
        ToolBar toolBar = control;
        ToolItem[] tools = toolBar.getItems();
        int toolCount = tools.length;
        int i = 0;
        while (i < toolCount) {
            Rectangle toolBounds = tools[i].getBounds();
            pt = toolBar.toDisplay(new Point(toolBounds.x, toolBounds.y));
            toolBounds.x = pt.x;
            toolBounds.y = pt.y;
            Rectangle intersection = itemBounds.intersection(toolBounds);
            if (!intersection.equals((Object)toolBounds)) break;
            ++i;
        }
        if (this.chevronMenu != null && !this.chevronMenu.isDisposed()) {
            this.chevronMenu.dispose();
        }
        this.chevronMenu = new Menu((Control)this.coolBar);
        int j = i;
        while (j < toolCount) {
            ToolItem tool = tools[j];
            MenuItem menuItem = new MenuItem(this.chevronMenu, 0);
            if (tool.getSelection()) {
                menuItem.setEnabled(false);
            }
            if (tool.getData() instanceof PerspectiveBarContributionItem) {
                menuItem.setText(((PerspectiveBarContributionItem)((Object)tool.getData())).getPerspective().getLabel());
            } else {
                menuItem.setText(tool.getText());
            }
            menuItem.setImage(tool.getImage());
            menuItem.setData("IContributionItem", tool.getData());
            menuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    MenuItem menuItem = (MenuItem)e.widget;
                    Object item = menuItem.getData("IContributionItem");
                    if (item instanceof PerspectiveBarContributionItem) {
                        PerspectiveBarContributionItem contribItem = (PerspectiveBarContributionItem)((Object)item);
                        PerspectiveBarManager.this.update(false);
                        contribItem.select();
                    }
                }
            });
            ++j;
        }
        pt = this.coolBar.toDisplay(new Point(event.x, event.y));
        this.chevronMenu.setLocation(pt.x, pt.y);
        this.chevronMenu.setVisible(true);
    }

    protected void relayout(ToolBar toolBar, int oldCount, int newCount) {
        super.relayout(toolBar, oldCount, newCount);
        if (this.getControl() != null) {
            LayoutUtil.resize((Control)this.getControl());
        }
    }

    void setParent(CoolBar cool) {
        this.coolBar = cool;
    }

    void select(PerspectiveBarContributionItem contribItem) {
        if (contribItem.getToolItem() == null) {
            return;
        }
        if (this.getControl().isVisible() && !this.isItemVisible(contribItem.getToolItem())) {
            this.ensureVisible(contribItem);
        }
    }

    public void addItem(PerspectiveBarContributionItem item) {
        IPreferenceStore apiPreferenceStore = PrefUtil.getAPIPreferenceStore();
        if (apiPreferenceStore.getBoolean("SHOW_OPEN_ON_PERSPECTIVE_BAR")) {
            this.insert(1, (IContributionItem)item);
        } else {
            this.insert(0, (IContributionItem)item);
        }
        this.update(false);
    }

    public void removeItem(PerspectiveBarContributionItem item) {
        this.remove((IContributionItem)item);
    }

    private void ensureVisible(PerspectiveBarContributionItem contribItem) {
        this.relocate(contribItem, 1);
    }

    void relocate(PerspectiveBarContributionItem contribItem, int index) {
        PerspectiveBarContributionItem newItem = new PerspectiveBarContributionItem(contribItem.getPerspective(), contribItem.getPage());
        this.removeItem(contribItem);
        contribItem.dispose();
        contribItem = null;
        this.insert(index, (IContributionItem)newItem);
        this.update(false);
    }

    private boolean isItemVisible(ToolItem toolItem) {
        Rectangle barBounds = this.getControl().getBounds();
        Rectangle itemBounds = toolItem.getBounds();
        return barBounds.intersection(itemBounds).equals((Object)itemBounds);
    }

    public void arrangeToolbar() {
        if (!this.getControl().isVisible()) {
            return;
        }
        if (this.getControl().getItemCount() < 3) {
            return;
        }
        IContributionItem[] items = this.getItems();
        int i = 2;
        while (i < items.length) {
            PerspectiveBarContributionItem contribItem = (PerspectiveBarContributionItem)items[i];
            if (contribItem.getToolItem().getSelection() && !this.isItemVisible(contribItem.getToolItem())) {
                this.ensureVisible(contribItem);
                break;
            }
            ++i;
        }
    }
}

