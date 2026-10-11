/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.emf.transaction.TransactionalCommandStack
 */
package org.eclipse.emf.workspace;

import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.emf.transaction.TransactionalCommandStack;

public interface IWorkspaceCommandStack
extends TransactionalCommandStack {
    public IOperationHistory getOperationHistory();

    public IUndoContext getDefaultUndoContext();
}

