/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.debug.core.ILaunch
 */
package org.eclipse.jdt.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.jdt.launching.VMRunnerConfiguration;

public interface IVMRunner {
    public void run(VMRunnerConfiguration var1, ILaunch var2, IProgressMonitor var3) throws CoreException;
}

