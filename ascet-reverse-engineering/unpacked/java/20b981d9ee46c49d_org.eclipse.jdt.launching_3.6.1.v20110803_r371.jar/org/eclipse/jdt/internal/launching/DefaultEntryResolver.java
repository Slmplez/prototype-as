/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.launching;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry2;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;

public class DefaultEntryResolver
implements IRuntimeClasspathEntryResolver {
    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, ILaunchConfiguration configuration) throws CoreException {
        IRuntimeClasspathEntry2 entry2 = (IRuntimeClasspathEntry2)entry;
        IRuntimeClasspathEntry[] entries = entry2.getRuntimeClasspathEntries(configuration);
        ArrayList<IRuntimeClasspathEntry> resolved = new ArrayList<IRuntimeClasspathEntry>();
        int i = 0;
        while (i < entries.length) {
            IRuntimeClasspathEntry[] temp = JavaRuntime.resolveRuntimeClasspathEntry(entries[i], configuration);
            int j = 0;
            while (j < temp.length) {
                resolved.add(temp[j]);
                ++j;
            }
            ++i;
        }
        return resolved.toArray(new IRuntimeClasspathEntry[resolved.size()]);
    }

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, IJavaProject project) throws CoreException {
        IRuntimeClasspathEntry2 entry2 = (IRuntimeClasspathEntry2)entry;
        IRuntimeClasspathEntry[] entries = entry2.getRuntimeClasspathEntries(null);
        ArrayList<IRuntimeClasspathEntry> resolved = new ArrayList<IRuntimeClasspathEntry>();
        int i = 0;
        while (i < entries.length) {
            IRuntimeClasspathEntry[] temp = JavaRuntime.resolveRuntimeClasspathEntry(entries[i], project);
            int j = 0;
            while (j < temp.length) {
                resolved.add(temp[j]);
                ++j;
            }
            ++i;
        }
        return resolved.toArray(new IRuntimeClasspathEntry[resolved.size()]);
    }

    public IVMInstall resolveVMInstall(IClasspathEntry entry) throws CoreException {
        return null;
    }
}

