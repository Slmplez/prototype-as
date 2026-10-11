/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;

public interface IOperationApprover2
extends IOperationApprover {
    public IStatus proceedExecuting(IUndoableOperation var1, IOperationHistory var2, IAdaptable var3);
}

