/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.part;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.EditorSite;
import org.eclipse.ui.internal.PartService;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.part.EditorPart;
import org.eclipse.ui.part.MultiEditorInput;

public abstract class AbstractMultiEditor
extends EditorPart {
    private int activeEditorIndex;
    private IEditorPart[] innerEditors;
    private IPartListener2 propagationListener;

    protected void handlePropertyChange(int propId) {
        this.firePropertyChange(propId);
    }

    public void doSave(IProgressMonitor monitor) {
        int i = 0;
        while (i < this.innerEditors.length) {
            IEditorPart e = this.innerEditors[i];
            e.doSave(monitor);
            ++i;
        }
    }

    public void doSaveAs() {
    }

    public void init(IEditorSite site, IEditorInput input) throws PartInitException {
        this.init(site, (MultiEditorInput)input);
    }

    public void init(IEditorSite site, MultiEditorInput input) throws PartInitException {
        this.setInput(input);
        this.setSite(site);
        this.setPartName(input.getName());
        this.setTitleToolTip(input.getToolTipText());
        this.setupEvents();
    }

    public boolean isDirty() {
        int i = 0;
        while (i < this.innerEditors.length) {
            IEditorPart e = this.innerEditors[i];
            if (e.isDirty()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isSaveAsAllowed() {
        return false;
    }

    public void setFocus() {
        this.innerEditors[this.activeEditorIndex].setFocus();
    }

    public final IEditorPart getActiveEditor() {
        return this.innerEditors[this.activeEditorIndex];
    }

    public final IEditorPart[] getInnerEditors() {
        return this.innerEditors;
    }

    public final void setChildren(IEditorPart[] children) {
        this.innerEditors = children;
        this.activeEditorIndex = 0;
        int i = 0;
        while (i < children.length) {
            children[i].addPropertyListener(new IPropertyListener(){

                public void propertyChanged(Object source, int propId) {
                    AbstractMultiEditor.this.handlePropertyChange(propId);
                }
            });
            ++i;
        }
        this.innerEditorsCreated();
    }

    protected abstract void innerEditorsCreated();

    public void activateEditor(IEditorPart part) {
        this.activeEditorIndex = this.getIndex(part);
        IEditorPart e = this.getActiveEditor();
        EditorSite innerSite = (EditorSite)e.getEditorSite();
        ((WorkbenchPage)innerSite.getPage()).requestActivation(e);
    }

    protected int getIndex(IEditorPart editor) {
        int i = 0;
        while (i < this.innerEditors.length) {
            if (this.innerEditors[i] == editor) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    private void setupEvents() {
        this.propagationListener = new IPartListener2(){

            public void partActivated(IWorkbenchPartReference partRef) {
            }

            public void partBroughtToTop(IWorkbenchPartReference partRef) {
            }

            public void partClosed(IWorkbenchPartReference partRef) {
                IWorkbenchPart part = partRef.getPart(false);
                if (part == AbstractMultiEditor.this && AbstractMultiEditor.this.innerEditors != null) {
                    PartService partService = ((WorkbenchPage)AbstractMultiEditor.this.getSite().getPage()).getPartService();
                    int i = 0;
                    while (i < AbstractMultiEditor.this.innerEditors.length) {
                        IEditorPart editor = AbstractMultiEditor.this.innerEditors[i];
                        IWorkbenchPartReference innerRef = ((PartSite)editor.getSite()).getPartReference();
                        partService.firePartClosed(innerRef);
                        ++i;
                    }
                }
            }

            public void partDeactivated(IWorkbenchPartReference partRef) {
            }

            public void partOpened(IWorkbenchPartReference partRef) {
                IWorkbenchPart part = partRef.getPart(false);
                if (part == AbstractMultiEditor.this && AbstractMultiEditor.this.innerEditors != null) {
                    PartService partService = ((WorkbenchPage)AbstractMultiEditor.this.getSite().getPage()).getPartService();
                    int i = 0;
                    while (i < AbstractMultiEditor.this.innerEditors.length) {
                        IEditorPart editor = AbstractMultiEditor.this.innerEditors[i];
                        IWorkbenchPartReference innerRef = ((PartSite)editor.getSite()).getPartReference();
                        partService.firePartOpened(innerRef);
                        ++i;
                    }
                }
            }

            public void partHidden(IWorkbenchPartReference partRef) {
            }

            public void partVisible(IWorkbenchPartReference partRef) {
            }

            public void partInputChanged(IWorkbenchPartReference partRef) {
            }
        };
        this.getSite().getPage().addPartListener(this.propagationListener);
    }

    public void dispose() {
        this.getSite().getPage().removePartListener(this.propagationListener);
        super.dispose();
    }

    public abstract Composite getInnerEditorContainer(IEditorReference var1);
}

