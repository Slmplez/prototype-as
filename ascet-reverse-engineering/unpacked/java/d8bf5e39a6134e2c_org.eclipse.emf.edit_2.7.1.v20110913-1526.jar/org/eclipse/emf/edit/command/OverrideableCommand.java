/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import org.eclipse.emf.common.command.Command;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface OverrideableCommand
extends Command {
    public Command getOverride();

    public void setOverride(Command var1);

    public boolean doCanExecute();

    public void doExecute();

    public boolean doCanUndo();

    public void doUndo();

    public void doRedo();

    public Collection<?> doGetResult();

    public Collection<?> doGetAffectedObjects();

    public String doGetLabel();

    public String doGetDescription();

    public void doDispose();
}

