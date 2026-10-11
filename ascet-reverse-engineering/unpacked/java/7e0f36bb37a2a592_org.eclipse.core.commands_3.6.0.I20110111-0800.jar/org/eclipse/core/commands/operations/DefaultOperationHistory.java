/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.commands.operations;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation;
import org.eclipse.core.commands.operations.ICompositeOperation;
import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationApprover2;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IOperationHistoryListener;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationHistoryEvent;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;

public final class DefaultOperationHistory
implements IOperationHistory {
    public static boolean DEBUG_OPERATION_HISTORY_NOTIFICATION = false;
    public static boolean DEBUG_OPERATION_HISTORY_UNEXPECTED = false;
    public static boolean DEBUG_OPERATION_HISTORY_DISPOSE = false;
    public static boolean DEBUG_OPERATION_HISTORY_OPENOPERATION = false;
    public static boolean DEBUG_OPERATION_HISTORY_APPROVAL = false;
    static final int DEFAULT_LIMIT = 20;
    ListenerList approvers = new ListenerList(1);
    private Map limits = Collections.synchronizedMap(new HashMap());
    ListenerList listeners = new ListenerList(1);
    private List redoList = Collections.synchronizedList(new ArrayList());
    private List undoList = Collections.synchronizedList(new ArrayList());
    final Object undoRedoHistoryLock = new Object();
    private ICompositeOperation openComposite = null;
    final Object openCompositeLock = new Object();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void add(IUndoableOperation operation) {
        Assert.isNotNull((Object)operation);
        Object object = this.openCompositeLock;
        synchronized (object) {
            if (this.openComposite != null && this.openComposite != operation) {
                this.openComposite.add(operation);
                return;
            }
        }
        if (this.checkUndoLimit(operation)) {
            object = this.undoRedoHistoryLock;
            synchronized (object) {
                this.undoList.add(operation);
            }
            this.notifyAdd(operation);
            IUndoContext[] contexts = operation.getContexts();
            int i = 0;
            while (i < contexts.length) {
                this.flushRedo(contexts[i]);
                ++i;
            }
        } else {
            operation.dispose();
        }
    }

    public void addOperationApprover(IOperationApprover approver) {
        this.approvers.add((Object)approver);
    }

    public void addOperationHistoryListener(IOperationHistoryListener listener) {
        this.listeners.add((Object)listener);
    }

    public boolean canRedo(IUndoContext context) {
        IUndoableOperation operation = this.getRedoOperation(context);
        return operation != null && operation.canRedo();
    }

    public boolean canUndo(IUndoContext context) {
        IUndoableOperation operation = this.getUndoOperation(context);
        return operation != null && operation.canUndo();
    }

    private boolean checkRedoLimit(IUndoableOperation operation) {
        IUndoContext[] contexts = operation.getContexts();
        int i = 0;
        while (i < contexts.length) {
            int limit = this.getLimit(contexts[i]);
            if (limit > 0) {
                this.forceRedoLimit(contexts[i], limit - 1);
            } else {
                operation.removeContext(contexts[i]);
            }
            ++i;
        }
        return operation.getContexts().length > 0;
    }

    private boolean checkUndoLimit(IUndoableOperation operation) {
        IUndoContext[] contexts = operation.getContexts();
        int i = 0;
        while (i < contexts.length) {
            int limit = this.getLimit(contexts[i]);
            if (limit > 0) {
                this.forceUndoLimit(contexts[i], limit - 1);
            } else {
                operation.removeContext(contexts[i]);
            }
            ++i;
        }
        return operation.getContexts().length > 0;
    }

    public void dispose(IUndoContext context, boolean flushUndo, boolean flushRedo, boolean flushContext) {
        if (flushContext) {
            if (DEBUG_OPERATION_HISTORY_DISPOSE) {
                Tracing.printTrace("OPERATIONHISTORY", "Flushing context " + context);
            }
            this.flushUndo(context);
            this.flushRedo(context);
            this.limits.remove(context);
            return;
        }
        if (flushUndo) {
            this.flushUndo(context);
        }
        if (flushRedo) {
            this.flushRedo(context);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private IStatus doRedo(IProgressMonitor monitor, IAdaptable info, IUndoableOperation operation) throws ExecutionException {
        IStatus status = this.getRedoApproval(operation, info);
        if (status.isOK()) {
            this.notifyAboutToRedo(operation);
            try {
                status = operation.redo(monitor, info);
            }
            catch (OperationCanceledException operationCanceledException) {
                status = Status.CANCEL_STATUS;
            }
            catch (ExecutionException e) {
                this.notifyNotOK(operation);
                if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                    Tracing.printTrace("OPERATIONHISTORY", "ExecutionException while redoing " + operation);
                }
                throw e;
            }
            catch (Exception e) {
                this.notifyNotOK(operation);
                if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                    Tracing.printTrace("OPERATIONHISTORY", "Exception while redoing " + operation);
                }
                throw new ExecutionException("While redoing the operation, an exception occurred", e);
            }
        }
        if (status.isOK()) {
            boolean addedToUndo = true;
            Object object = this.undoRedoHistoryLock;
            synchronized (object) {
                this.redoList.remove(operation);
                if (this.checkUndoLimit(operation)) {
                    this.undoList.add(operation);
                } else {
                    addedToUndo = false;
                }
            }
            if (!addedToUndo) {
                operation.dispose();
            }
            this.notifyRedone(operation);
        } else {
            this.notifyNotOK(operation, status);
        }
        return status;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private IStatus doUndo(IProgressMonitor monitor, IAdaptable info, IUndoableOperation operation) throws ExecutionException {
        IStatus status = this.getUndoApproval(operation, info);
        if (status.isOK()) {
            this.notifyAboutToUndo(operation);
            try {
                status = operation.undo(monitor, info);
            }
            catch (OperationCanceledException operationCanceledException) {
                status = Status.CANCEL_STATUS;
            }
            catch (ExecutionException e) {
                this.notifyNotOK(operation);
                if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                    Tracing.printTrace("OPERATIONHISTORY", "ExecutionException while undoing " + operation);
                }
                throw e;
            }
            catch (Exception e) {
                this.notifyNotOK(operation);
                if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                    Tracing.printTrace("OPERATIONHISTORY", "Exception while undoing " + operation);
                }
                throw new ExecutionException("While undoing the operation, an exception occurred", e);
            }
        }
        if (status.isOK()) {
            boolean addedToRedo = true;
            Object object = this.undoRedoHistoryLock;
            synchronized (object) {
                this.undoList.remove(operation);
                if (this.checkRedoLimit(operation)) {
                    this.redoList.add(operation);
                } else {
                    addedToRedo = false;
                }
            }
            if (!addedToRedo) {
                operation.dispose();
            }
            this.notifyUndone(operation);
        } else {
            this.notifyNotOK(operation, status);
        }
        return status;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IStatus execute(IUndoableOperation operation, IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        Assert.isNotNull((Object)operation);
        if (!operation.canExecute()) {
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }
        IStatus status = this.getExecuteApproval(operation, info);
        if (!status.isOK()) {
            return status;
        }
        boolean merging = false;
        Object object = this.openCompositeLock;
        synchronized (object) {
            if (this.openComposite != null) {
                if (this.openComposite == operation) {
                    return IOperationHistory.OPERATION_INVALID_STATUS;
                }
                this.openComposite.add(operation);
                merging = true;
            }
        }
        if (!merging) {
            this.notifyAboutToExecute(operation);
        }
        try {
            status = operation.execute(monitor, info);
        }
        catch (OperationCanceledException operationCanceledException) {
            status = Status.CANCEL_STATUS;
        }
        catch (ExecutionException e) {
            this.notifyNotOK(operation);
            throw e;
        }
        catch (Exception e) {
            this.notifyNotOK(operation);
            throw new ExecutionException("While executing the operation, an exception occurred", e);
        }
        if (!merging) {
            if (status.isOK()) {
                this.notifyDone(operation);
                this.add(operation);
            } else {
                this.notifyNotOK(operation, status);
                operation.dispose();
            }
        }
        return status;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private IUndoableOperation[] filter(List list, IUndoContext context) {
        ArrayList<IUndoableOperation> filtered = new ArrayList<IUndoableOperation>();
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) {
                IUndoableOperation operation = (IUndoableOperation)iterator.next();
                if (!operation.hasContext(context)) continue;
                filtered.add(operation);
            }
        }
        return filtered.toArray(new IUndoableOperation[filtered.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void flushRedo(IUndoContext context) {
        if (DEBUG_OPERATION_HISTORY_DISPOSE) {
            Tracing.printTrace("OPERATIONHISTORY", "Flushing redo history for " + context);
        }
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            IUndoableOperation[] filtered = this.filter(this.redoList, context);
            int i = 0;
            while (i < filtered.length) {
                IUndoableOperation operation = filtered[i];
                if (context == IOperationHistory.GLOBAL_UNDO_CONTEXT || operation.getContexts().length == 1) {
                    this.redoList.remove(operation);
                    this.internalRemove(operation);
                } else {
                    IUndoContext[] contexts = operation.getContexts();
                    int j = 0;
                    while (j < contexts.length) {
                        if (contexts[j].matches(context)) {
                            operation.removeContext(contexts[j]);
                        }
                        ++j;
                    }
                    if (operation.getContexts().length == 0) {
                        this.redoList.remove(operation);
                        this.internalRemove(operation);
                    }
                }
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void flushUndo(IUndoContext context) {
        if (DEBUG_OPERATION_HISTORY_DISPOSE) {
            Tracing.printTrace("OPERATIONHISTORY", "Flushing undo history for " + context);
        }
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            IUndoableOperation[] filtered = this.filter(this.undoList, context);
            int i = 0;
            while (i < filtered.length) {
                IUndoableOperation operation = filtered[i];
                if (context == IOperationHistory.GLOBAL_UNDO_CONTEXT || operation.getContexts().length == 1) {
                    this.undoList.remove(operation);
                    this.internalRemove(operation);
                } else {
                    IUndoContext[] contexts = operation.getContexts();
                    int j = 0;
                    while (j < contexts.length) {
                        if (contexts[j].matches(context)) {
                            operation.removeContext(contexts[j]);
                        }
                        ++j;
                    }
                    if (operation.getContexts().length == 0) {
                        this.undoList.remove(operation);
                        this.internalRemove(operation);
                    }
                }
                ++i;
            }
        }
        ICompositeOperation endedComposite = null;
        Object object2 = this.openCompositeLock;
        synchronized (object2) {
            if (this.openComposite != null && this.openComposite.hasContext(context)) {
                if (context == IOperationHistory.GLOBAL_UNDO_CONTEXT || this.openComposite.getContexts().length == 1) {
                    endedComposite = this.openComposite;
                    this.openComposite = null;
                } else {
                    this.openComposite.removeContext(context);
                }
            }
        }
        if (endedComposite != null) {
            this.notifyNotOK(endedComposite);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void forceRedoLimit(IUndoContext context, int max) {
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            IUndoableOperation[] filtered = this.filter(this.redoList, context);
            int size = filtered.length;
            if (size > 0) {
                int index = 0;
                while (size > max) {
                    IUndoableOperation removed = filtered[index];
                    if (context == IOperationHistory.GLOBAL_UNDO_CONTEXT || removed.getContexts().length == 1) {
                        this.redoList.remove(removed);
                        this.internalRemove(removed);
                    } else {
                        removed.removeContext(context);
                    }
                    --size;
                    ++index;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void forceUndoLimit(IUndoContext context, int max) {
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            IUndoableOperation[] filtered = this.filter(this.undoList, context);
            int size = filtered.length;
            if (size > 0) {
                int index = 0;
                while (size > max) {
                    IUndoableOperation removed = filtered[index];
                    if (context == IOperationHistory.GLOBAL_UNDO_CONTEXT || removed.getContexts().length == 1) {
                        this.undoList.remove(removed);
                        this.internalRemove(removed);
                    } else {
                        removed.removeContext(context);
                    }
                    --size;
                    ++index;
                }
            }
        }
    }

    public int getLimit(IUndoContext context) {
        if (!this.limits.containsKey(context)) {
            return 20;
        }
        return (Integer)this.limits.get(context);
    }

    private IStatus getRedoApproval(IUndoableOperation operation, IAdaptable info) {
        Object[] approverArray = this.approvers.getListeners();
        int i = 0;
        while (i < approverArray.length) {
            IOperationApprover approver = (IOperationApprover)approverArray[i];
            IStatus approval = approver.proceedRedoing(operation, this, info);
            if (!approval.isOK()) {
                if (DEBUG_OPERATION_HISTORY_APPROVAL) {
                    Tracing.printTrace("OPERATIONHISTORY", "Redo not approved by " + approver + "for operation " + operation + " approved by " + approval);
                }
                return approval;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    public IUndoableOperation[] getRedoHistory(IUndoContext context) {
        Assert.isNotNull((Object)context);
        return this.filter(this.redoList, context);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IUndoableOperation getRedoOperation(IUndoContext context) {
        Assert.isNotNull((Object)context);
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            int i = this.redoList.size() - 1;
            while (i >= 0) {
                IUndoableOperation operation = (IUndoableOperation)this.redoList.get(i);
                if (operation.hasContext(context)) {
                    return operation;
                }
                --i;
            }
        }
        return null;
    }

    private IStatus getUndoApproval(IUndoableOperation operation, IAdaptable info) {
        Object[] approverArray = this.approvers.getListeners();
        int i = 0;
        while (i < approverArray.length) {
            IOperationApprover approver = (IOperationApprover)approverArray[i];
            IStatus approval = approver.proceedUndoing(operation, this, info);
            if (!approval.isOK()) {
                if (DEBUG_OPERATION_HISTORY_APPROVAL) {
                    Tracing.printTrace("OPERATIONHISTORY", "Undo not approved by " + approver + "for operation " + operation + " with status " + approval);
                }
                return approval;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    public IUndoableOperation[] getUndoHistory(IUndoContext context) {
        Assert.isNotNull((Object)context);
        return this.filter(this.undoList, context);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IUndoableOperation getUndoOperation(IUndoContext context) {
        Assert.isNotNull((Object)context);
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            int i = this.undoList.size() - 1;
            while (i >= 0) {
                IUndoableOperation operation = (IUndoableOperation)this.undoList.get(i);
                if (operation.hasContext(context)) {
                    return operation;
                }
                --i;
            }
        }
        return null;
    }

    private IStatus getExecuteApproval(IUndoableOperation operation, IAdaptable info) {
        Object[] approverArray = this.approvers.getListeners();
        int i = 0;
        while (i < approverArray.length) {
            IOperationApprover2 approver;
            IStatus approval;
            if (approverArray[i] instanceof IOperationApprover2 && !(approval = (approver = (IOperationApprover2)approverArray[i]).proceedExecuting(operation, this, info)).isOK()) {
                if (DEBUG_OPERATION_HISTORY_APPROVAL) {
                    Tracing.printTrace("OPERATIONHISTORY", "Execute not approved by " + approver + "for operation " + operation + " with status " + approval);
                }
                return approval;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    private void internalRemove(IUndoableOperation operation) {
        operation.dispose();
        this.notifyRemoved(operation);
    }

    private void notifyListeners(final OperationHistoryEvent event) {
        if (event.getOperation() instanceof IAdvancedUndoableOperation) {
            final IAdvancedUndoableOperation advancedOp = (IAdvancedUndoableOperation)((Object)event.getOperation());
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                    if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                        Tracing.printTrace("OPERATIONHISTORY", "Exception during notification callback " + exception);
                    }
                }

                public void run() throws Exception {
                    advancedOp.aboutToNotify(event);
                }
            });
        }
        Object[] listenerArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenerArray.length) {
            final IOperationHistoryListener listener = (IOperationHistoryListener)listenerArray[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                    if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                        Tracing.printTrace("OPERATIONHISTORY", "Exception during notification callback " + exception);
                    }
                }

                public void run() throws Exception {
                    listener.historyNotification(event);
                }
            });
            ++i;
        }
    }

    private void notifyAboutToExecute(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "ABOUT_TO_EXECUTE " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(1, this, operation));
    }

    private void notifyAboutToRedo(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "ABOUT_TO_REDO " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(2, this, operation));
    }

    private void notifyAboutToUndo(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "ABOUT_TO_UNDO " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(3, this, operation));
    }

    private void notifyAdd(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "OPERATION_ADDED " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(5, this, operation));
    }

    private void notifyDone(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "DONE " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(4, this, operation));
    }

    private void notifyNotOK(IUndoableOperation operation) {
        this.notifyNotOK(operation, null);
    }

    private void notifyNotOK(IUndoableOperation operation, IStatus status) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "OPERATION_NOT_OK " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(7, this, operation, status));
    }

    private void notifyRedone(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "REDONE " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(9, this, operation));
    }

    private void notifyRemoved(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "OPERATION_REMOVED " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(8, this, operation));
    }

    private void notifyUndone(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "UNDONE " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(10, this, operation));
    }

    private void notifyChanged(IUndoableOperation operation) {
        if (DEBUG_OPERATION_HISTORY_NOTIFICATION) {
            Tracing.printTrace("OPERATIONHISTORY", "OPERATION_CHANGED " + operation);
        }
        this.notifyListeners(new OperationHistoryEvent(6, this, operation));
    }

    public IStatus redo(IUndoContext context, IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        Assert.isNotNull((Object)context);
        IUndoableOperation operation = this.getRedoOperation(context);
        if (operation == null) {
            return IOperationHistory.NOTHING_TO_REDO_STATUS;
        }
        if (!operation.canRedo()) {
            if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                Tracing.printTrace("OPERATIONHISTORY", "Redo operation not valid - " + operation);
            }
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }
        return this.doRedo(monitor, info, operation);
    }

    public IStatus redoOperation(IUndoableOperation operation, IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        IStatus status;
        Assert.isNotNull((Object)operation);
        if (operation.canRedo()) {
            status = this.doRedo(monitor, info, operation);
        } else {
            if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                Tracing.printTrace("OPERATIONHISTORY", "Redo operation not valid - " + operation);
            }
            status = IOperationHistory.OPERATION_INVALID_STATUS;
        }
        return status;
    }

    public void removeOperationApprover(IOperationApprover approver) {
        this.approvers.remove((Object)approver);
    }

    public void removeOperationHistoryListener(IOperationHistoryListener listener) {
        this.listeners.remove((Object)listener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void replaceOperation(IUndoableOperation operation, IUndoableOperation[] replacements) {
        IUndoContext context;
        int j;
        IUndoContext[] opContexts;
        int i;
        ArrayList<IUndoContext> allContexts;
        int index;
        boolean inUndo = false;
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            index = this.undoList.indexOf(operation);
            if (index > -1) {
                inUndo = true;
                this.undoList.remove(operation);
                allContexts = new ArrayList<IUndoContext>(replacements.length);
                i = 0;
                while (i < replacements.length) {
                    opContexts = replacements[i].getContexts();
                    j = 0;
                    while (j < opContexts.length) {
                        allContexts.add(opContexts[j]);
                        ++j;
                    }
                    this.undoList.add(index, replacements[i]);
                    ++i;
                }
                i = 0;
                while (i < allContexts.size()) {
                    context = (IUndoContext)allContexts.get(i);
                    this.forceUndoLimit(context, this.getLimit(context));
                    ++i;
                }
            }
        }
        if (inUndo) {
            this.internalRemove(operation);
            int i2 = 0;
            while (i2 < replacements.length) {
                this.notifyAdd(replacements[i2]);
                ++i2;
            }
            return;
        }
        Object i2 = this.undoRedoHistoryLock;
        synchronized (i2) {
            index = this.redoList.indexOf(operation);
            if (index == -1) {
                return;
            }
            allContexts = new ArrayList(replacements.length);
            this.redoList.remove(operation);
            i = 0;
            while (i < replacements.length) {
                opContexts = replacements[i].getContexts();
                j = 0;
                while (j < opContexts.length) {
                    allContexts.add(opContexts[j]);
                    ++j;
                }
                this.redoList.add(index, replacements[i]);
                ++i;
            }
            i = 0;
            while (i < allContexts.size()) {
                context = (IUndoContext)allContexts.get(i);
                this.forceRedoLimit(context, this.getLimit(context));
                ++i;
            }
        }
        this.internalRemove(operation);
        int i22 = 0;
        while (i22 < replacements.length) {
            this.notifyAdd(replacements[i22]);
            ++i22;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setLimit(IUndoContext context, int limit) {
        Assert.isTrue((limit >= 0 ? 1 : 0) != 0);
        Assert.isNotNull((Object)context);
        this.limits.put(context, new Integer(limit));
        Object object = this.undoRedoHistoryLock;
        synchronized (object) {
            this.forceUndoLimit(context, limit);
            this.forceRedoLimit(context, limit);
        }
    }

    public IStatus undo(IUndoContext context, IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        Assert.isNotNull((Object)context);
        IUndoableOperation operation = this.getUndoOperation(context);
        if (operation == null) {
            return IOperationHistory.NOTHING_TO_UNDO_STATUS;
        }
        if (!operation.canUndo()) {
            if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                Tracing.printTrace("OPERATIONHISTORY", "Undo operation not valid - " + operation);
            }
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }
        return this.doUndo(monitor, info, operation);
    }

    public IStatus undoOperation(IUndoableOperation operation, IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        IStatus status;
        Assert.isNotNull((Object)operation);
        if (operation.canUndo()) {
            status = this.doUndo(monitor, info, operation);
        } else {
            if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                Tracing.printTrace("OPERATIONHISTORY", "Undo operation not valid - " + operation);
            }
            status = IOperationHistory.OPERATION_INVALID_STATUS;
        }
        return status;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void openOperation(ICompositeOperation operation, int mode) {
        Object object = this.openCompositeLock;
        synchronized (object) {
            if (this.openComposite != null && this.openComposite != operation) {
                if (DEBUG_OPERATION_HISTORY_UNEXPECTED) {
                    Tracing.printTrace("OPERATIONHISTORY", "Open operation called while another operation is open.  old: " + this.openComposite + "; new:  " + operation);
                }
                throw new IllegalStateException("Cannot open an operation while one is already open");
            }
            this.openComposite = operation;
        }
        if (DEBUG_OPERATION_HISTORY_OPENOPERATION) {
            Tracing.printTrace("OPERATIONHISTORY", "Opening operation " + this.openComposite);
        }
        if (mode == 1) {
            this.notifyAboutToExecute(this.openComposite);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void closeOperation(boolean operationOK, boolean addToHistory, int mode) {
        ICompositeOperation endedComposite = null;
        Object object = this.openCompositeLock;
        synchronized (object) {
            if (DEBUG_OPERATION_HISTORY_UNEXPECTED && this.openComposite == null) {
                Tracing.printTrace("OPERATIONHISTORY", "Attempted to close operation when none was open");
                return;
            }
            if (this.openComposite != null) {
                if (DEBUG_OPERATION_HISTORY_OPENOPERATION) {
                    Tracing.printTrace("OPERATIONHISTORY", "Closing operation " + this.openComposite);
                }
                endedComposite = this.openComposite;
                this.openComposite = null;
            }
        }
        if (endedComposite != null) {
            if (operationOK) {
                if (mode == 1) {
                    this.notifyDone(endedComposite);
                }
                if (addToHistory) {
                    this.add(endedComposite);
                }
            } else if (mode == 1) {
                this.notifyNotOK(endedComposite);
            }
        }
    }

    public void operationChanged(IUndoableOperation operation) {
        if (this.undoList.contains(operation) || this.redoList.contains(operation)) {
            this.notifyChanged(operation);
        }
    }
}

