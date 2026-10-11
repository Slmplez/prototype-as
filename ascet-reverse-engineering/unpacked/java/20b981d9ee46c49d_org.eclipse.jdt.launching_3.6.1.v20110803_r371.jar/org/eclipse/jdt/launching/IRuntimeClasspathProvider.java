/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 */
package org.eclipse.jdt.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;

public interface IRuntimeClasspathProvider {
    public IRuntimeClasspathEntry[] computeUnresolvedClasspath(ILaunchConfiguration var1) throws CoreException;

    public IRuntimeClasspathEntry[] resolveClasspath(IRuntimeClasspathEntry[] var1, ILaunchConfiguration var2) throws CoreException;
}

