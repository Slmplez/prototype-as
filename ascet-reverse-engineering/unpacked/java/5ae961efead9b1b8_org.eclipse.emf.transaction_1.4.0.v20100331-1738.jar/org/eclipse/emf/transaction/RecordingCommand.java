/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.AbstractCommand
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;
import org.eclipse.emf.transaction.util.TransactionUtil;

public abstract class RecordingCommand
extends AbstractCommand
implements ConditionalRedoCommand {
    private final TransactionalEditingDomain domain;
    private Transaction transaction;
    private TransactionChangeDescription change;

    public RecordingCommand(TransactionalEditingDomain domain) {
        this.domain = domain;
    }

    public RecordingCommand(TransactionalEditingDomain domain, String label) {
        super(label);
        this.domain = domain;
    }

    public RecordingCommand(TransactionalEditingDomain domain, String label, String description) {
        super(label, description);
        this.domain = domain;
    }

    protected boolean prepare() {
        return true;
    }

    public final void execute() {
        InternalTransactionalEditingDomain internalDomain = (InternalTransactionalEditingDomain)this.domain;
        InternalTransaction nested = null;
        if ((this.isNestedCommand() || this.isTriggerCommand()) && this.isUndoable()) {
            try {
                nested = internalDomain.startTransaction(false, null);
            }
            catch (InterruptedException e) {
                internalDomain.getActiveTransaction().abort((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), 42, Messages.precommitInterrupted, (Throwable)e));
            }
        }
        try {
            this.preExecute();
            this.doExecute();
            this.postExecute();
            this.transaction = internalDomain.getActiveTransaction();
        }
        finally {
            if (nested != null) {
                if (this.transaction == null) {
                    nested.rollback();
                } else {
                    try {
                        nested.commit();
                    }
                    catch (RollbackException e) {
                        ((InternalTransaction)this.transaction).abort(e.getStatus());
                    }
                }
            }
        }
    }

    protected void preExecute() {
    }

    protected void postExecute() {
    }

    public boolean canUndo() {
        return this.canApplyChange();
    }

    public boolean canRedo() {
        return this.canApplyChange();
    }

    private boolean canApplyChange() {
        if (this.change == null && this.transaction != null) {
            this.change = this.transaction.getChangeDescription();
        }
        return this.change == null || this.change.canApply();
    }

    public final void undo() {
        if (!this.canUndo()) {
            throw new IllegalStateException("command is not undoable");
        }
        if (this.change != null) {
            this.change.applyAndReverse();
        }
    }

    public final void redo() {
        if (!this.canRedo()) {
            throw new IllegalStateException("command is not redoable");
        }
        if (this.change != null) {
            this.change.applyAndReverse();
        }
    }

    protected abstract void doExecute();

    public Command chain(Command command) {
        return new ConditionalRedoCommand.Compound().chain(this).chain(command);
    }

    private Transaction getActiveTransaction() {
        return ((InternalTransactionalEditingDomain)this.domain).getActiveTransaction();
    }

    private boolean isNestedCommand() {
        boolean result = false;
        Transaction tx = this.getActiveTransaction();
        if (tx != null) {
            Object rootCommand = tx.getOptions().get("executing_command");
            result = rootCommand != null && !rootCommand.equals(this);
        }
        return result;
    }

    private boolean isTriggerCommand() {
        boolean result = false;
        Transaction tx = this.getActiveTransaction();
        while (!result && tx != null) {
            result = Boolean.TRUE.equals(tx.getOptions().get("is_trigger_transaction"));
            tx = tx.getParent();
        }
        return result;
    }

    private boolean isUndoable() {
        boolean result = true;
        Transaction tx = this.getActiveTransaction();
        while (result && tx != null) {
            result = !Boolean.TRUE.equals(tx.getOptions().get("no_undo")) && !Boolean.TRUE.equals(tx.getOptions().get("unprotected"));
            tx = tx.getParent();
        }
        return result;
    }

    public void dispose() {
        super.dispose();
        if (this.change != null) {
            TransactionUtil.dispose(this.change);
        }
    }
}

