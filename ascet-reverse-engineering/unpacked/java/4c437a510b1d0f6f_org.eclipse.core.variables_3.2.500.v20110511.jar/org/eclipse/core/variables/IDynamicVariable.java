/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.variables;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.variables.IStringVariable;

public interface IDynamicVariable
extends IStringVariable {
    public String getValue(String var1) throws CoreException;

    public boolean supportsArgument();
}

