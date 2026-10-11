/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.expressions;

import org.eclipse.core.runtime.CoreException;

public interface IVariableResolver {
    public Object resolve(String var1, Object[] var2) throws CoreException;
}

