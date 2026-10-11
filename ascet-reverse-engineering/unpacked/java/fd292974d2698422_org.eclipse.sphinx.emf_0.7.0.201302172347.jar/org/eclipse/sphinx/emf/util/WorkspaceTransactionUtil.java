/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.OperationHistoryFactory
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.command.CommandStack
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.workspace.AbstractEMFOperation
 *  org.eclipse.emf.workspace.IWorkspaceCommandStack
 *  org.eclipse.emf.workspace.impl.WorkspaceCommandStackImpl
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.emf.util;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationHistoryFactory;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.command.CommandStack;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.workspace.AbstractEMFOperation;
import org.eclipse.emf.workspace.IWorkspaceCommandStack;
import org.eclipse.emf.workspace.impl.WorkspaceCommandStackImpl;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.internal.messages.Messages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class WorkspaceTransactionUtil {
    private WorkspaceTransactionUtil() {
    }

    public static IOperationHistory getOperationHistory(TransactionalEditingDomain editingDomain) {
        CommandStack commandStack;
        if (editingDomain != null && (commandStack = editingDomain.getCommandStack()) instanceof IWorkspaceCommandStack) {
            return ((IWorkspaceCommandStack)commandStack).getOperationHistory();
        }
        return OperationHistoryFactory.getOperationHistory();
    }

    public static IUndoContext getUndoContext(TransactionalEditingDomain editingDomain) {
        CommandStack commandStack;
        if (editingDomain != null && (commandStack = editingDomain.getCommandStack()) instanceof WorkspaceCommandStackImpl) {
            return IOperationHistory.GLOBAL_UNDO_CONTEXT;
        }
        return (IUndoContext)ResourcesPlugin.getWorkspace().getAdapter(IUndoContext.class);
    }

    public static Map<String, Object> getDefaultTransactionOptions() {
        HashMap<String, Object> options = new HashMap<String, Object>();
        options.put("block_cd_prop", Boolean.TRUE);
        options.put("no_validation", Boolean.TRUE);
        return options;
    }

    public static Map<String, Object> getDefaultSaveNewTransactionOptions() {
        Map<String, Object> options = WorkspaceTransactionUtil.getDefaultTransactionOptions();
        options.put("no_undo", Boolean.TRUE);
        return options;
    }

    public static Map<String, Object> getDefaultSaveTransactionOptions() {
        Map<String, Object> options = WorkspaceTransactionUtil.getDefaultTransactionOptions();
        options.put("no_undo", Boolean.TRUE);
        options.put("silent", Boolean.TRUE);
        options.put("no_triggers", Boolean.TRUE);
        return options;
    }

    public static void executeInWriteTransaction(TransactionalEditingDomain editingDomain, Runnable runnable, String operationLabel) throws OperationCanceledException, ExecutionException {
        WorkspaceTransactionUtil.executeInWriteTransaction(editingDomain, runnable, operationLabel, WorkspaceTransactionUtil.getOperationHistory(editingDomain), WorkspaceTransactionUtil.getDefaultTransactionOptions(), null);
    }

    public static void executeInWriteTransaction(TransactionalEditingDomain editingDomain, final Runnable runnable, final String operationLabel, IOperationHistory operationHistory, final Map<String, Object> transactionOptions, IProgressMonitor monitor) throws OperationCanceledException, ExecutionException {
        Assert.isNotNull((Object)editingDomain);
        Assert.isNotNull((Object)runnable);
        String safeLabel = operationLabel == null ? "Unnamed operation" : operationLabel;
        AbstractEMFOperation operation = new AbstractEMFOperation(editingDomain, safeLabel, transactionOptions){

            protected IStatus doExecute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                try {
                    runnable.run();
                    return Status.OK_STATUS;
                }
                catch (RuntimeException ex) {
                    if (ex instanceof OperationCanceledException) {
                        throw (OperationCanceledException)ex;
                    }
                    throw new ExecutionException(NLS.bind((String)Messages.problem_transactionFailed, (Object)operationLabel), (Throwable)ex);
                }
            }

            public boolean canUndo() {
                return transactionOptions.get("no_undo") != Boolean.TRUE;
            }
        };
        IStatus status = operationHistory.execute((IUndoableOperation)operation, monitor, null);
        if (status.getSeverity() == 8) {
            throw new OperationCanceledException();
        }
    }
}

