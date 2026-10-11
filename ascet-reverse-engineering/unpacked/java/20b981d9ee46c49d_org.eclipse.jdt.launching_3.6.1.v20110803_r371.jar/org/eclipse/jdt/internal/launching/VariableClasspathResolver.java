/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.launching.VariableClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;

public class VariableClasspathResolver
implements IRuntimeClasspathEntryResolver {
    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, ILaunchConfiguration configuration) throws CoreException {
        return this.resolveRuntimeClasspathEntry(entry);
    }

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, IJavaProject project) throws CoreException {
        return this.resolveRuntimeClasspathEntry(entry);
    }

    private IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry) throws CoreException {
        String variableString = ((VariableClasspathEntry)entry).getVariableString();
        String strpath = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(variableString);
        IPath path = new Path(strpath).makeAbsolute();
        IRuntimeClasspathEntry archiveEntry = JavaRuntime.newArchiveRuntimeClasspathEntry(path);
        return new IRuntimeClasspathEntry[]{archiveEntry};
    }

    public IVMInstall resolveVMInstall(IClasspathEntry entry) throws CoreException {
        return null;
    }
}

