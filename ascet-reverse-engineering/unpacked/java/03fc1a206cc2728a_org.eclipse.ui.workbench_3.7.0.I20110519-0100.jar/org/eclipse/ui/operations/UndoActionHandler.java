/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.operations;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.operations.OperationHistoryActionHandler;

public final class UndoActionHandler
extends OperationHistoryActionHandler {
    public UndoActionHandler(IWorkbenchPartSite site, IUndoContext context) {
        super(site, context);
        this.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_UNDO"));
        this.setDisabledImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_UNDO_DISABLED"));
    }

    void flush() {
        this.getHistory().dispose(this.getUndoContext(), true, false, false);
    }

    String getCommandString() {
        return WorkbenchMessages.Operations_undoCommand;
    }

    String getTooltipString() {
        return WorkbenchMessages.Operations_undoTooltipCommand;
    }

    String getSimpleCommandString() {
        return WorkbenchMessages.Workbench_undo;
    }

    String getSimpleTooltipString() {
        return WorkbenchMessages.Workbench_undoToolTip;
    }

    IUndoableOperation getOperation() {
        return this.getHistory().getUndoOperation(this.getUndoContext());
    }

    IStatus runCommand(IProgressMonitor pm) throws ExecutionException {
        return this.getHistory().undo(this.getUndoContext(), pm, (IAdaptable)this);
    }

    boolean shouldBeEnabled() {
        return this.getHistory().canUndo(this.getUndoContext());
    }
}

