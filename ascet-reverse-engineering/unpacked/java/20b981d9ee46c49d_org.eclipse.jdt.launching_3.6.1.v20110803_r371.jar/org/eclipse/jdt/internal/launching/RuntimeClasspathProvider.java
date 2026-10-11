/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.debug.core.ILaunchConfiguration
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathProvider;

public class RuntimeClasspathProvider
implements IRuntimeClasspathProvider {
    private IConfigurationElement fConfigurationElement;
    private IRuntimeClasspathProvider fDelegate;

    public RuntimeClasspathProvider(IConfigurationElement element) {
        this.fConfigurationElement = element;
    }

    protected IRuntimeClasspathProvider getProvider() throws CoreException {
        if (this.fDelegate == null) {
            this.fDelegate = (IRuntimeClasspathProvider)this.fConfigurationElement.createExecutableExtension("class");
        }
        return this.fDelegate;
    }

    public String getIdentifier() {
        return this.fConfigurationElement.getAttribute("id");
    }

    public IRuntimeClasspathEntry[] computeUnresolvedClasspath(ILaunchConfiguration configuration) throws CoreException {
        return this.getProvider().computeUnresolvedClasspath(configuration);
    }

    public IRuntimeClasspathEntry[] resolveClasspath(IRuntimeClasspathEntry[] entries, ILaunchConfiguration configuration) throws CoreException {
        return this.getProvider().resolveClasspath(entries, configuration);
    }
}

