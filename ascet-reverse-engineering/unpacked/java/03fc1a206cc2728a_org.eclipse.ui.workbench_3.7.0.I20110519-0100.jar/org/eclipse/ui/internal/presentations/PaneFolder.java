/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.custom.CTabFolder
 *  org.eclipse.swt.custom.CTabFolder2Adapter
 *  org.eclipse.swt.custom.CTabFolder2Listener
 *  org.eclipse.swt.custom.CTabFolderEvent
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.custom.ViewForm
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabFolder2Adapter;
import org.eclipse.swt.custom.CTabFolder2Listener;
import org.eclipse.swt.custom.CTabFolderEvent;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.custom.ViewForm;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.layout.SizeCache;
import org.eclipse.ui.internal.presentations.PaneFolderButtonListener;
import org.eclipse.ui.internal.presentations.util.ProxyControl;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public final class PaneFolder {
    private CTabFolder tabFolder;
    private Control titleAreaProxy;
    private ViewForm viewForm;
    private ProxyControl contentProxy;
    private ProxyControl viewFormTopLeftProxy;
    private ProxyControl viewFormTopRightProxy;
    private ProxyControl viewFormTopCenterProxy;
    private SizeCache topRightCache = new SizeCache();
    private SizeCache topCenterCache = new SizeCache();
    private SizeCache topLeftCache = new SizeCache();
    private boolean putTrimOnTop = true;
    private boolean topRightResized = false;
    private boolean useTopRightOptimization = false;
    private int lastWidth = 0;
    private DisposeListener tabFolderDisposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            PaneFolder.this.widgetDisposed();
        }
    };
    private DisposeListener prematureDisposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            Control disposedControl = (Control)e.widget;
            if (PaneFolder.this.isDisposed()) {
                return;
            }
            disposedControl.removeDisposeListener((DisposeListener)this);
            if (disposedControl == PaneFolder.this.topLeftCache.getControl()) {
                PaneFolder.this.setTopLeft(null);
            }
            if (disposedControl == PaneFolder.this.topRightCache.getControl()) {
                PaneFolder.this.setTopRight(null);
            }
            if (disposedControl == PaneFolder.this.topCenterCache.getControl()) {
                PaneFolder.this.setTopCenter(null);
            }
        }
    };
    private List buttonListeners = new ArrayList(1);
    private int state = 2;
    private int mousedownState = -1;
    private Point mousedownPoint = new Point(-1, -1);
    private long mousedownTime = 0L;
    private static long CLICK_TIME = 1000L;
    private CTabFolder2Adapter expandListener = new CTabFolder2Adapter(){

        public void minimize(CTabFolderEvent event) {
            event.doit = false;
            PaneFolder.this.notifyButtonListeners(0);
        }

        public void restore(CTabFolderEvent event) {
            event.doit = false;
            PaneFolder.this.notifyButtonListeners(2);
        }

        public void maximize(CTabFolderEvent event) {
            event.doit = false;
            PaneFolder.this.notifyButtonListeners(1);
        }

        public void close(CTabFolderEvent event) {
            event.doit = false;
            PaneFolder.this.notifyCloseListeners((CTabItem)event.item);
        }

        public void showList(CTabFolderEvent event) {
            PaneFolder.this.notifyShowListeners(event);
        }
    };
    private MouseListener mouseListener = new MouseAdapter(){

        public void mouseDown(MouseEvent e) {
            PaneFolder.this.mousedownState = PaneFolder.this.getState();
            PaneFolder.this.mousedownPoint = new Point(e.x, e.y);
            PaneFolder.this.mousedownTime = (long)e.time & 0xFFFFFFFFL;
        }

        public void mouseUp(MouseEvent e) {
            if (e.button == 2 && e.count == 1) {
                CTabItem mousedownItem;
                Point mouseupPoint = new Point(e.x, e.y);
                CTabItem item = PaneFolder.this.tabFolder.getItem(mouseupPoint);
                long mouseupTime = (long)e.time & 0xFFFFFFFFL;
                if (item != null && mouseupTime - PaneFolder.this.mousedownTime <= CLICK_TIME && (mousedownItem = PaneFolder.this.tabFolder.getItem(PaneFolder.this.mousedownPoint)) == item) {
                    PaneFolder.this.notifyCloseListeners(item);
                }
            }
        }

        public void mouseDoubleClick(MouseEvent e) {
        }
    };
    private boolean showButtons = true;
    private boolean minimizeVisible = false;
    private boolean maximizeVisible = false;
    private boolean inLayout = false;
    private int tabPosition;

    public PaneFolder(Composite parent, int flags) {
        this.tabFolder = new CTabFolder(parent, flags);
        this.tabFolder.setMRUVisible(((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).enableMRUTabVisibility());
        this.titleAreaProxy = new Composite((Composite)this.tabFolder, 262144);
        this.titleAreaProxy.setVisible(false);
        this.titleAreaProxy.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
                PaneFolder.this.topRightResized = true;
            }

            public void controlResized(ControlEvent e) {
                PaneFolder.this.topRightResized = true;
                if (!PaneFolder.this.inLayout && !PaneFolder.this.isDisposed() && PaneFolder.this.viewForm != null && PaneFolder.this.contentProxy != null) {
                    PaneFolder.this.aboutToResize();
                    PaneFolder.this.layout(false);
                }
            }
        });
        this.tabFolder.setTopRight(this.titleAreaProxy, 4);
        this.tabFolder.addCTabFolder2Listener((CTabFolder2Listener)this.expandListener);
        this.tabFolder.addMouseListener(this.mouseListener);
        this.tabFolder.addDisposeListener(this.tabFolderDisposeListener);
        this.viewForm = new ViewForm((Composite)this.tabFolder, 262144);
        this.viewFormTopLeftProxy = new ProxyControl((Composite)this.viewForm);
        this.viewFormTopCenterProxy = new ProxyControl((Composite)this.viewForm);
        this.viewFormTopRightProxy = new ProxyControl((Composite)this.viewForm);
        this.contentProxy = new ProxyControl((Composite)this.viewForm);
        this.viewForm.setContent(this.contentProxy.getControl());
    }

    public Rectangle getTitleArea() {
        return this.titleAreaProxy.getBounds();
    }

    public Composite getControl() {
        return this.tabFolder;
    }

    public void flushTopCenterSize() {
        this.topCenterCache.flush();
        this.viewForm.changed(new Control[]{this.viewFormTopCenterProxy.getControl()});
    }

    public void flushTopLeftSize() {
        this.topLeftCache.flush();
        this.viewForm.changed(new Control[]{this.viewFormTopLeftProxy.getControl()});
    }

    public void setTopCenter(Control topCenter) {
        if (topCenter == this.topCenterCache.getControl()) {
            return;
        }
        this.removeDisposeListener(this.topCenterCache.getControl());
        this.topCenterCache.setControl(topCenter);
        if (this.putTrimOnTop) {
            this.viewFormTopCenterProxy.setTarget(null);
        } else {
            this.viewFormTopCenterProxy.setTarget(this.topCenterCache);
        }
        this.viewForm.changed(new Control[]{this.viewFormTopCenterProxy.getControl()});
        if (topCenter != null) {
            topCenter.addDisposeListener(this.prematureDisposeListener);
            if (!this.putTrimOnTop && !this.viewForm.isDisposed()) {
                this.viewForm.setTopCenter(this.viewFormTopCenterProxy.getControl());
            }
        } else if (!this.putTrimOnTop && !this.viewForm.isDisposed()) {
            this.viewForm.setTopCenter(null);
        }
    }

    public void setTopRight(Control topRight) {
        if (this.topRightCache.getControl() == topRight) {
            return;
        }
        this.removeDisposeListener(this.topRightCache.getControl());
        this.topRightCache.setControl(topRight);
        if (this.putTrimOnTop) {
            this.viewFormTopRightProxy.setTarget(null);
        } else {
            this.viewFormTopRightProxy.setTarget(this.topRightCache);
        }
        if (topRight != null) {
            topRight.addDisposeListener(this.prematureDisposeListener);
            if (!this.putTrimOnTop) {
                this.viewForm.setTopRight(this.viewFormTopRightProxy.getControl());
            }
        } else if (!this.putTrimOnTop) {
            this.viewForm.setTopRight(null);
        }
    }

    public void setTopLeft(Control topLeft) {
        if (this.topLeftCache.getControl() == topLeft) {
            return;
        }
        this.removeDisposeListener(this.topLeftCache.getControl());
        this.topLeftCache.setControl(topLeft);
        if (topLeft != null) {
            topLeft.addDisposeListener(this.prematureDisposeListener);
            this.viewFormTopLeftProxy.setTarget(this.topLeftCache);
            this.viewForm.setTopLeft(this.viewFormTopLeftProxy.getControl());
        } else {
            this.viewFormTopLeftProxy.setTarget(null);
            this.viewForm.setTopLeft(null);
        }
    }

    public void aboutToResize() {
        this.useTopRightOptimization = true;
        this.topRightResized = false;
        this.lastWidth = this.getControl().getBounds().width;
    }

    public void showMinMax(boolean show) {
        this.showButtons = show;
        this.setMaximizeVisible(show);
        this.setMinimizeVisible(show);
        this.layout(true);
    }

    public void layout(boolean flushCache) {
        if (this.inLayout) {
            return;
        }
        this.inLayout = true;
        try {
            this.viewForm.setLayoutDeferred(true);
            this.tabFolder.setMinimizeVisible(this.showButtons && this.minimizeVisible);
            this.tabFolder.setMaximizeVisible(this.showButtons && this.maximizeVisible);
            if (flushCache) {
                this.topLeftCache.flush();
                this.topRightCache.flush();
                this.topCenterCache.flush();
            }
            if (!this.useTopRightOptimization || !this.topRightResized && this.lastWidth != this.getControl().getBounds().width) {
                this.tabFolder.setTopRight(this.titleAreaProxy, 4);
            }
            this.useTopRightOptimization = false;
            Rectangle titleArea = this.titleAreaProxy.getBounds();
            Point topRightSize = this.topRightCache.computeSize(-1, -1);
            Point topCenterSize = this.topCenterCache.computeSize(-1, -1);
            int requiredWidth = topRightSize.x + topCenterSize.x;
            int requiredHeight = Math.max(topRightSize.y, topCenterSize.y);
            boolean lastTrimOnTop = this.putTrimOnTop;
            this.putTrimOnTop = titleArea.width >= requiredWidth && titleArea.height >= requiredHeight;
            Control topRight = this.topRightCache.getControl();
            Control topCenter = this.topCenterCache.getControl();
            if (this.putTrimOnTop) {
                if (!lastTrimOnTop) {
                    this.viewFormTopCenterProxy.setTarget(null);
                    this.viewFormTopRightProxy.setTarget(null);
                    this.viewForm.setTopCenter(null);
                    this.viewForm.setTopRight(null);
                }
                Rectangle topRightArea = new Rectangle(titleArea.x + titleArea.width - topRightSize.x, titleArea.y + (titleArea.height - topRightSize.y) / 2, topRightSize.x, topRightSize.y);
                if (topRight != null) {
                    topRight.setBounds(topRight.getDisplay().map((Control)this.tabFolder, (Control)topRight.getParent(), topRightArea));
                }
                if (topCenter != null) {
                    Rectangle topCenterArea = new Rectangle(topRightArea.x - topCenterSize.x, titleArea.y + (titleArea.height - topCenterSize.y) / 2, topCenterSize.x, topCenterSize.y);
                    topCenter.setBounds(topCenter.getDisplay().map((Control)this.tabFolder, (Control)topCenter.getParent(), topCenterArea));
                }
            } else {
                if (topCenter != null) {
                    this.viewFormTopCenterProxy.setTarget(this.topCenterCache);
                    this.viewForm.setTopCenter(this.viewFormTopCenterProxy.getControl());
                }
                if (topRight != null) {
                    this.viewFormTopRightProxy.setTarget(this.topRightCache);
                    this.viewForm.setTopRight(this.viewFormTopRightProxy.getControl());
                }
            }
            Rectangle newBounds = this.tabFolder.getClientArea();
            this.viewForm.setBounds(newBounds);
        }
        finally {
            this.viewForm.setLayoutDeferred(false);
            this.inLayout = false;
        }
        this.viewFormTopRightProxy.layout();
        this.viewFormTopLeftProxy.layout();
        this.viewFormTopCenterProxy.layout();
    }

    public Composite getContentParent() {
        return this.viewForm;
    }

    public void setContent(Control newContent) {
        this.viewForm.setContent(newContent);
    }

    public int getState() {
        return this.state;
    }

    protected void notifyButtonListeners(int buttonId) {
        if (this.mousedownState == this.getState()) {
            Iterator iter = this.buttonListeners.iterator();
            while (iter.hasNext()) {
                PaneFolderButtonListener listener = (PaneFolderButtonListener)iter.next();
                listener.stateButtonPressed(buttonId);
            }
        }
    }

    public Control getContent() {
        return this.viewForm.getContent();
    }

    protected void notifyShowListeners(CTabFolderEvent event) {
        Iterator iter = this.buttonListeners.iterator();
        while (iter.hasNext()) {
            PaneFolderButtonListener listener = (PaneFolderButtonListener)iter.next();
            listener.showList(event);
        }
    }

    protected void notifyCloseListeners(CTabItem tabItem) {
        Iterator iter = this.buttonListeners.iterator();
        while (iter.hasNext()) {
            PaneFolderButtonListener listener = (PaneFolderButtonListener)iter.next();
            listener.closeButtonPressed(tabItem);
        }
    }

    public void setState(int state) {
        this.state = state;
        this.tabFolder.setMinimized(state == 0);
        this.tabFolder.setMaximized(state == 1);
    }

    public void addButtonListener(PaneFolderButtonListener listener) {
        this.buttonListeners.add(listener);
    }

    public void removeButtonListener(PaneFolderButtonListener listener) {
        this.buttonListeners.remove(listener);
    }

    public void setTabPosition(int newTabPosition) {
        this.tabPosition = newTabPosition;
        this.tabFolder.setTabPosition(this.tabPosition);
    }

    public int getTabPosition() {
        return this.tabPosition;
    }

    public boolean isDisposed() {
        return this.tabFolder == null || this.tabFolder.isDisposed();
    }

    public CTabItem createItem(int style, int index) {
        return new CTabItem(this.tabFolder, style, index);
    }

    public Point computeMinimumSize() {
        Point result = Geometry.getSize((Rectangle)this.tabFolder.computeTrim(0, 0, 0, 0));
        result.x += 100;
        return result;
    }

    private void removeDisposeListener(Control oldControl) {
        if (!SwtUtil.isDisposed(oldControl)) {
            oldControl.removeDisposeListener(this.prematureDisposeListener);
        }
    }

    private void widgetDisposed() {
        this.removeDisposeListener(this.topCenterCache.getControl());
        this.topCenterCache.setControl(null);
        this.removeDisposeListener(this.topRightCache.getControl());
        this.topRightCache.setControl(null);
        this.removeDisposeListener(this.topLeftCache.getControl());
        this.topLeftCache.setControl(null);
    }

    public Point getChevronLocation() {
        int numItems = this.tabFolder.getItemCount();
        CTabItem item = null;
        CTabItem tempItem = null;
        int i = 0;
        while (i < numItems) {
            tempItem = this.tabFolder.getItem(i);
            if (tempItem.isShowing()) {
                item = tempItem;
            }
            ++i;
        }
        if (item == null) {
            return new Point(0, 0);
        }
        Rectangle itemBounds = item.getBounds();
        int x = itemBounds.x + itemBounds.width;
        int y = itemBounds.y + itemBounds.height;
        return new Point(x, y);
    }

    public void setSelection(int selection) {
        this.tabFolder.setSelection(selection);
    }

    public void showItem(int selection) {
        this.tabFolder.showItem(this.tabFolder.getItem(selection));
    }

    public Rectangle computeTrim(int i, int j, int k, int l) {
        return this.tabFolder.computeTrim(i, j, k, l);
    }

    public void setUnselectedCloseVisible(boolean b) {
        this.tabFolder.setUnselectedCloseVisible(b);
    }

    public void setSelectionForeground(Color fgColor) {
        this.tabFolder.setSelectionForeground(fgColor);
    }

    public void setSelectionBackground(Color[] bgColors, int[] percentages, boolean vertical) {
        this.tabFolder.setSelectionBackground(bgColors, percentages, vertical);
    }

    public CTabItem getItem(int idx) {
        return this.tabFolder.getItem(idx);
    }

    public int getSelectionIndex() {
        return this.tabFolder.getSelectionIndex();
    }

    public int getTabHeight() {
        return this.tabFolder.getTabHeight();
    }

    public int indexOf(CTabItem toFind) {
        return this.tabFolder.indexOf(toFind);
    }

    public void setTabHeight(int height) {
        this.tabFolder.setTabHeight(height);
    }

    public int getItemCount() {
        return this.tabFolder.getItemCount();
    }

    public CTabItem[] getItems() {
        return this.tabFolder.getItems();
    }

    public CTabItem getItem(Point toGet) {
        return this.tabFolder.getItem(toGet);
    }

    public CTabItem getSelection() {
        return this.tabFolder.getSelection();
    }

    public void setMinimizeVisible(boolean isVisible) {
        this.tabFolder.setMinimizeVisible(isVisible);
        this.minimizeVisible = isVisible;
    }

    public void setMinimumCharacters(int count) {
        this.tabFolder.setMinimumCharacters(count);
    }

    public void setMaximizeVisible(boolean isVisible) {
        this.tabFolder.setMaximizeVisible(isVisible);
        this.maximizeVisible = isVisible;
    }

    public void setSimpleTab(boolean traditionalTab) {
        this.tabFolder.setSimple(traditionalTab);
    }

    public void setUnselectedImageVisible(boolean b) {
        this.tabFolder.setUnselectedImageVisible(b);
    }

    public void setSingleTab(boolean b) {
        this.tabFolder.setSingle(b);
    }

    public void hideTitle() {
        this.tabFolder.setTabHeight(0);
    }

    public ViewForm getViewForm() {
        return this.viewForm;
    }

    public void setVisible(boolean visible) {
        this.contentProxy.setVisible(visible);
        this.viewFormTopCenterProxy.setVisible(visible);
        this.viewFormTopLeftProxy.setVisible(visible);
        this.viewFormTopRightProxy.setVisible(visible);
    }
}

