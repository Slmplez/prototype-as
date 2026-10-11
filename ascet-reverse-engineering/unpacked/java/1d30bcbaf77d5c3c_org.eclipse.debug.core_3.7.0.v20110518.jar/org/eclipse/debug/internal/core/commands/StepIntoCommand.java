/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IStepIntoHandler;
import org.eclipse.debug.core.model.IStep;
import org.eclipse.debug.internal.core.commands.StepCommand;

public class StepIntoCommand
extends StepCommand
implements IStepIntoHandler {
    static /* synthetic */ Class class$0;

    protected boolean isSteppable(Object target) {
        return ((IStep)target).canStepInto();
    }

    protected void step(Object target) throws CoreException {
        ((IStep)target).stepInto();
    }

    protected Object getEnabledStateJobFamily(IDebugCommandRequest request) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.commands.IStepIntoHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

