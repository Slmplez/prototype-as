/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public abstract class LinearUndoViolationDetector
implements IOperationApprover {
    protected abstract IStatus allowLinearRedoViolation(IUndoableOperation var1, IUndoContext var2, IOperationHistory var3, IAdaptable var4);

    protected abstract IStatus allowLinearUndoViolation(IUndoableOperation var1, IUndoContext var2, IOperationHistory var3, IAdaptable var4);

    public final IStatus proceedRedoing(IUndoableOperation operation, IOperationHistory history, IAdaptable info) {
        IUndoContext[] contexts = operation.getContexts();
        int i = 0;
        while (i < contexts.length) {
            IStatus status;
            IUndoContext context = contexts[i];
            if (history.getRedoOperation(context) != operation && !(status = this.allowLinearRedoViolation(operation, context, history, info)).isOK()) {
                return status;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    public final IStatus proceedUndoing(IUndoableOperation operation, IOperationHistory history, IAdaptable info) {
        IUndoContext[] contexts = operation.getContexts();
        int i = 0;
        while (i < contexts.length) {
            IStatus status;
            IUndoContext context = contexts[i];
            if (history.getUndoOperation(context) != operation && !(status = this.allowLinearUndoViolation(operation, context, history, info)).isOK()) {
                return status;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }
}

