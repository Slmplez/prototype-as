/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledCompositeLayout;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;

public class ScrolledComposite
extends Composite {
    Control content;
    Listener contentListener;
    Listener filter;
    int minHeight = 0;
    int minWidth = 0;
    boolean expandHorizontal = false;
    boolean expandVertical = false;
    boolean alwaysShowScroll = false;
    boolean showFocusedControl = false;

    public ScrolledComposite(Composite parent, int style) {
        super(parent, ScrolledComposite.checkStyle(style));
        ScrollBar vBar;
        super.setLayout(new ScrolledCompositeLayout());
        ScrollBar hBar = this.getHorizontalBar();
        if (hBar != null) {
            hBar.setVisible(false);
            hBar.addListener(13, new Listener(){

                public void handleEvent(Event e) {
                    ScrolledComposite.this.hScroll();
                }
            });
        }
        if ((vBar = this.getVerticalBar()) != null) {
            vBar.setVisible(false);
            vBar.addListener(13, new Listener(){

                public void handleEvent(Event e) {
                    ScrolledComposite.this.vScroll();
                }
            });
        }
        this.contentListener = new Listener(){

            public void handleEvent(Event e) {
                if (e.type != 11) {
                    return;
                }
                ScrolledComposite.this.layout(false);
            }
        };
        this.filter = new Listener(){

            public void handleEvent(Event event) {
                Control control;
                if (event.widget instanceof Control && ScrolledComposite.this.contains(control = (Control)event.widget)) {
                    ScrolledComposite.this.showControl(control);
                }
            }
        };
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ScrolledComposite.this.getDisplay().removeFilter(15, ScrolledComposite.this.filter);
            }
        });
    }

    static int checkStyle(int style) {
        int mask = 0x6000B00;
        return style & mask;
    }

    boolean contains(Control control) {
        if (control == null || control.isDisposed()) {
            return false;
        }
        Composite parent = control.getParent();
        while (parent != null && !(parent instanceof Shell)) {
            if (this == parent) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public boolean getAlwaysShowScrollBars() {
        return this.alwaysShowScroll;
    }

    public boolean getExpandHorizontal() {
        this.checkWidget();
        return this.expandHorizontal;
    }

    public boolean getExpandVertical() {
        this.checkWidget();
        return this.expandVertical;
    }

    public int getMinWidth() {
        this.checkWidget();
        return this.minWidth;
    }

    public int getMinHeight() {
        this.checkWidget();
        return this.minHeight;
    }

    public Control getContent() {
        return this.content;
    }

    public boolean getShowFocusedControl() {
        this.checkWidget();
        return this.showFocusedControl;
    }

    void hScroll() {
        if (this.content == null) {
            return;
        }
        Point location = this.content.getLocation();
        ScrollBar hBar = this.getHorizontalBar();
        int hSelection = hBar.getSelection();
        this.content.setLocation(-hSelection, location.y);
    }

    boolean needHScroll(Rectangle contentRect, boolean vVisible) {
        ScrollBar hBar = this.getHorizontalBar();
        if (hBar == null) {
            return false;
        }
        Rectangle hostRect = this.getBounds();
        int border = this.getBorderWidth();
        hostRect.width -= 2 * border;
        ScrollBar vBar = this.getVerticalBar();
        if (vVisible && vBar != null) {
            hostRect.width -= vBar.getSize().x;
        }
        if (!this.expandHorizontal && contentRect.width > hostRect.width) {
            return true;
        }
        return this.expandHorizontal && this.minWidth > hostRect.width;
    }

    boolean needVScroll(Rectangle contentRect, boolean hVisible) {
        ScrollBar vBar = this.getVerticalBar();
        if (vBar == null) {
            return false;
        }
        Rectangle hostRect = this.getBounds();
        int border = this.getBorderWidth();
        hostRect.height -= 2 * border;
        ScrollBar hBar = this.getHorizontalBar();
        if (hVisible && hBar != null) {
            hostRect.height -= hBar.getSize().y;
        }
        if (!this.expandVertical && contentRect.height > hostRect.height) {
            return true;
        }
        return this.expandVertical && this.minHeight > hostRect.height;
    }

    public Point getOrigin() {
        this.checkWidget();
        if (this.content == null) {
            return new Point(0, 0);
        }
        Point location = this.content.getLocation();
        return new Point(-location.x, -location.y);
    }

    public void setOrigin(Point origin) {
        this.setOrigin(origin.x, origin.y);
    }

    public void setOrigin(int x, int y) {
        this.checkWidget();
        if (this.content == null) {
            return;
        }
        ScrollBar hBar = this.getHorizontalBar();
        if (hBar != null) {
            hBar.setSelection(x);
            x = -hBar.getSelection();
        } else {
            x = 0;
        }
        ScrollBar vBar = this.getVerticalBar();
        if (vBar != null) {
            vBar.setSelection(y);
            y = -vBar.getSelection();
        } else {
            y = 0;
        }
        this.content.setLocation(x, y);
    }

    public void setAlwaysShowScrollBars(boolean show) {
        ScrollBar vBar;
        this.checkWidget();
        if (show == this.alwaysShowScroll) {
            return;
        }
        this.alwaysShowScroll = show;
        ScrollBar hBar = this.getHorizontalBar();
        if (hBar != null && this.alwaysShowScroll) {
            hBar.setVisible(true);
        }
        if ((vBar = this.getVerticalBar()) != null && this.alwaysShowScroll) {
            vBar.setVisible(true);
        }
        this.layout(false);
    }

    public void setContent(Control content) {
        this.checkWidget();
        if (this.content != null && !this.content.isDisposed()) {
            this.content.removeListener(11, this.contentListener);
            this.content.setBounds(new Rectangle(-200, -200, 0, 0));
        }
        this.content = content;
        ScrollBar vBar = this.getVerticalBar();
        ScrollBar hBar = this.getHorizontalBar();
        if (this.content != null) {
            if (vBar != null) {
                vBar.setMaximum(0);
                vBar.setThumb(0);
                vBar.setSelection(0);
            }
            if (hBar != null) {
                hBar.setMaximum(0);
                hBar.setThumb(0);
                hBar.setSelection(0);
            }
            content.setLocation(0, 0);
            this.layout(false);
            this.content.addListener(11, this.contentListener);
        } else {
            if (hBar != null) {
                hBar.setVisible(this.alwaysShowScroll);
            }
            if (vBar != null) {
                vBar.setVisible(this.alwaysShowScroll);
            }
        }
    }

    public void setExpandHorizontal(boolean expand) {
        this.checkWidget();
        if (expand == this.expandHorizontal) {
            return;
        }
        this.expandHorizontal = expand;
        this.layout(false);
    }

    public void setExpandVertical(boolean expand) {
        this.checkWidget();
        if (expand == this.expandVertical) {
            return;
        }
        this.expandVertical = expand;
        this.layout(false);
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
    }

    public void setMinHeight(int height) {
        this.setMinSize(this.minWidth, height);
    }

    public void setMinSize(Point size) {
        if (size == null) {
            this.setMinSize(0, 0);
        } else {
            this.setMinSize(size.x, size.y);
        }
    }

    public void setMinSize(int width, int height) {
        this.checkWidget();
        if (width == this.minWidth && height == this.minHeight) {
            return;
        }
        this.minWidth = Math.max(0, width);
        this.minHeight = Math.max(0, height);
        this.layout(false);
    }

    public void setMinWidth(int width) {
        this.setMinSize(width, this.minHeight);
    }

    public void setShowFocusedControl(boolean show) {
        this.checkWidget();
        if (this.showFocusedControl == show) {
            return;
        }
        Display display = this.getDisplay();
        display.removeFilter(15, this.filter);
        this.showFocusedControl = show;
        if (!this.showFocusedControl) {
            return;
        }
        display.addFilter(15, this.filter);
        Control control = display.getFocusControl();
        if (this.contains(control)) {
            this.showControl(control);
        }
    }

    public void showControl(Control control) {
        this.checkWidget();
        if (control == null) {
            SWT.error(4);
        }
        if (control.isDisposed()) {
            SWT.error(5);
        }
        if (!this.contains(control)) {
            SWT.error(5);
        }
        Rectangle itemRect = this.getDisplay().map((Control)control.getParent(), (Control)this, control.getBounds());
        Rectangle area = this.getClientArea();
        Point origin = this.getOrigin();
        if (itemRect.x < 0) {
            origin.x = Math.max(0, origin.x + itemRect.x);
        } else if (area.width < itemRect.x + itemRect.width) {
            origin.x = Math.max(0, origin.x + itemRect.x + Math.min(itemRect.width, area.width) - area.width);
        }
        if (itemRect.y < 0) {
            origin.y = Math.max(0, origin.y + itemRect.y);
        } else if (area.height < itemRect.y + itemRect.height) {
            origin.y = Math.max(0, origin.y + itemRect.y + Math.min(itemRect.height, area.height) - area.height);
        }
        this.setOrigin(origin);
    }

    void vScroll() {
        if (this.content == null) {
            return;
        }
        Point location = this.content.getLocation();
        ScrollBar vBar = this.getVerticalBar();
        int vSelection = vBar.getSelection();
        this.content.setLocation(location.x, -vSelection);
    }
}

