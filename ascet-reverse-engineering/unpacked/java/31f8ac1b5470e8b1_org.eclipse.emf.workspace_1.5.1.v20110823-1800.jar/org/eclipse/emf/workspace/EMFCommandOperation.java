/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.edit.command.AddCommand
 *  org.eclipse.emf.edit.command.MoveCommand
 *  org.eclipse.emf.edit.command.RemoveCommand
 *  org.eclipse.emf.edit.command.ReplaceCommand
 *  org.eclipse.emf.edit.command.SetCommand
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.provider.IItemPropertyDescriptor
 *  org.eclipse.emf.edit.provider.IItemPropertySource
 *  org.eclipse.emf.transaction.RecordingCommand
 *  org.eclipse.emf.transaction.Transaction
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.InternalTransaction
 *  org.eclipse.emf.transaction.impl.InternalTransactionalCommandStack
 *  org.eclipse.emf.transaction.util.ConditionalRedoCommand
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.workspace;

import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.MoveCommand;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.ReplaceCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.transaction.RecordingCommand;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalCommandStack;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;
import org.eclipse.emf.workspace.AbstractEMFOperation;
import org.eclipse.emf.workspace.impl.EMFOperationTransaction;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMFCommandOperation
extends AbstractEMFOperation {
    private final Command command;
    private Command triggerCommand;

    public EMFCommandOperation(TransactionalEditingDomain domain, Command command) {
        this(domain, command, null);
    }

    public EMFCommandOperation(TransactionalEditingDomain domain, Command command, Map<?, ?> options) {
        super(domain, command.getLabel(), options);
        this.command = command;
        this.improveLabel(command);
    }

    public final Command getCommand() {
        return this.command;
    }

    public boolean canExecute() {
        return super.canExecute() && this.command.canExecute();
    }

    @Override
    protected IStatus doExecute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        this.command.execute();
        return Status.OK_STATUS;
    }

    @Override
    protected void didCommit(Transaction transaction) {
        super.didCommit(transaction);
        if (!(this.command instanceof RecordingCommand)) {
            this.triggerCommand = ((InternalTransaction)transaction).getTriggers();
        }
    }

    @Override
    public boolean canUndo() {
        return super.canUndo() && this.command.canUndo() && (this.triggerCommand == null || this.triggerCommand.canUndo());
    }

    @Override
    protected IStatus doUndo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        if (this.triggerCommand != null) {
            this.triggerCommand.undo();
        }
        this.command.undo();
        return Status.OK_STATUS;
    }

    @Override
    public boolean canRedo() {
        return super.canRedo() && this.canRedo(this.command) && (this.triggerCommand == null || this.canRedo(this.triggerCommand));
    }

    private boolean canRedo(Command cmd) {
        return !(cmd instanceof ConditionalRedoCommand) || ((ConditionalRedoCommand)cmd).canRedo();
    }

    @Override
    protected IStatus doRedo(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
        this.command.redo();
        if (this.triggerCommand != null) {
            this.triggerCommand.redo();
        }
        return Status.OK_STATUS;
    }

    @Override
    public void dispose() {
        super.dispose();
        if (this.command != null) {
            this.command.dispose();
        }
        if (this.triggerCommand != null) {
            this.triggerCommand.dispose();
        }
    }

    @Override
    Transaction createTransaction(Map<?, ?> options) throws InterruptedException {
        InternalTransactionalCommandStack stack = (InternalTransactionalCommandStack)this.getEditingDomain().getCommandStack();
        EMFOperationTransaction result = (EMFOperationTransaction)stack.createTransaction(this.command, options);
        result.setOperation(this);
        return result;
    }

    protected void improveLabel(Command cmd) {
        IItemPropertySource source;
        EStructuralFeature feature = null;
        EObject owner = null;
        String pattern = null;
        while (cmd instanceof CommandWrapper) {
            cmd = ((CommandWrapper)cmd).getCommand();
        }
        if (cmd instanceof CompoundCommand) {
            CompoundCommand compound = (CompoundCommand)cmd;
            List nested = compound.getCommandList();
            if (!nested.isEmpty()) {
                this.improveLabel((Command)nested.get(0));
                return;
            }
        } else if (cmd instanceof SetCommand) {
            feature = ((SetCommand)cmd).getFeature();
            owner = ((SetCommand)cmd).getOwner();
            pattern = Messages.setLabel;
        } else if (cmd instanceof AddCommand) {
            feature = ((AddCommand)cmd).getFeature();
            owner = ((AddCommand)cmd).getOwner();
            pattern = Messages.addLabel;
        } else if (cmd instanceof RemoveCommand) {
            feature = ((RemoveCommand)cmd).getFeature();
            owner = ((RemoveCommand)cmd).getOwner();
            pattern = Messages.removeLabel;
        } else if (cmd instanceof MoveCommand) {
            feature = ((MoveCommand)cmd).getFeature();
            owner = ((MoveCommand)cmd).getOwner();
            pattern = Messages.moveLabel;
        } else if (cmd instanceof ReplaceCommand) {
            feature = ((ReplaceCommand)cmd).getFeature();
            owner = ((ReplaceCommand)cmd).getOwner();
            pattern = Messages.replaceLabel;
        }
        if (feature != null && (source = (IItemPropertySource)((AdapterFactoryEditingDomain)this.getEditingDomain()).getAdapterFactory().adapt((Notifier)owner, IItemPropertySource.class)) != null) {
            List descriptors = source.getPropertyDescriptors((Object)owner);
            for (IItemPropertyDescriptor next : descriptors) {
                if (next.getFeature((Object)owner) != feature) continue;
                this.setLabel(NLS.bind((String)pattern, (Object)next.getDisplayName((Object)owner)));
                break;
            }
        }
    }
}

