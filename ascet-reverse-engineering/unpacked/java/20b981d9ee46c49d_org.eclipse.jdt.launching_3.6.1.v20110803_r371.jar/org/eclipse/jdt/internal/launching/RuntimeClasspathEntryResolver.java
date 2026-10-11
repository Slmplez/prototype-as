/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver2;
import org.eclipse.jdt.launching.IVMInstall;

public class RuntimeClasspathEntryResolver
implements IRuntimeClasspathEntryResolver2 {
    private IConfigurationElement fConfigurationElement;
    private IRuntimeClasspathEntryResolver fDelegate;

    public RuntimeClasspathEntryResolver(IConfigurationElement element) {
        this.fConfigurationElement = element;
    }

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, ILaunchConfiguration configuration) throws CoreException {
        return this.getResolver().resolveRuntimeClasspathEntry(entry, configuration);
    }

    protected IRuntimeClasspathEntryResolver getResolver() throws CoreException {
        if (this.fDelegate == null) {
            this.fDelegate = (IRuntimeClasspathEntryResolver)this.fConfigurationElement.createExecutableExtension("class");
        }
        return this.fDelegate;
    }

    public String getVariableName() {
        return this.fConfigurationElement.getAttribute("variable");
    }

    public String getContainerId() {
        return this.fConfigurationElement.getAttribute("container");
    }

    public String getRuntimeClasspathEntryId() {
        return this.fConfigurationElement.getAttribute("runtimeClasspathEntryId");
    }

    public IVMInstall resolveVMInstall(IClasspathEntry entry) throws CoreException {
        return this.getResolver().resolveVMInstall(entry);
    }

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, IJavaProject project) throws CoreException {
        return this.getResolver().resolveRuntimeClasspathEntry(entry, project);
    }

    public boolean isVMInstallReference(IClasspathEntry entry) {
        try {
            IRuntimeClasspathEntryResolver resolver = this.getResolver();
            if (resolver instanceof IRuntimeClasspathEntryResolver2) {
                IRuntimeClasspathEntryResolver2 resolver2 = (IRuntimeClasspathEntryResolver2)resolver;
                return resolver2.isVMInstallReference(entry);
            }
            return resolver.resolveVMInstall(entry) != null;
        }
        catch (CoreException coreException) {
            return false;
        }
    }
}

