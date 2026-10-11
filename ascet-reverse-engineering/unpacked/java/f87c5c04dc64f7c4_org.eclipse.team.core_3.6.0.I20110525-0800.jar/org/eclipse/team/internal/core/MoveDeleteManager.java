/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.team.IMoveDeleteHook
 *  org.eclipse.core.resources.team.IResourceTree
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.team.IMoveDeleteHook;
import org.eclipse.core.resources.team.IResourceTree;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.RepositoryProvider;
import org.eclipse.team.internal.core.DefaultMoveDeleteHook;

public class MoveDeleteManager
implements IMoveDeleteHook {
    private static final IMoveDeleteHook DEFAULT_HOOK = new DefaultMoveDeleteHook();

    private IMoveDeleteHook getHookFor(IResource resource) {
        IProject project = resource.getProject();
        RepositoryProvider provider = RepositoryProvider.getProvider(project);
        if (provider == null) {
            return DEFAULT_HOOK;
        }
        IMoveDeleteHook hook = provider.getMoveDeleteHook();
        if (hook == null) {
            return DEFAULT_HOOK;
        }
        return hook;
    }

    public boolean deleteFile(IResourceTree tree, IFile file, int updateFlags, IProgressMonitor monitor) {
        return this.getHookFor((IResource)file).deleteFile(tree, file, updateFlags, monitor);
    }

    public boolean deleteFolder(IResourceTree tree, IFolder folder, int updateFlags, IProgressMonitor monitor) {
        return this.getHookFor((IResource)folder).deleteFolder(tree, folder, updateFlags, monitor);
    }

    public boolean deleteProject(IResourceTree tree, IProject project, int updateFlags, IProgressMonitor monitor) {
        return this.getHookFor((IResource)project).deleteProject(tree, project, updateFlags, monitor);
    }

    public boolean moveFile(IResourceTree tree, IFile source, IFile destination, int updateFlags, IProgressMonitor monitor) {
        return this.getHookFor((IResource)source).moveFile(tree, source, destination, updateFlags, monitor);
    }

    public boolean moveFolder(IResourceTree tree, IFolder source, IFolder destination, int updateFlags, IProgressMonitor monitor) {
        return this.getHookFor((IResource)source).moveFolder(tree, source, destination, updateFlags, monitor);
    }

    public boolean moveProject(IResourceTree tree, IProject source, IProjectDescription description, int updateFlags, IProgressMonitor monitor) {
        return this.getHookFor((IResource)source).moveProject(tree, source, description, updateFlags, monitor);
    }
}

