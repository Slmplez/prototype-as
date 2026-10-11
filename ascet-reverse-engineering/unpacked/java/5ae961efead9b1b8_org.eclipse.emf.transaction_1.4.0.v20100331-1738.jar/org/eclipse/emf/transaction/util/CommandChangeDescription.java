/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl
 */
package org.eclipse.emf.transaction.util;

import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;

public class CommandChangeDescription
extends ChangeDescriptionImpl
implements TransactionChangeDescription {
    private boolean isRedone = true;
    private Command command;

    public CommandChangeDescription(Command command) {
        this.command = command;
    }

    public Command chain(Command newCommand) {
        this.command = this.command.chain(newCommand);
        return this.command;
    }

    public boolean canApply() {
        return this.command != null && (this.isRedone ? this.command.canUndo() : this.canRedo(this.command));
    }

    private boolean canRedo(Command cmd) {
        return !(cmd instanceof ConditionalRedoCommand) || ((ConditionalRedoCommand)cmd).canRedo();
    }

    public void apply() {
        try {
            this.command.undo();
        }
        finally {
            this.dispose();
        }
    }

    public void applyAndReverse() {
        if (this.isRedone) {
            this.command.undo();
            this.isRedone = false;
        } else {
            this.command.redo();
            this.isRedone = true;
        }
    }

    public boolean isEmpty() {
        return false;
    }

    public void dispose() {
        if (this.command != null) {
            this.command.dispose();
            this.command = null;
        }
    }
}

