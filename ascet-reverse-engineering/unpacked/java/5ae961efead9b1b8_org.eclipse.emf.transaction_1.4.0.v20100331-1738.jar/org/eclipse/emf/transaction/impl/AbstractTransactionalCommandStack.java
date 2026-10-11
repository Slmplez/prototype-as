/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.BasicCommandStack
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.transaction.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.BasicCommandStack;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.transaction.ExceptionHandler;
import org.eclipse.emf.transaction.RollbackException;
import org.eclipse.emf.transaction.Transaction;
import org.eclipse.emf.transaction.impl.InternalTransaction;
import org.eclipse.emf.transaction.impl.InternalTransactionalCommandStack;
import org.eclipse.emf.transaction.impl.InternalTransactionalEditingDomain;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractTransactionalCommandStack
extends BasicCommandStack
implements InternalTransactionalCommandStack {
    private InternalTransactionalEditingDomain domain;
    protected ExceptionHandler exceptionHandler;

    @Override
    public InternalTransactionalEditingDomain getDomain() {
        return this.domain;
    }

    @Override
    public void setEditingDomain(InternalTransactionalEditingDomain domain) {
        this.domain = domain;
    }

    protected void rollback(Transaction tx) {
        while (tx.isActive()) {
            InternalTransaction active = this.domain.getActiveTransaction();
            active.rollback();
        }
    }

    @Override
    public void setExceptionHandler(ExceptionHandler handler) {
        this.exceptionHandler = handler;
    }

    @Override
    public ExceptionHandler getExceptionHandler() {
        return this.exceptionHandler;
    }

    protected void handleError(Exception exception) {
        InternalTransaction active = this.getDomain().getActiveTransaction();
        if (active != null && active.isActive()) {
            active.abort((IStatus)new Status(4, EMFTransactionPlugin.getPluginId(), 10, exception.getMessage() == null ? "" : exception.getMessage(), (Throwable)exception));
        }
        if (!this.isCancelException(exception)) {
            if (this.exceptionHandler != null) {
                try {
                    this.exceptionHandler.handleException(exception);
                }
                catch (Exception e) {
                    Tracing.catching(AbstractTransactionalCommandStack.class, "handleError", e);
                    EMFTransactionPlugin.INSTANCE.log(new Status(2, EMFTransactionPlugin.getPluginId(), 50, Messages.exceptionHandlerFailed, (Throwable)e));
                }
            }
            super.handleError(exception);
        }
    }

    private boolean isCancelException(Throwable exception) {
        IStatus status;
        boolean result = exception instanceof OperationCanceledException ? true : (exception instanceof RollbackException ? (status = ((RollbackException)exception).getStatus()) != null && (status.getSeverity() == 8 || this.isCancelException(status.getException())) : false);
        return result;
    }

    @Override
    public void execute(Command command, Map<?, ?> options) throws InterruptedException, RollbackException {
        if (command != null && command.canExecute()) {
            try {
                this.doExecute(command, options);
            }
            catch (RollbackException e) {
                this.handleRollback(command, e);
                throw e;
            }
        } else if (command != null) {
            command.dispose();
        }
    }

    protected abstract void doExecute(Command var1, Map<?, ?> var2) throws InterruptedException, RollbackException;

    protected void handleRollback(Command command, RollbackException rbe) {
        if (command != null) {
            command.dispose();
        }
        this.notifyListeners();
    }

    public void execute(Command command) {
        try {
            this.execute(command, null);
        }
        catch (InterruptedException e) {
            Tracing.catching(AbstractTransactionalCommandStack.class, "execute", e);
            this.handleError(e);
        }
        catch (RollbackException e) {
            Tracing.catching(AbstractTransactionalCommandStack.class, "execute", e);
            this.handleError(e);
        }
    }

    protected void basicExecute(Command command) {
        super.execute(command);
    }

    protected Map<?, ?> getUndoRedoOptions() {
        return this.domain.getUndoRedoOptions();
    }

    public static final Map<Object, Object> makeTriggerTransactionOptions(Map<?, ?> options) {
        Map<Object, Object> result;
        if (options == null || options.isEmpty()) {
            result = Collections.singletonMap("is_trigger_transaction", Boolean.TRUE);
        } else {
            result = new HashMap(options);
            result.put("is_trigger_transaction", Boolean.TRUE);
        }
        return result;
    }
}

