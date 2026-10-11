/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.ui.IEditorActionBarContributor
 *  org.eclipse.ui.IEditorInput
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IEditorSite
 *  org.eclipse.ui.IWorkbenchPartSite
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.part.MultiPageEditorActionBarContributor
 *  org.eclipse.ui.part.MultiPageEditorPart
 *  org.eclipse.ui.part.MultiPageSelectionProvider
 */
package org.eclipse.ui.forms.editor;

import java.util.Vector;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.editor.IFormPage;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.part.MultiPageEditorActionBarContributor;
import org.eclipse.ui.part.MultiPageEditorPart;
import org.eclipse.ui.part.MultiPageSelectionProvider;

public abstract class FormEditor
extends MultiPageEditorPart {
    protected Vector pages = new Vector();
    private FormToolkit toolkit;
    private int currentPage = -1;

    public void init(IEditorSite site, IEditorInput input) throws PartInitException {
        this.setSite((IWorkbenchPartSite)site);
        this.setInput(input);
        site.setSelectionProvider((ISelectionProvider)new FormEditorSelectionProvider(this));
    }

    protected void createPages() {
        this.addPages();
    }

    protected Composite createPageContainer(Composite parent) {
        parent = super.createPageContainer(parent);
        this.toolkit = this.createToolkit(parent.getDisplay());
        return parent;
    }

    protected FormToolkit createToolkit(Display display) {
        return new FormToolkit(display);
    }

    protected abstract void addPages();

    public Object getSelectedPage() {
        return this.getActivePageInstance();
    }

    public int addPage(IFormPage page) throws PartInitException {
        int i = super.addPage(page.getPartControl());
        this.configurePage(i, page);
        return i;
    }

    public void addPage(int index, IFormPage page) throws PartInitException {
        super.addPage(index, page.getPartControl());
        this.configurePage(index, page);
        this.updatePageIndices(index + 1);
    }

    public int addPage(Control control) {
        int i = super.addPage(control);
        try {
            this.registerPage(-1, control);
        }
        catch (PartInitException partInitException) {}
        return i;
    }

    public void addPage(int index, Control control) {
        super.addPage(index, control);
        try {
            this.registerPage(index, control);
        }
        catch (PartInitException partInitException) {}
        this.updatePageIndices(index + 1);
    }

    public boolean isDirty() {
        if (this.pages != null) {
            int i = 0;
            while (i < this.pages.size()) {
                IEditorPart editor;
                IFormPage fpage;
                Object page = this.pages.get(i);
                if (page instanceof IFormPage ? (fpage = (IFormPage)page).isDirty() : page instanceof IEditorPart && (editor = (IEditorPart)page).isDirty()) {
                    return true;
                }
                ++i;
            }
        }
        return super.isDirty();
    }

    protected void commitPages(boolean onSave) {
        if (this.pages != null) {
            int i = 0;
            while (i < this.pages.size()) {
                IFormPage fpage;
                IManagedForm mform;
                Object page = this.pages.get(i);
                if (page instanceof IFormPage && (mform = (fpage = (IFormPage)page).getManagedForm()) != null && mform.isDirty()) {
                    mform.commit(onSave);
                }
                ++i;
            }
        }
    }

    public int addPage(IEditorPart editor, IEditorInput input) throws PartInitException {
        int index = super.addPage(editor, input);
        if (editor instanceof IFormPage) {
            this.configurePage(index, (IFormPage)editor);
        } else {
            this.registerPage(-1, editor);
        }
        return index;
    }

    public void addPage(int index, IEditorPart editor, IEditorInput input) throws PartInitException {
        super.addPage(index, editor, input);
        if (editor instanceof IFormPage) {
            this.configurePage(index, (IFormPage)editor);
        } else {
            this.registerPage(index, editor);
        }
        this.updatePageIndices(index + 1);
    }

    protected void configurePage(int index, IFormPage page) throws PartInitException {
        this.setPageText(index, page.getTitle());
        page.setIndex(index);
        this.registerPage(index, page);
    }

    public void removePage(int pageIndex) {
        if (pageIndex >= 0 && pageIndex < this.pages.size()) {
            IFormPage fpage;
            Object page = this.pages.get(pageIndex);
            this.pages.remove(page);
            if (page instanceof IFormPage && !(fpage = (IFormPage)page).isEditor()) {
                fpage.dispose();
            }
            this.updatePageIndices(pageIndex);
        }
        super.removePage(pageIndex);
    }

    private void updatePageIndices(int start) {
        int i = start;
        while (i < this.pages.size()) {
            Object page = this.pages.get(i);
            if (page instanceof IFormPage) {
                IFormPage fpage = (IFormPage)page;
                fpage.setIndex(i);
            }
            ++i;
        }
    }

    public void editorDirtyStateChanged() {
        this.firePropertyChange(257);
    }

    public void dispose() {
        super.dispose();
        int i = 0;
        while (i < this.pages.size()) {
            IFormPage fpage;
            Object page = this.pages.get(i);
            if (page instanceof IFormPage && !(fpage = (IFormPage)page).isEditor()) {
                fpage.dispose();
            }
            ++i;
        }
        this.pages = null;
        if (this.toolkit != null) {
            this.toolkit.dispose();
            this.toolkit = null;
        }
    }

    public FormToolkit getToolkit() {
        return this.toolkit;
    }

    public IEditorPart getActiveEditor() {
        return super.getActiveEditor();
    }

    protected int getCurrentPage() {
        return this.currentPage;
    }

    protected void pageChange(int newPageIndex) {
        IFormPage oldFormPage;
        IManagedForm mform;
        IFormPage fpage;
        IFormPage oldFormPage2;
        int oldPageIndex = this.getCurrentPage();
        if (oldPageIndex != -1 && this.pages.size() > oldPageIndex && this.pages.get(oldPageIndex) instanceof IFormPage && oldPageIndex != newPageIndex && !(oldFormPage2 = (IFormPage)this.pages.get(oldPageIndex)).canLeaveThePage()) {
            this.setActivePage(oldPageIndex);
            return;
        }
        Object page = this.pages.get(newPageIndex);
        if (page instanceof IFormPage && (fpage = (IFormPage)page).getPartControl() == null) {
            fpage.createPartControl(this.getContainer());
            this.setControl(newPageIndex, fpage.getPartControl());
            fpage.getPartControl().setMenu(this.getContainer().getMenu());
        }
        if (oldPageIndex != -1 && this.pages.size() > oldPageIndex && this.pages.get(oldPageIndex) instanceof IFormPage && (mform = (oldFormPage = (IFormPage)this.pages.get(oldPageIndex)).getManagedForm()) != null) {
            mform.commit(false);
        }
        if (this.pages.size() > newPageIndex && this.pages.get(newPageIndex) instanceof IFormPage) {
            ((IFormPage)this.pages.get(newPageIndex)).setActive(true);
        }
        if (oldPageIndex != -1 && this.pages.size() > oldPageIndex && newPageIndex != oldPageIndex && this.pages.get(oldPageIndex) instanceof IFormPage) {
            ((IFormPage)this.pages.get(oldPageIndex)).setActive(false);
        }
        super.pageChange(newPageIndex);
        this.currentPage = newPageIndex;
    }

    public IFormPage setActivePage(String pageId) {
        int i = 0;
        while (i < this.pages.size()) {
            IFormPage fpage;
            Object page = this.pages.get(i);
            if (page instanceof IFormPage && (fpage = (IFormPage)page).getId().equals(pageId)) {
                this.setActivePage(i);
                return fpage;
            }
            ++i;
        }
        return null;
    }

    public IFormPage findPage(String pageId) {
        int i = 0;
        while (i < this.pages.size()) {
            IFormPage fpage;
            Object page = this.pages.get(i);
            if (page instanceof IFormPage && (fpage = (IFormPage)this.pages.get(i)).getId().equals(pageId)) {
                return fpage;
            }
            ++i;
        }
        return null;
    }

    public IFormPage setActivePage(String pageId, Object pageInput) {
        IManagedForm mform;
        IFormPage page = this.setActivePage(pageId);
        if (page != null && (mform = page.getManagedForm()) != null) {
            mform.setInput(pageInput);
        }
        return page;
    }

    public IFormPage selectReveal(Object pageInput) {
        int i = 0;
        while (i < this.pages.size()) {
            IFormPage fpage;
            Object page = this.pages.get(i);
            if (page instanceof IFormPage && (fpage = (IFormPage)page).selectReveal(pageInput)) {
                return fpage;
            }
            ++i;
        }
        return null;
    }

    public IFormPage getActivePageInstance() {
        Object page;
        int index = this.getActivePage();
        if (index != -1 && (page = this.pages.get(index)) instanceof IFormPage) {
            return (IFormPage)page;
        }
        return null;
    }

    protected void setActivePage(int pageIndex) {
        if (this.pages.size() > pageIndex && this.pages.get(pageIndex) instanceof IFormPage) {
            super.setActivePage(pageIndex);
            IFormPage activePage = (IFormPage)this.pages.get(pageIndex);
            activePage.setActive(true);
        } else {
            super.setActivePage(pageIndex);
        }
        this.updateActionBarContributor(pageIndex);
    }

    protected void updateActionBarContributor(int pageIndex) {
        IEditorActionBarContributor contributor = this.getEditorSite().getActionBarContributor();
        if (contributor != null && contributor instanceof MultiPageEditorActionBarContributor) {
            ((MultiPageEditorActionBarContributor)contributor).setActivePage(this.getEditor(pageIndex));
        }
    }

    public void close(final boolean save) {
        Display display = this.getSite().getShell().getDisplay();
        display.asyncExec(new Runnable(){

            public void run() {
                if (FormEditor.this.toolkit != null) {
                    FormEditor.this.getSite().getPage().closeEditor((IEditorPart)FormEditor.this, save);
                }
            }
        });
    }

    private void registerPage(int index, Object page) throws PartInitException {
        IFormPage fpage;
        if (!this.pages.contains(page)) {
            if (index == -1) {
                this.pages.add(page);
            } else {
                this.pages.add(index, page);
            }
        }
        if (page instanceof IFormPage && !(fpage = (IFormPage)page).isEditor()) {
            fpage.init(this.getEditorSite(), this.getEditorInput());
        }
    }

    private static class FormEditorSelectionProvider
    extends MultiPageSelectionProvider {
        private ISelection globalSelection;

        public FormEditorSelectionProvider(FormEditor formEditor) {
            super((MultiPageEditorPart)formEditor);
        }

        public ISelection getSelection() {
            ISelectionProvider selectionProvider;
            IEditorPart activeEditor = ((FormEditor)this.getMultiPageEditor()).getActiveEditor();
            if (activeEditor != null && (selectionProvider = activeEditor.getSite().getSelectionProvider()) != null) {
                return selectionProvider.getSelection();
            }
            if (this.globalSelection != null) {
                return this.globalSelection;
            }
            return StructuredSelection.EMPTY;
        }

        public void setSelection(ISelection selection) {
            IEditorPart activeEditor = ((FormEditor)this.getMultiPageEditor()).getActiveEditor();
            if (activeEditor != null) {
                ISelectionProvider selectionProvider = activeEditor.getSite().getSelectionProvider();
                if (selectionProvider != null) {
                    selectionProvider.setSelection(selection);
                }
            } else {
                this.globalSelection = selection;
                this.fireSelectionChanged(new SelectionChangedEvent((ISelectionProvider)this, this.globalSelection));
            }
        }
    }
}

