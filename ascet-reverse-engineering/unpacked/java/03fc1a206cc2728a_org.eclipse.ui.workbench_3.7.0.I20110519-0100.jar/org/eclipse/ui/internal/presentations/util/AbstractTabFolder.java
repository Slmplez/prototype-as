/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal.presentations.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;
import org.eclipse.ui.internal.presentations.util.PartInfo;
import org.eclipse.ui.internal.presentations.util.TabFolderEvent;
import org.eclipse.ui.internal.presentations.util.TabFolderListener;
import org.eclipse.ui.presentations.PresentationUtil;

public abstract class AbstractTabFolder {
    private List listeners = new ArrayList(1);
    private Control toolbar;
    private int state;
    private int activeState = 2;
    private Listener menuListener = new Listener(){

        public void handleEvent(Event event) {
            Point globalPos = new Point(event.x, event.y);
            AbstractTabFolder.this.handleContextMenu(globalPos, event);
        }
    };
    private Listener dragListener = new Listener(){

        public void handleEvent(Event e) {
            Point globalPos = ((Control)e.widget).toDisplay(e.x, e.y);
            AbstractTabFolder.this.handleDragStarted(globalPos, e);
        }
    };
    private MouseListener mouseListener = new MouseAdapter(){

        public void mouseDown(MouseEvent e) {
            Point p = ((Control)e.widget).toDisplay(e.x, e.y);
            AbstractTabFolder.this.handleMouseDown(p, e);
        }

        public void mouseDoubleClick(MouseEvent e) {
            if (e.button != 1) {
                return;
            }
            Point p = ((Control)e.widget).toDisplay(e.x, e.y);
            AbstractTabFolder.this.handleDoubleClick(p, e);
        }
    };

    public abstract Point computeSize(int var1, int var2);

    public abstract AbstractTabItem add(int var1, int var2);

    public abstract Composite getContentParent();

    public abstract void setContent(Control var1);

    public abstract AbstractTabItem[] getItems();

    public abstract AbstractTabItem getSelection();

    public abstract void setSelection(AbstractTabItem var1);

    public abstract void setSelectedInfo(PartInfo var1);

    public abstract void enablePaneMenu(boolean var1);

    public void setActive(int activeState) {
        this.activeState = activeState;
    }

    public int getActive() {
        return this.activeState;
    }

    public Point getPaneMenuLocation() {
        return this.getControl().toDisplay(new Point(0, 0));
    }

    public Point getPartListLocation() {
        return this.getSystemMenuLocation();
    }

    public Point getSystemMenuLocation() {
        return this.getControl().toDisplay(new Point(0, 0));
    }

    public abstract Composite getToolbarParent();

    public abstract Control getControl();

    public AbstractTabItem getItem(int idx) {
        return this.getItems()[idx];
    }

    public AbstractTabItem getItem(Point toFind) {
        AbstractTabItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            AbstractTabItem item = items[i];
            if (item.getBounds().contains(toFind)) {
                return item;
            }
            ++i;
        }
        return null;
    }

    public AbstractTabItem findItem(Object dataToFind) {
        AbstractTabItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            AbstractTabItem item = items[i];
            if (item.getData() == dataToFind) {
                return item;
            }
            ++i;
        }
        return null;
    }

    public int indexOf(AbstractTabItem item) {
        AbstractTabItem[] items = this.getItems();
        int idx = 0;
        while (idx < items.length) {
            AbstractTabItem next = items[idx];
            if (next == item) {
                return idx;
            }
            ++idx;
        }
        return -1;
    }

    public int getItemCount() {
        return this.getItems().length;
    }

    public void setToolbar(Control toolbarControl) {
        this.toolbar = toolbarControl;
    }

    public final Control getToolbar() {
        return this.toolbar;
    }

    public void setState(int state) {
        this.state = state;
    }

    public abstract Rectangle getTabArea();

    public void shellActive(boolean isActive) {
    }

    public final void addListener(TabFolderListener newListener) {
        this.listeners.add(newListener);
    }

    public final void removeListener(TabFolderListener toRemove) {
        this.listeners.remove(toRemove);
    }

    public void flushToolbarSize() {
    }

    protected final void fireEvent(TabFolderEvent e) {
        Iterator iter = this.listeners.iterator();
        while (iter.hasNext()) {
            TabFolderListener next = (TabFolderListener)iter.next();
            next.handleEvent(e);
        }
    }

    protected final void fireEvent(int id) {
        this.fireEvent(new TabFolderEvent(id));
    }

    protected final void fireEvent(int id, AbstractTabItem w) {
        this.fireEvent(new TabFolderEvent(id, w, 0, 0));
    }

    protected final void fireEvent(int id, AbstractTabItem w, Point pos) {
        this.fireEvent(new TabFolderEvent(id, w, pos));
    }

    public void layout(boolean flushCache) {
    }

    public void setTabPosition(int tabPosition) {
    }

    public int getTabPosition() {
        return 128;
    }

    public int getState() {
        return this.state;
    }

    protected void attachListeners(Control theControl, boolean recursive) {
        theControl.addListener(35, this.menuListener);
        theControl.addMouseListener(this.mouseListener);
        PresentationUtil.addDragListener(theControl, this.dragListener);
        if (recursive && theControl instanceof Composite) {
            Composite composite = (Composite)theControl;
            Control[] children = composite.getChildren();
            int i = 0;
            while (i < children.length) {
                Control control = children[i];
                this.attachListeners(control, recursive);
                ++i;
            }
        }
    }

    protected void detachListeners(Control theControl, boolean recursive) {
        theControl.removeListener(35, this.menuListener);
        theControl.removeMouseListener(this.mouseListener);
        PresentationUtil.removeDragListener(theControl, this.dragListener);
        if (recursive && theControl instanceof Composite) {
            Composite composite = (Composite)theControl;
            Control[] children = composite.getChildren();
            int i = 0;
            while (i < children.length) {
                Control control = children[i];
                this.detachListeners(control, recursive);
                ++i;
            }
        }
    }

    protected void handleContextMenu(Point displayPos, Event e) {
        if (this.isOnBorder(displayPos)) {
            return;
        }
        AbstractTabItem tab = this.getItem(displayPos);
        this.fireEvent(12, tab, displayPos);
    }

    protected void handleMouseDown(Point displayPos, MouseEvent e) {
        this.fireEvent(9);
    }

    protected void handleDoubleClick(Point displayPos, MouseEvent e) {
        if (this.isOnBorder(displayPos)) {
            return;
        }
        if (this.getState() == 1) {
            this.fireEvent(4);
        } else {
            this.fireEvent(7);
        }
    }

    protected void handleDragStarted(Point displayPos, Event e) {
        if (this.isOnBorder(displayPos)) {
            return;
        }
        AbstractTabItem tab = this.getItem(displayPos);
        this.fireEvent(10, tab, displayPos);
    }

    public boolean isOnBorder(Point toTest) {
        return false;
    }

    public void setVisible(boolean visible) {
        this.getControl().setVisible(visible);
    }

    public void showMinMax(boolean show) {
    }

    public void showItem(AbstractTabItem toSelect) {
        this.setSelection(toSelect);
    }
}

