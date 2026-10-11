/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.commands.operations.IUndoContext;

public class UndoContext
implements IUndoContext {
    public String getLabel() {
        return "";
    }

    public boolean matches(IUndoContext context) {
        return context == this;
    }
}

