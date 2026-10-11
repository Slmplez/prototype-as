/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.operations;

public interface IUndoContext {
    public String getLabel();

    public boolean matches(IUndoContext var1);
}

