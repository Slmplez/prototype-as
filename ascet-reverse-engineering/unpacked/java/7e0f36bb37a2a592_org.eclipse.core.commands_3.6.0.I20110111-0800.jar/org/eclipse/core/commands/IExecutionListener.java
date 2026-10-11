/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotHandledException;

public interface IExecutionListener {
    public void notHandled(String var1, NotHandledException var2);

    public void postExecuteFailure(String var1, ExecutionException var2);

    public void postExecuteSuccess(String var1, Object var2);

    public void preExecute(String var1, ExecutionEvent var2);
}

