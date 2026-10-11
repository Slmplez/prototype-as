/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IResumeHandler;
import org.eclipse.debug.core.model.ISuspendResume;
import org.eclipse.debug.internal.core.commands.SuspendCommand;

public class ResumeCommand
extends SuspendCommand
implements IResumeHandler {
    static /* synthetic */ Class class$0;

    protected void execute(Object target) throws CoreException {
        ((ISuspendResume)target).resume();
    }

    protected boolean isExecutable(Object target) {
        return ((ISuspendResume)target).canResume();
    }

    protected Object getEnabledStateJobFamily(IDebugCommandRequest request) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.commands.IResumeHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

