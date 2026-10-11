/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 */
package org.eclipse.ui.operations;

import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;

public interface IWorkbenchOperationSupport {
    public IUndoContext getUndoContext();

    public IOperationHistory getOperationHistory();
}

