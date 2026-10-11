/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.debug.internal.core.sourcelookup;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputerDelegate;

public class SourcePathComputer
implements ISourcePathComputer {
    private ISourcePathComputerDelegate fDelegate = null;
    private IConfigurationElement fElement = null;

    public SourcePathComputer(IConfigurationElement element) {
        this.fElement = element;
    }

    public String getId() {
        return this.fElement.getAttribute("id");
    }

    private ISourcePathComputerDelegate getDelegate() throws CoreException {
        if (this.fDelegate == null) {
            this.fDelegate = (ISourcePathComputerDelegate)this.fElement.createExecutableExtension("class");
        }
        return this.fDelegate;
    }

    public ISourceContainer[] computeSourceContainers(ILaunchConfiguration configuration, IProgressMonitor monitor) {
        try {
            return this.getDelegate().computeSourceContainers(configuration, monitor);
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
            return new ISourceContainer[0];
        }
    }
}

