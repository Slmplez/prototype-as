/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.CoreException;

public interface IExecutableExtensionFactory {
    public Object create() throws CoreException;
}

