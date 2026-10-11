/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IUndoContext;

public interface IContextReplacingOperation {
    public void replaceContext(IUndoContext var1, IUndoContext var2);
}

