/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.ui.IEditorInput
 *  org.eclipse.ui.IEditorSite
 *  org.eclipse.ui.IWorkbenchPartSite
 *  org.eclipse.ui.part.EditorPart
 */
package org.eclipse.ui.forms.editor;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.ManagedForm;
import org.eclipse.ui.forms.editor.FormEditor;
import org.eclipse.ui.forms.editor.IFormPage;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.part.EditorPart;

public class FormPage
extends EditorPart
implements IFormPage {
    private FormEditor editor;
    private PageForm mform;
    private int index;
    private String id;

    public FormPage(FormEditor editor, String id, String title) {
        this(id, title);
        this.initialize(editor);
    }

    public FormPage(String id, String title) {
        this.id = id;
        this.setPartName(title);
    }

    public void init(IEditorSite site, IEditorInput input) {
        this.setSite((IWorkbenchPartSite)site);
        this.setInput(input);
    }

    public void initialize(FormEditor editor) {
        this.editor = editor;
    }

    public FormEditor getEditor() {
        return this.editor;
    }

    public IManagedForm getManagedForm() {
        return this.mform;
    }

    public void setActive(boolean active) {
        if (active && this.mform != null) {
            this.mform.refresh();
        }
    }

    public boolean isActive() {
        return this.equals(this.editor.getActivePageInstance());
    }

    public void createPartControl(Composite parent) {
        ScrolledForm form = this.editor.getToolkit().createScrolledForm(parent);
        this.mform = new PageForm(this, form);
        BusyIndicator.showWhile((Display)parent.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                FormPage.this.createFormContent(FormPage.this.mform);
            }
        });
    }

    protected void createFormContent(IManagedForm managedForm) {
    }

    public Control getPartControl() {
        return this.mform != null ? this.mform.getForm() : null;
    }

    public void dispose() {
        if (this.mform != null) {
            this.mform.dispose();
        }
    }

    public String getId() {
        return this.id;
    }

    public Image getTitleImage() {
        return null;
    }

    public void setFocus() {
        if (this.mform != null) {
            this.mform.setFocus();
        }
    }

    public void doSave(IProgressMonitor monitor) {
        if (this.mform != null) {
            this.mform.commit(true);
        }
    }

    public void doSaveAs() {
    }

    public boolean isSaveAsAllowed() {
        return false;
    }

    public boolean isDirty() {
        return this.mform != null ? this.mform.isDirty() : false;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getIndex() {
        return this.index;
    }

    public boolean isEditor() {
        return false;
    }

    public boolean selectReveal(Object object) {
        if (this.mform != null) {
            return this.mform.setInput(object);
        }
        return false;
    }

    public boolean canLeaveThePage() {
        return true;
    }

    private static class PageForm
    extends ManagedForm {
        public PageForm(FormPage page, ScrolledForm form) {
            super(page.getEditor().getToolkit(), form);
            this.setContainer(page);
        }

        public FormPage getPage() {
            return (FormPage)this.getContainer();
        }

        public void dirtyStateChanged() {
            this.getPage().getEditor().editorDirtyStateChanged();
        }

        public void staleStateChanged() {
            if (this.getPage().isActive()) {
                this.refresh();
            }
        }
    }
}

