/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction.impl;

import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.RecordingCommand;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.impl.AbstractTransactionalCommandStack;
import org.eclipse.emf.transaction.impl.EMFCommandTransaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.TriggerCommandTransaction;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;
import org.eclipse.emf.transaction.util.TriggerCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransactionalCommandStackImpl
extends AbstractTransactionalCommandStack {
    @Override
    protected void doExecute(Command command, Map<?, ?> options) throws InterruptedException, RollbackException {
        EMFCommandTransaction tx = this.createTransaction(command, options);
        boolean completed = false;
        try {
            try {
                this.basicExecute(command);
                completed = this.mostRecentCommand == command;
                tx.commit();
            }
            catch (OperationCanceledException operationCanceledException) {
                Command triggerCommand;
                if (tx != null && tx.isActive()) {
                    this.rollback(tx);
                    this.handleRollback(command, null);
                } else if (!(command instanceof RecordingCommand) && completed && (triggerCommand = tx.getTriggers()) != null) {
                    ConditionalRedoCommand.Compound compound = new ConditionalRedoCommand.Compound();
                    compound.append(this.mostRecentCommand);
                    compound.append(triggerCommand);
                    this.mostRecentCommand = compound;
                    this.commandList.set(this.top, this.mostRecentCommand);
                }
            }
        }
        finally {
            Command triggerCommand;
            if (tx != null && tx.isActive()) {
                this.rollback(tx);
                this.handleRollback(command, null);
            } else if (!(command instanceof RecordingCommand) && completed && (triggerCommand = tx.getTriggers()) != null) {
                ConditionalRedoCommand.Compound compound = new ConditionalRedoCommand.Compound();
                compound.append(this.mostRecentCommand);
                compound.append(triggerCommand);
                this.mostRecentCommand = compound;
                this.commandList.set(this.top, this.mostRecentCommand);
            }
        }
    }

    @Override
    protected void handleRollback(Command command, RollbackException rbe) {
        if (command != null && this.top >= 0 && this.commandList.get(this.top) == command) {
            this.commandList.remove(this.top--);
            this.mostRecentCommand = this.top >= 0 ? (Command)this.commandList.get(this.top) : null;
        }
        super.handleRollback(command, rbe);
    }

    public void undo() {
        if (this.canUndo()) {
            try {
                EMFCommandTransaction tx = this.createTransaction(this.getUndoCommand(), this.getUndoRedoOptions());
                super.undo();
                tx.commit();
            }
            catch (Exception e) {
                Tracing.catching(TransactionalCommandStackImpl.class, "undo", e);
                this.handleError(e);
            }
        }
    }

    public boolean canRedo() {
        Object nextRedo;
        boolean result = super.canRedo();
        if (result && (nextRedo = this.commandList.get(this.top + 1)) instanceof ConditionalRedoCommand) {
            result = ((ConditionalRedoCommand)nextRedo).canRedo();
        }
        return result;
    }

    public void redo() {
        if (this.canRedo()) {
            try {
                EMFCommandTransaction tx = this.createTransaction(this.getRedoCommand(), this.getUndoRedoOptions());
                super.redo();
                tx.commit();
            }
            catch (Exception e) {
                Tracing.catching(TransactionalCommandStackImpl.class, "redo", e);
                this.handleError(e);
            }
        }
    }

    @Override
    public EMFCommandTransaction createTransaction(Command command, Map<?, ?> options) throws InterruptedException {
        EMFCommandTransaction result = command instanceof TriggerCommand ? new TriggerCommandTransaction((TriggerCommand)command, this.getDomain(), options) : new EMFCommandTransaction(command, this.getDomain(), options);
        result.start();
        return result;
    }

    @Override
    public void executeTriggers(Command command, List<Command> triggers, Map<?, ?> options) throws InterruptedException, RollbackException {
        if (!triggers.isEmpty()) {
            TriggerCommand trigger = command == null ? new TriggerCommand((List<? extends Command>)triggers) : new TriggerCommand(command, triggers);
            EMFCommandTransaction tx = this.createTransaction(trigger, TransactionalCommandStackImpl.makeTriggerTransactionOptions(options));
            try {
                try {
                    trigger.execute();
                    InternalTransaction parent = (InternalTransaction)tx.getParent();
                    if (parent != null) {
                        parent.addTriggers(trigger);
                    }
                    tx.commit();
                }
                catch (RuntimeException e) {
                    Tracing.catching(TransactionalCommandStackImpl.class, "executeTriggers", e);
                    Object status = e instanceof OperationCanceledException ? Status.CANCEL_STATUS : new Status(4, EMFTransactionPlugin.getPluginId(), 43, Messages.precommitFailed, (Throwable)e);
                    RollbackException rbe = new RollbackException((IStatus)status);
                    Tracing.throwing(TransactionalCommandStackImpl.class, "executeTriggers", rbe);
                    throw rbe;
                }
            }
            finally {
                if (tx != null && tx.isActive()) {
                    this.rollback(tx);
                }
            }
        }
    }

    @Override
    public void dispose() {
        this.flush();
        this.setEditingDomain(null);
        this.exceptionHandler = null;
    }
}

