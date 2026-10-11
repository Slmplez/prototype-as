/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IUndoableOperation;

public interface ICompositeOperation
extends IUndoableOperation {
    public void add(IUndoableOperation var1);

    public void remove(IUndoableOperation var1);
}

