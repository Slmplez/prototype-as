/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.command;

import java.util.Collection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Command {
    public boolean canExecute();

    public void execute();

    public boolean canUndo();

    public void undo();

    public void redo();

    public Collection<?> getResult();

    public Collection<?> getAffectedObjects();

    public String getLabel();

    public String getDescription();

    public void dispose();

    public Command chain(Command var1);
}

