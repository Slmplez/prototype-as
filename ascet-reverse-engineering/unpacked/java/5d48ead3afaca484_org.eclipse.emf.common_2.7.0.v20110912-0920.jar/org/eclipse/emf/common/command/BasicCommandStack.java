/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EventObject;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.AbortExecutionException;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandStack;
import org.eclipse.emf.common.command.CommandStackListener;
import org.eclipse.emf.common.util.WrappedException;

public class BasicCommandStack
implements CommandStack {
    protected List<Command> commandList = new ArrayList<Command>();
    protected int top = -1;
    protected Command mostRecentCommand;
    protected Collection<CommandStackListener> listeners = new ArrayList<CommandStackListener>();
    protected int saveIndex = -1;

    public void execute(Command command) {
        if (command != null) {
            if (command.canExecute()) {
                try {
                    command.execute();
                    ListIterator<Command> commands = this.commandList.listIterator(this.top + 1);
                    while (commands.hasNext()) {
                        Command otherCommand = (Command)commands.next();
                        otherCommand.dispose();
                        commands.remove();
                    }
                    this.mostRecentCommand = command;
                    this.commandList.add(command);
                    ++this.top;
                    if (this.saveIndex >= this.top) {
                        this.saveIndex = -2;
                    }
                    this.notifyListeners();
                }
                catch (AbortExecutionException exception) {
                    command.dispose();
                }
                catch (RuntimeException exception) {
                    this.handleError(exception);
                    this.mostRecentCommand = null;
                    command.dispose();
                    this.notifyListeners();
                }
            } else {
                command.dispose();
            }
        }
    }

    public boolean canUndo() {
        return this.top != -1 && this.commandList.get(this.top).canUndo();
    }

    public void undo() {
        if (this.canUndo()) {
            Command command = this.commandList.get(this.top--);
            try {
                command.undo();
                this.mostRecentCommand = command;
            }
            catch (RuntimeException exception) {
                this.handleError(exception);
                this.mostRecentCommand = null;
                this.flush();
            }
            this.notifyListeners();
        }
    }

    public boolean canRedo() {
        return this.top < this.commandList.size() - 1;
    }

    /*
     * Unable to fully structure code
     */
    public void redo() {
        if (this.canRedo()) {
            block4: {
                command = this.commandList.get(++this.top);
                try {
                    command.redo();
                    this.mostRecentCommand = command;
                    break block4;
                }
                catch (RuntimeException exception) {
                    this.handleError(exception);
                    this.mostRecentCommand = null;
                    commands = this.commandList.listIterator(this.top--);
                    ** while (commands.hasNext())
                }
lbl-1000:
                // 1 sources

                {
                    otherCommand = (Command)commands.next();
                    otherCommand.dispose();
                    commands.remove();
                    continue;
                }
            }
            this.notifyListeners();
        }
    }

    public void flush() {
        ListIterator<Command> commands = this.commandList.listIterator();
        while (commands.hasNext()) {
            Command command = (Command)commands.next();
            command.dispose();
            commands.remove();
        }
        this.commandList.clear();
        this.top = -1;
        this.saveIndex = -1;
        this.mostRecentCommand = null;
        this.notifyListeners();
    }

    public Command getUndoCommand() {
        return this.top == -1 || this.top == this.commandList.size() ? null : this.commandList.get(this.top);
    }

    public Command getRedoCommand() {
        return this.top + 1 >= this.commandList.size() ? null : this.commandList.get(this.top + 1);
    }

    public Command getMostRecentCommand() {
        return this.mostRecentCommand;
    }

    public void addCommandStackListener(CommandStackListener listener) {
        this.listeners.add(listener);
    }

    public void removeCommandStackListener(CommandStackListener listener) {
        this.listeners.remove(listener);
    }

    protected void notifyListeners() {
        for (CommandStackListener commandStackListener : this.listeners) {
            commandStackListener.commandStackChanged(new EventObject(this));
        }
    }

    protected void handleError(Exception exception) {
        CommonPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), exception).fillInStackTrace());
    }

    public void saveIsDone() {
        this.saveIndex = this.top;
    }

    public boolean isSaveNeeded() {
        if (this.saveIndex < -1) {
            return true;
        }
        if (this.top > this.saveIndex) {
            int i = this.top;
            while (i > this.saveIndex) {
                if (!(this.commandList.get(i) instanceof AbstractCommand.NonDirtying)) {
                    return true;
                }
                --i;
            }
        } else {
            int i = this.saveIndex;
            while (i > this.top) {
                if (!(this.commandList.get(i) instanceof AbstractCommand.NonDirtying)) {
                    return true;
                }
                --i;
            }
        }
        return false;
    }
}

