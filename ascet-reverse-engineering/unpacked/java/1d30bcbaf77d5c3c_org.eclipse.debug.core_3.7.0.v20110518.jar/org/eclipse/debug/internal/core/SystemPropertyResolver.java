/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.IDynamicVariableResolver
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class SystemPropertyResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        if (argument == null) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 4, DebugCoreMessages.SystemPropertyResolver_0, null));
        }
        return System.getProperty(argument);
    }
}

