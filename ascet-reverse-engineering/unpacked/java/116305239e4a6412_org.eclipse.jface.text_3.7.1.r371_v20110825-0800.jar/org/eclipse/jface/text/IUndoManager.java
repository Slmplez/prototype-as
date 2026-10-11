/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.ITextViewer;

public interface IUndoManager {
    public void connect(ITextViewer var1);

    public void disconnect();

    public void beginCompoundChange();

    public void endCompoundChange();

    public void reset();

    public void setMaximalUndoLevel(int var1);

    public boolean undoable();

    public boolean redoable();

    public void undo();

    public void redo();
}

