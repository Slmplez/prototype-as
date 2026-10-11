/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.variables;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.variables.IDynamicVariable;

public interface IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable var1, String var2) throws CoreException;
}

