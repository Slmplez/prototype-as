/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.forms;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.forms.IDetailsPage;
import org.eclipse.ui.forms.IDetailsPageProvider;
import org.eclipse.ui.forms.IFormPart;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.IPartSelectionListener;
import org.eclipse.ui.forms.widgets.ScrolledPageBook;

public final class DetailsPart
implements IFormPart,
IPartSelectionListener {
    private IManagedForm managedForm;
    private ScrolledPageBook pageBook;
    private IFormPart masterPart;
    private IStructuredSelection currentSelection;
    private Hashtable pages;
    private IDetailsPageProvider pageProvider;
    private int pageLimit = Integer.MAX_VALUE;

    public DetailsPart(IManagedForm mform, ScrolledPageBook pageBook) {
        this.pageBook = pageBook;
        this.pages = new Hashtable();
        this.initialize(mform);
    }

    public DetailsPart(IManagedForm mform, Composite parent, int style) {
        this(mform, mform.getToolkit().createPageBook(parent, style | 0x200 | 0x100));
    }

    public void registerPage(Object objectClass, IDetailsPage page) {
        this.registerPage(objectClass, page, true);
    }

    private void registerPage(Object objectClass, IDetailsPage page, boolean fixed) {
        this.pages.put(objectClass, new PageBag(page, fixed));
        page.initialize(this.managedForm);
    }

    public void setPageProvider(IDetailsPageProvider provider) {
        this.pageProvider = provider;
    }

    public void commit(boolean onSave) {
        IDetailsPage page = this.getCurrentPage();
        if (page != null) {
            page.commit(onSave);
        }
    }

    public IDetailsPage getCurrentPage() {
        Object data;
        Control control = this.pageBook.getCurrentPage();
        if (control != null && (data = control.getData()) instanceof IDetailsPage) {
            return (IDetailsPage)data;
        }
        return null;
    }

    public void dispose() {
        Enumeration enm = this.pages.elements();
        while (enm.hasMoreElements()) {
            PageBag pageBag = (PageBag)enm.nextElement();
            pageBag.dispose();
        }
    }

    public void initialize(IManagedForm form) {
        this.managedForm = form;
    }

    public boolean isDirty() {
        IDetailsPage page = this.getCurrentPage();
        if (page != null) {
            return page.isDirty();
        }
        return false;
    }

    public boolean isStale() {
        IDetailsPage page = this.getCurrentPage();
        if (page != null) {
            return page.isStale();
        }
        return false;
    }

    public void refresh() {
        IDetailsPage page = this.getCurrentPage();
        if (page != null) {
            page.refresh();
        }
    }

    public void setFocus() {
        IDetailsPage page = this.getCurrentPage();
        if (page != null) {
            page.setFocus();
        }
    }

    public boolean setFormInput(Object input) {
        return false;
    }

    public void selectionChanged(IFormPart part, ISelection selection) {
        this.masterPart = part;
        this.currentSelection = selection instanceof IStructuredSelection ? (IStructuredSelection)selection : null;
        this.update();
    }

    private void update() {
        Object key = null;
        if (this.currentSelection != null) {
            Iterator iter = this.currentSelection.iterator();
            while (iter.hasNext()) {
                Object obj = iter.next();
                if (key == null) {
                    key = this.getKey(obj);
                    continue;
                }
                if (this.getKey(obj).equals(key)) continue;
                key = null;
                break;
            }
        }
        this.showPage(key);
    }

    private Object getKey(Object object) {
        Object key;
        if (this.pageProvider != null && (key = this.pageProvider.getPageKey(object)) != null) {
            return key;
        }
        return object.getClass();
    }

    private void showPage(final Object key) {
        this.checkLimit();
        final IDetailsPage oldPage = this.getCurrentPage();
        if (key != null) {
            IDetailsPage page;
            PageBag pageBag = (PageBag)this.pages.get(key);
            IDetailsPage iDetailsPage = page = pageBag != null ? pageBag.getPage() : null;
            if (page == null && this.pageProvider != null && (page = this.pageProvider.getPage(key)) != null) {
                this.registerPage(key, page, false);
            }
            if (page != null) {
                final IDetailsPage fpage = page;
                BusyIndicator.showWhile((Display)this.pageBook.getDisplay(), (Runnable)new Runnable(){

                    public void run() {
                        if (!DetailsPart.this.pageBook.hasPage(key)) {
                            Composite parent = DetailsPart.this.pageBook.createPage(key);
                            fpage.createContents(parent);
                            parent.setData((Object)fpage);
                        }
                        if (oldPage != null && oldPage.isDirty()) {
                            oldPage.commit(false);
                        }
                        if (fpage.isStale()) {
                            fpage.refresh();
                        }
                        fpage.selectionChanged(DetailsPart.this.masterPart, (ISelection)DetailsPart.this.currentSelection);
                        DetailsPart.this.pageBook.showPage(key);
                    }
                });
                return;
            }
        }
        if (oldPage != null && oldPage.isDirty()) {
            oldPage.commit(false);
        }
        this.pageBook.showEmptyPage();
    }

    private void checkLimit() {
        if (this.pages.size() <= this.getPageLimit()) {
            return;
        }
        int currentTicket = PageBag.getCurrentTicket();
        int cutoffTicket = currentTicket - this.getPageLimit();
        Enumeration enm = this.pages.keys();
        while (enm.hasMoreElements()) {
            Object key = enm.nextElement();
            PageBag pageBag = (PageBag)this.pages.get(key);
            if (pageBag.getTicket() > cutoffTicket || pageBag.isFixed() || pageBag.getPage().equals(this.getCurrentPage())) continue;
            pageBag.dispose();
            this.pages.remove(key);
            this.pageBook.removePage(key, false);
        }
    }

    public int getPageLimit() {
        return this.pageLimit;
    }

    public void setPageLimit(int pageLimit) {
        this.pageLimit = pageLimit;
        this.checkLimit();
    }

    private static class PageBag {
        private static int counter;
        private int ticket;
        private IDetailsPage page;
        private boolean fixed;

        public PageBag(IDetailsPage page, boolean fixed) {
            this.page = page;
            this.fixed = fixed;
            this.ticket = ++counter;
        }

        public int getTicket() {
            return this.ticket;
        }

        public IDetailsPage getPage() {
            return this.page;
        }

        public void dispose() {
            this.page.dispose();
            this.page = null;
        }

        public boolean isFixed() {
            return this.fixed;
        }

        public static int getCurrentTicket() {
            return counter;
        }
    }
}

