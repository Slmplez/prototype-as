/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IAdvancedUndoableOperation
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.emf.transaction.RollbackException
 *  org.eclipse.emf.transaction.Transaction
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.InternalTransaction
 *  org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.ConditionalRedoCommand
 *  org.eclipse.emf.transaction.util.ConditionalRedoCommand$Compound
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.workspace;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;
import org.eclipse.emf.workspace.AbstractEMFOperation;
import org.eclipse.emf.workspace.impl.NonEMFTransaction;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;
import org.eclipse.emf.workspace.internal.Tracing;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMFOperationCommand
implements ConditionalRedoCommand {
    private final TransactionalEditingDomain domain;
    private IUndoableOperation operation;
    private Reference<IAdaptable> adaptable;

    public EMFOperationCommand(TransactionalEditingDomain domain, IUndoableOperation operation) {
        this(domain, operation, null);
    }

    public EMFOperationCommand(TransactionalEditingDomain domain, IUndoableOperation operation, IAdaptable adaptable) {
        if (domain == null) {
            throw new IllegalArgumentException("null domain");
        }
        if (operation == null) {
            throw new IllegalArgumentException("null operation");
        }
        this.domain = domain;
        this.operation = operation;
        if (adaptable != null) {
            this.adaptable = new WeakReference<IAdaptable>(adaptable);
        }
    }

    public boolean canExecute() {
        return this.operation.canExecute();
    }

    public void execute() {
        InternalTransaction tx = this.getTransaction();
        if (tx == null) {
            throw new IllegalStateException("attempt to execute without write transaction");
        }
        Transaction childTransaction = null;
        try {
            try {
                IStatus status;
                if (!(this.operation instanceof AbstractEMFOperation)) {
                    try {
                        childTransaction = this.createNonEMFTransaction(this.operation, this.getAdaptable(), tx.getOptions());
                    }
                    catch (InterruptedException e) {
                        Tracing.catching(EMFOperationCommand.class, "execute", e);
                        ExecutionException exc = new ExecutionException(Messages.executeInterrupted, (Throwable)e);
                        Tracing.throwing(EMFOperationCommand.class, "execute", exc);
                        throw exc;
                    }
                }
                if ((status = this.operation.execute((IProgressMonitor)new NullProgressMonitor(), this.getAdaptable())) != null && status.getSeverity() >= 4) {
                    ExecutionException exc = new ExecutionException(status.getMessage());
                    Tracing.throwing(EMFOperationCommand.class, "execute", exc);
                    throw exc;
                }
            }
            catch (ExecutionException e) {
                EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 32, NLS.bind((String)Messages.rollbackFailed, (Object)this.operation.getLabel()), (Throwable)e));
                if (childTransaction != null && childTransaction.isActive()) {
                    childTransaction.rollback();
                }
                throw new WrappedException((Exception)((Object)e));
            }
        }
        finally {
            if (childTransaction != null && childTransaction.isActive()) {
                try {
                    childTransaction.commit();
                }
                catch (RollbackException e) {
                    Tracing.catching(EMFOperationCommand.class, "execute", e);
                    EMFWorkspacePlugin.INSTANCE.log(e.getStatus());
                    throw new WrappedException((Exception)((Object)e));
                }
            }
        }
    }

    private Transaction createNonEMFTransaction(IUndoableOperation operation, IAdaptable info, Map<?, ?> options) throws InterruptedException {
        NonEMFTransaction result = new NonEMFTransaction(this.domain, operation, info, options);
        result.start();
        return result;
    }

    public boolean canUndo() {
        return this.operation.canUndo();
    }

    public void undo() {
        InternalTransaction tx = this.getTransaction();
        if (tx == null) {
            throw new IllegalStateException("attempt to undo without write transaction");
        }
        try {
            IStatus status = this.operation.undo((IProgressMonitor)new NullProgressMonitor(), this.getAdaptable());
            if (status != null && status.getSeverity() >= 4) {
                ExecutionException exc = new ExecutionException(status.getMessage());
                Tracing.throwing(EMFOperationCommand.class, "undo", exc);
                throw exc;
            }
        }
        catch (ExecutionException e) {
            EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 32, NLS.bind((String)Messages.rollbackFailed, (Object)this.operation.getLabel()), (Throwable)e));
            throw new WrappedException((Exception)((Object)e));
        }
    }

    public boolean canRedo() {
        return this.operation.canRedo();
    }

    public void redo() {
        InternalTransaction tx = this.getTransaction();
        if (tx == null) {
            throw new IllegalStateException("attempt to redo without write transaction");
        }
        try {
            IStatus status = this.operation.redo((IProgressMonitor)new NullProgressMonitor(), this.getAdaptable());
            if (status != null && status.getSeverity() >= 4) {
                ExecutionException exc = new ExecutionException(status.getMessage());
                Tracing.throwing(EMFOperationCommand.class, "redo", exc);
                throw exc;
            }
        }
        catch (ExecutionException e) {
            EMFWorkspacePlugin.INSTANCE.log(new Status(4, EMFWorkspacePlugin.getPluginId(), 32, NLS.bind((String)Messages.rollbackFailed, (Object)this.operation.getLabel()), (Throwable)e));
            throw new WrappedException((Exception)((Object)e));
        }
    }

    public Collection<?> getResult() {
        return Collections.EMPTY_LIST;
    }

    public Collection<?> getAffectedObjects() {
        Object[] affected;
        List<Object> result = null;
        if (this.operation instanceof IAdvancedUndoableOperation && (affected = ((IAdvancedUndoableOperation)this.operation).getAffectedObjects()) != null) {
            result = Arrays.asList(affected);
        }
        return result;
    }

    public String getLabel() {
        return this.operation.getLabel();
    }

    public String getDescription() {
        return this.operation.getLabel();
    }

    public void dispose() {
        if (this.operation != null) {
            if (this.operation instanceof AbstractEMFOperation) {
                ((AbstractEMFOperation)this.operation).disposeChange(true);
            }
            this.operation.dispose();
            this.operation = null;
        }
        if (this.adaptable != null) {
            this.adaptable.clear();
            this.adaptable = null;
        }
    }

    public Command chain(Command command) {
        return new ConditionalRedoCommand.Compound().chain((Command)this).chain(command);
    }

    private IAdaptable getAdaptable() {
        IAdaptable result = null;
        if (this.adaptable != null) {
            result = this.adaptable.get();
        }
        return result;
    }

    private InternalTransaction getTransaction() {
        InternalTransaction result = ((InternalTransactionalEditingDomain)this.domain).getActiveTransaction();
        if (result != null && (result.isReadOnly() || result.getOwner() != Thread.currentThread())) {
            result = null;
        }
        return result;
    }

    IUndoableOperation getOperation() {
        return this.operation;
    }
}

