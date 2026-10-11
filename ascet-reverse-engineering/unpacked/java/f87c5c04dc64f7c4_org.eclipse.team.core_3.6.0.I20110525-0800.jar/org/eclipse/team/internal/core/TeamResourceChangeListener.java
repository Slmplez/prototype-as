/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.team.core.RepositoryProvider;
import org.eclipse.team.core.RepositoryProviderType;
import org.eclipse.team.internal.core.TeamPlugin;

public final class TeamResourceChangeListener
implements IResourceChangeListener {
    private static final Map metaFilePaths = new HashMap();

    static {
        String[] ids = RepositoryProvider.getAllProviderTypeIds();
        int i = 0;
        while (i < ids.length) {
            String id = ids[i];
            IPath[] paths = TeamPlugin.getMetaFilePaths(id);
            if (paths != null) {
                metaFilePaths.put(id, paths);
            }
            ++i;
        }
    }

    public void resourceChanged(IResourceChangeEvent event) {
        IResourceDelta[] projectDeltas = event.getDelta().getAffectedChildren();
        int i = 0;
        while (i < projectDeltas.length) {
            RepositoryProvider provider;
            IResourceDelta delta = projectDeltas[i];
            IResource resource = delta.getResource();
            IProject project = resource.getProject();
            if (!RepositoryProvider.isShared(project)) {
                this.handleUnsharedProjectChanges(project, delta);
            } else if (delta.getKind() == 1 && (delta.getFlags() & 0x1000) != 0 && (provider = RepositoryProvider.getProvider(project)) != null && !provider.getProject().equals((Object)project)) {
                provider.setProject(project);
            }
            ++i;
        }
    }

    private void handleUnsharedProjectChanges(IProject project, IResourceDelta delta) {
        String repositoryId = null;
        HashSet<IContainer> metaFileContainers = new HashSet<IContainer>();
        HashSet<String> badIds = new HashSet<String>();
        IFile[] files = this.getAddedFiles(delta);
        int i = 0;
        while (i < files.length) {
            IFile file = files[i];
            String typeId = this.getMetaFileType(file);
            if (typeId != null) {
                if (repositoryId == null) {
                    repositoryId = typeId;
                } else if (!repositoryId.equals(typeId) && !badIds.contains(typeId)) {
                    TeamPlugin.log(2, "Meta files for two repository types (" + repositoryId + " and " + typeId + " was found in project " + project.getName() + ".", null);
                    badIds.add(typeId);
                }
                if (typeId.equals(repositoryId)) {
                    IContainer container = this.getContainer(typeId, file);
                    metaFileContainers.add(container);
                }
            }
            ++i;
        }
        if (repositoryId != null) {
            RepositoryProviderType type = RepositoryProviderType.getProviderType(repositoryId);
            type.metaFilesDetected(project, metaFileContainers.toArray(new IContainer[metaFileContainers.size()]));
        }
    }

    private IContainer getContainer(String typeId, IFile file) {
        IPath[] paths = (IPath[])metaFilePaths.get(typeId);
        IPath foundPath = null;
        IPath projectRelativePath = file.getProjectRelativePath();
        int i = 0;
        while (i < paths.length) {
            IPath path = paths[i];
            if (this.isSuffix(projectRelativePath, path)) {
                foundPath = path;
            }
            ++i;
        }
        IFile resource = file;
        if (foundPath != null) {
            int i2 = 0;
            while (i2 < foundPath.segmentCount()) {
                resource = resource.getParent();
                ++i2;
            }
        }
        if (resource.getType() == 1) {
            return file.getParent();
        }
        return (IContainer)resource;
    }

    private String getMetaFileType(IFile file) {
        Iterator iter = metaFilePaths.keySet().iterator();
        while (iter.hasNext()) {
            String id = (String)iter.next();
            IPath[] paths = (IPath[])metaFilePaths.get(id);
            int i = 0;
            while (i < paths.length) {
                IPath path = paths[i];
                if (this.isSuffix(file.getProjectRelativePath(), path)) {
                    return id;
                }
                ++i;
            }
        }
        return null;
    }

    private boolean isSuffix(IPath path, IPath suffix) {
        if (path.segmentCount() < suffix.segmentCount()) {
            return false;
        }
        int i = 0;
        while (i < suffix.segmentCount()) {
            if (!suffix.segment(i).equals(path.segment(path.segmentCount() - suffix.segmentCount() + i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private IFile[] getAddedFiles(IResourceDelta delta) {
        final ArrayList result = new ArrayList();
        try {
            delta.accept(new IResourceDeltaVisitor(){

                public boolean visit(IResourceDelta delta) throws CoreException {
                    if ((delta.getKind() & 1) != 0 && delta.getResource().getType() == 1) {
                        result.add(delta.getResource());
                    }
                    return true;
                }
            });
        }
        catch (CoreException e) {
            TeamPlugin.log(4, "An error occurred while scanning for meta-file changes", e);
        }
        return result.toArray(new IFile[result.size()]);
    }
}

