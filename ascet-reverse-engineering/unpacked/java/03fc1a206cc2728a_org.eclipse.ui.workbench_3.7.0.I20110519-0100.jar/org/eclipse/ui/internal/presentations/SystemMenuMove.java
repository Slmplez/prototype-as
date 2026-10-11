/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.MenuManager
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.SystemMenuMoveFolder;
import org.eclipse.ui.internal.presentations.SystemMenuMovePane;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuMove
extends MenuManager {
    private IStackPresentationSite stackPresentationSite;
    private SystemMenuMovePane movePaneAction;
    private SystemMenuMoveFolder moveFolderAction;
    private boolean assumeActivePart = false;

    public SystemMenuMove(IStackPresentationSite stackPresentationSite, String partName) {
        this(stackPresentationSite, partName, true);
    }

    public SystemMenuMove(IStackPresentationSite stackPresentationSite, String partName, boolean assumeActivePart) {
        super(WorkbenchMessages.PartPane_move);
        this.stackPresentationSite = stackPresentationSite;
        this.assumeActivePart = assumeActivePart;
        this.movePaneAction = new SystemMenuMovePane(stackPresentationSite);
        this.movePaneAction.setText(partName);
        this.moveFolderAction = new SystemMenuMoveFolder(stackPresentationSite);
        this.add((IAction)this.movePaneAction);
        this.add(this.moveFolderAction);
    }

    public void setTarget(IPresentablePart part) {
        this.movePaneAction.setTarget(part);
    }

    protected void update(boolean force, boolean recursive) {
        if (this.assumeActivePart) {
            this.setTarget(this.stackPresentationSite.getSelectedPart());
        }
        this.moveFolderAction.update();
        super.update(force, recursive);
    }

    public void update() {
        this.update(false, false);
    }
}

