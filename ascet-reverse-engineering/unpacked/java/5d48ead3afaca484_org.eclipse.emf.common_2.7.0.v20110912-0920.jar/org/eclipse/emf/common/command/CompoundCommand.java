/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.util.WrappedException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompoundCommand
extends AbstractCommand {
    protected List<Command> commandList;
    public static final int LAST_COMMAND_ALL = Integer.MIN_VALUE;
    public static final int MERGE_COMMAND_ALL = Integer.MAX_VALUE;
    protected int resultIndex = Integer.MAX_VALUE;

    public CompoundCommand() {
        this.commandList = new ArrayList<Command>();
    }

    public CompoundCommand(String label) {
        super(label);
        this.commandList = new ArrayList<Command>();
    }

    public CompoundCommand(String label, String description) {
        super(label, description);
        this.commandList = new ArrayList<Command>();
    }

    public CompoundCommand(List<Command> commandList) {
        this.commandList = commandList;
    }

    public CompoundCommand(String label, List<Command> commandList) {
        super(label);
        this.commandList = commandList;
    }

    public CompoundCommand(String label, String description, List<Command> commandList) {
        super(label, description);
        this.commandList = commandList;
    }

    public CompoundCommand(int resultIndex) {
        this.resultIndex = resultIndex;
        this.commandList = new ArrayList<Command>();
    }

    public CompoundCommand(int resultIndex, String label) {
        super(label);
        this.resultIndex = resultIndex;
        this.commandList = new ArrayList<Command>();
    }

    public CompoundCommand(int resultIndex, String label, String description) {
        super(label, description);
        this.resultIndex = resultIndex;
        this.commandList = new ArrayList<Command>();
    }

    public CompoundCommand(int resultIndex, List<Command> commandList) {
        this.resultIndex = resultIndex;
        this.commandList = commandList;
    }

    public CompoundCommand(int resultIndex, String label, List<Command> commandList) {
        super(label);
        this.resultIndex = resultIndex;
        this.commandList = commandList;
    }

    public CompoundCommand(int resultIndex, String label, String description, List<Command> commandList) {
        super(label, description);
        this.resultIndex = resultIndex;
        this.commandList = commandList;
    }

    public boolean isEmpty() {
        return this.commandList.isEmpty();
    }

    public List<Command> getCommandList() {
        return Collections.unmodifiableList(this.commandList);
    }

    public int getResultIndex() {
        return this.resultIndex;
    }

    @Override
    protected boolean prepare() {
        if (this.commandList.isEmpty()) {
            return false;
        }
        for (Command command : this.commandList) {
            if (command.canExecute()) continue;
            return false;
        }
        return true;
    }

    @Override
    public void execute() {
        ListIterator<Command> commands = this.commandList.listIterator();
        while (commands.hasNext()) {
            try {
                Command command = commands.next();
                command.execute();
                continue;
            }
            catch (RuntimeException exception) {
                commands.previous();
                try {
                    while (commands.hasPrevious()) {
                        Command command = commands.previous();
                        if (command.canUndo()) {
                            command.undo();
                        }
                    }
                }
                catch (RuntimeException nestedException) {
                    CommonPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), nestedException).fillInStackTrace());
                }
            }
            throw exception;
        }
    }

    @Override
    public boolean canUndo() {
        for (Command command : this.commandList) {
            if (command.canUndo()) continue;
            return false;
        }
        return true;
    }

    @Override
    public void undo() {
        ListIterator<Command> commands = this.commandList.listIterator(this.commandList.size());
        while (commands.hasPrevious()) {
            try {
                Command command = commands.previous();
                command.undo();
                continue;
            }
            catch (RuntimeException exception) {
                commands.next();
                try {
                    while (commands.hasNext()) {
                        Command command = commands.next();
                        command.redo();
                    }
                }
                catch (RuntimeException nestedException) {
                    CommonPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), nestedException).fillInStackTrace());
                }
            }
            throw exception;
        }
    }

    @Override
    public void redo() {
        ListIterator<Command> commands = this.commandList.listIterator();
        while (commands.hasNext()) {
            try {
                Command command = commands.next();
                command.redo();
                continue;
            }
            catch (RuntimeException exception) {
                commands.previous();
                try {
                    while (commands.hasPrevious()) {
                        Command command = commands.previous();
                        command.undo();
                    }
                }
                catch (RuntimeException nestedException) {
                    CommonPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), nestedException).fillInStackTrace());
                }
            }
            throw exception;
        }
    }

    @Override
    public Collection<?> getResult() {
        if (this.commandList.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (this.resultIndex == Integer.MIN_VALUE) {
            return this.commandList.get(this.commandList.size() - 1).getResult();
        }
        if (this.resultIndex == Integer.MAX_VALUE) {
            return this.getMergedResultCollection();
        }
        if (this.resultIndex < this.commandList.size()) {
            return this.commandList.get(this.resultIndex).getResult();
        }
        return Collections.EMPTY_LIST;
    }

    protected Collection<?> getMergedResultCollection() {
        ArrayList result = new ArrayList();
        for (Command command : this.commandList) {
            result.addAll(command.getResult());
        }
        return result;
    }

    @Override
    public Collection<?> getAffectedObjects() {
        if (this.commandList.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (this.resultIndex == Integer.MIN_VALUE) {
            return this.commandList.get(this.commandList.size() - 1).getAffectedObjects();
        }
        if (this.resultIndex == Integer.MAX_VALUE) {
            return this.getMergedAffectedObjectsCollection();
        }
        if (this.resultIndex < this.commandList.size()) {
            return this.commandList.get(this.resultIndex).getAffectedObjects();
        }
        return Collections.EMPTY_LIST;
    }

    protected Collection<?> getMergedAffectedObjectsCollection() {
        ArrayList result = new ArrayList();
        for (Command command : this.commandList) {
            result.addAll(command.getAffectedObjects());
        }
        return result;
    }

    @Override
    public String getLabel() {
        if (this.label != null) {
            return this.label;
        }
        if (this.commandList.isEmpty()) {
            return CommonPlugin.INSTANCE.getString("_UI_CompoundCommand_label");
        }
        if (this.resultIndex == Integer.MIN_VALUE || this.resultIndex == Integer.MAX_VALUE) {
            return this.commandList.get(this.commandList.size() - 1).getLabel();
        }
        if (this.resultIndex < this.commandList.size()) {
            return this.commandList.get(this.resultIndex).getLabel();
        }
        return CommonPlugin.INSTANCE.getString("_UI_CompoundCommand_label");
    }

    @Override
    public String getDescription() {
        if (this.description != null) {
            return this.description;
        }
        if (this.commandList.isEmpty()) {
            return CommonPlugin.INSTANCE.getString("_UI_CompoundCommand_description");
        }
        if (this.resultIndex == Integer.MIN_VALUE || this.resultIndex == Integer.MAX_VALUE) {
            return this.commandList.get(this.commandList.size() - 1).getDescription();
        }
        if (this.resultIndex < this.commandList.size()) {
            return this.commandList.get(this.resultIndex).getDescription();
        }
        return CommonPlugin.INSTANCE.getString("_UI_CompoundCommand_description");
    }

    public void append(Command command) {
        if (this.isPrepared) {
            throw new IllegalStateException("The command is already prepared");
        }
        if (command != null) {
            this.commandList.add(command);
        }
    }

    public boolean appendAndExecute(Command command) {
        if (command != null) {
            if (!this.isPrepared) {
                if (this.commandList.isEmpty()) {
                    this.isPrepared = true;
                    this.isExecutable = true;
                } else {
                    this.isExecutable = this.prepare();
                    this.isPrepared = true;
                    if (this.isExecutable) {
                        this.execute();
                    }
                }
            }
            if (command.canExecute()) {
                try {
                    command.execute();
                    this.commandList.add(command);
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

    public boolean appendIfCanExecute(Command command) {
        if (command == null) {
            return false;
        }
        if (command.canExecute()) {
            this.commandList.add(command);
            return true;
        }
        command.dispose();
        return false;
    }

    @Override
    public void dispose() {
        for (Command command : this.commandList) {
            command.dispose();
        }
    }

    public Command unwrap() {
        switch (this.commandList.size()) {
            case 0: {
                this.dispose();
                return UnexecutableCommand.INSTANCE;
            }
            case 1: {
                Command result = this.commandList.remove(0);
                this.dispose();
                return result;
            }
        }
        return this;
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (commandList: #" + this.commandList.size() + ")");
        result.append(" (resultIndex: " + this.resultIndex + ")");
        return result.toString();
    }
}

