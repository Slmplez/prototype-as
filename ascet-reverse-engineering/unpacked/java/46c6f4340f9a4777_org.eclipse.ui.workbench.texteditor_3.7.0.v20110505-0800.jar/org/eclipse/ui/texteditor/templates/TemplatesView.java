/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.text.templates.persistence.TemplatePersistenceData
 *  org.eclipse.jface.text.templates.persistence.TemplateStore
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.part.IPage
 *  org.eclipse.ui.part.IPageBookViewPage
 *  org.eclipse.ui.part.MessagePage
 *  org.eclipse.ui.part.PageBook
 *  org.eclipse.ui.part.PageBookView
 *  org.eclipse.ui.part.PageBookView$PageRec
 */
package org.eclipse.ui.texteditor.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.jface.text.templates.persistence.TemplateStore;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.MessagePage;
import org.eclipse.ui.part.PageBook;
import org.eclipse.ui.part.PageBookView;
import org.eclipse.ui.texteditor.templates.ITemplatesPage;
import org.eclipse.ui.texteditor.templates.ITemplatesPageExtension;
import org.eclipse.ui.texteditor.templates.TemplatesMessages;

public final class TemplatesView
extends PageBookView {
    public static final String ID = "org.eclipse.ui.texteditor.TemplatesView";
    static /* synthetic */ Class class$0;

    protected IPage createDefaultPage(PageBook book) {
        MessagePage page = new MessagePage();
        this.initPage((IPageBookViewPage)page);
        page.createControl((Composite)book);
        page.setMessage(TemplatesMessages.TemplatesView_no_templates);
        return page;
    }

    public void createPartControl(Composite parent) {
        super.createPartControl(parent);
        Assert.isTrue((boolean)ID.equals(this.getViewSite().getId()));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)this.getPageBook(), "org.eclipse.ui.templates_view_context");
    }

    protected PageBookView.PageRec doCreatePage(IWorkbenchPart part) {
        ITemplatesPage page;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.texteditor.templates.ITemplatesPage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((page = (ITemplatesPage)part.getAdapter((Class)clazz)) == null) {
            IAdapterManager iAdapterManager = Platform.getAdapterManager();
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.ui.texteditor.templates.ITemplatesPage");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            page = (ITemplatesPage)iAdapterManager.getAdapter((Object)part, (Class)clazz2);
        }
        if (page == null) {
            return null;
        }
        this.initPage(page);
        page.createControl((Composite)this.getPageBook());
        return new PageBookView.PageRec(part, (IPage)page);
    }

    protected void doDestroyPage(IWorkbenchPart part, PageBookView.PageRec rec) {
        ITemplatesPage page = (ITemplatesPage)rec.page;
        page.dispose();
        rec.dispose();
    }

    protected IWorkbenchPart getBootstrapPart() {
        IWorkbenchPage page = this.getSite().getPage();
        if (page != null) {
            return page.getActiveEditor();
        }
        return null;
    }

    protected boolean isImportant(IWorkbenchPart part) {
        return part instanceof IEditorPart;
    }

    public void partBroughtToTop(IWorkbenchPart part) {
        this.partActivated(part);
    }

    public TemplateStore getTemplateStore() {
        IPage currentPage = this.getCurrentPage();
        if (currentPage instanceof ITemplatesPageExtension) {
            return ((ITemplatesPageExtension)currentPage).getTemplateStore();
        }
        return null;
    }

    public TemplatePersistenceData[] getSelectedTemplates() {
        IPage currentPage = this.getCurrentPage();
        if (currentPage instanceof ITemplatesPageExtension) {
            return ((ITemplatesPageExtension)currentPage).getSelectedTemplates();
        }
        return null;
    }
}

