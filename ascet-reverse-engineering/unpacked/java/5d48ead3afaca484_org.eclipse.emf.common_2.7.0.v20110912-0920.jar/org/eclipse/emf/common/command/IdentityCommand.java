/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.AbstractCommand;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IdentityCommand
extends AbstractCommand {
    public static final IdentityCommand INSTANCE = new IdentityCommand();
    protected Collection<?> result;

    public IdentityCommand() {
        this.isPrepared = true;
        this.isExecutable = true;
        this.result = Collections.EMPTY_LIST;
    }

    public IdentityCommand(Object result) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.result = Collections.singleton(result);
    }

    public IdentityCommand(Collection<?> result) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.result = result;
    }

    public IdentityCommand(String label) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.label = label;
        this.result = Collections.EMPTY_LIST;
    }

    public IdentityCommand(String label, Object result) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.label = label;
        this.result = Collections.singleton(result);
    }

    public IdentityCommand(String label, Collection<?> result) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.label = label;
        this.result = result;
    }

    public IdentityCommand(String label, String description) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.label = label;
        this.description = description;
        this.result = Collections.EMPTY_LIST;
    }

    public IdentityCommand(String label, String description, Object result) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.label = label;
        this.description = description;
        this.result = Collections.singleton(result);
    }

    public IdentityCommand(String label, String description, Collection<?> result) {
        this.isPrepared = true;
        this.isExecutable = true;
        this.label = label;
        this.description = description;
        this.result = result;
    }

    @Override
    public boolean canExecute() {
        return true;
    }

    @Override
    public void execute() {
    }

    @Override
    public void undo() {
    }

    @Override
    public void redo() {
    }

    @Override
    public String getLabel() {
        return this.label == null ? CommonPlugin.INSTANCE.getString("_UI_IdentityCommand_label") : this.label;
    }

    @Override
    public String getDescription() {
        return this.description == null ? CommonPlugin.INSTANCE.getString("_UI_IdentityCommand_description") : this.description;
    }

    @Override
    public Collection<?> getResult() {
        return this.result;
    }
}

