/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IUndoContext
 */
package org.eclipse.ui.operations;

import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.ActionGroup;
import org.eclipse.ui.operations.RedoActionHandler;
import org.eclipse.ui.operations.UndoActionHandler;

public final class UndoRedoActionGroup
extends ActionGroup {
    private UndoActionHandler undoActionHandler;
    private RedoActionHandler redoActionHandler;

    public UndoRedoActionGroup(IWorkbenchPartSite site, IUndoContext undoContext, boolean pruneHistory) {
        this.undoActionHandler = new UndoActionHandler(site, undoContext);
        this.undoActionHandler.setPruneHistory(pruneHistory);
        this.redoActionHandler = new RedoActionHandler(site, undoContext);
        this.redoActionHandler.setPruneHistory(pruneHistory);
    }

    public void fillActionBars(IActionBars actionBars) {
        super.fillActionBars(actionBars);
        if (this.undoActionHandler != null) {
            actionBars.setGlobalActionHandler(ActionFactory.UNDO.getId(), this.undoActionHandler);
            actionBars.setGlobalActionHandler(ActionFactory.REDO.getId(), this.redoActionHandler);
        }
    }
}

