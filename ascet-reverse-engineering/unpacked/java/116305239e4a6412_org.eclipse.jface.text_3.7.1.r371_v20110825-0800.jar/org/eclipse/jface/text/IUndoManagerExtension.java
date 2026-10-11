/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IUndoContext
 */
package org.eclipse.jface.text;

import org.eclipse.core.commands.operations.IUndoContext;

public interface IUndoManagerExtension {
    public IUndoContext getUndoContext();
}

