/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorSashContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.internal.presentations.SystemMenuPinEditor;
import org.eclipse.ui.internal.presentations.SystemMenuSize;
import org.eclipse.ui.internal.presentations.UpdatingActionContributionItem;
import org.eclipse.ui.internal.presentations.util.TabbedStackPresentation;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.StackPresentation;

public class EditorStack
extends PartStack {
    private EditorSashContainer editorArea;
    private WorkbenchPage page;
    private SystemMenuSize sizeItem = new SystemMenuSize(null);
    private SystemMenuPinEditor pinEditorItem = new SystemMenuPinEditor(null);

    public EditorStack(EditorSashContainer editorArea, WorkbenchPage page) {
        super(1);
        this.editorArea = editorArea;
        this.setID(this.toString());
        this.page = page;
    }

    protected WorkbenchPage getPage() {
        return this.page;
    }

    public void addSystemActions(IMenuManager menuManager) {
        this.pinEditorItem = new SystemMenuPinEditor((EditorPane)this.getSelection());
        EditorStack.appendToGroupIfPossible(menuManager, "misc", (ContributionItem)new UpdatingActionContributionItem(this.pinEditorItem));
        this.sizeItem = new SystemMenuSize(this.getSelection());
        EditorStack.appendToGroupIfPossible(menuManager, "size", this.sizeItem);
    }

    public boolean isMoveable(IPresentablePart part) {
        return true;
    }

    public boolean supportsState(int state) {
        return !this.page.isFixedLayout();
    }

    public static EditorStack newEditorWorkbook(EditorSashContainer editorArea, WorkbenchPage page) {
        return new EditorStack(editorArea, page);
    }

    protected void add(LayoutPart newChild, Object cookie) {
        super.add(newChild, cookie);
        ((EditorPane)newChild).setWorkbook(this);
    }

    public void add(LayoutPart child) {
        super.add(child);
        if (child instanceof EditorPane) {
            ((EditorPane)child).setWorkbook(this);
        }
    }

    protected void updateActions(PresentablePart current) {
        EditorPane pane = null;
        if (current != null && current.getPane() instanceof EditorPane) {
            pane = (EditorPane)current.getPane();
        }
        this.sizeItem.setPane(pane);
        this.pinEditorItem.setPane(pane);
    }

    public Control[] getTabList() {
        return this.getTabList(this.getSelection());
    }

    public void removeAll() {
        LayoutPart[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            this.remove(children[i]);
            ++i;
        }
    }

    public boolean isActiveWorkbook() {
        EditorSashContainer area = this.getEditorArea();
        if (area != null) {
            return area.isActiveWorkbook(this);
        }
        return false;
    }

    public void becomeActiveWorkbook(boolean hasFocus) {
        EditorSashContainer area = this.getEditorArea();
        if (area != null) {
            area.setActiveWorkbook(this, hasFocus);
        }
    }

    public EditorPane[] getEditors() {
        LayoutPart[] children = this.getChildren();
        EditorPane[] panes = new EditorPane[children.length];
        int idx = 0;
        while (idx < children.length) {
            panes[idx] = (EditorPane)children[idx];
            ++idx;
        }
        return panes;
    }

    public EditorSashContainer getEditorArea() {
        return this.editorArea;
    }

    protected boolean canMoveFolder() {
        return true;
    }

    protected void derefPart(LayoutPart toDeref) {
        EditorAreaHelper.derefPart(toDeref);
    }

    protected boolean allowsDrop(PartPane part) {
        return part instanceof EditorPane;
    }

    public void setFocus() {
        super.setFocus();
        this.becomeActiveWorkbook(true);
    }

    protected void close(IPresentablePart[] parts) {
        if (parts.length == 1) {
            this.close(parts[0]);
            return;
        }
        IEditorReference[] toClose = new IEditorReference[parts.length];
        int idx = 0;
        while (idx < parts.length) {
            EditorPane part = (EditorPane)this.getPaneFor(parts[idx]);
            toClose[idx] = part.getEditorReference();
            ++idx;
        }
        WorkbenchPage page = this.getPage();
        if (page != null) {
            page.closeEditors(toClose, true);
        }
    }

    public void testInvariants() {
        super.testInvariants();
        int active = this.getActive();
        if (active == 1) {
            Assert.isTrue((boolean)this.isActiveWorkbook());
        } else if (active == 2) {
            Assert.isTrue((boolean)this.isActiveWorkbook());
        } else if (active == 0) {
            Assert.isTrue((!this.isActiveWorkbook() ? 1 : 0) != 0);
        }
    }

    public IStatus restoreState(IMemento memento) {
        Integer expanded = memento.getInteger("expanded");
        this.setState(expanded == null || expanded != 0 ? 2 : 0);
        Integer appearance = memento.getInteger("appearance");
        if (appearance != null) {
            this.appearance = appearance;
        }
        this.savedPresentationState = null;
        IMemento[] presentationMementos = memento.getChildren("presentation");
        int idx = 0;
        while (idx < presentationMementos.length) {
            IMemento child = presentationMementos[idx];
            String id = child.getString("id");
            if (Util.equals(id, this.getFactory().getId())) {
                this.savedPresentationState = child;
                break;
            }
            ++idx;
        }
        return new Status(0, "org.eclipse.ui", 0, "", null);
    }

    public IStatus saveState(IMemento memento) {
        memento.putInteger("expanded", this.getPresentationSite().getState() == 0 ? 0 : 2);
        memento.putInteger("appearance", this.appearance);
        this.savePresentationState();
        if (this.savedPresentationState != null) {
            IMemento presentationState = memento.createChild("presentation");
            presentationState.putMemento(this.savedPresentationState);
        }
        return new Status(0, "org.eclipse.ui", 0, "", null);
    }

    public void setMinimized(boolean minimized) {
        Perspective persp = this.getPage().getActivePerspective();
        if (Perspective.useNewMinMax(persp)) {
            if (minimized) {
                persp.setEditorAreaState(0);
            } else {
                int curState;
                if (persp.getPresentation().getMaximizedStack() != null) {
                    PartStack maxStack = persp.getPresentation().getMaximizedStack();
                    if (maxStack instanceof ViewStack) {
                        maxStack.setState(2);
                    } else if (maxStack instanceof EditorStack) {
                        persp.setEditorAreaState(2);
                    }
                }
                if ((curState = persp.getEditorAreaState()) == 0) {
                    curState = 2;
                }
                persp.setEditorAreaState(curState);
            }
            this.refreshPresentationState();
        }
        super.setMinimized(minimized);
    }

    public void setStateLocal(int newState) {
        if (newState == this.getState()) {
            return;
        }
        this.setMinimized(newState == 0);
        this.presentationSite.setPresentationState(newState);
    }

    public void showMinMax(boolean show) {
        StackPresentation pres = this.getPresentation();
        if (pres == null) {
            return;
        }
        if (pres instanceof TabbedStackPresentation) {
            ((TabbedStackPresentation)pres).showMinMax(show);
        }
    }
}

