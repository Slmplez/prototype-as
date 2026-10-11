/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.custom.CTabFolder
 *  org.eclipse.swt.custom.CTabFolderEvent
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabFolderEvent;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.presentations.PaneFolder;
import org.eclipse.ui.internal.presentations.PaneFolderButtonListener;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabFolderColors;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabItem;
import org.eclipse.ui.internal.presentations.util.AbstractTabFolder;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.PartInfo;
import org.eclipse.ui.internal.presentations.util.TabFolderEvent;
import org.eclipse.ui.internal.util.Util;

public class DefaultTabFolder
extends AbstractTabFolder {
    private PaneFolder paneFolder;
    private Control viewToolBar;
    private Label titleLabel;
    private PaneFolderButtonListener buttonListener = new PaneFolderButtonListener(){

        public void stateButtonPressed(int buttonId) {
            DefaultTabFolder.this.fireEvent(TabFolderEvent.stackStateToEventId(buttonId));
        }

        public void closeButtonPressed(CTabItem item) {
            DefaultTabFolder.this.fireEvent(6, DefaultTabFolder.this.getTab(item));
        }

        public void showList(CTabFolderEvent event) {
            event.doit = false;
            DefaultTabFolder.this.fireEvent(11);
        }
    };
    private Listener selectionListener = new Listener(){

        public void handleEvent(Event e) {
            DefaultTabItem item = DefaultTabFolder.this.getTab((CTabItem)e.item);
            if (item != null) {
                DefaultTabFolder.this.fireEvent(8, item);
            }
        }
    };
    private static DefaultTabFolderColors defaultColors = new DefaultTabFolderColors();
    private DefaultTabFolderColors[] activeShellColors = new DefaultTabFolderColors[]{defaultColors, defaultColors, defaultColors};
    private DefaultTabFolderColors[] inactiveShellColors = new DefaultTabFolderColors[]{defaultColors, defaultColors, defaultColors};
    private boolean shellActive = false;

    public DefaultTabFolder(Composite parent, int flags, boolean allowMin, boolean allowMax) {
        this.paneFolder = new PaneFolder(parent, flags | 0x40000);
        this.paneFolder.addButtonListener(this.buttonListener);
        this.paneFolder.setMinimizeVisible(allowMin);
        this.paneFolder.setMaximizeVisible(allowMax);
        this.paneFolder.getControl().addListener(13, this.selectionListener);
        this.paneFolder.setTopRight(null);
        ToolBar actualToolBar = new ToolBar(this.paneFolder.getControl(), 0x840000);
        this.viewToolBar = actualToolBar;
        actualToolBar.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = WorkbenchMessages.ViewMenu;
            }
        });
        ToolItem pullDownButton = new ToolItem(actualToolBar, 8);
        Image hoverImage = WorkbenchImages.getImage("IMG_LCL_RENDERED_VIEW_MENU");
        pullDownButton.setDisabledImage(hoverImage);
        pullDownButton.setImage(hoverImage);
        pullDownButton.setToolTipText(WorkbenchMessages.ViewMenu);
        actualToolBar.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                DefaultTabFolder.this.fireEvent(1, DefaultTabFolder.this.getSelection(), DefaultTabFolder.this.getPaneMenuLocation());
            }
        });
        pullDownButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                DefaultTabFolder.this.fireEvent(1, DefaultTabFolder.this.getSelection(), DefaultTabFolder.this.getPaneMenuLocation());
                super.widgetSelected(e);
            }
        });
        this.titleLabel = new Label(this.paneFolder.getControl(), 0);
        this.titleLabel.moveAbove(null);
        this.titleLabel.setVisible(false);
        this.attachListeners((Control)this.titleLabel, false);
        this.attachListeners((Control)this.paneFolder.getControl(), false);
        this.attachListeners((Control)this.paneFolder.getViewForm(), false);
        this.paneFolder.setTabHeight(this.computeTabHeight());
        this.viewToolBar.moveAbove(null);
    }

    public void setMinimumCharacters(int count) {
        this.paneFolder.setMinimumCharacters(count);
    }

    public void setSimpleTabs(boolean simple) {
        this.paneFolder.setSimpleTab(simple);
    }

    protected DefaultTabItem getTab(CTabItem item) {
        return (DefaultTabItem)item.getData();
    }

    public Point computeSize(int widthHint, int heightHint) {
        return this.paneFolder.computeMinimumSize();
    }

    PaneFolder getFolder() {
        return this.paneFolder;
    }

    public AbstractTabItem getSelection() {
        return this.getTab(this.paneFolder.getSelection());
    }

    public AbstractTabItem add(int index, int flags) {
        DefaultTabItem result = new DefaultTabItem((CTabFolder)this.getFolder().getControl(), index, flags);
        result.getWidget().setData((Object)result);
        return result;
    }

    public Composite getContentParent() {
        return this.paneFolder.getContentParent();
    }

    public void setContent(Control newContent) {
        this.paneFolder.setContent(newContent);
    }

    public AbstractTabItem[] getItems() {
        CTabItem[] items = this.paneFolder.getItems();
        AbstractTabItem[] result = new AbstractTabItem[items.length];
        int i = 0;
        while (i < result.length) {
            result[i] = this.getTab(items[i]);
            ++i;
        }
        return result;
    }

    public int getItemCount() {
        return this.paneFolder.getItemCount();
    }

    public void setSelection(AbstractTabItem toSelect) {
        this.paneFolder.setSelection(this.indexOf(toSelect));
    }

    public void showItem(AbstractTabItem toSelect) {
        int index = this.indexOf(toSelect);
        if (index != -1) {
            this.paneFolder.showItem(index);
        }
    }

    public Composite getToolbarParent() {
        return this.paneFolder.getControl();
    }

    public Control getControl() {
        return this.paneFolder.getControl();
    }

    public void setUnselectedCloseVisible(boolean visible) {
        this.paneFolder.setUnselectedCloseVisible(visible);
    }

    public void setUnselectedImageVisible(boolean visible) {
        this.paneFolder.setUnselectedImageVisible(visible);
    }

    public Rectangle getTabArea() {
        return Geometry.toDisplay((Control)this.paneFolder.getControl(), (Rectangle)this.paneFolder.getTitleArea());
    }

    public void enablePaneMenu(boolean enabled) {
        if (enabled) {
            this.paneFolder.setTopRight(this.viewToolBar);
            this.viewToolBar.setVisible(true);
        } else {
            this.paneFolder.setTopRight(null);
            this.viewToolBar.setVisible(false);
        }
    }

    public void setSelectedInfo(PartInfo info) {
        String newTitle = DefaultTabItem.escapeAmpersands(info.contentDescription);
        if (!Util.equals(this.titleLabel.getText(), newTitle)) {
            this.titleLabel.setText(newTitle);
            this.titleLabel.setToolTipText(newTitle);
        }
        if (!info.contentDescription.equals("")) {
            this.paneFolder.flushTopLeftSize();
            this.paneFolder.setTopLeft((Control)this.titleLabel);
            this.titleLabel.setVisible(true);
        } else {
            this.paneFolder.setTopLeft(null);
            this.titleLabel.setVisible(false);
        }
    }

    public Point getPaneMenuLocation() {
        Point toolbarSize = this.viewToolBar.getSize();
        return this.viewToolBar.toDisplay(0, toolbarSize.y);
    }

    public Point getPartListLocation() {
        return this.paneFolder.getControl().toDisplay(this.paneFolder.getChevronLocation());
    }

    public Point getSystemMenuLocation() {
        Rectangle bounds = DragUtil.getDisplayBounds((Control)this.paneFolder.getControl());
        int idx = this.paneFolder.getSelectionIndex();
        if (idx > -1) {
            CTabItem item = this.paneFolder.getItem(idx);
            Rectangle itemBounds = item.getBounds();
            bounds.x += itemBounds.x;
            bounds.y += itemBounds.y;
        }
        Point location = new Point(bounds.x, bounds.y + this.paneFolder.getTabHeight());
        return location;
    }

    public boolean isOnBorder(Point toTest) {
        Control content = this.paneFolder.getContent();
        if (content != null) {
            Rectangle displayBounds = DragUtil.getDisplayBounds(content);
            if (this.paneFolder.getTabPosition() == 128) {
                return toTest.y >= displayBounds.y;
            }
            if (toTest.y >= displayBounds.y && toTest.y < displayBounds.y + displayBounds.height) {
                return true;
            }
        }
        return super.isOnBorder(toTest);
    }

    public void layout(boolean flushCache) {
        this.paneFolder.layout(flushCache);
        super.layout(flushCache);
    }

    public void setState(int state) {
        this.paneFolder.setState(state);
        super.setState(state);
    }

    public void setActive(int activeState) {
        super.setActive(activeState);
        this.updateColors();
    }

    public void setTabPosition(int tabPosition) {
        this.paneFolder.setTabPosition(tabPosition);
        super.setTabPosition(tabPosition);
        this.layout(true);
    }

    public void flushToolbarSize() {
        this.paneFolder.flushTopCenterSize();
    }

    public void setToolbar(Control toolbarControl) {
        this.paneFolder.setTopCenter(toolbarControl);
        super.setToolbar(toolbarControl);
    }

    public void setColors(DefaultTabFolderColors colors, int activationState, boolean shellActivationState) {
        Assert.isTrue((activationState < this.activeShellColors.length ? 1 : 0) != 0);
        if (shellActivationState) {
            this.activeShellColors[activationState] = colors;
        } else {
            this.inactiveShellColors[activationState] = colors;
        }
        if (activationState == this.getActive() && this.shellActive == shellActivationState) {
            this.updateColors();
        }
    }

    public void updateColors() {
        DefaultTabFolderColors currentColors = this.shellActive ? this.activeShellColors[this.getActive()] : this.inactiveShellColors[this.getActive()];
        this.paneFolder.setSelectionForeground(currentColors.foreground);
        this.paneFolder.setSelectionBackground(currentColors.background, currentColors.percentages, currentColors.vertical);
    }

    public void setColors(DefaultTabFolderColors colors, int activationState) {
        this.setColors(colors, activationState, true);
        this.setColors(colors, activationState, false);
    }

    public void shellActive(boolean isActive) {
        this.shellActive = isActive;
        super.shellActive(isActive);
        this.updateColors();
    }

    public void setFont(Font font) {
        if (font != this.paneFolder.getControl().getFont()) {
            this.paneFolder.getControl().setFont(font);
            this.layout(true);
            this.paneFolder.setTabHeight(this.computeTabHeight());
        }
    }

    protected int computeTabHeight() {
        GC gc = new GC((Drawable)this.getControl());
        int tabHeight = Math.max(this.viewToolBar.computeSize((int)-1, (int)-1).y, gc.getFontMetrics().getHeight());
        gc.dispose();
        return tabHeight;
    }

    public void setSingleTab(boolean b) {
        this.paneFolder.setSingleTab(b);
        AbstractTabItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            DefaultTabItem item = (DefaultTabItem)items[i];
            item.updateTabText();
            ++i;
        }
        this.layout(true);
    }

    public void setVisible(boolean visible) {
        super.setVisible(visible);
        this.getFolder().setVisible(visible);
    }

    public void showMinMax(boolean show) {
        this.paneFolder.showMinMax(show);
    }
}

