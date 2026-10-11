/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import java.net.URI;
import java.util.LinkedList;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.localstore.FileSystemResourceManager;
import org.eclipse.core.internal.localstore.IUnifiedTreeVisitor;
import org.eclipse.core.internal.localstore.RefreshLocalVisitor;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.File;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.Folder;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.osgi.util.NLS;

public class CopyVisitor
implements IUnifiedTreeVisitor {
    protected IResource rootDestination;
    protected IProgressMonitor monitor;
    protected int updateFlags;
    protected boolean force;
    protected boolean isDeep;
    protected int segmentsToDrop;
    protected MultiStatus status;
    protected RefreshLocalVisitor refreshLocalVisitor;
    private FileSystemResourceManager localManager;

    public CopyVisitor(IResource rootSource, IResource destination, int updateFlags, IProgressMonitor monitor) {
        this.localManager = ((Resource)rootSource).getLocalManager();
        this.rootDestination = destination;
        this.updateFlags = updateFlags;
        this.isDeep = (updateFlags & 0x20) == 0;
        this.force = (updateFlags & 1) != 0;
        this.monitor = monitor;
        this.segmentsToDrop = rootSource.getFullPath().segmentCount();
        this.status = new MultiStatus("org.eclipse.core.resources", 1, Messages.localstore_copyProblem, null);
    }

    protected boolean copy(UnifiedTreeNode node) {
        IPath sufix;
        Resource destination;
        Resource source = (Resource)node.getResource();
        if (!this.copyProperties(source, destination = this.getDestinationResource(source, sufix = source.getFullPath().removeFirstSegments(this.segmentsToDrop)))) {
            return false;
        }
        return this.copyContents(node, source, destination);
    }

    protected boolean copyContents(UnifiedTreeNode node, Resource source, Resource destination) {
        block8: {
            block7: {
                if (!source.isVirtual()) break block7;
                ((Folder)destination).create(8192, true, null);
                return true;
            }
            if (this.isDeep && !source.isUnderVirtual() || !source.isLinked()) break block8;
            URI sourceLocationURI = this.getWorkspace().transferVariableDefinition(source, destination, source.getRawLocationURI());
            destination.createLink(sourceLocationURI, this.updateFlags & 0x10, null);
            return false;
        }
        try {
            if (source instanceof Container && ((Container)source).hasFilters()) {
                Project sourceProject = (Project)source.getProject();
                LinkedList<FilterDescription> originalDescriptions = sourceProject.internalGetDescription().getFilter(source.getProjectRelativePath());
                LinkedList<FilterDescription> filterDescriptions = FilterDescription.copy(originalDescriptions, destination);
                Project project = (Project)destination.getProject();
                project.internalGetDescription().setFilters(destination.getProjectRelativePath(), filterDescriptions);
                project.writeDescription(this.updateFlags);
            }
            IFileStore sourceStore = node.getStore();
            IFileStore destinationStore = destination.getStore();
            if (destination == this.rootDestination) {
                destinationStore.getParent().mkdir(0, Policy.subMonitorFor(this.monitor, 0));
            }
            sourceStore.copy(destinationStore, 4, Policy.subMonitorFor(this.monitor, 0));
            ResourceInfo info = this.localManager.getWorkspace().createResource((IResource)destination, this.updateFlags);
            this.localManager.updateLocalSync(info, destinationStore.fetchInfo().getLastModified());
            this.getWorkspace().getAliasManager().updateAliases(destination, destinationStore, 0, this.monitor);
            if (destination.getType() == 1) {
                ((File)destination).updateMetadataFiles();
            }
        }
        catch (CoreException e) {
            this.status.add(e.getStatus());
        }
        return true;
    }

    protected boolean copyProperties(Resource target, Resource destination) {
        try {
            target.getPropertyManager().copy(target, destination, 0);
            return true;
        }
        catch (CoreException e) {
            this.status.add(e.getStatus());
            return false;
        }
    }

    protected Resource getDestinationResource(Resource source, IPath suffix) {
        if (suffix.segmentCount() == 0) {
            return (Resource)this.rootDestination;
        }
        IPath destinationPath = this.rootDestination.getFullPath().append(suffix);
        return this.getWorkspace().newResource(destinationPath, source.getType());
    }

    protected RefreshLocalVisitor getRefreshLocalVisitor() {
        if (this.refreshLocalVisitor == null) {
            this.refreshLocalVisitor = new RefreshLocalVisitor(Policy.monitorFor(null));
        }
        return this.refreshLocalVisitor;
    }

    public IStatus getStatus() {
        return this.status;
    }

    protected Workspace getWorkspace() {
        return (Workspace)this.rootDestination.getWorkspace();
    }

    protected boolean isSynchronized(UnifiedTreeNode node) {
        if (node.getResource().isVirtual()) {
            return true;
        }
        if (!node.existsInWorkspace() || !node.existsInFileSystem()) {
            return false;
        }
        if (node.isFolder() && node.getResource().getType() == 2) {
            return true;
        }
        Resource target = (Resource)node.getResource();
        long lastModifed = target.getResourceInfo(false, false).getLocalSyncInfo();
        return lastModifed == node.getLastModified();
    }

    protected void synchronize(UnifiedTreeNode node) throws CoreException {
        this.getRefreshLocalVisitor().visit(node);
    }

    public boolean visit(UnifiedTreeNode node) throws CoreException {
        Policy.checkCanceled(this.monitor);
        int work = 1;
        try {
            if (node.getStore() == null) {
                IPath path = node.getResource().getFullPath();
                String message = NLS.bind((String)Messages.localstore_locationUndefined, (Object)path);
                this.status.add((IStatus)new ResourceStatus(271, path, message, null));
                return false;
            }
            boolean wasSynchronized = this.isSynchronized(node);
            if (this.force && !wasSynchronized) {
                this.synchronize(node);
                work = 0;
                if (!node.existsInFileSystem()) {
                    IPath path = node.getResource().getFullPath();
                    String message = NLS.bind((String)Messages.resources_mustExist, (Object)path);
                    this.status.add((IStatus)new ResourceStatus(368, path, message, null));
                    return false;
                }
            }
            if (!this.force && !wasSynchronized) {
                IPath path = node.getResource().getFullPath();
                String message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)path);
                this.status.add((IStatus)new ResourceStatus(274, path, message, null));
                return true;
            }
            boolean bl = this.copy(node);
            return bl;
        }
        finally {
            this.monitor.worked(work);
        }
    }
}

