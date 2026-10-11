/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.transaction.util;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.util.ConditionalRedoCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TriggerCommand
extends ConditionalRedoCommand.Compound {
    private final Command triggeringCommand;
    private final List<Command> triggers;

    public TriggerCommand(List<? extends Command> triggers) {
        super(0, "Triggers", "Triggered Changes", new ArrayList<Command>(triggers));
        this.triggeringCommand = null;
        this.triggers = this.commandList;
    }

    public TriggerCommand(Command triggeringCommand, List<? extends Command> triggers) {
        super(0, triggeringCommand.getLabel(), triggeringCommand.getDescription(), new ArrayList<Command>(triggers));
        this.triggeringCommand = triggeringCommand;
        this.triggers = this.commandList;
    }

    public final Command getTriggeringCommand() {
        return this.triggeringCommand;
    }

    public final List<Command> getTriggers() {
        return this.triggers;
    }

    protected boolean prepare() {
        return !this.triggers.isEmpty();
    }

    public void execute() {
        ListIterator iter = this.commandList.listIterator();
        while (iter.hasNext()) {
            try {
                Command command = (Command)iter.next();
                if (command.canExecute()) {
                    command.execute();
                    continue;
                }
                iter.remove();
                continue;
            }
            catch (RuntimeException e) {
                Tracing.catching(TriggerCommand.class, "execute", e);
                iter.previous();
                try {
                    while (iter.hasPrevious()) {
                        Command command = (Command)iter.previous();
                        if (command.canUndo()) {
                            command.undo();
                        }
                    }
                }
                catch (RuntimeException nested) {
                    Tracing.catching(TriggerCommand.class, "execute", nested);
                    EMFTransactionPlugin.INSTANCE.log(new WrappedException(CommonPlugin.INSTANCE.getString("_UI_IgnoreException_exception"), (Exception)nested).fillInStackTrace());
                }
            }
            Tracing.throwing(TriggerCommand.class, "execute", e);
            throw e;
        }
        if (this.triggeringCommand != null) {
            this.commandList = new ArrayList(this.triggers.size() + 1);
            this.commandList.add(this.triggeringCommand);
            this.commandList.addAll(this.triggers);
        }
    }

    public void dispose() {
        super.dispose();
        if (this.triggeringCommand != null) {
            this.triggeringCommand.dispose();
        }
    }
}

