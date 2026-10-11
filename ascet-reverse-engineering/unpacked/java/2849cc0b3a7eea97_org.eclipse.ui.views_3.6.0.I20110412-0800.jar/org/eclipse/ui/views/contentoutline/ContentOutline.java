/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.part.IContributedContentsView
 *  org.eclipse.ui.part.IPage
 *  org.eclipse.ui.part.IPageBookViewPage
 *  org.eclipse.ui.part.MessagePage
 *  org.eclipse.ui.part.PageBook
 *  org.eclipse.ui.part.PageBookView
 *  org.eclipse.ui.part.PageBookView$PageRec
 *  org.eclipse.ui.part.PageSite
 */
package org.eclipse.ui.views.contentoutline;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.views.ViewsPlugin;
import org.eclipse.ui.internal.views.contentoutline.ContentOutlineMessages;
import org.eclipse.ui.part.IContributedContentsView;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.MessagePage;
import org.eclipse.ui.part.PageBook;
import org.eclipse.ui.part.PageBookView;
import org.eclipse.ui.part.PageSite;
import org.eclipse.ui.views.contentoutline.IContentOutlinePage;

public class ContentOutline
extends PageBookView
implements ISelectionProvider,
ISelectionChangedListener {
    public static final String PREFIX = "org.eclipse.ui.";
    public static final String CONTENT_OUTLINE_VIEW_HELP_CONTEXT_ID = "org.eclipse.ui.content_outline_context";
    private String defaultText = ContentOutlineMessages.ContentOutline_noOutline;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public void addSelectionChangedListener(ISelectionChangedListener listener) {
        this.getSelectionProvider().addSelectionChangedListener(listener);
    }

    protected IPage createDefaultPage(PageBook book) {
        MessagePage page = new MessagePage();
        this.initPage((IPageBookViewPage)page);
        page.createControl((Composite)book);
        page.setMessage(this.defaultText);
        return page;
    }

    public void createPartControl(Composite parent) {
        super.createPartControl(parent);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)this.getPageBook(), CONTENT_OUTLINE_VIEW_HELP_CONTEXT_ID);
    }

    protected PageBookView.PageRec doCreatePage(IWorkbenchPart part) {
        Object obj;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.views.contentoutline.IContentOutlinePage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((obj = ViewsPlugin.getAdapter(part, clazz, false)) instanceof IContentOutlinePage) {
            IContentOutlinePage page = (IContentOutlinePage)obj;
            if (page instanceof IPageBookViewPage) {
                this.initPage((IPageBookViewPage)page);
            }
            page.createControl((Composite)this.getPageBook());
            return new PageBookView.PageRec(part, (IPage)page);
        }
        return null;
    }

    protected void doDestroyPage(IWorkbenchPart part, PageBookView.PageRec rec) {
        IContentOutlinePage page = (IContentOutlinePage)rec.page;
        page.dispose();
        rec.dispose();
    }

    public Object getAdapter(Class key) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.part.IContributedContentsView");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (key == clazz) {
            return new IContributedContentsView(){

                public IWorkbenchPart getContributingPart() {
                    return ContentOutline.this.getContributingEditor();
                }
            };
        }
        return super.getAdapter(key);
    }

    protected IWorkbenchPart getBootstrapPart() {
        IWorkbenchPage page = this.getSite().getPage();
        if (page != null) {
            return page.getActiveEditor();
        }
        return null;
    }

    private IWorkbenchPart getContributingEditor() {
        return this.getCurrentContributingPart();
    }

    public ISelection getSelection() {
        return this.getSelectionProvider().getSelection();
    }

    protected boolean isImportant(IWorkbenchPart part) {
        return part instanceof IEditorPart;
    }

    public void partBroughtToTop(IWorkbenchPart part) {
        this.partActivated(part);
    }

    public void removeSelectionChangedListener(ISelectionChangedListener listener) {
        this.getSelectionProvider().removeSelectionChangedListener(listener);
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.getSelectionProvider().selectionChanged(event);
    }

    public void setSelection(ISelection selection) {
        this.getSelectionProvider().setSelection(selection);
    }

    protected void showPageRec(PageBookView.PageRec pageRec) {
        PageSite pageSite = this.getPageSite(pageRec.page);
        ISelectionProvider provider = pageSite.getSelectionProvider();
        if (provider == null && pageRec.page instanceof IContentOutlinePage) {
            pageSite.setSelectionProvider((ISelectionProvider)((IContentOutlinePage)pageRec.page));
        }
        super.showPageRec(pageRec);
    }
}

