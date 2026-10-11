/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.launching.environments;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.environments.CompatibleEnvironment;

public interface IExecutionEnvironmentAnalyzerDelegate {
    public CompatibleEnvironment[] analyze(IVMInstall var1, IProgressMonitor var2) throws CoreException;
}

