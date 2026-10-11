/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractCommand
implements Command {
    protected boolean isPrepared;
    protected boolean isExecutable;
    protected String description;
    protected String label;

    protected AbstractCommand() {
    }

    protected AbstractCommand(String label) {
        this.label = label;
    }

    protected AbstractCommand(String label, String description) {
        this.label = label;
        this.description = description;
    }

    protected boolean prepare() {
        return false;
    }

    @Override
    public boolean canExecute() {
        if (!this.isPrepared) {
            this.isExecutable = this.prepare();
            this.isPrepared = true;
        }
        return this.isExecutable;
    }

    @Override
    public boolean canUndo() {
        return true;
    }

    @Override
    public void undo() {
        throw new UnsupportedOperationException(CommonPlugin.INSTANCE.getString("_EXC_Method_not_implemented", new String[]{String.valueOf(this.getClass().getName()) + ".undo()"}));
    }

    @Override
    public Collection<?> getResult() {
        return Collections.EMPTY_LIST;
    }

    @Override
    public Collection<?> getAffectedObjects() {
        return Collections.EMPTY_LIST;
    }

    @Override
    public String getLabel() {
        return this.label == null ? CommonPlugin.INSTANCE.getString("_UI_AbstractCommand_label") : this.label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    @Override
    public String getDescription() {
        return this.description == null ? CommonPlugin.INSTANCE.getString("_UI_AbstractCommand_description") : this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public Command chain(Command command) {
        class ChainedCompoundCommand
        extends CompoundCommand {
            public Command chain(Command c) {
                this.append(c);
                return this;
            }
        }
        ChainedCompoundCommand result = new ChainedCompoundCommand();
        result.append(this);
        result.append(command);
        return result;
    }

    @Override
    public void dispose() {
    }

    public String toString() {
        String className = this.getClass().getName();
        int lastDotIndex = className.lastIndexOf(46);
        StringBuffer result = new StringBuffer(lastDotIndex == -1 ? className : className.substring(lastDotIndex + 1));
        result.append(" (label: " + this.label + ")");
        result.append(" (description: " + this.description + ")");
        result.append(" (isPrepared: " + this.isPrepared + ")");
        result.append(" (isExecutable: " + this.isExecutable + ")");
        return result.toString();
    }

    public static interface NonDirtying {
    }
}

