/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.part;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.IPageSite;
import org.eclipse.ui.part.PageBook;
import org.eclipse.ui.part.PageSite;
import org.eclipse.ui.part.ViewPart;

public abstract class PageBookView
extends ViewPart
implements IPartListener {
    private PageBook book;
    private PageRec defaultPageRec;
    private Map mapPartToRec = new HashMap();
    private Map mapPageToSite = new HashMap();
    private Map mapPageToNumRecs = new HashMap();
    private PageRec activeRec;
    private IWorkbenchPart hiddenPart = null;
    private IPropertyChangeListener actionBarPropListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (event.getProperty().equals("org.eclipse.ui.internal.actionHandlers") && PageBookView.this.activeRec != null && event.getSource() == ((PageBookView)PageBookView.this).activeRec.subActionBars) {
                PageBookView.this.refreshGlobalActionHandlers();
            }
        }
    };
    private ISelectionChangedListener selectionChangedListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            PageBookView.this.pageSelectionChanged(event);
        }
    };
    private ISelectionChangedListener postSelectionListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            PageBookView.this.postSelectionChanged(event);
        }
    };
    private SelectionProvider selectionProvider = new SelectionProvider();
    private IPartListener2 partListener = new IPartListener2(){

        public void partActivated(IWorkbenchPartReference partRef) {
            IWorkbenchPart part = partRef.getPart(false);
            PageBookView.this.partActivated(part);
        }

        public void partBroughtToTop(IWorkbenchPartReference partRef) {
            PageBookView.this.partBroughtToTop(partRef.getPart(false));
        }

        public void partClosed(IWorkbenchPartReference partRef) {
            PageBookView.this.partClosed(partRef.getPart(false));
        }

        public void partDeactivated(IWorkbenchPartReference partRef) {
            PageBookView.this.partDeactivated(partRef.getPart(false));
        }

        public void partHidden(IWorkbenchPartReference partRef) {
            PageBookView.this.partHidden(partRef.getPart(false));
        }

        public void partInputChanged(IWorkbenchPartReference partRef) {
        }

        public void partOpened(IWorkbenchPartReference partRef) {
            PageBookView.this.partOpened(partRef.getPart(false));
        }

        public void partVisible(IWorkbenchPartReference partRef) {
            PageBookView.this.partVisible(partRef.getPart(false));
        }
    };

    protected PageBookView() {
    }

    protected abstract IPage createDefaultPage(PageBook var1);

    private PageRec createPage(IWorkbenchPart part) {
        PageRec rec = this.doCreatePage(part);
        if (rec != null) {
            this.mapPartToRec.put(part, rec);
            this.preparePage(rec);
        }
        return rec;
    }

    private void preparePage(PageRec rec) {
        Integer count;
        IPageSite site = null;
        if (!this.doesPageExist(rec.page)) {
            if (rec.page instanceof IPageBookViewPage) {
                site = ((IPageBookViewPage)rec.page).getSite();
            }
            if (site == null) {
                site = new PageSite(this.getViewSite());
            }
            this.mapPageToSite.put(rec.page, site);
            rec.subActionBars = (SubActionBars)site.getActionBars();
            rec.subActionBars.addPropertyChangeListener(this.actionBarPropListener);
            rec.page.setActionBars(rec.subActionBars);
            count = new Integer(0);
        } else {
            site = (IPageSite)this.mapPageToSite.get(rec.page);
            rec.subActionBars = (SubActionBars)site.getActionBars();
            count = (Integer)this.mapPageToNumRecs.get(rec.page);
        }
        this.mapPageToNumRecs.put(rec.page, new Integer(count + 1));
    }

    protected void initPage(IPageBookViewPage page) {
        try {
            page.init(new PageSite(this.getViewSite()));
        }
        catch (PartInitException e) {
            WorkbenchPlugin.log(this.getClass(), "initPage", (Throwable)((Object)e));
        }
    }

    public void createPartControl(Composite parent) {
        this.book = new PageBook(parent, 0);
        IPage defaultPage = this.createDefaultPage(this.book);
        this.defaultPageRec = new PageRec(null, defaultPage);
        this.preparePage(this.defaultPageRec);
        this.showPageRec(this.defaultPageRec);
        this.getSite().getPage().addPartListener(this.partListener);
        this.showBootstrapPart();
    }

    public void dispose() {
        this.getSite().getPage().removePartListener(this.partListener);
        this.activeRec = null;
        if (this.defaultPageRec != null) {
            this.defaultPageRec.page.dispose();
            this.defaultPageRec = null;
        }
        Map clone = (Map)((HashMap)this.mapPartToRec).clone();
        Iterator itr = clone.values().iterator();
        while (itr.hasNext()) {
            PageRec rec = (PageRec)itr.next();
            this.removePage(rec);
        }
        super.dispose();
    }

    protected abstract PageRec doCreatePage(IWorkbenchPart var1);

    protected abstract void doDestroyPage(IWorkbenchPart var1, PageRec var2);

    protected boolean doesPageExist(IPage page) {
        return this.mapPageToNumRecs.containsKey(page);
    }

    public Object getAdapter(Class key) {
        IPage page = this.getCurrentPage();
        Object adapter = Util.getAdapter(page, key);
        if (adapter != null) {
            return adapter;
        }
        adapter = this.getViewAdapter(key);
        if (adapter != null) {
            return adapter;
        }
        return super.getAdapter(key);
    }

    protected Object getViewAdapter(Class adapter) {
        return null;
    }

    protected abstract IWorkbenchPart getBootstrapPart();

    protected IWorkbenchPart getCurrentContributingPart() {
        if (this.activeRec == null) {
            return null;
        }
        return this.activeRec.part;
    }

    public IPage getCurrentPage() {
        if (this.activeRec == null) {
            return null;
        }
        return this.activeRec.page;
    }

    protected PageSite getPageSite(IPage page) {
        return (PageSite)this.mapPageToSite.get(page);
    }

    public IPage getDefaultPage() {
        return this.defaultPageRec.page;
    }

    protected PageBook getPageBook() {
        return this.book;
    }

    protected PageRec getPageRec(IWorkbenchPart part) {
        return (PageRec)this.mapPartToRec.get(part);
    }

    protected PageRec getPageRec(IPage page) {
        Iterator itr = this.mapPartToRec.values().iterator();
        while (itr.hasNext()) {
            PageRec rec = (PageRec)itr.next();
            if (rec.page != page) continue;
            return rec;
        }
        return null;
    }

    protected abstract boolean isImportant(IWorkbenchPart var1);

    public void init(IViewSite site) throws PartInitException {
        site.setSelectionProvider((ISelectionProvider)this.selectionProvider);
        super.init(site);
    }

    public void partActivated(IWorkbenchPart part) {
        if (!this.isImportant(part)) {
            return;
        }
        this.hiddenPart = null;
        PageRec rec = this.getPageRec(part);
        if (rec == null) {
            rec = this.createPage(part);
        }
        if (rec != null) {
            this.showPageRec(rec);
        } else {
            this.showPageRec(this.defaultPageRec);
        }
    }

    public void partBroughtToTop(IWorkbenchPart part) {
    }

    public void partClosed(IWorkbenchPart part) {
        PageRec rec;
        if (this.activeRec != null && this.activeRec.part == part) {
            this.showPageRec(this.defaultPageRec);
        }
        if ((rec = this.getPageRec(part)) != null) {
            this.removePage(rec);
        }
        if (part == this.hiddenPart) {
            this.hiddenPart = null;
        }
    }

    public void partDeactivated(IWorkbenchPart part) {
    }

    public void partOpened(IWorkbenchPart part) {
    }

    private void refreshGlobalActionHandlers() {
        IActionBars bars = this.getViewSite().getActionBars();
        bars.clearGlobalActionHandlers();
        Map newActionHandlers = this.activeRec.subActionBars.getGlobalActionHandlers();
        if (newActionHandlers != null) {
            Set keys = newActionHandlers.entrySet();
            Iterator iter = keys.iterator();
            while (iter.hasNext()) {
                Map.Entry entry = iter.next();
                bars.setGlobalActionHandler((String)entry.getKey(), (IAction)entry.getValue());
            }
        }
    }

    private void removePage(PageRec rec) {
        this.mapPartToRec.remove(rec.part);
        int newCount = (Integer)this.mapPageToNumRecs.get(rec.page) - 1;
        if (newCount == 0) {
            Object site = this.mapPageToSite.remove(rec.page);
            this.mapPageToNumRecs.remove(rec.page);
            Control control = rec.page.getControl();
            if (control != null && !control.isDisposed()) {
                control.dispose();
            }
            this.doDestroyPage(rec.part, rec);
            if (rec.subActionBars != null) {
                rec.subActionBars.dispose();
            }
            if (site instanceof PageSite) {
                ((PageSite)site).dispose();
            }
        } else {
            this.mapPageToNumRecs.put(rec.page, new Integer(newCount));
        }
    }

    public void setFocus() {
        if (this.book != null) {
            this.book.setFocus();
        }
        if (this.activeRec != null) {
            this.activeRec.page.setFocus();
        }
    }

    private void pageSelectionChanged(SelectionChangedEvent event) {
        SelectionProvider provider = (SelectionProvider)this.getSite().getSelectionProvider();
        if (provider != null) {
            provider.selectionChanged(event);
        }
    }

    private void postSelectionChanged(SelectionChangedEvent event) {
        SelectionProvider provider = (SelectionProvider)this.getSite().getSelectionProvider();
        if (provider != null) {
            provider.postSelectionChanged(event);
        }
    }

    private void showBootstrapPart() {
        IWorkbenchPart part = this.getBootstrapPart();
        if (part != null) {
            this.partActivated(part);
        }
    }

    protected void showPageRec(PageRec pageRec) {
        if (this.activeRec == pageRec) {
            return;
        }
        if (this.activeRec != null && pageRec != null && this.activeRec.page == pageRec.page) {
            this.activeRec = pageRec;
            return;
        }
        if (this.activeRec != null) {
            PageSite pageSite = (PageSite)this.mapPageToSite.get(this.activeRec.page);
            this.activeRec.subActionBars.deactivate();
            pageSite.deactivate();
            ISelectionProvider provider = pageSite.getSelectionProvider();
            if (provider != null) {
                provider.removeSelectionChangedListener(this.selectionChangedListener);
                if (provider instanceof IPostSelectionProvider) {
                    ((IPostSelectionProvider)provider).removePostSelectionChangedListener(this.postSelectionListener);
                } else {
                    provider.removeSelectionChangedListener(this.postSelectionListener);
                }
            }
        }
        this.activeRec = pageRec;
        Control pageControl = this.activeRec.page.getControl();
        if (pageControl != null && !pageControl.isDisposed()) {
            PageSite pageSite = (PageSite)this.mapPageToSite.get(this.activeRec.page);
            this.book.showPage(pageControl);
            this.activeRec.subActionBars.activate();
            this.refreshGlobalActionHandlers();
            pageSite.activate();
            ISelectionProvider provider = pageSite.getSelectionProvider();
            if (provider != null) {
                provider.addSelectionChangedListener(this.selectionChangedListener);
                if (provider instanceof IPostSelectionProvider) {
                    ((IPostSelectionProvider)provider).addPostSelectionChangedListener(this.postSelectionListener);
                } else {
                    provider.addSelectionChangedListener(this.postSelectionListener);
                }
            }
            this.getViewSite().getActionBars().updateActionBars();
        }
    }

    protected SelectionProvider getSelectionProvider() {
        return this.selectionProvider;
    }

    protected void partHidden(IWorkbenchPart part) {
        IViewPart[] viewStack;
        if (part == null || part != this.getCurrentContributingPart()) {
            return;
        }
        if (this.getSite().getPage().getPartState(this.getSite().getPage().getReference(part)) == 0) {
            return;
        }
        if (part instanceof IViewPart && this.containsPart(viewStack = this.getSite().getPage().getViewStack(this), part)) {
            return;
        }
        this.hiddenPart = part;
        this.showPageRec(this.defaultPageRec);
    }

    private boolean containsPart(IViewPart[] viewStack, IWorkbenchPart part) {
        if (viewStack == null) {
            return false;
        }
        int i = 0;
        while (i < viewStack.length) {
            if (viewStack[i] == part) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected void partVisible(IWorkbenchPart part) {
        if (part == null || part != this.hiddenPart) {
            return;
        }
        this.partActivated(part);
    }

    protected static class PageRec {
        public IWorkbenchPart part;
        public IPage page;
        public SubActionBars subActionBars;

        public PageRec(IWorkbenchPart part, IPage page) {
            this.part = part;
            this.page = page;
        }

        public void dispose() {
            this.part = null;
            this.page = null;
        }
    }

    private static class SelectionManager
    extends EventManager {
        private SelectionManager() {
        }

        public void addSelectionChangedListener(ISelectionChangedListener listener) {
            this.addListenerObject(listener);
        }

        public void removeSelectionChangedListener(ISelectionChangedListener listener) {
            this.removeListenerObject(listener);
        }

        public void selectionChanged(SelectionChangedEvent event) {
            Object[] listeners = this.getListeners();
            int i = 0;
            while (i < listeners.length) {
                ISelectionChangedListener l = (ISelectionChangedListener)listeners[i];
                Platform.run((ISafeRunnable)new SafeRunnable(this, l, event){
                    final /* synthetic */ SelectionManager this$1;
                    private final /* synthetic */ ISelectionChangedListener val$l;
                    private final /* synthetic */ SelectionChangedEvent val$event;
                    {
                        this.this$1 = selectionManager;
                        this.val$l = iSelectionChangedListener;
                        this.val$event = selectionChangedEvent;
                    }

                    public void run() {
                        this.val$l.selectionChanged(this.val$event);
                    }
                });
                ++i;
            }
        }
    }

    protected class SelectionProvider
    implements IPostSelectionProvider {
        private SelectionManager fSelectionListener = new SelectionManager();
        private SelectionManager fPostSelectionListeners = new SelectionManager();

        protected SelectionProvider() {
        }

        public void addSelectionChangedListener(ISelectionChangedListener listener) {
            this.fSelectionListener.addSelectionChangedListener(listener);
        }

        public ISelection getSelection() {
            IPage currentPage = PageBookView.this.getCurrentPage();
            if (currentPage == null) {
                return StructuredSelection.EMPTY;
            }
            PageSite site = PageBookView.this.getPageSite(currentPage);
            if (site == null) {
                return StructuredSelection.EMPTY;
            }
            ISelectionProvider selProvider = site.getSelectionProvider();
            if (selProvider != null) {
                return selProvider.getSelection();
            }
            return StructuredSelection.EMPTY;
        }

        public void removeSelectionChangedListener(ISelectionChangedListener listener) {
            this.fSelectionListener.removeSelectionChangedListener(listener);
        }

        public void selectionChanged(SelectionChangedEvent event) {
            this.fSelectionListener.selectionChanged(event);
        }

        public void postSelectionChanged(SelectionChangedEvent event) {
            this.fPostSelectionListeners.selectionChanged(event);
        }

        public void setSelection(ISelection selection) {
            IPage currentPage = PageBookView.this.getCurrentPage();
            if (currentPage == null) {
                return;
            }
            PageSite site = PageBookView.this.getPageSite(currentPage);
            if (site == null) {
                return;
            }
            ISelectionProvider selProvider = site.getSelectionProvider();
            if (selProvider != null) {
                selProvider.setSelection(selection);
            }
        }

        public void addPostSelectionChangedListener(ISelectionChangedListener listener) {
            this.fPostSelectionListeners.addSelectionChangedListener(listener);
        }

        public void removePostSelectionChangedListener(ISelectionChangedListener listener) {
            this.fPostSelectionListeners.removeSelectionChangedListener(listener);
        }
    }
}

