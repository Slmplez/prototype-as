/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core;

import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.core.ILaunchDelegate;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;

public interface ILaunchConfigurationType
extends IAdaptable {
    public String getAttribute(String var1);

    public String getCategory();

    public ILaunchConfigurationDelegate getDelegate() throws CoreException;

    public ILaunchConfigurationDelegate getDelegate(String var1) throws CoreException;

    public ILaunchDelegate[] getDelegates(Set var1) throws CoreException;

    public ILaunchDelegate getPreferredDelegate(Set var1) throws CoreException;

    public void setPreferredDelegate(Set var1, ILaunchDelegate var2) throws CoreException;

    public boolean supportsModeCombination(Set var1);

    public String getIdentifier();

    public String getName();

    public String getPluginIdentifier();

    public String getSourceLocatorId();

    public ISourcePathComputer getSourcePathComputer();

    public Set getSupportedModes();

    public Set getSupportedModeCombinations();

    public boolean isPublic();

    public ILaunchConfigurationWorkingCopy newInstance(IContainer var1, String var2) throws CoreException;

    public boolean supportsMode(String var1);

    public String getContributorName();
}

