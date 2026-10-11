/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.forms.widgets;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.forms.widgets.ILayoutExtension;

public class WrappedPageBook
extends Composite {
    private Control currentPage = null;

    public WrappedPageBook(Composite parent, int style) {
        super(parent, style);
        this.setLayout(new PageBookLayout());
    }

    public void showPage(Control page) {
        if (page == this.currentPage) {
            return;
        }
        if (page.getParent() != this) {
            return;
        }
        Control oldPage = this.currentPage;
        this.currentPage = page;
        if (page != null && !page.isDisposed()) {
            this.layout(true);
            page.setVisible(true);
        }
        if (oldPage != null && !oldPage.isDisposed()) {
            oldPage.setVisible(false);
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        return ((PageBookLayout)this.getLayout()).computeSize(this, wHint, hHint, changed);
    }

    class PageBookLayout
    extends Layout
    implements ILayoutExtension {
        PageBookLayout() {
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Point result = null;
            result = WrappedPageBook.this.currentPage != null ? WrappedPageBook.this.currentPage.computeSize(wHint, hHint, flushCache) : new Point(0, 0);
            return result;
        }

        protected void layout(Composite composite, boolean flushCache) {
            if (WrappedPageBook.this.currentPage != null) {
                WrappedPageBook.this.currentPage.setBounds(composite.getClientArea());
            }
        }

        public int computeMaximumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)-1, (int)-1, (boolean)changed).x;
        }

        public int computeMinimumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)0, (int)-1, (boolean)changed).x;
        }
    }
}

