/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IUndoContext
 */
package org.eclipse.text.undo;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.text.undo.IDocumentUndoListener;

public interface IDocumentUndoManager {
    public void addDocumentUndoListener(IDocumentUndoListener var1);

    public void removeDocumentUndoListener(IDocumentUndoListener var1);

    public IUndoContext getUndoContext();

    public void commit();

    public void connect(Object var1);

    public void disconnect(Object var1);

    public void beginCompoundChange();

    public void endCompoundChange();

    public void setMaximalUndoLevel(int var1);

    public void reset();

    public boolean undoable();

    public boolean redoable();

    public void undo() throws ExecutionException;

    public void redo() throws ExecutionException;

    public void transferUndoHistory(IDocumentUndoManager var1);
}

