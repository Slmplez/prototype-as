/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IVMInstall;

public interface IRuntimeClasspathEntryResolver {
    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry var1, ILaunchConfiguration var2) throws CoreException;

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry var1, IJavaProject var2) throws CoreException;

    public IVMInstall resolveVMInstall(IClasspathEntry var1) throws CoreException;
}

