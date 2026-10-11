/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.AbstractOperation
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.emf.ecore.change.ChangeDescription
 *  org.eclipse.emf.transaction.RollbackException
 *  org.eclipse.emf.transaction.Transaction
 *  org.eclipse.emf.transaction.Transaction$OptionMetadata
 *  org.eclipse.emf.transaction.Transaction$OptionMetadata$Registry
 *  org.eclipse.emf.transaction.TransactionChangeDescription
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.InternalTransaction
 *  org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 */
package org.eclipse.emf.workspace;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.AbstractOperation;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.emf.workspace.EMFOperationCommand;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;
import org.eclipse.emf.workspace.internal.Tracing;
import org.eclipse.emf.workspace.internal.l10n.Messages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractEMFOperation
extends AbstractOperation {
    private final InternalTransactionalEditingDomain domain;
    private Map<Object, Object> txOptions;
    private boolean canSetOptions = true;
    private Transaction transaction;
    private TransactionChangeDescription change;
    private boolean reuseParentTransaction;
    boolean shouldDisposeChange;

    public AbstractEMFOperation(TransactionalEditingDomain domain, String label) {
        this(domain, label, null);
    }

    public AbstractEMFOperation(TransactionalEditingDomain domain, String label, Map<?, ?> options) {
        super(label);
        this.domain = (InternalTransactionalEditingDomain)domain;
        this.internalSetOptions(options);
    }

    public final IStatus execute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        ArrayList<IStatus> result;
        block18: {
            this.canSetOptions = false;
            if (monitor == null) {
                monitor = new NullProgressMonitor();
            }
            this.transaction = null;
            result = new ArrayList<IStatus>(2);
            try {
                HashMap options = new HashMap(this.getOptions());
                Map<?, ?> inherited = this.inheritedOptions();
                if (inherited.containsKey("_owning_operation")) {
                    options.put("_owning_operation", inherited.get("_owning_operation"));
                } else {
                    options.put("_owning_operation", this);
                }
                if (!this.isReuseParentTransaction() || this.optionsDiffer(options)) {
                    this.transaction = this.createTransaction(options);
                }
                IStatus status = this.doExecute(monitor, info);
                result.add(status);
                if (this.transaction != null) {
                    if (status == null || status.getSeverity() < 4) {
                        this.transaction.commit();
                        this.change = this.transaction.getChangeDescription();
                        this.shouldDisposeChange = this.transaction.getParent() == null;
                        this.didCommit(this.transaction);
                    } else {
                        ((InternalTransaction)this.transaction).setStatus(status);
                        this.transaction.rollback();
                    }
                }
            }
            catch (InterruptedException e) {
                Tracing.catching(AbstractEMFOperation.class, "execute", e);
                ExecutionException exc = new ExecutionException(Messages.executeInterrupted, (Throwable)e);
                Tracing.throwing(AbstractEMFOperation.class, "execute", (Throwable)exc);
                throw exc;
            }
            catch (RollbackException e) {
                Tracing.catching(AbstractEMFOperation.class, "execute", e);
                result.add(e.getStatus());
                if (this.transaction != null && this.transaction.isActive()) {
                    this.rollback(this.transaction);
                }
                this.transaction = null;
                break block18;
            }
            catch (OperationCanceledException operationCanceledException) {
                try {
                    result.add(Status.CANCEL_STATUS);
                    break block18;
                }
                catch (Throwable throwable) {
                    throw throwable;
                }
                finally {
                    if (this.transaction != null && this.transaction.isActive()) {
                        this.rollback(this.transaction);
                    }
                    this.transaction = null;
                }
            }
            if (this.transaction != null && this.transaction.isActive()) {
                this.rollback(this.transaction);
            }
            this.transaction = null;
        }
        return this.aggregateStatuses(result);
    }

    private boolean optionsDiffer(Map<?, ?> options) {
        boolean result = true;
        InternalTransaction active = ((InternalTransactionalEditingDomain)this.getEditingDomain()).getActiveTransaction();
        if (active != null && !active.isReadOnly()) {
            Transaction.OptionMetadata.Registry reg = TransactionUtil.getTransactionOptionRegistry((TransactionalEditingDomain)this.getEditingDomain());
            result = false;
            Map activeOptions = active.getOptions();
            for (Map.Entry<?, ?> next : options.entrySet()) {
                Object option = next.getKey();
                Transaction.OptionMetadata metadata = reg.getOptionMetadata(option);
                if (metadata.isTag() || metadata.sameSetting(options, activeOptions)) continue;
                result = true;
                break;
            }
        }
        return result;
    }

    private Map<?, ?> inheritedOptions() {
        Map result = Collections.EMPTY_MAP;
        InternalTransaction active = ((InternalTransactionalEditingDomain)this.getEditingDomain()).getActiveTransaction();
        if (active != null && !active.isReadOnly()) {
            result = active.getOptions();
        }
        return result;
    }

    protected IStatus aggregateStatuses(List<? extends IStatus> statuses) {
        IStatus result;
        if (statuses.isEmpty()) {
            result = Status.OK_STATUS;
        } else if (statuses.size() == 1) {
            result = statuses.get(0);
        } else {
            IStatus[] children = statuses.toArray(new IStatus[statuses.size()]);
            IStatus worst = children[0];
            int i = 1;
            while (i < children.length) {
                if (children[i].getSeverity() > worst.getSeverity()) {
                    worst = children[i];
                }
                ++i;
            }
            result = new MultiStatus(worst.getPlugin(), worst.getCode(), children, worst.getMessage(), null);
        }
        return result;
    }

    protected final TransactionChangeDescription getChange() {
        return this.change;
    }

    protected void didCommit(Transaction transaction) {
        this.gatherUndoContextsFromTrigger(((InternalTransaction)transaction).getTriggers());
    }

    private void gatherUndoContextsFromTrigger(Command trigger) {
        block4: {
            block3: {
                if (!(trigger instanceof CompoundCommand)) break block3;
                for (Command next : ((CompoundCommand)trigger).getCommandList()) {
                    this.gatherUndoContextsFromTrigger(next);
                }
                break block4;
            }
            if (!(trigger instanceof EMFOperationCommand)) break block4;
            IUndoContext[] undoContextsToAdd = ((EMFOperationCommand)trigger).getOperation().getContexts();
            int j = 0;
            while (j < undoContextsToAdd.length) {
                if (undoContextsToAdd[j] != null) {
                    this.addContext(undoContextsToAdd[j]);
                }
                ++j;
            }
        }
    }

    public boolean canUndo() {
        return this.getChange() == null || this.getChange().canApply();
    }

    /*
     * Loose catch block
     */
    public final IStatus undo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        Transaction tx = null;
        IStatus result = null;
        try {
            try {
                tx = this.createTransaction(this.domain.getUndoRedoOptions());
                result = this.doUndo(monitor, info);
                tx.commit();
                this.didUndo(tx);
            }
            catch (InterruptedException e) {
                Tracing.catching(AbstractEMFOperation.class, "undo", e);
                ExecutionException exc = new ExecutionException(Messages.undoInterrupted, (Throwable)e);
                Tracing.throwing(AbstractEMFOperation.class, "undo", (Throwable)exc);
                throw exc;
            }
            catch (RollbackException e) {
                Tracing.catching(AbstractEMFOperation.class, "undo", e);
                result = e.getStatus();
                if (tx != null && tx.isActive()) {
                    this.rollback(tx);
                }
            }
            catch (OperationCanceledException operationCanceledException) {
                result = Status.CANCEL_STATUS;
                if (tx != null && tx.isActive()) {
                    this.rollback(tx);
                }
            }
            catch (Exception e) {
                Tracing.catching(AbstractEMFOperation.class, "undo", e);
                Throwable t = e;
                if (t instanceof WrappedException) {
                    t = ((WrappedException)e).getCause();
                }
                Status status = new Status(4, EMFWorkspacePlugin.getPluginId(), 23, Messages.undoRolledBack, t);
                EMFWorkspacePlugin.INSTANCE.log(status);
                throw new ExecutionException(status.getMessage(), t);
                {
                    catch (Throwable throwable) {
                        throw throwable;
                    }
                }
            }
        }
        finally {
            if (tx != null && tx.isActive()) {
                this.rollback(tx);
            }
        }
        return result;
    }

    protected void didUndo(Transaction tx) {
    }

    public boolean canRedo() {
        return this.getChange() == null || this.getChange().canApply();
    }

    /*
     * Loose catch block
     */
    public final IStatus redo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        Transaction tx = null;
        IStatus result = null;
        try {
            try {
                tx = this.createTransaction(this.domain.getUndoRedoOptions());
                result = this.doRedo(monitor, info);
                tx.commit();
                this.didRedo(tx);
            }
            catch (InterruptedException e) {
                Tracing.catching(AbstractEMFOperation.class, "redo", e);
                ExecutionException exc = new ExecutionException(Messages.redoInterrupted, (Throwable)e);
                Tracing.throwing(AbstractEMFOperation.class, "redo", (Throwable)exc);
                throw exc;
            }
            catch (RollbackException e) {
                Tracing.catching(AbstractEMFOperation.class, "redo", e);
                result = e.getStatus();
                if (tx != null && tx.isActive()) {
                    this.rollback(tx);
                }
            }
            catch (OperationCanceledException operationCanceledException) {
                result = Status.CANCEL_STATUS;
                if (tx != null && tx.isActive()) {
                    this.rollback(tx);
                }
            }
            catch (Exception e) {
                Tracing.catching(AbstractEMFOperation.class, "redo", e);
                Throwable t = e;
                if (t instanceof WrappedException) {
                    t = ((WrappedException)e).getCause();
                }
                Status status = new Status(4, EMFWorkspacePlugin.getPluginId(), 25, Messages.redoRolledBack, t);
                EMFWorkspacePlugin.INSTANCE.log(status);
                throw new ExecutionException(status.getMessage(), t);
                {
                    catch (Throwable throwable) {
                        throw throwable;
                    }
                }
            }
        }
        finally {
            if (tx != null && tx.isActive()) {
                this.rollback(tx);
            }
        }
        return result;
    }

    protected void didRedo(Transaction tx) {
    }

    public final TransactionalEditingDomain getEditingDomain() {
        return this.domain;
    }

    public final Map<?, ?> getOptions() {
        return this.txOptions;
    }

    public void setOptions(Map<?, ?> options) {
        this.internalSetOptions(options);
    }

    public boolean canSetOptions() {
        return this.canSetOptions;
    }

    private void internalSetOptions(Map<?, ?> options) {
        if (!this.canSetOptions) {
            throw new IllegalStateException("operation has been executed");
        }
        if (options == null) {
            this.txOptions = Collections.singletonMap("block_cd_prop", Boolean.TRUE);
        } else {
            HashMap myOptions = new HashMap(options);
            myOptions.put("block_cd_prop", Boolean.TRUE);
            this.txOptions = Collections.unmodifiableMap(myOptions);
        }
    }

    Transaction createTransaction(Map<?, ?> options) throws InterruptedException {
        return this.domain.startTransaction(false, options);
    }

    void rollback(Transaction tx) {
        while (tx.isActive()) {
            InternalTransaction active = this.domain.getActiveTransaction();
            active.rollback();
        }
    }

    Transaction getTransaction() {
        return this.transaction;
    }

    protected abstract IStatus doExecute(IProgressMonitor var1, IAdaptable var2) throws ExecutionException;

    protected IStatus doUndo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        InternalTransaction active = this.domain.getActiveTransaction();
        if (this.change != null) {
            if (active != null && active.isRollingBack()) {
                this.getChange().apply();
            } else {
                this.getChange().applyAndReverse();
            }
        }
        return Status.OK_STATUS;
    }

    protected IStatus doRedo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (this.change != null) {
            this.getChange().applyAndReverse();
        }
        return Status.OK_STATUS;
    }

    public void dispose() {
        super.dispose();
        this.disposeChange(false);
        this.transaction = null;
    }

    void disposeChange(boolean force) {
        if (this.change != null && (this.shouldDisposeChange || force)) {
            TransactionUtil.dispose((ChangeDescription)this.change);
        }
        this.change = null;
    }

    public boolean isReuseParentTransaction() {
        return this.reuseParentTransaction;
    }

    public void setReuseParentTransaction(boolean reuseParentTransaction) {
        this.reuseParentTransaction = reuseParentTransaction;
    }
}

