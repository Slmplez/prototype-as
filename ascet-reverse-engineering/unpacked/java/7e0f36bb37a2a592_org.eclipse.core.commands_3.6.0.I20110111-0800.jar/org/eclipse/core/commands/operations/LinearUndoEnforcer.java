/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.LinearUndoViolationDetector;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;

public final class LinearUndoEnforcer
extends LinearUndoViolationDetector {
    protected IStatus allowLinearRedoViolation(IUndoableOperation operation, IUndoContext context, IOperationHistory history, IAdaptable uiInfo) {
        return Status.CANCEL_STATUS;
    }

    protected IStatus allowLinearUndoViolation(IUndoableOperation operation, IUndoContext context, IOperationHistory history, IAdaptable uiInfo) {
        return Status.CANCEL_STATUS;
    }
}

