/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.IRequest;
import org.eclipse.debug.core.commands.AbstractDebugCommand;
import org.eclipse.debug.core.commands.IEnabledStateRequest;

public abstract class ForEachCommand
extends AbstractDebugCommand {
    protected void doExecute(Object[] targets, IProgressMonitor monitor, IRequest request) throws CoreException {
        int i = 0;
        while (i < targets.length) {
            this.execute(targets[i]);
            monitor.worked(1);
            ++i;
        }
    }

    protected abstract void execute(Object var1) throws CoreException;

    protected boolean isExecutable(Object[] targets, IProgressMonitor monitor, IEnabledStateRequest request) throws CoreException {
        int i = 0;
        while (i < targets.length) {
            if (!this.isExecutable(targets[i])) {
                return false;
            }
            monitor.worked(1);
            ++i;
        }
        return true;
    }

    protected abstract boolean isExecutable(Object var1);
}

