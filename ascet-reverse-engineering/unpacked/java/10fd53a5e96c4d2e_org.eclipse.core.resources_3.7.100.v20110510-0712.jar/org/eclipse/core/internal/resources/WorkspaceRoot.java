/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.osgi.util.NLS;

public class WorkspaceRoot
extends Container
implements IWorkspaceRoot {
    private final Map<String, Project> projectTable = Collections.synchronizedMap(new HashMap(16));
    private final IPath workspaceLocation;

    protected WorkspaceRoot(IPath path, Workspace container) {
        super(path, container);
        Assert.isTrue((boolean)path.equals((Object)Path.ROOT));
        this.workspaceLocation = FileUtil.canonicalPath(Platform.getLocation());
        Assert.isNotNull((Object)this.workspaceLocation);
    }

    public void delete(boolean deleteContent, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.delete(updateFlags |= deleteContent ? 4 : 8, monitor);
    }

    public void delete(boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.delete(updateFlags, monitor);
    }

    public boolean exists(int flags, boolean checkType) {
        return true;
    }

    public IContainer[] findContainersForLocation(IPath location) {
        return this.findContainersForLocationURI(URIUtil.toURI((IPath)location.makeAbsolute()));
    }

    public IContainer[] findContainersForLocationURI(URI location) {
        return this.findContainersForLocationURI(location, 0);
    }

    public IContainer[] findContainersForLocationURI(URI location, int memberFlags) {
        if (!location.isAbsolute()) {
            throw new IllegalArgumentException();
        }
        return (IContainer[])this.getLocalManager().allResourcesFor(location, false, memberFlags);
    }

    public IFile[] findFilesForLocation(IPath location) {
        return this.findFilesForLocationURI(URIUtil.toURI((IPath)location.makeAbsolute()));
    }

    public IFile[] findFilesForLocationURI(URI location) {
        return this.findFilesForLocationURI(location, 0);
    }

    public IFile[] findFilesForLocationURI(URI location, int memberFlags) {
        if (!location.isAbsolute()) {
            throw new IllegalArgumentException();
        }
        return (IFile[])this.getLocalManager().allResourcesFor(location, true, memberFlags);
    }

    public IContainer getContainerForLocation(IPath location) {
        return this.getLocalManager().containerForLocation(location);
    }

    public String getDefaultCharset(boolean checkImplicit) {
        if (checkImplicit) {
            return ResourcesPlugin.getEncoding();
        }
        String enc = ResourcesPlugin.getPlugin().getPluginPreferences().getString("encoding");
        return enc == null || enc.length() == 0 ? null : enc;
    }

    public IFile getFileForLocation(IPath location) {
        return this.getLocalManager().fileForLocation(location);
    }

    public long getLocalTimeStamp() {
        return -1L;
    }

    public IPath getLocation() {
        return this.workspaceLocation;
    }

    public String getName() {
        return "";
    }

    public IContainer getParent() {
        return null;
    }

    public IProject getProject() {
        return null;
    }

    public IProject getProject(String name) {
        Project result = this.projectTable.get(name);
        if (result == null) {
            IPath projectPath = new Path(null, name).makeAbsolute();
            String message = "Path for project must have only one segment.";
            Assert.isLegal((projectPath.segmentCount() == 1 ? 1 : 0) != 0, (String)message);
            String canonicalName = projectPath.lastSegment();
            result = this.projectTable.get(canonicalName);
            if (result != null) {
                return result;
            }
            result = new Project(projectPath, this.workspace);
            this.projectTable.put(canonicalName, result);
        }
        return result;
    }

    public IPath getProjectRelativePath() {
        return Path.EMPTY;
    }

    public IProject[] getProjects() {
        return this.getProjects(0);
    }

    /*
     * Unable to fully structure code
     */
    public IProject[] getProjects(int memberFlags) {
        block4: {
            roots = this.getChildren(memberFlags);
            result = new IProject[roots.length];
            try {
                System.arraycopy(roots, 0, result, 0, roots.length);
                break block4;
            }
            catch (ArrayStoreException ex) {
                i = 0;
                ** while (i < roots.length)
            }
lbl-1000:
            // 1 sources

            {
                if (roots[i].getType() != 4) {
                    Policy.log(4, NLS.bind((String)"{0} is an invalid child of the workspace root.", (Object)roots[i]), null);
                }
                ++i;
                continue;
            }
lbl13:
            // 1 sources

            throw ex;
        }
        return result;
    }

    public int getType() {
        return 8;
    }

    public void internalSetLocal(boolean flag, int depth) throws CoreException {
        if (depth == 0) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        IResource[] children = this.getChildren(0);
        int i = 0;
        while (i < children.length) {
            ((Resource)children[i]).internalSetLocal(flag, depth);
            ++i;
        }
    }

    public boolean isDerived(int options) {
        return false;
    }

    public boolean isHidden() {
        return false;
    }

    public boolean isHidden(int options) {
        return false;
    }

    public boolean isTeamPrivateMember(int options) {
        return false;
    }

    public boolean isLinked(int options) {
        return false;
    }

    public boolean isLocal(int depth) {
        return this.isLocal(-1, depth);
    }

    public boolean isLocal(int flags, int depth) {
        if (depth == 0) {
            return true;
        }
        if (depth == 1) {
            depth = 0;
        }
        IResource[] children = this.getChildren(0);
        int i = 0;
        while (i < children.length) {
            if (!children[i].isLocal(depth)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isPhantom() {
        return false;
    }

    public void setDefaultCharset(String charset) {
        Preferences resourcesPreferences = ResourcesPlugin.getPlugin().getPluginPreferences();
        if (charset != null) {
            resourcesPreferences.setValue("encoding", charset);
        } else {
            resourcesPreferences.setToDefault("encoding");
        }
    }

    public void setHidden(boolean isHidden) {
    }

    public long setLocalTimeStamp(long value) {
        if (value < 0L) {
            throw new IllegalArgumentException("Illegal time stamp: " + value);
        }
        return value;
    }

    public void setReadOnly(boolean readonly) {
    }

    public void touch(IProgressMonitor monitor) {
    }
}

