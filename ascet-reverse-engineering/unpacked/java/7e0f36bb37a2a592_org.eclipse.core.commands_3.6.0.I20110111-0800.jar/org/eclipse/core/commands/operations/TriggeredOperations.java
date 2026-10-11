/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.commands.operations;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.AbstractOperation;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation2;
import org.eclipse.core.commands.operations.ICompositeOperation;
import org.eclipse.core.commands.operations.IContextReplacingOperation;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationHistoryEvent;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;

public final class TriggeredOperations
extends AbstractOperation
implements ICompositeOperation,
IAdvancedUndoableOperation,
IAdvancedUndoableOperation2,
IContextReplacingOperation {
    private IUndoableOperation triggeringOperation;
    private IOperationHistory history;
    private List children = new ArrayList();

    public TriggeredOperations(IUndoableOperation operation, IOperationHistory history) {
        super(operation.getLabel());
        this.triggeringOperation = operation;
        this.recomputeContexts();
        this.history = history;
    }

    public void add(IUndoableOperation operation) {
        this.children.add(operation);
        this.recomputeContexts();
    }

    public void remove(IUndoableOperation operation) {
        if (operation == this.triggeringOperation) {
            this.triggeringOperation = null;
            ArrayList childrenToRestore = new ArrayList(this.children);
            this.children = new ArrayList(0);
            this.recomputeContexts();
            operation.dispose();
            this.history.replaceOperation(this, childrenToRestore.toArray(new IUndoableOperation[childrenToRestore.size()]));
        } else {
            this.children.remove(operation);
            operation.dispose();
            this.recomputeContexts();
        }
    }

    public void removeContext(IUndoContext context) {
        boolean recompute = false;
        if (this.triggeringOperation != null && this.triggeringOperation.hasContext(context)) {
            if (this.triggeringOperation.getContexts().length == 1) {
                this.remove(this.triggeringOperation);
                return;
            }
            this.triggeringOperation.removeContext(context);
            recompute = true;
        }
        ArrayList<IUndoableOperation> toBeRemoved = new ArrayList<IUndoableOperation>();
        int i = 0;
        while (i < this.children.size()) {
            IUndoableOperation child = (IUndoableOperation)this.children.get(i);
            if (child.hasContext(context)) {
                if (child.getContexts().length == 1) {
                    toBeRemoved.add(child);
                } else {
                    child.removeContext(context);
                }
                recompute = true;
            }
            ++i;
        }
        i = 0;
        while (i < toBeRemoved.size()) {
            this.remove((IUndoableOperation)toBeRemoved.get(i));
            ++i;
        }
        if (recompute) {
            this.recomputeContexts();
        }
    }

    public IStatus execute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (this.triggeringOperation != null) {
            this.history.openOperation(this, 1);
            try {
                IStatus status = this.triggeringOperation.execute(monitor, info);
                this.history.closeOperation(status.isOK(), false, 1);
                return status;
            }
            catch (ExecutionException e) {
                this.history.closeOperation(false, false, 1);
                throw e;
            }
            catch (RuntimeException e) {
                this.history.closeOperation(false, false, 1);
                throw e;
            }
        }
        return IOperationHistory.OPERATION_INVALID_STATUS;
    }

    public IStatus redo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (this.triggeringOperation != null) {
            this.history.openOperation(this, 3);
            ArrayList childrenToRestore = new ArrayList(this.children);
            try {
                this.removeAllChildren();
                IStatus status = this.triggeringOperation.redo(monitor, info);
                if (!status.isOK()) {
                    this.children = childrenToRestore;
                }
                this.history.closeOperation(status.isOK(), false, 3);
                return status;
            }
            catch (ExecutionException e) {
                this.children = childrenToRestore;
                this.history.closeOperation(false, false, 3);
                throw e;
            }
            catch (RuntimeException e) {
                this.children = childrenToRestore;
                this.history.closeOperation(false, false, 3);
                throw e;
            }
        }
        return IOperationHistory.OPERATION_INVALID_STATUS;
    }

    public IStatus undo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (this.triggeringOperation != null) {
            this.history.openOperation(this, 2);
            ArrayList childrenToRestore = new ArrayList(this.children);
            try {
                this.removeAllChildren();
                IStatus status = this.triggeringOperation.undo(monitor, info);
                if (!status.isOK()) {
                    this.children = childrenToRestore;
                }
                this.history.closeOperation(status.isOK(), false, 2);
                return status;
            }
            catch (ExecutionException e) {
                this.children = childrenToRestore;
                this.history.closeOperation(false, false, 2);
                throw e;
            }
            catch (RuntimeException e) {
                this.children = childrenToRestore;
                this.history.closeOperation(false, false, 2);
                throw e;
            }
        }
        return IOperationHistory.OPERATION_INVALID_STATUS;
    }

    public boolean canUndo() {
        if (this.triggeringOperation != null) {
            return this.triggeringOperation.canUndo();
        }
        return false;
    }

    public boolean canExecute() {
        if (this.triggeringOperation != null) {
            return this.triggeringOperation.canExecute();
        }
        return false;
    }

    public boolean canRedo() {
        if (this.triggeringOperation != null) {
            return this.triggeringOperation.canRedo();
        }
        return false;
    }

    public void dispose() {
        int i = 0;
        while (i < this.children.size()) {
            ((IUndoableOperation)this.children.get(i)).dispose();
            ++i;
        }
        if (this.triggeringOperation != null) {
            this.triggeringOperation.dispose();
        }
    }

    private void recomputeContexts() {
        ArrayList<IUndoContext> allContexts = new ArrayList<IUndoContext>();
        if (this.triggeringOperation != null) {
            IUndoContext[] contexts = this.triggeringOperation.getContexts();
            int i = 0;
            while (i < contexts.length) {
                allContexts.add(contexts[i]);
                ++i;
            }
        }
        int i = 0;
        while (i < this.children.size()) {
            IUndoContext[] contexts = ((IUndoableOperation)this.children.get(i)).getContexts();
            int j = 0;
            while (j < contexts.length) {
                if (!allContexts.contains(contexts[j])) {
                    allContexts.add(contexts[j]);
                }
                ++j;
            }
            ++i;
        }
        this.contexts = allContexts;
    }

    private void removeAllChildren() {
        IUndoableOperation[] nonTriggers = this.children.toArray(new IUndoableOperation[this.children.size()]);
        int i = 0;
        while (i < nonTriggers.length) {
            this.children.remove(nonTriggers[i]);
            nonTriggers[i].dispose();
            ++i;
        }
    }

    public IUndoableOperation getTriggeringOperation() {
        return this.triggeringOperation;
    }

    public Object[] getAffectedObjects() {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation) {
            return ((IAdvancedUndoableOperation)((Object)this.triggeringOperation)).getAffectedObjects();
        }
        return null;
    }

    public void aboutToNotify(OperationHistoryEvent event) {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation) {
            ((IAdvancedUndoableOperation)((Object)this.triggeringOperation)).aboutToNotify(event);
        }
    }

    public IStatus computeUndoableStatus(IProgressMonitor monitor) throws ExecutionException {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation) {
            try {
                return ((IAdvancedUndoableOperation)((Object)this.triggeringOperation)).computeUndoableStatus(monitor);
            }
            catch (OperationCanceledException operationCanceledException) {
                return Status.CANCEL_STATUS;
            }
        }
        return Status.OK_STATUS;
    }

    public IStatus computeRedoableStatus(IProgressMonitor monitor) throws ExecutionException {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation) {
            try {
                return ((IAdvancedUndoableOperation)((Object)this.triggeringOperation)).computeRedoableStatus(monitor);
            }
            catch (OperationCanceledException operationCanceledException) {
                return Status.CANCEL_STATUS;
            }
        }
        return Status.OK_STATUS;
    }

    public void replaceContext(IUndoContext original, IUndoContext replacement) {
        if (this.triggeringOperation != null && this.triggeringOperation.hasContext(original)) {
            if (this.triggeringOperation instanceof IContextReplacingOperation) {
                ((IContextReplacingOperation)((Object)this.triggeringOperation)).replaceContext(original, replacement);
            } else {
                this.triggeringOperation.removeContext(original);
                this.triggeringOperation.addContext(replacement);
            }
        }
        int i = 0;
        while (i < this.children.size()) {
            IUndoableOperation child = (IUndoableOperation)this.children.get(i);
            if (child.hasContext(original)) {
                if (child instanceof IContextReplacingOperation) {
                    ((IContextReplacingOperation)((Object)child)).replaceContext(original, replacement);
                } else {
                    child.removeContext(original);
                    child.addContext(replacement);
                }
            }
            ++i;
        }
        this.recomputeContexts();
    }

    public void addContext(IUndoContext context) {
        if (this.triggeringOperation != null) {
            this.triggeringOperation.addContext(context);
            this.recomputeContexts();
        }
    }

    public IStatus computeExecutionStatus(IProgressMonitor monitor) throws ExecutionException {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation2) {
            try {
                return ((IAdvancedUndoableOperation2)((Object)this.triggeringOperation)).computeExecutionStatus(monitor);
            }
            catch (OperationCanceledException operationCanceledException) {
                return Status.CANCEL_STATUS;
            }
        }
        return Status.OK_STATUS;
    }

    public void setQuietCompute(boolean quiet) {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation2) {
            ((IAdvancedUndoableOperation2)((Object)this.triggeringOperation)).setQuietCompute(quiet);
        }
    }

    public boolean runInBackground() {
        if (this.triggeringOperation instanceof IAdvancedUndoableOperation2) {
            return ((IAdvancedUndoableOperation2)((Object)this.triggeringOperation)).runInBackground();
        }
        return false;
    }
}

