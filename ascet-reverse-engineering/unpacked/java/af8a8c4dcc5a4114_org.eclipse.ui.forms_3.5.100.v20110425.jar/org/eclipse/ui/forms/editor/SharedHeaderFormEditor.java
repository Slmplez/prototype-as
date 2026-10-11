/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.ui.IEditorPart
 */
package org.eclipse.ui.forms.editor;

import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.ManagedForm;
import org.eclipse.ui.forms.editor.FormEditor;
import org.eclipse.ui.forms.widgets.ScrolledForm;

public abstract class SharedHeaderFormEditor
extends FormEditor {
    private HeaderForm headerForm;
    private boolean wasHeaderActive = true;
    private Listener activationListener = null;

    protected Composite createPageContainer(Composite parent) {
        parent = super.createPageContainer(parent);
        parent.setLayout((Layout)new FillLayout());
        ScrolledForm scform = this.getToolkit().createScrolledForm(parent);
        scform.getForm().setData("__ignore_body__", Boolean.TRUE);
        this.headerForm = new HeaderForm(this, scform);
        this.createHeaderContents(this.headerForm);
        return this.headerForm.getForm().getBody();
    }

    public IManagedForm getHeaderForm() {
        return this.headerForm;
    }

    protected void createPages() {
        super.createPages();
        if (this.getActivePage() == -1) {
            super.setActivePage(0);
        }
    }

    protected void setActivePage(int pageIndex) {
        this.wasHeaderActive = false;
        super.setActivePage(pageIndex);
    }

    public void setFocus() {
        this.installActivationListener();
        if (this.wasHeaderActive) {
            ((ManagedForm)this.getHeaderForm()).setFocus();
        } else {
            int index = this.getActivePage();
            if (index == -1) {
                ((ManagedForm)this.getHeaderForm()).setFocus();
            } else {
                super.setFocus();
            }
        }
    }

    private void installActivationListener() {
        if (this.activationListener == null) {
            this.activationListener = new Listener(){

                public void handleEvent(Event event) {
                    boolean wasHeaderActive = event.widget != SharedHeaderFormEditor.this.getContainer();
                    int activePage = SharedHeaderFormEditor.this.getActivePage();
                    if (SharedHeaderFormEditor.this.wasHeaderActive != wasHeaderActive && activePage != -1 && SharedHeaderFormEditor.this.pages.get(activePage) instanceof IEditorPart) {
                        if (wasHeaderActive) {
                            SharedHeaderFormEditor.this.deactivateSite(true, true);
                        } else {
                            SharedHeaderFormEditor.this.activateSite();
                        }
                    }
                    SharedHeaderFormEditor.this.wasHeaderActive = wasHeaderActive;
                }
            };
            this.getContainer().addListener(26, this.activationListener);
            this.getHeaderForm().getForm().getForm().getHead().addListener(26, this.activationListener);
        }
    }

    public void dispose() {
        if (this.headerForm != null) {
            this.headerForm.dispose();
            this.headerForm = null;
        }
        super.dispose();
    }

    public boolean isDirty() {
        if (this.headerForm != null && this.headerForm.isDirty()) {
            return true;
        }
        return super.isDirty();
    }

    protected void commitPages(boolean onSave) {
        if (this.headerForm != null && this.headerForm.isDirty()) {
            this.headerForm.commit(onSave);
        }
        super.commitPages(onSave);
    }

    protected void createHeaderContents(IManagedForm headerForm) {
    }

    private static class HeaderForm
    extends ManagedForm {
        public HeaderForm(FormEditor editor, ScrolledForm form) {
            super(editor.getToolkit(), form);
            this.setContainer((Object)editor);
            if (editor.getEditorInput() != null) {
                this.setInput(editor.getEditorInput());
            }
        }

        private FormEditor getEditor() {
            return (FormEditor)((Object)this.getContainer());
        }

        public void dirtyStateChanged() {
            this.getEditor().editorDirtyStateChanged();
        }

        public void staleStateChanged() {
            this.refresh();
        }
    }
}

