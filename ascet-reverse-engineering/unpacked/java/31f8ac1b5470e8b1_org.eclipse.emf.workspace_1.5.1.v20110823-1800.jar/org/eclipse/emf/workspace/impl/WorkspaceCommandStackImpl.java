/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IOperationHistoryListener
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.OperationHistoryEvent
 *  org.eclipse.core.commands.operations.UndoContext
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListener
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 *  org.eclipse.emf.transaction.RollbackException
 *  org.eclipse.emf.transaction.Transaction
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.AbstractTransactionalCommandStack
 *  org.eclipse.emf.transaction.impl.EMFCommandTransaction
 *  org.eclipse.emf.transaction.impl.InternalTransaction
 *  org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain
 *  org.eclipse.emf.transaction.impl.TriggerCommandTransaction
 *  org.eclipse.emf.transaction.util.TriggerCommand
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.workspace.impl;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IOperationHistoryListener;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationHistoryEvent;
import org.eclipse.core.commands.operations.UndoContext;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.AbstractTransactionalCommandStack;
import org.eclipse.emf.transaction.impl.EMFCommandTransaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.impl.TriggerCommandTransaction;
import org.eclipse.emf.transaction.util.TriggerCommand;
import org.eclipse.emf.workspace.EMFCommandOperation;
import org.eclipse.emf.workspace.IResourceUndoContextPolicy;
import org.eclipse.emf.workspace.IWorkspaceCommandStack;
import org.eclipse.emf.workspace.ResourceUndoContext;
import org.eclipse.emf.workspace.impl.EMFOperationTransaction;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;
import org.eclipse.emf.workspace.internal.Tracing;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WorkspaceCommandStackImpl
extends AbstractTransactionalCommandStack
implements IWorkspaceCommandStack {
    private final IOperationHistory history;
    private DomainListener domainListener;
    private IResourceUndoContextPolicy undoContextPolicy = IResourceUndoContextPolicy.DEFAULT;
    private IUndoableOperation currentOperation;
    private Set<Resource> historyAffectedResources;
    private final IUndoContext defaultContext = new UndoContext(){

        public String getLabel() {
            return WorkspaceCommandStackImpl.this.getDefaultUndoContextLabel();
        }

        public String toString() {
            return this.getLabel();
        }
    };
    private IUndoContext savedContext = null;
    private IUndoableOperation mostRecentOperation;

    public WorkspaceCommandStackImpl(IOperationHistory history) {
        this.history = history;
        this.domainListener = new DomainListener();
    }

    public void setEditingDomain(InternalTransactionalEditingDomain domain) {
        InternalTransactionalEditingDomain oldDomain = this.getDomain();
        if (oldDomain != null) {
            oldDomain.removeResourceSetListener((ResourceSetListener)this.domainListener);
            this.history.removeOperationHistoryListener((IOperationHistoryListener)this.domainListener);
        }
        super.setEditingDomain(domain);
        if (domain != null) {
            this.history.addOperationHistoryListener((IOperationHistoryListener)this.domainListener);
            domain.addResourceSetListener((ResourceSetListener)this.domainListener);
        }
    }

    @Override
    public final IOperationHistory getOperationHistory() {
        return this.history;
    }

    @Override
    public final IUndoContext getDefaultUndoContext() {
        return this.defaultContext;
    }

    protected String getDefaultUndoContextLabel() {
        String domainID;
        String string = domainID = this.getDomain() == null ? null : this.getDomain().getID();
        if (domainID == null) {
            domainID = String.valueOf(domainID);
        }
        return NLS.bind((String)Messages.cmdStkCtxLabel, (Object)domainID);
    }

    private final IUndoContext getSavedContext() {
        if (this.savedContext == null) {
            this.savedContext = new UndoContext(){

                public String getLabel() {
                    return WorkspaceCommandStackImpl.this.getSavepointUndoContextLabel();
                }

                public String toString() {
                    return this.getLabel();
                }
            };
        }
        return this.savedContext;
    }

    protected String getSavepointUndoContextLabel() {
        String domainID;
        String string = domainID = this.getDomain() == null ? null : this.getDomain().getID();
        if (domainID == null) {
            domainID = String.valueOf(domainID);
        }
        return NLS.bind((String)Messages.cmdStkSaveCtxLabel, (Object)domainID);
    }

    protected void doExecute(Command command, Map<?, ?> options) throws InterruptedException, RollbackException {
        EMFCommandOperation oper = new EMFCommandOperation((TransactionalEditingDomain)this.getDomain(), command, options);
        oper.addContext(this.getDefaultUndoContext());
        try {
            IStatus status = this.history.execute((IUndoableOperation)oper, (IProgressMonitor)new NullProgressMonitor(), null);
            if (status.getSeverity() >= 4) {
                RollbackException exc = new RollbackException(status);
                Tracing.throwing(WorkspaceCommandStackImpl.class, "execute", exc);
                throw exc;
            }
            this.notifyListeners();
        }
        catch (ExecutionException e) {
            Tracing.catching(WorkspaceCommandStackImpl.class, "execute", e);
            command.dispose();
            if (e.getCause() instanceof RollbackException) {
                RollbackException exc = (RollbackException)e.getCause();
                Tracing.throwing(WorkspaceCommandStackImpl.class, "execute", exc);
                throw exc;
            }
            if (e.getCause() instanceof RuntimeException) {
                RuntimeException exc = (RuntimeException)e.getCause();
                Tracing.throwing(WorkspaceCommandStackImpl.class, "execute", exc);
                throw exc;
            }
            this.handleError((Exception)((Object)e));
        }
    }

    public boolean canUndo() {
        return this.getOperationHistory().canUndo(this.getDefaultUndoContext());
    }

    public void undo() {
        try {
            try {
                this.getOperationHistory().undo(this.getDefaultUndoContext(), (IProgressMonitor)new NullProgressMonitor(), null);
            }
            catch (ExecutionException e) {
                Tracing.catching(WorkspaceCommandStackImpl.class, "undo", e);
                this.handleError((Exception)((Object)e));
                this.notifyListeners();
            }
        }
        finally {
            this.notifyListeners();
        }
    }

    public boolean canRedo() {
        return this.getOperationHistory().canRedo(this.getDefaultUndoContext());
    }

    public void redo() {
        try {
            try {
                this.getOperationHistory().redo(this.getDefaultUndoContext(), (IProgressMonitor)new NullProgressMonitor(), null);
            }
            catch (ExecutionException e) {
                Tracing.catching(WorkspaceCommandStackImpl.class, "redo", e);
                this.handleError((Exception)((Object)e));
                this.notifyListeners();
            }
        }
        finally {
            this.notifyListeners();
        }
    }

    public void flush() {
        this.getOperationHistory().dispose(this.getDefaultUndoContext(), true, true, true);
        if (this.savedContext != null) {
            this.getOperationHistory().dispose(this.getSavedContext(), true, true, true);
            this.savedContext = null;
        }
    }

    public Command getMostRecentCommand() {
        Command result = null;
        if (this.mostRecentOperation instanceof EMFCommandOperation) {
            result = ((EMFCommandOperation)this.mostRecentOperation).getCommand();
        }
        return result;
    }

    public Command getUndoCommand() {
        Command result = null;
        IUndoableOperation topOperation = this.getOperationHistory().getUndoOperation(this.getDefaultUndoContext());
        if (topOperation instanceof EMFCommandOperation) {
            result = ((EMFCommandOperation)topOperation).getCommand();
        }
        return result;
    }

    public Command getRedoCommand() {
        Command result = null;
        IUndoableOperation topOperation = this.getOperationHistory().getRedoOperation(this.getDefaultUndoContext());
        if (topOperation instanceof EMFCommandOperation) {
            result = ((EMFCommandOperation)topOperation).getCommand();
        }
        return result;
    }

    public EMFCommandTransaction createTransaction(Command command, Map<?, ?> options) throws InterruptedException {
        EMFOperationTransaction result = command instanceof TriggerCommand ? new TriggerCommandTransaction((TriggerCommand)command, this.getDomain(), options) : new EMFOperationTransaction(command, this.getDomain(), options);
        result.start();
        return result;
    }

    public void executeTriggers(Command command, List<Command> triggers, Map<?, ?> options) throws InterruptedException, RollbackException {
        if (!triggers.isEmpty()) {
            TriggerCommand trigger = command == null ? new TriggerCommand(triggers) : new TriggerCommand(command, triggers);
            EMFCommandTransaction tx = this.createTransaction((Command)trigger, WorkspaceCommandStackImpl.makeTriggerTransactionOptions(options));
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
                    Tracing.catching(WorkspaceCommandStackImpl.class, "executeTriggers", e);
                    Object status = e instanceof OperationCanceledException ? Status.CANCEL_STATUS : new Status(4, EMFWorkspacePlugin.getPluginId(), 43, Messages.precommitFailed, (Throwable)e);
                    RollbackException rbe = new RollbackException(status);
                    Tracing.throwing(WorkspaceCommandStackImpl.class, "executeTriggers", rbe);
                    throw rbe;
                }
            }
            finally {
                if (tx != null && tx.isActive()) {
                    this.rollback((Transaction)tx);
                }
            }
        }
    }

    public void dispose() {
        this.setEditingDomain(null);
        this.domainListener = null;
        this.historyAffectedResources = null;
        this.mostRecentOperation = null;
    }

    public IResourceUndoContextPolicy getResourceUndoContextPolicy() {
        return this.undoContextPolicy;
    }

    public void setResourceUndoContextPolicy(IResourceUndoContextPolicy policy) {
        this.undoContextPolicy = policy;
    }

    public boolean isSaveNeeded() {
        IUndoableOperation nextUndoableOperation = this.history.getUndoOperation(this.getDefaultUndoContext());
        if (nextUndoableOperation == null) {
            return this.savedContext != null;
        }
        return this.savedContext != null ? !nextUndoableOperation.hasContext(this.getSavedContext()) : true;
    }

    public void saveIsDone() {
        IUndoableOperation nextUndoableOperation;
        if (this.savedContext != null) {
            IUndoableOperation[] undoableOperations = this.history.getUndoHistory(this.getSavedContext());
            int i = 0;
            while (i < undoableOperations.length) {
                undoableOperations[i].removeContext(this.getSavedContext());
                ++i;
            }
            IUndoableOperation[] redoableOperations = this.history.getRedoHistory(this.getSavedContext());
            int i2 = 0;
            while (i2 < redoableOperations.length) {
                redoableOperations[i2].removeContext(this.getSavedContext());
                ++i2;
            }
        }
        if ((nextUndoableOperation = this.history.getUndoOperation(this.getDefaultUndoContext())) == null) {
            return;
        }
        nextUndoableOperation.addContext(this.getSavedContext());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class DomainListener
    extends ResourceSetListenerImpl
    implements IOperationHistoryListener {
        private DomainListener() {
        }

        public void historyNotification(OperationHistoryEvent event) {
            IUndoableOperation operation = event.getOperation();
            switch (event.getEventType()) {
                case 1: {
                    WorkspaceCommandStackImpl.this.currentOperation = operation;
                    WorkspaceCommandStackImpl.this.historyAffectedResources = new HashSet();
                    break;
                }
                case 4: {
                    if (WorkspaceCommandStackImpl.this.historyAffectedResources != null && !WorkspaceCommandStackImpl.this.historyAffectedResources.isEmpty()) {
                        for (Resource next : WorkspaceCommandStackImpl.this.historyAffectedResources) {
                            operation.addContext((IUndoContext)new ResourceUndoContext((TransactionalEditingDomain)WorkspaceCommandStackImpl.this.getDomain(), next));
                        }
                    }
                    WorkspaceCommandStackImpl.this.currentOperation = null;
                    WorkspaceCommandStackImpl.this.historyAffectedResources = null;
                    if (!operation.hasContext(WorkspaceCommandStackImpl.this.getDefaultUndoContext())) break;
                    WorkspaceCommandStackImpl.this.mostRecentOperation = operation;
                    break;
                }
                case 7: {
                    WorkspaceCommandStackImpl.this.currentOperation = null;
                    WorkspaceCommandStackImpl.this.historyAffectedResources = null;
                    break;
                }
                case 9: 
                case 10: {
                    if (!operation.hasContext(WorkspaceCommandStackImpl.this.getDefaultUndoContext())) break;
                    WorkspaceCommandStackImpl.this.mostRecentOperation = operation;
                    break;
                }
                case 8: {
                    if (operation != WorkspaceCommandStackImpl.this.mostRecentOperation) break;
                    WorkspaceCommandStackImpl.this.mostRecentOperation = null;
                }
            }
        }

        public void resourceSetChanged(ResourceSetChangeEvent event) {
            Transaction tx;
            IUndoableOperation operation = null;
            Set<Resource> unloaded = this.getUnloadedResources(event.getNotifications());
            if (unloaded != null) {
                for (Resource next : unloaded) {
                    WorkspaceCommandStackImpl.this.getOperationHistory().dispose((IUndoContext)new ResourceUndoContext((TransactionalEditingDomain)WorkspaceCommandStackImpl.this.getDomain(), next), true, true, true);
                }
            }
            if ((tx = event.getTransaction()) != null) {
                operation = (IUndoableOperation)tx.getOptions().get("_owning_operation");
            }
            if (operation == null) {
                operation = WorkspaceCommandStackImpl.this.currentOperation;
            }
            if (operation != null) {
                Set<Resource> affectedResources = WorkspaceCommandStackImpl.this.getResourceUndoContextPolicy().getContextResources(operation, event.getNotifications());
                if (unloaded != null) {
                    affectedResources.removeAll(unloaded);
                }
                if (!affectedResources.isEmpty()) {
                    for (Resource next : affectedResources) {
                        ResourceUndoContext ctx = new ResourceUndoContext((TransactionalEditingDomain)WorkspaceCommandStackImpl.this.getDomain(), next);
                        if (operation.hasContext((IUndoContext)ctx)) continue;
                        operation.addContext((IUndoContext)ctx);
                    }
                }
                if (WorkspaceCommandStackImpl.this.historyAffectedResources != null) {
                    WorkspaceCommandStackImpl.this.historyAffectedResources.addAll(affectedResources);
                }
            }
        }

        private Set<Resource> getUnloadedResources(Collection<Notification> notifications) {
            HashSet<Resource> result = null;
            for (Notification next : notifications) {
                if (!NotificationFilter.RESOURCE_UNLOADED.matches(next)) continue;
                if (result == null) {
                    result = new HashSet<Resource>();
                }
                result.add((Resource)next.getNotifier());
            }
            return result;
        }

        public boolean isPostcommitOnly() {
            return true;
        }
    }
}

