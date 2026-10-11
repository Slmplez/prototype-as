/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.launching.environments;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.environments.CompatibleEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentAnalyzerDelegate;

class Analyzer
implements IExecutionEnvironmentAnalyzerDelegate {
    private IConfigurationElement fElement;
    private IExecutionEnvironmentAnalyzerDelegate fDelegate;

    Analyzer(IConfigurationElement element) {
        this.fElement = element;
    }

    public CompatibleEnvironment[] analyze(IVMInstall vm, IProgressMonitor monitor) throws CoreException {
        return this.getDelegate().analyze(vm, monitor);
    }

    private IExecutionEnvironmentAnalyzerDelegate getDelegate() throws CoreException {
        if (this.fDelegate == null) {
            this.fDelegate = (IExecutionEnvironmentAnalyzerDelegate)this.fElement.createExecutableExtension("class");
        }
        return this.fDelegate;
    }

    public String getId() {
        return this.fElement.getAttribute("id");
    }
}

