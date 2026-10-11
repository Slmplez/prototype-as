/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IMenuManager
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.ui.internal.FastViewManager;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.presentations.PresentablePart;
import org.eclipse.ui.internal.presentations.SystemMenuDetach;
import org.eclipse.ui.internal.presentations.SystemMenuFastView;
import org.eclipse.ui.internal.presentations.SystemMenuSize;
import org.eclipse.ui.internal.presentations.UpdatingActionContributionItem;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;

public class ViewStack
extends PartStack {
    private boolean allowStateChanges;
    private WorkbenchPage page;
    private SystemMenuSize sizeItem = new SystemMenuSize(null);
    private SystemMenuFastView fastViewAction;
    private SystemMenuDetach detachViewAction;
    private boolean durable = false;

    public void addSystemActions(IMenuManager menuManager) {
        ViewStack.appendToGroupIfPossible(menuManager, "misc", (ContributionItem)new UpdatingActionContributionItem(this.fastViewAction));
        ViewStack.appendToGroupIfPossible(menuManager, "misc", (ContributionItem)new UpdatingActionContributionItem(this.detachViewAction));
        this.sizeItem = new SystemMenuSize(this.getSelection());
        ViewStack.appendToGroupIfPossible(menuManager, "size", this.sizeItem);
    }

    public ViewStack(WorkbenchPage page) {
        this(page, true);
    }

    public ViewStack(WorkbenchPage page, boolean allowsStateChanges) {
        this(page, allowsStateChanges, 2, null);
    }

    public ViewStack(WorkbenchPage page, boolean allowsStateChanges, int appearance, AbstractPresentationFactory factory) {
        super(appearance, factory);
        this.page = page;
        this.setID(this.toString());
        this.allowStateChanges = allowsStateChanges;
        this.fastViewAction = new SystemMenuFastView(this.getPresentationSite());
        this.detachViewAction = new SystemMenuDetach(this.getPresentationSite());
    }

    protected WorkbenchPage getPage() {
        return this.page;
    }

    protected boolean canMoveFolder() {
        Perspective perspective = this.page.getActivePerspective();
        if (perspective == null) {
            return false;
        }
        IStackPresentationSite presenationSite = this.getPresentationSite();
        if (presenationSite != null) {
            IPresentablePart[] parts = presenationSite.getPartList();
            int i = 0;
            while (i < parts.length) {
                if (!presenationSite.isPartMoveable(parts[i])) {
                    return false;
                }
                ++i;
            }
        }
        return !perspective.isFixedLayout();
    }

    protected void updateActions(PresentablePart current) {
        ViewPane pane = null;
        if (current != null && current.getPane() instanceof ViewPane) {
            pane = (ViewPane)current.getPane();
        }
        this.fastViewAction.setPane(current);
        this.detachViewAction.setPane(pane);
        this.sizeItem.setPane(pane);
    }

    public void setMinimized(boolean minimized) {
        Perspective persp = this.getPage().getActivePerspective();
        if (Perspective.useNewMinMax(persp)) {
            FastViewManager fvm = persp.getFastViewManager();
            if (minimized) {
                boolean tempDurable = this.durable;
                this.durable = false;
                fvm.moveToTrim(this, false);
                this.durable = tempDurable;
            } else {
                PartStack maxStack;
                if (persp.getPresentation().getMaximizedStack() != null && (maxStack = persp.getPresentation().getMaximizedStack()) != null) {
                    maxStack.setState(2);
                }
                fvm.restoreToPresentation(this.getID());
            }
        }
        super.setMinimized(minimized);
    }

    protected boolean isMoveable(IPresentablePart part) {
        ViewPane pane = (ViewPane)this.getPaneFor(part);
        Perspective perspective = this.page.getActivePerspective();
        if (perspective == null) {
            return true;
        }
        return perspective.isMoveable(pane.getViewReference());
    }

    protected boolean supportsState(int newState) {
        if (this.page.isFixedLayout()) {
            return false;
        }
        return this.allowStateChanges;
    }

    protected void derefPart(LayoutPart toDeref) {
        this.page.getActivePerspective().getPresentation().derefPart(toDeref);
    }

    protected boolean allowsDrop(PartPane part) {
        return part instanceof ViewPane;
    }

    public StackPresentation getTestPresentation() {
        return this.getPresentation();
    }

    public void setDurable(boolean durable) {
        this.durable = durable;
    }

    public boolean getDurable() {
        return this.durable;
    }
}

