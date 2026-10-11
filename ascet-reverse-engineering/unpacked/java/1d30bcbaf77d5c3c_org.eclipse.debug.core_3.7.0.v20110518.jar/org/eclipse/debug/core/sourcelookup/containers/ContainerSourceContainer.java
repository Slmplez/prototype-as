/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.debug.core.sourcelookup.containers;

import java.net.URI;
import java.util.ArrayList;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.FolderSourceContainer;

public abstract class ContainerSourceContainer
extends CompositeSourceContainer {
    private IContainer fContainer = null;
    private boolean fSubfolders = false;
    private URI fRootURI = null;
    private IFileStore fRootFile = null;
    private IWorkspaceRoot fRoot = null;

    public ContainerSourceContainer(IContainer container, boolean subfolders) {
        this.fContainer = container;
        this.fSubfolders = subfolders;
        this.fRootURI = this.fContainer.getLocationURI();
        if (this.fRootURI != null) {
            try {
                this.fRootFile = EFS.getStore((URI)this.fRootURI);
            }
            catch (CoreException coreException) {}
            this.fRoot = ResourcesPlugin.getWorkspace().getRoot();
        }
    }

    public IContainer getContainer() {
        return this.fContainer;
    }

    public Object[] findSourceElements(String name) throws CoreException {
        ArrayList<Object> sources = new ArrayList<Object>();
        if (this.validateFile(name)) {
            IFile file = this.fContainer.getFile((IPath)new Path(name));
            if (file.exists()) {
                sources.add(file);
            } else {
                if (this.fRootURI == null) {
                    return EMPTY;
                }
                IFileStore target = this.fRootFile.getFileStore((IPath)new Path(name));
                if (target.fetchInfo().exists()) {
                    IFile[] files = this.fRoot.findFilesForLocationURI(target.toURI());
                    if (this.isFindDuplicates() && files.length > 1) {
                        int i = 0;
                        while (i < files.length) {
                            sources.add(files[i]);
                            ++i;
                        }
                    } else if (files.length > 0) {
                        sources.add(files[0]);
                    }
                }
            }
        }
        if (this.isFindDuplicates() && this.fSubfolders || sources.isEmpty() && this.fSubfolders) {
            ISourceContainer[] containers = this.getSourceContainers();
            int i = 0;
            while (i < containers.length) {
                Object[] objects = containers[i].findSourceElements(name);
                if (objects != null && objects.length != 0) {
                    if (this.isFindDuplicates()) {
                        int j = 0;
                        while (j < objects.length) {
                            sources.add(objects[j]);
                            ++j;
                        }
                    } else {
                        sources.add(objects[0]);
                        break;
                    }
                }
                ++i;
            }
        }
        if (sources.isEmpty()) {
            return EMPTY;
        }
        return sources.toArray();
    }

    public String getName() {
        return this.getContainer().getName();
    }

    public boolean equals(Object obj) {
        if (obj != null && obj instanceof ContainerSourceContainer) {
            ContainerSourceContainer loc = (ContainerSourceContainer)obj;
            return loc.getContainer().equals((Object)this.getContainer());
        }
        return false;
    }

    public int hashCode() {
        return this.getContainer().hashCode();
    }

    public boolean isComposite() {
        return this.fSubfolders;
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        if (this.fSubfolders) {
            IResource[] resources = this.getContainer().members();
            ArrayList<FolderSourceContainer> list = new ArrayList<FolderSourceContainer>(resources.length);
            int i = 0;
            while (i < resources.length) {
                IResource resource = resources[i];
                if (resource.getType() == 2) {
                    list.add(new FolderSourceContainer((IContainer)((IFolder)resource), this.fSubfolders));
                }
                ++i;
            }
            ISourceContainer[] containers = list.toArray(new ISourceContainer[list.size()]);
            int i2 = 0;
            while (i2 < containers.length) {
                ISourceContainer container = containers[i2];
                container.init(this.getDirector());
                ++i2;
            }
            return containers;
        }
        return new ISourceContainer[0];
    }

    private boolean validateFile(String name) {
        IContainer container = this.getContainer();
        IPath path = container.getFullPath().append(name);
        return ResourcesPlugin.getWorkspace().validatePath(path.toOSString(), 1).isOK();
    }
}

