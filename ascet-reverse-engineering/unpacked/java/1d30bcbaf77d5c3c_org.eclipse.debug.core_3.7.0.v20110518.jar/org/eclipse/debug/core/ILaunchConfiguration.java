/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.debug.core;

import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.core.ILaunchDelegate;

public interface ILaunchConfiguration
extends IAdaptable {
    public static final String LAUNCH_CONFIGURATION_FILE_EXTENSION = "launch";
    public static final String ATTR_SOURCE_LOCATOR_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".source_locator_id";
    public static final String ATTR_SOURCE_LOCATOR_MEMENTO = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".source_locator_memento";

    public boolean contentsEqual(ILaunchConfiguration var1);

    public ILaunchConfigurationWorkingCopy copy(String var1) throws CoreException;

    public void delete() throws CoreException;

    public boolean exists();

    public boolean getAttribute(String var1, boolean var2) throws CoreException;

    public int getAttribute(String var1, int var2) throws CoreException;

    public List getAttribute(String var1, List var2) throws CoreException;

    public Set getAttribute(String var1, Set var2) throws CoreException;

    public Map getAttribute(String var1, Map var2) throws CoreException;

    public String getAttribute(String var1, String var2) throws CoreException;

    public Map getAttributes() throws CoreException;

    public String getCategory() throws CoreException;

    public IFile getFile();

    public IPath getLocation();

    public IResource[] getMappedResources() throws CoreException;

    public String getMemento() throws CoreException;

    public String getName();

    public Set getModes() throws CoreException;

    public ILaunchDelegate getPreferredDelegate(Set var1) throws CoreException;

    public ILaunchConfigurationType getType() throws CoreException;

    public ILaunchConfigurationWorkingCopy getWorkingCopy() throws CoreException;

    public boolean hasAttribute(String var1) throws CoreException;

    public boolean isLocal();

    public boolean isMigrationCandidate() throws CoreException;

    public boolean isWorkingCopy();

    public ILaunch launch(String var1, IProgressMonitor var2) throws CoreException;

    public ILaunch launch(String var1, IProgressMonitor var2, boolean var3) throws CoreException;

    public ILaunch launch(String var1, IProgressMonitor var2, boolean var3, boolean var4) throws CoreException;

    public void migrate() throws CoreException;

    public boolean supportsMode(String var1) throws CoreException;

    public boolean isReadOnly();
}

