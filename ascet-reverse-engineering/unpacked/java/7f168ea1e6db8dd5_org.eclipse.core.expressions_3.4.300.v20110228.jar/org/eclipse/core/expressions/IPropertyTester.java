/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.expressions;

import org.eclipse.core.runtime.CoreException;

public interface IPropertyTester {
    public boolean handles(String var1, String var2);

    public boolean isInstantiated();

    public boolean isDeclaringPluginActive();

    public IPropertyTester instantiate() throws CoreException;

    public boolean test(Object var1, String var2, Object[] var3, Object var4);
}

