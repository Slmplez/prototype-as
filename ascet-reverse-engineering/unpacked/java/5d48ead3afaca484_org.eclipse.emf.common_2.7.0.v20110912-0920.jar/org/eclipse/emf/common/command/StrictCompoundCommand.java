/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.util.WrappedException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StrictCompoundCommand
extends CompoundCommand {
    protected boolean isUndoable;
    protected boolean isPessimistic;
    protected int rightMostExecutedCommandIndex = -1;

    public StrictCompoundCommand() {
        this.resultIndex = Integer.MIN_VALUE;
    }

    public StrictCompoundCommand(String label) {
        super(label);
        this.resultIndex = Integer.MIN_VALUE;
    }

    public StrictCompoundCommand(String label, String description) {
        super(label, description);
        this.resultIndex = Integer.MIN_VALUE;
    }

    public StrictCompoundCommand(List<Command> commandList) {
        super(commandList);
        this.resultIndex = Integer.MIN_VALUE;
    }

    public StrictCompoundCommand(String label, List<Command> commandList) {
        super(label, commandList);
        this.resultIndex = Integer.MIN_VALUE;
    }

    public StrictCompoundCommand(String label, String description, List<Command> commandList) {
        super(label, description, commandList);
        this.resultIndex = Integer.MIN_VALUE;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected boolean prepare() {
        Command command;
        boolean result;
        ListIterator commands;
        block10: {
            commands = this.commandList.listIterator();
            if (!commands.hasNext()) {
                this.isUndoable = false;
                return false;
            }
            result = true;
            while ((command = (Command)commands.next()).canExecute()) {
                if (commands.hasNext()) {
                    if (command.canUndo()) {
                        try {
                            if (commands.previousIndex() <= this.rightMostExecutedCommandIndex) {
                                command.redo();
                                continue;
                            }
                            ++this.rightMostExecutedCommandIndex;
                            command.execute();
                            continue;
                        }
                        catch (RuntimeException exception) {
                            CommonPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), exception).fillInStackTrace());
                            result = false;
                            break block10;
                        }
                    } else {
                        result = false;
                    }
                    break block10;
                }
                this.isUndoable = command.canUndo();
                break block10;
            }
            result = false;
        }
        if (this.isPessimistic) {
            commands.previous();
            while (commands.hasPrevious()) {
                command = (Command)commands.previous();
                command.undo();
            }
        }
        return result;
    }

    /*
     * Unable to fully structure code
     */
    @Override
    public void execute() {
        if (this.isPessimistic) {
            commands = this.commandList.listIterator();
            while (commands.hasNext()) {
                try {
                    command = (Command)commands.next();
                    if (commands.previousIndex() <= this.rightMostExecutedCommandIndex) {
                        command.redo();
                        continue;
                    }
                    command.execute();
                    continue;
                }
                catch (RuntimeException exception) {
                    commands.previous();
                    ** while (commands.hasPrevious())
                }
lbl-1000:
                // 1 sources

                {
                    commands.previous();
                    command = (Command)commands.previous();
                    if (!command.canUndo()) break;
                    command.undo();
                    continue;
                }
lbl21:
                // 2 sources

                throw exception;
            }
        } else if (!this.commandList.isEmpty()) {
            command = (Command)this.commandList.get(this.commandList.size() - 1);
            command.execute();
        }
    }

    @Override
    public void undo() {
        if (this.isPessimistic) {
            super.undo();
        } else if (!this.commandList.isEmpty()) {
            Command command = (Command)this.commandList.get(this.commandList.size() - 1);
            command.undo();
        }
    }

    @Override
    public void redo() {
        if (this.isPessimistic) {
            super.redo();
        } else if (!this.commandList.isEmpty()) {
            Command command = (Command)this.commandList.get(this.commandList.size() - 1);
            command.redo();
        }
    }

    @Override
    public boolean appendAndExecute(Command command) {
        if (command != null) {
            if (!this.isPrepared) {
                if (this.commandList.isEmpty()) {
                    this.isPrepared = true;
                    this.isExecutable = true;
                } else {
                    this.isExecutable = this.prepare();
                    this.isPrepared = true;
                    this.isPessimistic = true;
                    if (this.isExecutable) {
                        this.execute();
                    }
                }
            }
            if (command.canExecute()) {
                try {
                    command.execute();
                    this.commandList.add(command);
                    ++this.rightMostExecutedCommandIndex;
                    this.isUndoable = command.canUndo();
                    return true;
                }
                catch (RuntimeException exception) {
                    CommonPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), exception).fillInStackTrace());
                }
            }
            command.dispose();
        }
        return false;
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (isUndoable: " + this.isUndoable + ")");
        result.append(" (isPessimistic: " + this.isPessimistic + ")");
        result.append(" (rightMostExecutedCommandIndex: " + this.rightMostExecutedCommandIndex + ")");
        return result.toString();
    }
}

