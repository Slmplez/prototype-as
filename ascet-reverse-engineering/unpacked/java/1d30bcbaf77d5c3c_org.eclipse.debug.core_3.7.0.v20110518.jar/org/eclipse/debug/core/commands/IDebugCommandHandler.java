/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.commands;

import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IEnabledStateRequest;

public interface IDebugCommandHandler {
    public void canExecute(IEnabledStateRequest var1);

    public boolean execute(IDebugCommandRequest var1);
}

