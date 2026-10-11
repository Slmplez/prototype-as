/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IDropToFrameHandler;
import org.eclipse.debug.core.model.IDropToFrame;
import org.eclipse.debug.internal.core.commands.StepCommand;

public class DropToFrameCommand
extends StepCommand
implements IDropToFrameHandler {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected Object getTarget(Object element) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.model.IDropToFrame");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return this.getAdapter(element, clazz);
    }

    protected boolean isSteppable(Object target) throws CoreException {
        return ((IDropToFrame)target).canDropToFrame();
    }

    protected void step(Object target) throws CoreException {
        ((IDropToFrame)target).dropToFrame();
    }

    protected Object getEnabledStateJobFamily(IDebugCommandRequest request) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.debug.core.commands.IDropToFrameHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

