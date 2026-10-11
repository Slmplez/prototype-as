/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.List;
import java.util.Map;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.ICommandListener;
import org.eclipse.ui.commands.NotDefinedException;
import org.eclipse.ui.commands.NotHandledException;

public interface ICommand
extends Comparable {
    public void addCommandListener(ICommandListener var1);

    public Object execute(Map var1) throws ExecutionException, NotHandledException;

    public Map getAttributeValuesByName() throws NotHandledException;

    public String getCategoryId() throws NotDefinedException;

    public String getDescription() throws NotDefinedException;

    public String getId();

    public List getKeySequenceBindings();

    public String getName() throws NotDefinedException;

    public boolean isDefined();

    public boolean isHandled();

    public void removeCommandListener(ICommandListener var1);
}

