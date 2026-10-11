/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IHandlerListener;

public interface IHandler {
    public void addHandlerListener(IHandlerListener var1);

    public void dispose();

    public Object execute(ExecutionEvent var1) throws ExecutionException;

    public boolean isEnabled();

    public boolean isHandled();

    public void removeHandlerListener(IHandlerListener var1);
}

