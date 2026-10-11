/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommandWrapper
extends AbstractCommand {
    protected Command command;

    public CommandWrapper(Command command) {
        super(command.getLabel(), command.getDescription());
        this.command = command;
    }

    protected CommandWrapper(String label, Command command) {
        super(label, command.getDescription());
        this.command = command;
    }

    public CommandWrapper(String label, String description, Command command) {
        super(label, description);
        this.command = command;
    }

    protected CommandWrapper() {
    }

    protected CommandWrapper(String label) {
        super(label);
    }

    protected CommandWrapper(String label, String description) {
        super(label, description);
    }

    public Command getCommand() {
        return this.command;
    }

    protected Command createCommand() {
        return null;
    }

    @Override
    protected boolean prepare() {
        if (this.command == null) {
            this.command = this.createCommand();
        }
        boolean result = this.command.canExecute();
        return result;
    }

    @Override
    public void execute() {
        if (this.command != null) {
            this.command.execute();
        }
    }

    @Override
    public boolean canUndo() {
        return this.command == null || this.command.canUndo();
    }

    @Override
    public void undo() {
        if (this.command != null) {
            this.command.undo();
        }
    }

    @Override
    public void redo() {
        if (this.command != null) {
            this.command.redo();
        }
    }

    @Override
    public Collection<?> getResult() {
        return this.command == null ? Collections.EMPTY_LIST : this.command.getResult();
    }

    @Override
    public Collection<?> getAffectedObjects() {
        return this.command == null ? Collections.EMPTY_LIST : this.command.getAffectedObjects();
    }

    @Override
    public String getLabel() {
        return this.label == null ? (this.command == null ? CommonPlugin.INSTANCE.getString("_UI_CommandWrapper_label") : this.command.getLabel()) : this.label;
    }

    @Override
    public String getDescription() {
        return this.description == null ? (this.command == null ? CommonPlugin.INSTANCE.getString("_UI_CommandWrapper_description") : this.command.getDescription()) : this.description;
    }

    @Override
    public void dispose() {
        if (this.command != null) {
            this.command.dispose();
        }
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (command: " + this.command + ")");
        return result.toString();
    }
}

