/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.command.AbstractCommand;

public class UnexecutableCommand
extends AbstractCommand {
    public static final UnexecutableCommand INSTANCE = new UnexecutableCommand();

    private UnexecutableCommand() {
        super(CommonPlugin.INSTANCE.getString("_UI_UnexecutableCommand_label"), CommonPlugin.INSTANCE.getString("_UI_UnexecutableCommand_description"));
    }

    public boolean canExecute() {
        return false;
    }

    public void execute() {
        throw new UnsupportedOperationException(CommonPlugin.INSTANCE.getString("_EXC_Method_not_implemented", new String[]{String.valueOf(this.getClass().getName()) + ".execute()"}));
    }

    public boolean canUndo() {
        return false;
    }

    public void redo() {
        throw new UnsupportedOperationException(CommonPlugin.INSTANCE.getString("_EXC_Method_not_implemented", new String[]{String.valueOf(this.getClass().getName()) + ".redo()"}));
    }
}

