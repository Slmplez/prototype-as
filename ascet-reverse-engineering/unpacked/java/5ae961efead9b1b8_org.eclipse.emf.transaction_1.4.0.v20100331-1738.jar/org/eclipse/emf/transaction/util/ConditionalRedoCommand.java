/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CompoundCommand
 */
package org.eclipse.emf.transaction.util;

import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;

public interface ConditionalRedoCommand
extends Command {
    public boolean canRedo();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Compound
    extends CompoundCommand
    implements ConditionalRedoCommand {
        public Compound() {
        }

        public Compound(int resultIndex, List<Command> commandList) {
            super(resultIndex, commandList);
        }

        public Compound(int resultIndex, String label, List<Command> commandList) {
            super(resultIndex, label, commandList);
        }

        public Compound(int resultIndex, String label, String description, List<Command> commandList) {
            super(resultIndex, label, description, commandList);
        }

        public Compound(int resultIndex, String label, String description) {
            super(resultIndex, label, description);
        }

        public Compound(int resultIndex, String label) {
            super(resultIndex, label);
        }

        public Compound(int resultIndex) {
            super(resultIndex);
        }

        public Compound(List<Command> commandList) {
            super(commandList);
        }

        public Compound(String label, List<Command> commandList) {
            super(label, commandList);
        }

        public Compound(String label, String description, List<Command> commandList) {
            super(label, description, commandList);
        }

        public Compound(String label, String description) {
            super(label, description);
        }

        public Compound(String label) {
            super(label);
        }

        @Override
        public boolean canRedo() {
            for (Object next : this.commandList) {
                if (!(next instanceof ConditionalRedoCommand) || ((ConditionalRedoCommand)next).canRedo()) continue;
                return false;
            }
            return true;
        }

        public Command chain(Command c) {
            this.append(c);
            return this;
        }
    }
}

