/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.core.model.ITerminate;

public interface ILaunch
extends ITerminate,
IAdaptable {
    public Object[] getChildren();

    public IDebugTarget getDebugTarget();

    public IProcess[] getProcesses();

    public IDebugTarget[] getDebugTargets();

    public void addDebugTarget(IDebugTarget var1);

    public void removeDebugTarget(IDebugTarget var1);

    public void addProcess(IProcess var1);

    public void removeProcess(IProcess var1);

    public ISourceLocator getSourceLocator();

    public void setSourceLocator(ISourceLocator var1);

    public String getLaunchMode();

    public ILaunchConfiguration getLaunchConfiguration();

    public void setAttribute(String var1, String var2);

    public String getAttribute(String var1);

    public boolean hasChildren();
}

