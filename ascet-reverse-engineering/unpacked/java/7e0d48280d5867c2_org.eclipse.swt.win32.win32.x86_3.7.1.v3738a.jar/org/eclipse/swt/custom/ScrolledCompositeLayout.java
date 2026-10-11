/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ScrollBar;

class ScrolledCompositeLayout
extends Layout {
    boolean inLayout = false;
    static final int DEFAULT_WIDTH = 64;
    static final int DEFAULT_HEIGHT = 64;

    ScrolledCompositeLayout() {
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        ScrolledComposite sc = (ScrolledComposite)composite;
        Point size = new Point(64, 64);
        if (sc.content != null) {
            Point preferredSize = sc.content.computeSize(wHint, hHint, flushCache);
            Point currentSize = sc.content.getSize();
            size.x = sc.getExpandHorizontal() ? preferredSize.x : currentSize.x;
            size.y = sc.getExpandVertical() ? preferredSize.y : currentSize.y;
        }
        size.x = Math.max(size.x, sc.minWidth);
        size.y = Math.max(size.y, sc.minHeight);
        if (wHint != -1) {
            size.x = wHint;
        }
        if (hHint != -1) {
            size.y = hHint;
        }
        return size;
    }

    protected boolean flushCache(Control control) {
        return true;
    }

    protected void layout(Composite composite, boolean flushCache) {
        if (this.inLayout) {
            return;
        }
        ScrolledComposite sc = (ScrolledComposite)composite;
        if (sc.content == null) {
            return;
        }
        ScrollBar hBar = sc.getHorizontalBar();
        ScrollBar vBar = sc.getVerticalBar();
        if (hBar != null && hBar.getSize().y >= sc.getSize().y) {
            return;
        }
        if (vBar != null && vBar.getSize().x >= sc.getSize().x) {
            return;
        }
        this.inLayout = true;
        Rectangle contentRect = sc.content.getBounds();
        if (!sc.alwaysShowScroll) {
            boolean hVisible = sc.needHScroll(contentRect, false);
            boolean vVisible = sc.needVScroll(contentRect, hVisible);
            if (!hVisible && vVisible) {
                hVisible = sc.needHScroll(contentRect, vVisible);
            }
            if (hBar != null) {
                hBar.setVisible(hVisible);
            }
            if (vBar != null) {
                vBar.setVisible(vVisible);
            }
        }
        Rectangle hostRect = sc.getClientArea();
        if (sc.expandHorizontal) {
            contentRect.width = Math.max(sc.minWidth, hostRect.width);
        }
        if (sc.expandVertical) {
            contentRect.height = Math.max(sc.minHeight, hostRect.height);
        }
        if (hBar != null) {
            hBar.setMaximum(contentRect.width);
            hBar.setThumb(Math.min(contentRect.width, hostRect.width));
            int hPage = contentRect.width - hostRect.width;
            int hSelection = hBar.getSelection();
            if (hSelection >= hPage) {
                if (hPage <= 0) {
                    hSelection = 0;
                    hBar.setSelection(0);
                }
                contentRect.x = -hSelection;
            }
        }
        if (vBar != null) {
            vBar.setMaximum(contentRect.height);
            vBar.setThumb(Math.min(contentRect.height, hostRect.height));
            int vPage = contentRect.height - hostRect.height;
            int vSelection = vBar.getSelection();
            if (vSelection >= vPage) {
                if (vPage <= 0) {
                    vSelection = 0;
                    vBar.setSelection(0);
                }
                contentRect.y = -vSelection;
            }
        }
        sc.content.setBounds(contentRect);
        this.inLayout = false;
    }
}

