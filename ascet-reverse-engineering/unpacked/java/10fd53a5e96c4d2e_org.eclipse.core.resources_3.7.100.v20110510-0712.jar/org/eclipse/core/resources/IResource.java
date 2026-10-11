/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.resources;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IResource
extends IAdaptable,
ISchedulingRule {
    public static final int FILE = 1;
    public static final int FOLDER = 2;
    public static final int PROJECT = 4;
    public static final int ROOT = 8;
    public static final int DEPTH_ZERO = 0;
    public static final int DEPTH_ONE = 1;
    public static final int DEPTH_INFINITE = 2;
    public static final int FORCE = 1;
    public static final int KEEP_HISTORY = 2;
    public static final int ALWAYS_DELETE_PROJECT_CONTENT = 4;
    public static final int NEVER_DELETE_PROJECT_CONTENT = 8;
    public static final int ALLOW_MISSING_LOCAL = 16;
    public static final int SHALLOW = 32;
    public static final int AVOID_NATURE_CONFIG = 64;
    public static final int BACKGROUND_REFRESH = 128;
    public static final int REPLACE = 256;
    public static final int CHECK_ANCESTORS = 512;
    public static final int DERIVED = 1024;
    public static final int TEAM_PRIVATE = 2048;
    public static final int HIDDEN = 4096;
    public static final int VIRTUAL = 8192;
    public static final int NULL_STAMP = -1;
    public static final int NONE = 0;

    public void accept(IResourceProxyVisitor var1, int var2) throws CoreException;

    public void accept(IResourceVisitor var1) throws CoreException;

    public void accept(IResourceVisitor var1, int var2, boolean var3) throws CoreException;

    public void accept(IResourceVisitor var1, int var2, int var3) throws CoreException;

    public void clearHistory(IProgressMonitor var1) throws CoreException;

    public void copy(IPath var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void copy(IPath var1, int var2, IProgressMonitor var3) throws CoreException;

    public void copy(IProjectDescription var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void copy(IProjectDescription var1, int var2, IProgressMonitor var3) throws CoreException;

    public IMarker createMarker(String var1) throws CoreException;

    public IResourceProxy createProxy();

    public void delete(boolean var1, IProgressMonitor var2) throws CoreException;

    public void delete(int var1, IProgressMonitor var2) throws CoreException;

    public void deleteMarkers(String var1, boolean var2, int var3) throws CoreException;

    public boolean equals(Object var1);

    public boolean exists();

    public IMarker findMarker(long var1) throws CoreException;

    public IMarker[] findMarkers(String var1, boolean var2, int var3) throws CoreException;

    public int findMaxProblemSeverity(String var1, boolean var2, int var3) throws CoreException;

    public String getFileExtension();

    public IPath getFullPath();

    public long getLocalTimeStamp();

    public IPath getLocation();

    public URI getLocationURI();

    public IMarker getMarker(long var1);

    public long getModificationStamp();

    public String getName();

    public IPathVariableManager getPathVariableManager();

    public IContainer getParent();

    public Map<QualifiedName, String> getPersistentProperties() throws CoreException;

    public String getPersistentProperty(QualifiedName var1) throws CoreException;

    public IProject getProject();

    public IPath getProjectRelativePath();

    public IPath getRawLocation();

    public URI getRawLocationURI();

    public ResourceAttributes getResourceAttributes();

    public Map<QualifiedName, Object> getSessionProperties() throws CoreException;

    public Object getSessionProperty(QualifiedName var1) throws CoreException;

    public int getType();

    public IWorkspace getWorkspace();

    public boolean isAccessible();

    public boolean isDerived();

    public boolean isDerived(int var1);

    public boolean isHidden();

    public boolean isHidden(int var1);

    public boolean isLinked();

    public boolean isVirtual();

    public boolean isLinked(int var1);

    public boolean isLocal(int var1);

    public boolean isPhantom();

    public boolean isReadOnly();

    public boolean isSynchronized(int var1);

    public boolean isTeamPrivateMember();

    public boolean isTeamPrivateMember(int var1);

    public void move(IPath var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void move(IPath var1, int var2, IProgressMonitor var3) throws CoreException;

    public void move(IProjectDescription var1, boolean var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public void move(IProjectDescription var1, int var2, IProgressMonitor var3) throws CoreException;

    public void refreshLocal(int var1, IProgressMonitor var2) throws CoreException;

    public void revertModificationStamp(long var1) throws CoreException;

    public void setDerived(boolean var1) throws CoreException;

    public void setDerived(boolean var1, IProgressMonitor var2) throws CoreException;

    public void setHidden(boolean var1) throws CoreException;

    public void setLocal(boolean var1, int var2, IProgressMonitor var3) throws CoreException;

    public long setLocalTimeStamp(long var1) throws CoreException;

    public void setPersistentProperty(QualifiedName var1, String var2) throws CoreException;

    public void setReadOnly(boolean var1);

    public void setResourceAttributes(ResourceAttributes var1) throws CoreException;

    public void setSessionProperty(QualifiedName var1, Object var2) throws CoreException;

    public void setTeamPrivateMember(boolean var1) throws CoreException;

    public void touch(IProgressMonitor var1) throws CoreException;
}

