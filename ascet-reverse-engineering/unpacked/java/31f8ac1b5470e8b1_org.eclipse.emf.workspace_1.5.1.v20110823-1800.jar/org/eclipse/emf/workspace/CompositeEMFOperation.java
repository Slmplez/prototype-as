/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.AbstractOperation
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.transaction.RollbackException
 *  org.eclipse.emf.transaction.Transaction
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.InternalTransaction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.workspace;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.AbstractOperation;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.workspace.AbstractEMFOperation;
import org.eclipse.emf.workspace.impl.NonEMFTransaction;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;
import org.eclipse.emf.workspace.internal.Tracing;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeEMFOperation
extends AbstractEMFOperation {
    private final List<IUndoableOperation> children;
    private boolean transactionNestingEnabled = true;

    public CompositeEMFOperation(TransactionalEditingDomain domain, String label) {
        this(domain, label, null, null);
    }

    public CompositeEMFOperation(TransactionalEditingDomain domain, String label, Map<?, ?> options) {
        this(domain, label, null, options);
    }

    public CompositeEMFOperation(TransactionalEditingDomain domain, String label, List<? extends IUndoableOperation> children) {
        this(domain, label, children, null);
    }

    public CompositeEMFOperation(TransactionalEditingDomain domain, String label, List<? extends IUndoableOperation> children, Map<?, ?> options) {
        super(domain, label, options);
        this.children = children != null ? new ArrayList<IUndoableOperation>(children) : new ArrayList<IUndoableOperation>();
    }

    @Override
    protected final IStatus doExecute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        ArrayList<IStatus> result = new ArrayList<IStatus>(this.size());
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        monitor.beginTask(this.getLabel(), this.size());
        try {
            ListIterator<IUndoableOperation> iter = this.listIterator();
            while (iter.hasNext()) {
                if (monitor.isCanceled()) {
                    ((InternalTransaction)this.getTransaction()).abort((IStatus)new Status(8, EMFWorkspacePlugin.getPluginId(), 1, Messages.executeInterrupted, null));
                    break;
                }
                Transaction childTransaction = null;
                IUndoableOperation next = iter.next();
                IStatus status = null;
                if (!(next instanceof AbstractEMFOperation)) {
                    try {
                        childTransaction = this.createNonEMFTransaction(next, info, this.getOptions());
                    }
                    catch (InterruptedException e) {
                        Tracing.catching(CompositeEMFOperation.class, "execute", e);
                        ExecutionException exc = new ExecutionException(Messages.executeInterrupted, (Throwable)e);
                        Tracing.throwing(CompositeEMFOperation.class, "execute", exc);
                        throw exc;
                    }
                } else {
                    AbstractEMFOperation emf = (AbstractEMFOperation)next;
                    if (emf.isReuseParentTransaction() == this.isTransactionNestingEnabled()) {
                        emf.setReuseParentTransaction(!this.isTransactionNestingEnabled());
                    }
                }
                try {
                    status = next.execute((IProgressMonitor)new SubProgressMonitor(monitor, 1), info);
                    result.add(status);
                    if (!status.matches(12)) continue;
                    if (childTransaction != null) {
                        childTransaction.rollback();
                    }
                    ((InternalTransaction)this.getTransaction()).abort(status);
                    break;
                }
                finally {
                    if (childTransaction != null && childTransaction.isActive()) {
                        try {
                            childTransaction.commit();
                        }
                        catch (RollbackException e) {
                            Tracing.catching(CompositeEMFOperation.class, "execute", e);
                            result.add(e.getStatus());
                        }
                    }
                }
            }
        }
        finally {
            monitor.done();
        }
        return this.aggregateStatuses(result);
    }

    private Transaction createNonEMFTransaction(IUndoableOperation operation, IAdaptable info, Map<?, ?> options) throws InterruptedException {
        NonEMFTransaction result = new NonEMFTransaction(this.getEditingDomain(), operation, info, options);
        result.start();
        return result;
    }

    @Override
    protected void didCommit(Transaction transaction) {
        super.didCommit(transaction);
        final Command triggers = ((InternalTransaction)transaction).getTriggers();
        if (triggers != null) {
            this.getChildren().add((IUndoableOperation)new AbstractOperation(""){

                public boolean canUndo() {
                    return triggers.canUndo();
                }

                public IStatus execute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                    triggers.execute();
                    return Status.OK_STATUS;
                }

                public IStatus redo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                    triggers.redo();
                    return Status.OK_STATUS;
                }

                public IStatus undo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                    triggers.undo();
                    return Status.OK_STATUS;
                }
            });
        }
    }

    public boolean canExecute() {
        boolean result = super.canExecute();
        if (result) {
            Iterator<IUndoableOperation> iter = this.iterator();
            while (result && iter.hasNext()) {
                result = iter.next().canExecute();
            }
        }
        return result;
    }

    @Override
    public boolean canUndo() {
        boolean result;
        boolean bl = result = this.getChange() != null;
        if (result && this.isTransactionNestingEnabled()) {
            Iterator<IUndoableOperation> iter = this.iterator();
            while (result && iter.hasNext()) {
                result = iter.next().canUndo();
            }
        }
        return result;
    }

    @Override
    protected final IStatus doUndo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (!this.isTransactionNestingEnabled()) {
            return super.doUndo(monitor, info);
        }
        ArrayList<Object> result = new ArrayList<Object>(this.size());
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        ExecutionException caughtException = null;
        monitor.beginTask(this.getLabel(), this.size());
        ListIterator<IUndoableOperation> iter = this.listIterator(this.size());
        while (iter.hasPrevious()) {
            boolean childFailed;
            IUndoableOperation prev = iter.previous();
            IStatus status = null;
            try {
                status = prev.undo((IProgressMonitor)new SubProgressMonitor(monitor, 1), info);
            }
            catch (ExecutionException e) {
                Tracing.catching(CompositeEMFOperation.class, "doUndo", e);
                caughtException = e;
            }
            if (status != null) {
                result.add(status);
            }
            boolean bl = childFailed = caughtException != null || status.matches(12);
            if (!childFailed && (!monitor.isCanceled() || !iter.hasPrevious())) continue;
            if (childFailed) {
                iter.next();
            } else {
                result.add(new Status(8, EMFWorkspacePlugin.getPluginId(), 1, Messages.undoInterrupted, null));
            }
            while (iter.hasNext()) {
                IUndoableOperation next = iter.next();
                if (!next.canRedo()) {
                    EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 30, NLS.bind((String)Messages.undoRecoveryFailed, (Object)Messages.cannotRedo), null));
                    break;
                }
                try {
                    next.redo((IProgressMonitor)new NullProgressMonitor(), info);
                }
                catch (ExecutionException inner) {
                    Tracing.catching(CompositeEMFOperation.class, "doUndo", inner);
                    EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 30, NLS.bind((String)Messages.undoRecoveryFailed, (Object)inner.getLocalizedMessage()), (Throwable)inner));
                    break;
                }
            }
            if (caughtException == null) break;
            Tracing.throwing(CompositeEMFOperation.class, "doUndo", caughtException);
            throw caughtException;
        }
        return this.aggregateStatuses(result);
    }

    @Override
    public boolean canRedo() {
        boolean result;
        boolean bl = result = this.getChange() != null;
        if (result && this.isTransactionNestingEnabled()) {
            Iterator<IUndoableOperation> iter = this.iterator();
            while (result && iter.hasNext()) {
                result = iter.next().canRedo();
            }
        }
        return result;
    }

    @Override
    protected final IStatus doRedo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (!this.isTransactionNestingEnabled()) {
            return super.doRedo(monitor, info);
        }
        ArrayList<Object> result = new ArrayList<Object>(this.size());
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        ExecutionException caughtException = null;
        monitor.beginTask(this.getLabel(), this.size());
        ListIterator<IUndoableOperation> iter = this.listIterator();
        while (iter.hasNext()) {
            boolean childFailed;
            IUndoableOperation next = iter.next();
            IStatus status = null;
            try {
                status = next.redo((IProgressMonitor)new SubProgressMonitor(monitor, 1), info);
            }
            catch (ExecutionException e) {
                Tracing.catching(CompositeEMFOperation.class, "doUndo", e);
                caughtException = e;
            }
            if (status != null) {
                result.add(status);
            }
            boolean bl = childFailed = caughtException != null || status.matches(12);
            if (!childFailed && (!monitor.isCanceled() || !iter.hasNext())) continue;
            if (childFailed) {
                iter.previous();
            } else {
                result.add(new Status(8, EMFWorkspacePlugin.getPluginId(), 1, Messages.redoInterrupted, null));
            }
            while (iter.hasPrevious()) {
                IUndoableOperation prev = iter.previous();
                if (!prev.canUndo()) {
                    EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 31, NLS.bind((String)Messages.redoRecoveryFailed, (Object)Messages.cannotUndo), null));
                    break;
                }
                try {
                    prev.undo((IProgressMonitor)new NullProgressMonitor(), info);
                }
                catch (ExecutionException inner) {
                    EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 31, NLS.bind((String)Messages.redoRecoveryFailed, (Object)inner.getLocalizedMessage()), (Throwable)inner));
                    break;
                }
            }
            if (caughtException == null) break;
            Tracing.throwing(CompositeEMFOperation.class, "doRedo", caughtException);
            throw caughtException;
        }
        return this.aggregateStatuses(result);
    }

    @Override
    public void dispose() {
        super.dispose();
        ListIterator<IUndoableOperation> iter = this.listIterator(this.size());
        while (iter.hasPrevious()) {
            iter.previous().dispose();
            iter.remove();
        }
    }

    protected List<IUndoableOperation> getChildren() {
        return this.children;
    }

    public void add(IUndoableOperation operation) {
        this.assertNotExecuted();
        if (!this.getChildren().contains(operation)) {
            this.getChildren().add(operation);
            this.didAdd(operation);
        }
    }

    protected final void assertNotExecuted() {
        if (this.getChange() != null) {
            IllegalStateException exc = new IllegalStateException("Operation already executed");
            Tracing.throwing(CompositeEMFOperation.class, "assertNotExecuted", exc);
            throw exc;
        }
    }

    private void didAdd(IUndoableOperation operation) {
        IUndoContext[] childContexts = operation.getContexts();
        int i = 0;
        while (i < childContexts.length) {
            if (!this.hasContext(childContexts[i])) {
                this.addContext(childContexts[i]);
            }
            ++i;
        }
    }

    public void remove(IUndoableOperation operation) {
        this.assertNotExecuted();
        if (this.getChildren().remove(operation)) {
            this.didRemove(operation);
        }
    }

    private void didRemove(IUndoableOperation operation) {
        IUndoContext[] childContexts = operation.getContexts();
        int i = 0;
        while (i < childContexts.length) {
            if (!this.anyChildHasContext(childContexts[i])) {
                this.removeContext(childContexts[i]);
            }
            ++i;
        }
    }

    private boolean anyChildHasContext(IUndoContext ctx) {
        boolean result = false;
        Iterator<IUndoableOperation> iter = this.iterator();
        while (!result && iter.hasNext()) {
            result = iter.next().hasContext(ctx);
        }
        return result;
    }

    @Override
    public void setReuseParentTransaction(boolean reuseParentTransaction) {
        super.setReuseParentTransaction(reuseParentTransaction);
        this.setTransactionNestingEnabled(!reuseParentTransaction);
    }

    public boolean isTransactionNestingEnabled() {
        return this.transactionNestingEnabled;
    }

    public void setTransactionNestingEnabled(boolean enable) {
        this.assertNotExecuted();
        this.transactionNestingEnabled = enable;
    }

    public int size() {
        return this.getChildren().size();
    }

    public Iterator<IUndoableOperation> iterator() {
        return new ChildIterator();
    }

    public ListIterator<IUndoableOperation> listIterator() {
        return new ChildListIterator(0);
    }

    public ListIterator<IUndoableOperation> listIterator(int index) {
        return new ChildListIterator(index);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ChildIterator
    implements Iterator<IUndoableOperation> {
        protected IUndoableOperation last;
        protected final ListIterator<IUndoableOperation> iter;

        ChildIterator() {
            this(0);
        }

        ChildIterator(int index) {
            this.iter = CompositeEMFOperation.this.getChildren().listIterator(index);
        }

        @Override
        public void remove() {
            CompositeEMFOperation.this.assertNotExecuted();
            this.iter.remove();
            CompositeEMFOperation.this.didRemove(this.last);
            this.last = null;
        }

        @Override
        public IUndoableOperation next() {
            this.last = this.iter.next();
            return this.last;
        }

        @Override
        public boolean hasNext() {
            return this.iter.hasNext();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ChildListIterator
    extends ChildIterator
    implements ListIterator<IUndoableOperation> {
        ChildListIterator(int index) {
            super(index);
        }

        @Override
        public void add(IUndoableOperation o) {
            CompositeEMFOperation.this.assertNotExecuted();
            if (!CompositeEMFOperation.this.getChildren().contains(o)) {
                this.iter.add(o);
                CompositeEMFOperation.this.didAdd(o);
            }
        }

        @Override
        public void set(IUndoableOperation o) {
            CompositeEMFOperation.this.assertNotExecuted();
            if (!CompositeEMFOperation.this.getChildren().contains(o)) {
                CompositeEMFOperation.this.didRemove(this.last);
                this.iter.set(o);
                this.last = o;
                CompositeEMFOperation.this.didAdd(o);
            }
        }

        @Override
        public int previousIndex() {
            return this.iter.previousIndex();
        }

        @Override
        public int nextIndex() {
            return this.iter.nextIndex();
        }

        @Override
        public IUndoableOperation previous() {
            this.last = (IUndoableOperation)this.iter.previous();
            return this.last;
        }

        @Override
        public boolean hasPrevious() {
            return this.iter.hasPrevious();
        }
    }
}

