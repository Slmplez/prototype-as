/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.IExecutionListener;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.common.NotDefinedException;

public interface IExecutionListenerWithChecks
extends IExecutionListener {
    public void notDefined(String var1, NotDefinedException var2);

    public void notEnabled(String var1, NotEnabledException var2);
}

