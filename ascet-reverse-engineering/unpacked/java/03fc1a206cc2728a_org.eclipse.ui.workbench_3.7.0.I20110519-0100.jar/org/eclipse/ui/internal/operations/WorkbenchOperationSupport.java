/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.DefaultOperationHistory
 *  org.eclipse.core.commands.operations.IOperationApprover
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.ObjectUndoContext
 *  org.eclipse.core.commands.operations.OperationHistoryFactory
 */
package org.eclipse.ui.internal.operations;

import org.eclipse.core.commands.operations.DefaultOperationHistory;
import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.ObjectUndoContext;
import org.eclipse.core.commands.operations.OperationHistoryFactory;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.operations.AdvancedValidationUserApprover;
import org.eclipse.ui.operations.IWorkbenchOperationSupport;

public class WorkbenchOperationSupport
implements IWorkbenchOperationSupport {
    private ObjectUndoContext undoContext;
    private IOperationApprover approver;

    static {
        DefaultOperationHistory.DEBUG_OPERATION_HISTORY_UNEXPECTED = Policy.DEBUG_OPERATIONS;
        DefaultOperationHistory.DEBUG_OPERATION_HISTORY_OPENOPERATION = Policy.DEBUG_OPERATIONS;
        DefaultOperationHistory.DEBUG_OPERATION_HISTORY_APPROVAL = Policy.DEBUG_OPERATIONS;
        DefaultOperationHistory.DEBUG_OPERATION_HISTORY_NOTIFICATION = Policy.DEBUG_OPERATIONS && Policy.DEBUG_OPERATIONS_VERBOSE;
        DefaultOperationHistory.DEBUG_OPERATION_HISTORY_DISPOSE = Policy.DEBUG_OPERATIONS && Policy.DEBUG_OPERATIONS_VERBOSE;
    }

    public void dispose() {
        this.getOperationHistory().removeOperationApprover(this.approver);
        this.getOperationHistory().dispose(this.getUndoContext(), true, true, true);
    }

    public IUndoContext getUndoContext() {
        if (this.undoContext == null) {
            this.undoContext = new ObjectUndoContext((Object)PlatformUI.getWorkbench(), "Workbench Context");
        }
        return this.undoContext;
    }

    public IOperationHistory getOperationHistory() {
        IOperationHistory history = OperationHistoryFactory.getOperationHistory();
        if (this.approver == null) {
            this.approver = new AdvancedValidationUserApprover(this.getUndoContext());
            history.addOperationApprover(this.approver);
            history.setLimit(this.getUndoContext(), 25);
        }
        return history;
    }
}

