/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.debug.internal.core.commands;

import java.util.HashSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.IRequest;
import org.eclipse.debug.core.commands.AbstractDebugCommand;
import org.eclipse.debug.core.commands.IEnabledStateRequest;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.IThread;

public abstract class StepCommand
extends AbstractDebugCommand {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected void doExecute(Object[] targets, IProgressMonitor monitor, IRequest request) throws CoreException {
        int i = 0;
        while (i < targets.length) {
            this.step(targets[i]);
            ++i;
        }
    }

    protected abstract void step(Object var1) throws CoreException;

    protected boolean isExecutable(Object[] targets, IProgressMonitor monitor, IEnabledStateRequest collector) throws CoreException {
        if (this.isThreadCompatible(targets)) {
            int i = 0;
            while (i < targets.length) {
                if (!this.isSteppable(targets[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    protected abstract boolean isSteppable(Object var1) throws CoreException;

    protected boolean isThreadCompatible(Object[] targets) {
        if (targets.length == 1) {
            return true;
        }
        HashSet<IThread> threads = new HashSet<IThread>(targets.length);
        int i = 0;
        while (i < targets.length) {
            Object object = targets[i];
            IStackFrame frame = null;
            if (object instanceof IStackFrame) {
                frame = (IStackFrame)object;
            } else if (object instanceof IAdaptable) {
                IAdaptable iAdaptable = (IAdaptable)object;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.debug.core.model.IStackFrame");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                frame = (IStackFrame)iAdaptable.getAdapter((Class)clazz);
            }
            if (frame != null && !threads.add(frame.getThread())) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected Object getTarget(Object element) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.debug.core.model.IStep");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return this.getAdapter(element, clazz);
    }
}

