/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.localstore;

import java.io.File;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class FileStoreRoot {
    private int chop;
    private boolean isValid = true;
    private IPath localRoot = null;
    private URI root;

    FileStoreRoot(URI rootURI, IPath workspacePath) {
        Assert.isNotNull((Object)rootURI);
        Assert.isNotNull((Object)workspacePath);
        this.root = rootURI;
        this.chop = workspacePath.segmentCount();
        this.localRoot = this.toLocalPath(this.root);
    }

    private IPathVariableManager getManager(IPath workspacePath) {
        IWorkspaceRoot workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
        IResource resource = workspaceRoot.findMember(workspacePath);
        if (resource != null) {
            return resource.getPathVariableManager();
        }
        return workspaceRoot.getFile(workspacePath).getPathVariableManager();
    }

    public URI computeURI(IPath workspacePath) {
        IPath childPath = workspacePath.removeFirstSegments(this.chop);
        URI rootURI = this.getManager(workspacePath).resolveURI(this.root);
        if (childPath.segmentCount() == 0) {
            return rootURI;
        }
        try {
            return EFS.getStore((URI)rootURI).getChild(childPath).toURI();
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    IFileStore createStore(IPath workspacePath, IResource resource) throws CoreException {
        IPath childPath = workspacePath.removeFirstSegments(this.chop);
        URI uri = resource.getPathVariableManager().resolveURI(this.root);
        if (!uri.isAbsolute()) {
            return EFS.getNullFileSystem().getStore(workspacePath);
        }
        IFileStore rootStore = EFS.getStore((URI)uri);
        if (childPath.segmentCount() == 0) {
            return rootStore;
        }
        return rootStore.getChild(childPath);
    }

    boolean isValid() {
        return this.isValid;
    }

    IPath localLocation(IPath workspacePath, IResource resource) {
        if (this.localRoot == null) {
            return null;
        }
        IPath location = workspacePath.segmentCount() <= this.chop ? this.localRoot : this.localRoot.append(workspacePath.removeFirstSegments(this.chop));
        location = resource.getPathVariableManager().resolvePath(location);
        if (location == null || !location.isAbsolute()) {
            return null;
        }
        return location;
    }

    void setValid(boolean value) {
        this.isValid = value;
    }

    private IPath toLocalPath(URI uri) {
        try {
            File localFile = EFS.getStore((URI)uri).toLocalFile(0, null);
            return localFile == null ? null : new Path(localFile.getAbsolutePath());
        }
        catch (CoreException coreException) {
            return FileUtil.toPath(uri);
        }
    }
}

