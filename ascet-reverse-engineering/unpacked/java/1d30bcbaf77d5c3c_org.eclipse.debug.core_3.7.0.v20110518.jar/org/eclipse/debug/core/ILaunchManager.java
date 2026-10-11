/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core;

import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationListener;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.ILaunchMode;
import org.eclipse.debug.core.ILaunchesListener;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IPersistableSourceLocator;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;

public interface ILaunchManager {
    public static final String RUN_MODE = "run";
    public static final String DEBUG_MODE = "debug";
    public static final String PROFILE_MODE = "profile";
    public static final String ATTR_PRIVATE = "org.eclipse.debug.ui.private";
    public static final String ATTR_ENVIRONMENT_VARIABLES = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".environmentVariables";
    public static final String ATTR_APPEND_ENVIRONMENT_VARIABLES = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".appendEnvironmentVariables";

    public void addLaunch(ILaunch var1);

    public void addLaunchConfigurationListener(ILaunchConfigurationListener var1);

    public void addLaunches(ILaunch[] var1);

    public void addLaunchListener(ILaunchesListener var1);

    public void addLaunchListener(ILaunchListener var1);

    public String generateUniqueLaunchConfigurationNameFrom(String var1);

    public String generateLaunchConfigurationName(String var1);

    public boolean isValidLaunchConfigurationName(String var1) throws IllegalArgumentException;

    public IDebugTarget[] getDebugTargets();

    public String[] getEnvironment(ILaunchConfiguration var1) throws CoreException;

    public String getEncoding(ILaunchConfiguration var1) throws CoreException;

    public ILaunchConfiguration getLaunchConfiguration(IFile var1);

    public ILaunchConfiguration getLaunchConfiguration(String var1) throws CoreException;

    public ILaunchConfiguration[] getLaunchConfigurations() throws CoreException;

    public ILaunchConfiguration[] getLaunchConfigurations(ILaunchConfigurationType var1) throws CoreException;

    public ILaunchConfigurationType getLaunchConfigurationType(String var1);

    public ILaunchConfigurationType[] getLaunchConfigurationTypes();

    public ILaunch[] getLaunches();

    public ILaunchMode getLaunchMode(String var1);

    public ILaunchMode[] getLaunchModes();

    public ILaunchConfiguration[] getMigrationCandidates() throws CoreException;

    public ILaunchConfiguration getMovedFrom(ILaunchConfiguration var1);

    public ILaunchConfiguration getMovedTo(ILaunchConfiguration var1);

    public Map getNativeEnvironment();

    public Map getNativeEnvironmentCasePreserved();

    public IProcess[] getProcesses();

    public ISourceContainerType getSourceContainerType(String var1);

    public ISourceContainerType[] getSourceContainerTypes();

    public ISourcePathComputer getSourcePathComputer(ILaunchConfiguration var1) throws CoreException;

    public ISourcePathComputer getSourcePathComputer(String var1);

    public boolean isExistingLaunchConfigurationName(String var1) throws CoreException;

    public boolean isRegistered(ILaunch var1);

    public IPersistableSourceLocator newSourceLocator(String var1) throws CoreException;

    public void removeLaunch(ILaunch var1);

    public void removeLaunchConfigurationListener(ILaunchConfigurationListener var1);

    public void removeLaunches(ILaunch[] var1);

    public void removeLaunchListener(ILaunchesListener var1);

    public void removeLaunchListener(ILaunchListener var1);
}

