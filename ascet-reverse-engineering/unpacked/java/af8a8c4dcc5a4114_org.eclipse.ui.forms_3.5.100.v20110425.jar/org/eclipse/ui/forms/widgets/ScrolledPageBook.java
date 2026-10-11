/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.forms.widgets;

import java.util.Hashtable;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.forms.widgets.LayoutComposite;
import org.eclipse.ui.forms.widgets.SharedScrolledComposite;
import org.eclipse.ui.internal.forms.widgets.WrappedPageBook;

public class ScrolledPageBook
extends SharedScrolledComposite {
    private WrappedPageBook pageBook = new WrappedPageBook((Composite)this, 0);
    private Hashtable pages;
    private Composite emptyPage;
    private Control currentPage;

    public ScrolledPageBook(Composite parent) {
        this(parent, 768);
    }

    public ScrolledPageBook(Composite parent, int style) {
        super(parent, style);
        this.setContent((Control)this.pageBook);
        this.pages = new Hashtable();
        this.setExpandHorizontal(true);
        this.setExpandVertical(true);
        this.addListener(31, new Listener(){

            public void handleEvent(Event e) {
                switch (e.detail) {
                    case 2: 
                    case 4: 
                    case 8: 
                    case 16: {
                        e.doit = true;
                    }
                }
            }
        });
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        Rectangle trim = this.computeTrim(0, 0, 10, 10);
        return new Point(trim.width, trim.height);
    }

    public boolean hasPage(Object key) {
        return this.pages.containsKey(key);
    }

    public Composite createPage(Object key) {
        Composite page = this.createPage();
        this.pages.put(key, page);
        return page;
    }

    public Composite getContainer() {
        return this.pageBook;
    }

    public void registerPage(Object key, Control page) {
        this.pages.put(key, page);
    }

    public void removePage(Object key) {
        this.removePage(key, true);
    }

    public void removePage(Object key, boolean showEmptyPage) {
        Control page = (Control)this.pages.get(key);
        if (page != null) {
            this.pages.remove(key);
            page.dispose();
            if (showEmptyPage) {
                this.showEmptyPage();
            }
        }
    }

    public void showPage(Object key) {
        Control page = (Control)this.pages.get(key);
        if (page != null) {
            this.pageBook.showPage(page);
            if (this.currentPage != null && this.currentPage != page && page instanceof Composite) {
                ((Composite)page).layout(false);
            }
            this.currentPage = page;
        } else {
            this.showEmptyPage();
        }
        this.reflow(true);
    }

    public void showEmptyPage() {
        if (this.emptyPage == null) {
            this.emptyPage = this.createPage();
            this.emptyPage.setLayout((Layout)new GridLayout());
        }
        this.pageBook.showPage((Control)this.emptyPage);
        this.currentPage = this.emptyPage;
        this.reflow(true);
    }

    public boolean setFocus() {
        if (this.currentPage != null) {
            return this.currentPage.setFocus();
        }
        return super.setFocus();
    }

    public Control getCurrentPage() {
        return this.currentPage;
    }

    private Composite createPage() {
        LayoutComposite page = new LayoutComposite(this.pageBook, 0);
        page.setBackground(this.getBackground());
        page.setForeground(this.getForeground());
        page.setMenu(this.pageBook.getMenu());
        return page;
    }
}

