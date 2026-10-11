/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackPresentation;

public abstract class DefaultStackPresentationSite
implements IStackPresentationSite {
    private StackPresentation presentation;
    private int state = 2;
    private int activeState = 0;

    public void setPresentation(StackPresentation newPresentation) {
        this.presentation = newPresentation;
        if (this.presentation != null) {
            this.presentation.setState(this.state);
            this.presentation.setActive(this.activeState);
        }
    }

    public StackPresentation getPresentation() {
        return this.presentation;
    }

    public int getState() {
        return this.state;
    }

    public void setActive(int activeState) {
        if (activeState != this.activeState) {
            this.activeState = activeState;
            if (this.presentation != null) {
                this.presentation.setActive(activeState);
            }
        }
    }

    public int getActive() {
        return this.activeState;
    }

    public void selectPart(IPresentablePart toSelect) {
        if (this.presentation != null) {
            this.presentation.selectPart(toSelect);
        }
    }

    public void dispose() {
        if (this.presentation != null) {
            this.presentation.dispose();
        }
        this.setPresentation(null);
    }

    public void setState(int newState) {
        this.setPresentationState(newState);
    }

    public void setPresentationState(int newState) {
        this.state = newState;
        if (this.presentation != null) {
            this.presentation.setState(newState);
        }
    }

    public boolean isCloseable(IPresentablePart part) {
        return part.isCloseable();
    }

    public void dragStart(IPresentablePart beingDragged, Point initialPosition, boolean keyboard) {
    }

    public void close(IPresentablePart toClose) {
    }

    public void dragStart(Point initialPosition, boolean keyboard) {
    }

    public boolean supportsState(int state) {
        return true;
    }

    public abstract IPresentablePart getSelectedPart();

    public void addSystemActions(IMenuManager menuManager) {
    }

    public abstract boolean isPartMoveable(IPresentablePart var1);

    public abstract boolean isStackMoveable();
}

