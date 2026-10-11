/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IStatus;

public final class OperationHistoryEvent {
    public static final int ABOUT_TO_EXECUTE = 1;
    public static final int ABOUT_TO_REDO = 2;
    public static final int ABOUT_TO_UNDO = 3;
    public static final int DONE = 4;
    public static final int OPERATION_ADDED = 5;
    public static final int OPERATION_CHANGED = 6;
    public static final int OPERATION_NOT_OK = 7;
    public static final int OPERATION_REMOVED = 8;
    public static final int REDONE = 9;
    public static final int UNDONE = 10;
    private int code = 0;
    private IOperationHistory history;
    private IUndoableOperation operation;
    private IStatus status;

    public OperationHistoryEvent(int code, IOperationHistory history, IUndoableOperation operation) {
        this(code, history, operation, null);
    }

    public OperationHistoryEvent(int code, IOperationHistory history, IUndoableOperation operation, IStatus status) {
        if (history == null) {
            throw new NullPointerException();
        }
        if (operation == null) {
            throw new NullPointerException();
        }
        this.code = code;
        this.history = history;
        this.operation = operation;
        this.status = status;
    }

    public int getEventType() {
        return this.code;
    }

    public IOperationHistory getHistory() {
        return this.history;
    }

    public IUndoableOperation getOperation() {
        return this.operation;
    }

    public IStatus getStatus() {
        return this.status;
    }
}

