/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.util.EnhancedFillLayout;

public class StandardSystemToolbar
extends EventManager {
    private ToolBarManager toolbarManager;
    private Composite control;
    private MouseListener mouseListener = new MouseAdapter(){

        public void mouseDown(MouseEvent e) {
            ToolItem item = StandardSystemToolbar.this.toolbarManager.getControl().getItem(new Point(e.x, e.y));
            if (item == ((StandardSystemToolbar)StandardSystemToolbar.this).paneMenu.item && e.button == 1) {
                StandardSystemToolbar.this.fireEvent(1);
            }
        }
    };
    private SystemMenuContribution paneMenu = new PaneMenu();
    private SystemMenuContribution showToolbar = new SystemMenuContribution();
    private SystemMenuContribution min = new SystemMenuContribution();
    private SystemMenuContribution max = new SystemMenuContribution();
    private SystemMenuContribution close = new SystemMenuContribution();
    private int state = 2;
    private boolean showingToolbar = true;
    private SelectionAdapter selectionListener = new SelectionAdapter(){

        public void widgetSelected(SelectionEvent e) {
            if (e.widget != ((StandardSystemToolbar)StandardSystemToolbar.this).paneMenu.item) {
                if (e.widget == ((StandardSystemToolbar)StandardSystemToolbar.this).showToolbar.item) {
                    if (StandardSystemToolbar.this.showingToolbar) {
                        StandardSystemToolbar.this.fireEvent(2);
                    } else {
                        StandardSystemToolbar.this.fireEvent(3);
                    }
                } else if (e.widget == ((StandardSystemToolbar)StandardSystemToolbar.this).min.item) {
                    if (StandardSystemToolbar.this.state == 0) {
                        StandardSystemToolbar.this.fireEvent(4);
                    } else {
                        StandardSystemToolbar.this.fireEvent(5);
                    }
                } else if (e.widget == ((StandardSystemToolbar)StandardSystemToolbar.this).max.item) {
                    if (StandardSystemToolbar.this.state == 1) {
                        StandardSystemToolbar.this.fireEvent(4);
                    } else {
                        StandardSystemToolbar.this.fireEvent(7);
                    }
                } else if (e.widget == ((StandardSystemToolbar)StandardSystemToolbar.this).close.item) {
                    StandardSystemToolbar.this.fireEvent(6);
                }
            }
        }
    };

    public StandardSystemToolbar(Composite parent, boolean showPaneMenu, boolean showHideToolbar, boolean showMinimize, boolean showMaximize, boolean enableClose) {
        this.control = new Composite(parent, 0);
        this.control.setLayout((Layout)new EnhancedFillLayout());
        this.toolbarManager = new ToolBarManager(0x800000);
        this.toolbarManager.createControl(this.control);
        this.toolbarManager.getControl().addMouseListener(this.mouseListener);
        this.toolbarManager.add((IContributionItem)this.paneMenu);
        this.paneMenu.setImage(WorkbenchImages.getImage("IMG_LCL_VIEW_MENU_THIN"));
        this.paneMenu.setVisible(showPaneMenu);
        this.paneMenu.setToolTipText(WorkbenchMessages.Menu);
        this.toolbarManager.add((IContributionItem)this.showToolbar);
        this.showToolbar.setImage(WorkbenchImages.getImage("IMG_LCL_HIDE_TOOLBAR_THIN"));
        this.showToolbar.setVisible(showHideToolbar);
        this.toolbarManager.add((IContributionItem)this.min);
        this.min.setVisible(showMinimize);
        this.toolbarManager.add((IContributionItem)this.max);
        this.max.setVisible(showMaximize);
        this.toolbarManager.add((IContributionItem)this.close);
        this.close.setImage(WorkbenchImages.getImage("IMG_LCL_CLOSE_VIEW_THIN"));
        this.close.setVisible(enableClose);
        this.setState(2);
        this.toolbarManager.update(true);
    }

    public Point getPaneMenuLocation() {
        Rectangle bounds = Geometry.toDisplay((Control)this.paneMenu.item.getParent(), (Rectangle)this.paneMenu.item.getBounds());
        return new Point(bounds.x, bounds.y + bounds.height);
    }

    public void enableClose(boolean enabled) {
        this.close.setVisible(enabled);
        this.toolbarManager.update(false);
    }

    public void enableMinimize(boolean enabled) {
        this.min.setVisible(enabled);
        this.toolbarManager.update(false);
    }

    public void enableMaximize(boolean enabled) {
        this.max.setVisible(enabled);
        this.toolbarManager.update(false);
    }

    public void enableShowToolbar(boolean enabled) {
        this.showToolbar.setVisible(enabled);
        this.toolbarManager.update(false);
    }

    public void enablePaneMenu(boolean enabled) {
        this.paneMenu.setVisible(enabled);
        this.toolbarManager.update(false);
    }

    public void setState(int newState) {
        if (this.min != null) {
            if (newState == 0) {
                this.min.setToolTipText(WorkbenchMessages.StandardSystemToolbar_Restore);
                this.min.setImage(WorkbenchImages.getImage("IMG_LCL_RESTORE_VIEW_THIN"));
            } else {
                this.min.setToolTipText(WorkbenchMessages.StandardSystemToolbar_Minimize);
                this.min.setImage(WorkbenchImages.getImage("IMG_LCL_MIN_VIEW_THIN"));
            }
        }
        if (this.max != null) {
            if (newState == 1) {
                this.max.setToolTipText(WorkbenchMessages.StandardSystemToolbar_Restore);
                this.max.setImage(WorkbenchImages.getImage("IMG_LCL_RESTORE_VIEW_THIN"));
            } else {
                this.max.setToolTipText(WorkbenchMessages.StandardSystemToolbar_Maximize);
                this.max.setImage(WorkbenchImages.getImage("IMG_LCL_MAX_VIEW_THIN"));
            }
        }
        this.state = newState;
    }

    public void setToolbarShowing(boolean isShowing) {
        this.showingToolbar = isShowing;
        if (this.showToolbar != null) {
            if (isShowing) {
                this.showToolbar.setImage(WorkbenchImages.getImage("IMG_LCL_HIDE_TOOLBAR_THIN"));
            } else {
                this.showToolbar.setImage(WorkbenchImages.getImage("IMG_LCL_SHOW_TOOLBAR_THIN"));
            }
        }
    }

    public void addListener(IPropertyListener propertyListener) {
        this.addListenerObject(propertyListener);
    }

    public void removeListener(IPropertyListener propertyListener) {
        this.removeListenerObject(propertyListener);
    }

    public Control getControl() {
        return this.control;
    }

    private void fireEvent(int event) {
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            IPropertyListener listener = (IPropertyListener)list[i];
            listener.propertyChanged((Object)this, event);
            ++i;
        }
    }

    private class PaneMenu
    extends SystemMenuContribution {
        public PaneMenu() {
            super(0);
        }

        public void setToolTipText(String text) {
            super.setToolTipText(text);
        }

        public void setImage(Image img) {
            super.setImage(img);
        }

        public void fill(ToolBar parent, int index) {
            if (!this.isVisible()) {
                return;
            }
            super.fill(parent, index);
        }
    }

    private class SystemMenuContribution
    extends ContributionItem {
        ToolItem item;
        Image img;
        String text;
        int flags;

        public SystemMenuContribution() {
            this(8);
        }

        public SystemMenuContribution(int flags) {
            this.flags = flags;
        }

        public void setToolTipText(String text) {
            this.text = text;
            if (this.item != null) {
                this.item.setToolTipText(text);
            }
        }

        public void setImage(Image img) {
            this.img = img;
            if (this.item != null) {
                this.item.setImage(img);
            }
        }

        public void setVisible(boolean visible) {
            if (visible != this.isVisible()) {
                StandardSystemToolbar.this.toolbarManager.markDirty();
            }
            super.setVisible(visible);
        }

        public void fill(ToolBar parent, int index) {
            if (!this.isVisible()) {
                return;
            }
            this.item = new ToolItem(parent, this.flags, index);
            if (this.img != null) {
                this.item.setImage(this.img);
            }
            if (this.text != null) {
                this.item.setToolTipText(this.text);
            }
            this.item.addSelectionListener((SelectionListener)StandardSystemToolbar.this.selectionListener);
        }
    }
}

