/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbenchPart;

public abstract class PartEventAction
extends Action
implements IPartListener {
    private IWorkbenchPart activePart;

    protected PartEventAction(String text) {
        super(text);
    }

    protected PartEventAction(String text, int style) {
        super(text, style);
    }

    public IWorkbenchPart getActivePart() {
        return this.activePart;
    }

    public void partActivated(IWorkbenchPart part) {
        this.activePart = part;
    }

    public void partBroughtToTop(IWorkbenchPart part) {
    }

    public void partClosed(IWorkbenchPart part) {
        if (part == this.activePart) {
            this.activePart = null;
        }
    }

    public void partDeactivated(IWorkbenchPart part) {
        this.activePart = null;
    }

    public void partOpened(IWorkbenchPart part) {
    }
}

