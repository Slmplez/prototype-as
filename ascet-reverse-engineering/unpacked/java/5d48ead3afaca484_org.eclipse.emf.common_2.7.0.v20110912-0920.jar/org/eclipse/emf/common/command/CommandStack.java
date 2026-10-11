/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandStackListener;

public interface CommandStack {
    public void execute(Command var1);

    public boolean canUndo();

    public void undo();

    public boolean canRedo();

    public Command getUndoCommand();

    public Command getRedoCommand();

    public Command getMostRecentCommand();

    public void redo();

    public void flush();

    public void addCommandStackListener(CommandStackListener var1);

    public void removeCommandStackListener(CommandStackListener var1);
}

