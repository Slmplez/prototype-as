/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.ICompositeOperation;
import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationHistoryListener;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationStatus;
import org.eclipse.core.internal.commands.operations.GlobalUndoContext;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public interface IOperationHistory {
    public static final int EXECUTE = 1;
    public static final int UNDO = 2;
    public static final int REDO = 3;
    public static final IUndoContext GLOBAL_UNDO_CONTEXT = new GlobalUndoContext();
    public static final IStatus NOTHING_TO_REDO_STATUS = new OperationStatus(1, OperationStatus.DEFAULT_PLUGIN_ID, 1, "No operation to redo", null);
    public static final IStatus NOTHING_TO_UNDO_STATUS = new OperationStatus(1, OperationStatus.DEFAULT_PLUGIN_ID, 2, "No operation to undo", null);
    public static final IStatus OPERATION_INVALID_STATUS = new OperationStatus(4, OperationStatus.DEFAULT_PLUGIN_ID, 3, "Operation is not valid", null);

    public void add(IUndoableOperation var1);

    public void addOperationApprover(IOperationApprover var1);

    public void addOperationHistoryListener(IOperationHistoryListener var1);

    public void closeOperation(boolean var1, boolean var2, int var3);

    public boolean canRedo(IUndoContext var1);

    public boolean canUndo(IUndoContext var1);

    public void dispose(IUndoContext var1, boolean var2, boolean var3, boolean var4);

    public IStatus execute(IUndoableOperation var1, IProgressMonitor var2, IAdaptable var3) throws ExecutionException;

    public int getLimit(IUndoContext var1);

    public IUndoableOperation[] getRedoHistory(IUndoContext var1);

    public IUndoableOperation getRedoOperation(IUndoContext var1);

    public IUndoableOperation[] getUndoHistory(IUndoContext var1);

    public void openOperation(ICompositeOperation var1, int var2);

    public void operationChanged(IUndoableOperation var1);

    public IUndoableOperation getUndoOperation(IUndoContext var1);

    public IStatus redo(IUndoContext var1, IProgressMonitor var2, IAdaptable var3) throws ExecutionException;

    public IStatus redoOperation(IUndoableOperation var1, IProgressMonitor var2, IAdaptable var3) throws ExecutionException;

    public void removeOperationApprover(IOperationApprover var1);

    public void removeOperationHistoryListener(IOperationHistoryListener var1);

    public void replaceOperation(IUndoableOperation var1, IUndoableOperation[] var2);

    public void setLimit(IUndoContext var1, int var2);

    public IStatus undo(IUndoContext var1, IProgressMonitor var2, IAdaptable var3) throws ExecutionException;

    public IStatus undoOperation(IUndoableOperation var1, IProgressMonitor var2, IAdaptable var3) throws ExecutionException;
}

