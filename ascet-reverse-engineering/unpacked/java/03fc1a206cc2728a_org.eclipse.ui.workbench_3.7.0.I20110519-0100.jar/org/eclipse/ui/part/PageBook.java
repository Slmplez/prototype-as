/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.part;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;

public class PageBook
extends Composite {
    private Control currentPage = null;

    public PageBook(Composite parent, int style) {
        super(parent, style);
        this.setLayout(new PageBookLayout());
    }

    public void showPage(Control page) {
        if (page.isDisposed() || page.getParent() != this) {
            return;
        }
        this.currentPage = page;
        page.setVisible(true);
        this.layout(true);
        Control[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (child != page && !child.isDisposed()) {
                child.setVisible(false);
            }
            ++i;
        }
    }

    public class PageBookLayout
    extends Layout {
        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Point result = null;
            result = PageBook.this.currentPage != null ? PageBook.this.currentPage.computeSize(wHint, hHint, flushCache) : new Point(0, 0);
            if (wHint != -1) {
                result.x = wHint;
            }
            if (hHint != -1) {
                result.y = hHint;
            }
            return result;
        }

        protected void layout(Composite composite, boolean flushCache) {
            if (PageBook.this.currentPage != null) {
                PageBook.this.currentPage.setBounds(composite.getClientArea());
            }
        }
    }
}

