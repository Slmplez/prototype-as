/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;

public interface ILaunchConfigurationDelegate2
extends ILaunchConfigurationDelegate {
    public ILaunch getLaunch(ILaunchConfiguration var1, String var2) throws CoreException;

    public boolean buildForLaunch(ILaunchConfiguration var1, String var2, IProgressMonitor var3) throws CoreException;

    public boolean finalLaunchCheck(ILaunchConfiguration var1, String var2, IProgressMonitor var3) throws CoreException;

    public boolean preLaunchCheck(ILaunchConfiguration var1, String var2, IProgressMonitor var3) throws CoreException;
}

