/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;

public interface IExecutableExtension {
    public void setInitializationData(IConfigurationElement var1, String var2, Object var3) throws CoreException;
}

