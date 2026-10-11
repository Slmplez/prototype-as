/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.IDynamicVariableResolver
 */
package org.eclipse.debug.internal.core;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class EnvironmentVariableResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        if (argument == null) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 4, DebugCoreMessages.EnvironmentVariableResolver_0, null));
        }
        Map map = DebugPlugin.getDefault().getLaunchManager().getNativeEnvironmentCasePreserved();
        String value = (String)map.get(argument);
        if (value == null && Platform.getOS().equals("win32")) {
            Iterator iter = map.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = iter.next();
                String key = (String)entry.getKey();
                if (!key.equalsIgnoreCase(argument)) continue;
                return (String)entry.getValue();
            }
        }
        return value;
    }
}

