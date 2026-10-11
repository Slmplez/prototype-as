/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.core.commands.IDisconnectHandler;
import org.eclipse.debug.core.model.IDisconnect;
import org.eclipse.debug.internal.core.commands.ForEachCommand;

public class DisconnectCommand
extends ForEachCommand
implements IDisconnectHandler {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected Object getTarget(Object element) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.model.IDisconnect");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return this.getAdapter(element, clazz);
    }

    protected void execute(Object target) throws CoreException {
        ((IDisconnect)target).disconnect();
    }

    protected boolean isExecutable(Object target) {
        return ((IDisconnect)target).canDisconnect();
    }

    protected Object getEnabledStateJobFamily(IDebugCommandRequest request) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.debug.core.commands.IDisconnectHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz;
    }
}

