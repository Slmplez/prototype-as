/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.launching;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathProvider;
import org.eclipse.jdt.launching.JavaRuntime;

public class StandardClasspathProvider
implements IRuntimeClasspathProvider {
    public IRuntimeClasspathEntry[] computeUnresolvedClasspath(ILaunchConfiguration configuration) throws CoreException {
        boolean useDefault = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_DEFAULT_CLASSPATH, true);
        if (useDefault) {
            IJavaProject proj = JavaRuntime.getJavaProject(configuration);
            IRuntimeClasspathEntry jreEntry = JavaRuntime.computeJREEntry(configuration);
            if (proj == null) {
                if (jreEntry == null) {
                    return new IRuntimeClasspathEntry[0];
                }
                return new IRuntimeClasspathEntry[]{jreEntry};
            }
            IRuntimeClasspathEntry[] entries = JavaRuntime.computeUnresolvedRuntimeClasspath(proj);
            IRuntimeClasspathEntry projEntry = JavaRuntime.computeJREEntry(proj);
            if (jreEntry != null && projEntry != null && !jreEntry.equals(projEntry)) {
                int i = 0;
                while (i < entries.length) {
                    IRuntimeClasspathEntry entry = entries[i];
                    if (entry.equals(projEntry)) {
                        entries[i] = jreEntry;
                        return entries;
                    }
                    ++i;
                }
            }
            return entries;
        }
        return this.recoverRuntimePath(configuration, IJavaLaunchConfigurationConstants.ATTR_CLASSPATH);
    }

    public IRuntimeClasspathEntry[] resolveClasspath(IRuntimeClasspathEntry[] entries, ILaunchConfiguration configuration) throws CoreException {
        LinkedHashSet<IRuntimeClasspathEntry> all = new LinkedHashSet<IRuntimeClasspathEntry>(entries.length);
        int i = 0;
        while (i < entries.length) {
            IRuntimeClasspathEntry[] resolved = JavaRuntime.resolveRuntimeClasspathEntry(entries[i], configuration);
            int j = 0;
            while (j < resolved.length) {
                all.add(resolved[j]);
                ++j;
            }
            ++i;
        }
        return all.toArray(new IRuntimeClasspathEntry[all.size()]);
    }

    protected IRuntimeClasspathEntry[] recoverRuntimePath(ILaunchConfiguration configuration, String attribute) throws CoreException {
        List entries = configuration.getAttribute(attribute, Collections.EMPTY_LIST);
        IRuntimeClasspathEntry[] rtes = new IRuntimeClasspathEntry[entries.size()];
        Iterator iter = entries.iterator();
        int i = 0;
        while (iter.hasNext()) {
            rtes[i] = JavaRuntime.newRuntimeClasspathEntry((String)iter.next());
            ++i;
        }
        return rtes;
    }
}

