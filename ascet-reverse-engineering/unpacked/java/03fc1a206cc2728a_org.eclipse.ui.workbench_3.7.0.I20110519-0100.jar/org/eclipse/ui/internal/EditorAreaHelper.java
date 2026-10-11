/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorReference;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.EditorSite;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.MultiEditorInnerPane;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.part.AbstractMultiEditor;

public class EditorAreaHelper {
    private EditorSashContainer editorArea;

    public EditorAreaHelper(WorkbenchPage page) {
        this.editorArea = new EditorSashContainer("org.eclipse.ui.editorss", page, page.getClientComposite());
        this.editorArea.createControl(page.getClientComposite());
        this.editorArea.setActive(true);
    }

    public void displayEditorList() {
        EditorStack activeWorkbook = this.editorArea.getActiveWorkbook();
        if (activeWorkbook != null) {
            activeWorkbook.showPartList();
        }
    }

    public void closeEditor(IEditorReference ref) {
        EditorPane pane = (EditorPane)((WorkbenchPartReference)((Object)ref)).getPane();
        this.closeEditor(pane);
    }

    public void closeEditor(IEditorPart part) {
        EditorPane pane = (EditorPane)((PartSite)((Object)part.getEditorSite())).getPane();
        this.closeEditor(pane);
    }

    private void closeEditor(EditorPane pane) {
        if (pane != null && !(pane instanceof MultiEditorInnerPane)) {
            this.editorArea.removeEditor(pane);
        }
    }

    public static void derefPart(LayoutPart part) {
        LayoutPart parent;
        ILayoutContainer parentContainer;
        ILayoutContainer oldContainer = part.getContainer();
        if (oldContainer == null) {
            return;
        }
        oldContainer.remove(part);
        LayoutPart[] children = oldContainer.getChildren();
        if ((children == null || children.length == 0) && oldContainer instanceof LayoutPart && (parentContainer = (parent = (LayoutPart)((Object)oldContainer)).getContainer()) != null) {
            parentContainer.remove(parent);
            parent.dispose();
        }
    }

    public void dispose() {
        if (this.editorArea != null) {
            this.editorArea.setActive(false);
            this.editorArea.dispose();
        }
    }

    public String getActiveEditorWorkbookID() {
        return this.editorArea.getActiveWorkbookID();
    }

    public EditorStack getActiveWorkbook() {
        return this.editorArea.getActiveWorkbook();
    }

    public LayoutPart getLayoutPart() {
        return this.editorArea;
    }

    public IEditorReference getVisibleEditor() {
        EditorStack activeWorkbook = this.editorArea.getActiveWorkbook();
        EditorPane pane = (EditorPane)activeWorkbook.getSelection();
        if (pane != null) {
            IEditorReference result = pane.getEditorReference();
            IEditorPart editorPart = (IEditorPart)result.getPart(false);
            if (editorPart != null && editorPart instanceof AbstractMultiEditor) {
                editorPart = ((AbstractMultiEditor)editorPart).getActiveEditor();
                EditorSite site = (EditorSite)editorPart.getSite();
                result = (IEditorReference)site.getPartReference();
            }
            return result;
        }
        return null;
    }

    public void moveEditor(IEditorPart part, int position) {
        ((EditorSite)part.getSite()).getPane();
    }

    public boolean containsEditor(EditorReference ref) {
        IEditorReference[] refs = this.editorArea.getPage().getEditorReferences();
        int i = 0;
        while (i < refs.length) {
            if (ref == refs[i]) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void addEditor(EditorReference ref, String workbookId, boolean notifyPage) {
        if (this.containsEditor(ref)) {
            return;
        }
        if (!(ref.getPane() instanceof MultiEditorInnerPane)) {
            EditorStack stack = null;
            if (workbookId != null) {
                stack = this.getWorkbookFromID(workbookId);
            }
            if (stack == null) {
                stack = this.getActiveWorkbook();
            }
            this.addToLayout((EditorPane)ref.getPane(), stack);
        }
        if (notifyPage) {
            this.editorArea.getPage().partAdded(ref);
        }
    }

    private void addToLayout(EditorPane pane, EditorStack stack) {
        pane.setWorkbook(stack);
        this.editorArea.addEditor(pane, stack);
    }

    public IStatus restoreState(IMemento memento) {
        return this.editorArea.restoreState(memento);
    }

    public IStatus restorePresentationState(IMemento areaMem) {
        return this.editorArea.restorePresentationState(areaMem);
    }

    public IStatus saveState(IMemento memento) {
        return this.editorArea.saveState(memento);
    }

    public void setActiveEditorWorkbookFromID(String id) {
        this.editorArea.setActiveWorkbookFromID(id);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean setVisibleEditor(IEditorReference ref, boolean setFocus) {
        IEditorReference visibleEditor = this.getVisibleEditor();
        if (ref == visibleEditor) return false;
        IEditorPart part = (IEditorPart)ref.getPart(true);
        EditorPane pane = null;
        if (part != null) {
            pane = (EditorPane)((PartSite)((Object)part.getEditorSite())).getPane();
        }
        if (pane == null) return false;
        if (pane instanceof MultiEditorInnerPane) {
            EditorPane parentPane = ((MultiEditorInnerPane)pane).getParentPane();
            EditorStack activeWorkbook = parentPane.getWorkbook();
            PartPane activePane = activeWorkbook.getSelection();
            if (activePane == parentPane) return false;
            parentPane.getWorkbook().setSelection(parentPane);
        } else {
            pane.getWorkbook().setSelection(pane);
        }
        if (!setFocus) return true;
        part.setFocus();
        return true;
    }

    public ArrayList getWorkbooks() {
        return this.editorArea.getEditorWorkbooks();
    }

    public IEditorReference[] getEditors() {
        ArrayList<IWorkbenchPartReference> result = new ArrayList<IWorkbenchPartReference>();
        ArrayList workbooks = this.editorArea.getEditorWorkbooks();
        Iterator iter = workbooks.iterator();
        while (iter.hasNext()) {
            PartStack stack = (PartStack)iter.next();
            LayoutPart[] children = stack.getChildren();
            int i = 0;
            while (i < children.length) {
                LayoutPart part = children[i];
                result.add(((PartPane)part).getPartReference());
                ++i;
            }
        }
        return result.toArray(new IEditorReference[result.size()]);
    }

    public EditorStack getWorkbookFromID(String workbookId) {
        return this.editorArea.getWorkbookFromID(workbookId);
    }

    public void updateStackButtons() {
        this.editorArea.updateStackButtons();
    }
}

