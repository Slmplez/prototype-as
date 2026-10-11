/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.commands.operations;

import org.eclipse.core.commands.operations.IUndoContext;

public class GlobalUndoContext
implements IUndoContext {
    public String getLabel() {
        return "Global Undo Context";
    }

    public boolean matches(IUndoContext context) {
        return true;
    }
}

