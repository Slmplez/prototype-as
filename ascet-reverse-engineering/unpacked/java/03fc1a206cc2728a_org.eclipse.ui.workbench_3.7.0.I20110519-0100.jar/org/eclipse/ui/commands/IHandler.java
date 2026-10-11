/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Map;
import org.eclipse.ui.commands.ExecutionException;
import org.eclipse.ui.commands.IHandlerListener;

public interface IHandler {
    public void addHandlerListener(IHandlerListener var1);

    public void dispose();

    public Object execute(Map var1) throws ExecutionException;

    public Map getAttributeValuesByName();

    public void removeHandlerListener(IHandlerListener var1);
}

