/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IPluginDescriptor
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.content.IContentTypeMatcher
 */
package org.eclipse.core.resources;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.content.IContentTypeMatcher;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProject
extends IContainer,
IAdaptable {
    public static final int SNAPSHOT_TREE = 1;

    public void build(int var1, String var2, Map<String, String> var3, IProgressMonitor var4) throws CoreException;

    public void build(int var1, IProgressMonitor var2) throws CoreException;

    public void build(IBuildConfiguration var1, int var2, IProgressMonitor var3) throws CoreException;

    public void close(IProgressMonitor var1) throws CoreException;

    public void create(IProjectDescription var1, IProgressMonitor var2) throws CoreException;

    public void create(IProgressMonitor var1) throws CoreException;

    public void create(IProjectDescription var1, int var2, IProgressMonitor var3) throws CoreException;

    public void delete(boolean var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public IBuildConfiguration getActiveBuildConfig() throws CoreException;

    public IBuildConfiguration getBuildConfig(String var1) throws CoreException;

    public IBuildConfiguration[] getBuildConfigs() throws CoreException;

    public IContentTypeMatcher getContentTypeMatcher() throws CoreException;

    public IProjectDescription getDescription() throws CoreException;

    public IFile getFile(String var1);

    public IFolder getFolder(String var1);

    public IProjectNature getNature(String var1) throws CoreException;

    public IPath getPluginWorkingLocation(IPluginDescriptor var1);

    public IPath getWorkingLocation(String var1);

    public IProject[] getReferencedProjects() throws CoreException;

    public IProject[] getReferencingProjects();

    public IBuildConfiguration[] getReferencedBuildConfigs(String var1, boolean var2) throws CoreException;

    public boolean hasBuildConfig(String var1) throws CoreException;

    public boolean hasNature(String var1) throws CoreException;

    public boolean isNatureEnabled(String var1) throws CoreException;

    public boolean isOpen();

    public void loadSnapshot(int var1, URI var2, IProgressMonitor var3) throws CoreException;

    public void move(IProjectDescription var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void open(int var1, IProgressMonitor var2) throws CoreException;

    public void open(IProgressMonitor var1) throws CoreException;

    public void saveSnapshot(int var1, URI var2, IProgressMonitor var3) throws CoreException;

    public void setDescription(IProjectDescription var1, IProgressMonitor var2) throws CoreException;

    public void setDescription(IProjectDescription var1, int var2, IProgressMonitor var3) throws CoreException;
}

