/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.IFileSystem
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.localstore.FileSystemResourceManager;
import org.eclipse.core.internal.properties.IPropertyManager;
import org.eclipse.core.internal.resources.File;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectInfo;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.BitMask;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.team.IResourceTree;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.osgi.util.NLS;

class ResourceTree
implements IResourceTree {
    private boolean isValid = true;
    private final FileSystemResourceManager localManager;
    private ILock lock;
    private MultiStatus multistatus;
    private int updateFlags;

    public ResourceTree(FileSystemResourceManager localManager, ILock lock, MultiStatus status, int updateFlags) {
        this.localManager = localManager;
        this.lock = lock;
        this.multistatus = status;
        this.updateFlags = updateFlags;
    }

    public void addToLocalHistory(IFile file) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!file.exists()) {
                return;
            }
            IFileStore store = this.localManager.getStore(file);
            IFileInfo fileInfo = store.fetchInfo();
            if (!fileInfo.exists()) {
                return;
            }
            this.localManager.getHistoryStore().addState(file.getFullPath(), store, fileInfo, false);
        }
        finally {
            this.lock.release();
        }
    }

    private IFileStore computeDestinationStore(IProjectDescription destDescription) throws CoreException {
        URI destLocation = destDescription.getLocationURI();
        if (destLocation == null) {
            IPath rootLocation = ResourcesPlugin.getWorkspace().getRoot().getLocation();
            destLocation = rootLocation.append(destDescription.getName()).toFile().toURI();
        }
        return EFS.getStore((URI)destLocation);
    }

    public long computeTimestamp(IFile file) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!file.getProject().exists()) {
                return 0L;
            }
            long l = this.internalComputeTimestamp(file);
            return l;
        }
        finally {
            this.lock.release();
        }
    }

    private void copyLocalHistory(IResource source, IResource destination) {
        this.localManager.getHistoryStore().copyHistory(source, destination, true);
    }

    public void deletedFile(IFile file) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!file.exists()) {
                return;
            }
            try {
                ((Resource)((Object)file)).deleteResource(true, null);
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.resources_errorDeleting, (Object)file.getFullPath());
                ResourceStatus status = new ResourceStatus(4, file.getFullPath(), message, e);
                this.failed(status);
            }
        }
        finally {
            this.lock.release();
        }
    }

    public void deletedFolder(IFolder folder) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!folder.exists()) {
                return;
            }
            try {
                ((Resource)((Object)folder)).deleteResource(true, null);
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.resources_errorDeleting, (Object)folder.getFullPath());
                ResourceStatus status = new ResourceStatus(4, folder.getFullPath(), message, e);
                this.failed(status);
            }
        }
        finally {
            this.lock.release();
        }
    }

    public void deletedProject(IProject target) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!target.exists()) {
                return;
            }
            try {
                ((Project)target).deleteResource(false, null);
            }
            catch (CoreException e) {
                String message = NLS.bind((String)Messages.resources_errorDeleting, (Object)target.getFullPath());
                ResourceStatus status = new ResourceStatus(4, target.getFullPath(), message, e);
                this.failed(status);
            }
        }
        finally {
            this.lock.release();
        }
    }

    private boolean ensureDestinationEmpty(IProject source, IFileStore destinationStore, IProgressMonitor monitor) throws CoreException {
        if (!destinationStore.fetchInfo().exists()) {
            return true;
        }
        if (destinationStore.childNames(0, Policy.subMonitorFor(monitor, 0)).length > 0) {
            if (((Resource)((Object)source)).getStore().equals(destinationStore)) {
                return true;
            }
            String message = NLS.bind((String)Messages.localstore_resourceExists, (Object)destinationStore);
            ResourceStatus status = new ResourceStatus(4, source.getFullPath(), message, null);
            this.failed(status);
            return false;
        }
        destinationStore.delete(0, Policy.subMonitorFor(monitor, 0));
        return true;
    }

    public void failed(IStatus reason) {
        Assert.isLegal((boolean)this.isValid);
        this.multistatus.add(reason);
    }

    protected IStatus getStatus() {
        return this.multistatus;
    }

    public long getTimestamp(IFile file) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!file.exists()) {
                return 0L;
            }
            ResourceInfo info = ((File)file).getResourceInfo(false, false);
            long l = info == null ? 0L : info.getLocalSyncInfo();
            return l;
        }
        finally {
            this.lock.release();
        }
    }

    private long internalComputeTimestamp(IFile file) {
        IFileInfo fileInfo = this.localManager.getStore(file).fetchInfo();
        return fileInfo.exists() ? fileInfo.getLastModified() : 0L;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean internalDeleteFile(IFile file, int flags, IProgressMonitor monitor) {
        try {
            boolean inSync;
            boolean force;
            String message = NLS.bind((String)Messages.resources_deleting, (Object)file.getFullPath());
            monitor.beginTask(message, 100);
            Policy.checkCanceled(monitor);
            if (!file.exists()) {
                return true;
            }
            if (file.isLinked()) {
                this.deletedFile(file);
                return true;
            }
            IFileStore fileStore = this.localManager.getStore(file);
            boolean localExists = fileStore.fetchInfo().exists();
            if (!localExists) {
                this.deletedFile(file);
                return true;
            }
            boolean keepHistory = (flags & 2) != 0;
            boolean bl = force = (flags & 1) != 0;
            if (keepHistory) {
                this.addToLocalHistory(file);
            }
            monitor.worked(25);
            if (!force && !(inSync = this.isSynchronized(file, 0)) && localExists) {
                message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)file.getFullPath());
                ResourceStatus status = new ResourceStatus(274, file.getFullPath(), message);
                this.failed(status);
                return false;
            }
            monitor.worked(25);
            try {
                fileStore.delete(0, Policy.subMonitorFor(monitor, 25));
                this.deletedFile(file);
                return true;
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.resources_couldnotDelete, (Object)fileStore.toString());
                ResourceStatus status = new ResourceStatus(273, file.getFullPath(), message, e);
                this.failed(status);
                monitor.done();
                return false;
            }
        }
        finally {
            monitor.done();
        }
    }

    private boolean internalDeleteFolder(IFolder folder, int flags, IProgressMonitor monitor) {
        String message = NLS.bind((String)Messages.resources_deleting, (Object)folder.getFullPath());
        monitor.beginTask("", 100);
        monitor.subTask(message);
        Policy.checkCanceled(monitor);
        if (!folder.exists()) {
            return true;
        }
        if (folder.isLinked()) {
            this.deletedFolder(folder);
            return true;
        }
        IFileStore fileStore = this.localManager.getStore(folder);
        if (!fileStore.fetchInfo().exists()) {
            this.deletedFolder(folder);
            return true;
        }
        try {
            this.localManager.delete(folder, flags, Policy.subMonitorFor(monitor, 100));
        }
        catch (CoreException ce) {
            message = NLS.bind((String)Messages.localstore_couldnotDelete, (Object)folder.getFullPath());
            ResourceStatus status = new ResourceStatus(4, 273, folder.getFullPath(), message, ce);
            this.failed(status);
            return false;
        }
        return true;
    }

    private boolean internalDeleteProject(IProject project, int flags, IProgressMonitor monitor) {
        String[] children;
        IResource[] members = null;
        try {
            members = project.members(10);
        }
        catch (CoreException e) {
            String message = NLS.bind((String)Messages.resources_errorMembers, (Object)project.getFullPath());
            ResourceStatus status = new ResourceStatus(4, project.getFullPath(), message, e);
            this.failed(status);
            return false;
        }
        boolean deletedChildren = true;
        int i = 0;
        while (i < members.length) {
            IResource child = members[i];
            switch (child.getType()) {
                case 1: {
                    if (".project".equals(child.getName())) break;
                    deletedChildren &= this.internalDeleteFile((IFile)child, flags, Policy.subMonitorFor(monitor, 100 / members.length));
                    break;
                }
                case 2: {
                    deletedChildren &= this.internalDeleteFolder((IFolder)child, flags, Policy.subMonitorFor(monitor, 100 / members.length));
                }
            }
            ++i;
        }
        IFileStore projectStore = this.localManager.getStore(project);
        if (!deletedChildren) {
            return false;
        }
        try {
            children = projectStore.childNames(0, null);
        }
        catch (CoreException coreException) {
            children = new String[]{};
        }
        boolean force = BitMask.isSet(flags, 1);
        if (!(force || children.length == 1 && ".project".equals(children[0]))) {
            String message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)project.getName());
            this.failed(new ResourceStatus(274, project.getFullPath(), message));
            return false;
        }
        IResource file = project.findMember(".project");
        if (file == null) {
            IFileStore dotProject = projectStore.getChild(".project");
            try {
                dotProject.delete(0, null);
            }
            catch (CoreException e) {
                this.failed(e.getStatus());
            }
        } else {
            boolean deletedProjectFile = this.internalDeleteFile((IFile)file, flags, Policy.monitorFor(null));
            if (!deletedProjectFile) {
                String message = NLS.bind((String)Messages.resources_couldnotDelete, (Object)file.getFullPath());
                ResourceStatus status = new ResourceStatus(273, file.getFullPath(), message);
                this.failed(status);
                return false;
            }
        }
        try {
            projectStore.delete(0, null);
            this.deletedProject(project);
            return true;
        }
        catch (CoreException e) {
            String message = NLS.bind((String)Messages.resources_couldnotDelete, (Object)projectStore.toString());
            ResourceStatus status = new ResourceStatus(273, project.getFullPath(), message, e);
            this.failed(status);
            return false;
        }
    }

    private boolean isContentChange(IProject project, IProjectDescription destDescription) {
        ProjectDescription srcDescription = ((Project)project).internalGetDescription();
        URI srcLocation = srcDescription.getLocationURI();
        URI destLocation = destDescription.getLocationURI();
        if (srcLocation == null || destLocation == null) {
            return true;
        }
        return !srcLocation.equals(destLocation);
    }

    private boolean isNameChange(IProject project, IProjectDescription description) {
        return !project.getName().equals(description.getName());
    }

    private void safeRefresh(IResource resource) {
        try {
            resource.refreshLocal(2, (IProgressMonitor)new NullProgressMonitor());
        }
        catch (CoreException ce) {
            ResourceStatus status = new ResourceStatus(4, 273, resource.getFullPath(), Messages.refresh_refreshErr, ce);
            this.failed(status);
        }
    }

    public boolean isSynchronized(IResource resource, int depth) {
        try {
            this.lock.acquire();
            boolean bl = this.localManager.isSynchronized(resource, depth);
            return bl;
        }
        finally {
            this.lock.release();
        }
    }

    void makeInvalid() {
        this.isValid = false;
    }

    public void movedFile(IFile source, IFile destination) {
        Assert.isLegal((boolean)this.isValid);
        try {
            ResourceStatus status;
            String message;
            this.lock.acquire();
            if (!source.exists()) {
                return;
            }
            if (destination.exists()) {
                String message2 = NLS.bind((String)Messages.resources_mustNotExist, (Object)destination.getFullPath());
                ResourceStatus status2 = new ResourceStatus(4, destination.getFullPath(), message2);
                this.failed(status2);
            }
            IPropertyManager propertyManager = ((Resource)((Object)source)).getPropertyManager();
            try {
                propertyManager.copy(source, destination, 0);
                propertyManager.deleteProperties(source, 0);
            }
            catch (CoreException e) {
                String message3 = NLS.bind((String)Messages.resources_errorPropertiesMove, (Object)source.getFullPath(), (Object)destination.getFullPath());
                ResourceStatus status3 = new ResourceStatus(4, source.getFullPath(), message3, e);
                this.failed(status3);
            }
            Workspace workspace = (Workspace)source.getWorkspace();
            try {
                workspace.move((Resource)((Object)source), destination.getFullPath(), 0, this.updateFlags, false);
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.resources_errorMoving, (Object)source.getFullPath(), (Object)destination.getFullPath());
                status = new ResourceStatus(4, source.getFullPath(), message, e);
                this.failed(status);
            }
            try {
                workspace.getMarkerManager().moved(source, destination, 0);
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.resources_errorMarkersDelete, (Object)source.getFullPath());
                status = new ResourceStatus(4, source.getFullPath(), message, e);
                this.failed(status);
            }
            this.copyLocalHistory(source, destination);
        }
        finally {
            this.lock.release();
        }
    }

    public void movedFolderSubtree(IFolder source, IFolder destination) {
        Assert.isLegal((boolean)this.isValid);
        try {
            ResourceStatus status;
            String message;
            this.lock.acquire();
            if (!source.exists()) {
                return;
            }
            if (destination.exists()) {
                String message2 = NLS.bind((String)Messages.resources_mustNotExist, (Object)destination.getFullPath());
                ResourceStatus status2 = new ResourceStatus(4, destination.getFullPath(), message2);
                this.failed(status2);
                return;
            }
            int depth = 2;
            IPropertyManager propertyManager = ((Resource)((Object)source)).getPropertyManager();
            try {
                propertyManager.copy(source, destination, depth);
                propertyManager.deleteProperties(source, depth);
            }
            catch (CoreException e) {
                String message3 = NLS.bind((String)Messages.resources_errorPropertiesMove, (Object)source.getFullPath(), (Object)destination.getFullPath());
                ResourceStatus status3 = new ResourceStatus(4, source.getFullPath(), message3, e);
                this.failed(status3);
            }
            Workspace workspace = (Workspace)source.getWorkspace();
            try {
                workspace.move((Resource)((Object)source), destination.getFullPath(), depth, this.updateFlags, false);
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.resources_errorMoving, (Object)source.getFullPath(), (Object)destination.getFullPath());
                status = new ResourceStatus(4, source.getFullPath(), message, e);
                this.failed(status);
            }
            try {
                workspace.getMarkerManager().moved(source, destination, depth);
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.resources_errorMarkersDelete, (Object)source.getFullPath());
                status = new ResourceStatus(4, source.getFullPath(), message, e);
                this.failed(status);
            }
            this.copyLocalHistory(source, destination);
        }
        finally {
            this.lock.release();
        }
    }

    public boolean movedProjectSubtree(IProject project, IProjectDescription destDescription) {
        Assert.isLegal((boolean)this.isValid);
        try {
            ResourceStatus status;
            String message;
            this.lock.acquire();
            if (!project.exists()) {
                return true;
            }
            Project source = (Project)project;
            Project destination = (Project)source.getWorkspace().getRoot().getProject(destDescription.getName());
            Workspace workspace = (Workspace)source.getWorkspace();
            int depth = 2;
            if (this.isNameChange(source, destDescription)) {
                ResourceStatus status2;
                String message2;
                if (destination.exists()) {
                    String message3 = NLS.bind((String)Messages.resources_mustNotExist, (Object)destination.getFullPath());
                    ResourceStatus status3 = new ResourceStatus(4, destination.getFullPath(), message3);
                    this.failed(status3);
                    return false;
                }
                try {
                    source.getPropertyManager().closePropertyStore(source);
                    this.localManager.getHistoryStore().closeHistoryStore(source);
                }
                catch (CoreException e) {
                    message = NLS.bind((String)Messages.properties_couldNotClose, (Object)source.getFullPath());
                    status = new ResourceStatus(4, source.getFullPath(), message, e);
                    this.failed(status);
                }
                IFileSystem fileSystem = EFS.getLocalFileSystem();
                IFileStore oldMetaArea = fileSystem.getStore(workspace.getMetaArea().locationFor(source));
                IFileStore newMetaArea = fileSystem.getStore(workspace.getMetaArea().locationFor(destination));
                try {
                    oldMetaArea.move(newMetaArea, 0, (IProgressMonitor)new NullProgressMonitor());
                }
                catch (CoreException e) {
                    message2 = NLS.bind((String)Messages.resources_moveMeta, (Object)oldMetaArea, (Object)newMetaArea);
                    status2 = new ResourceStatus(568, destination.getFullPath(), message2, e);
                    this.failed(status2);
                }
                try {
                    workspace.move(source, destination.getFullPath(), depth, this.updateFlags, true);
                }
                catch (CoreException e) {
                    message2 = NLS.bind((String)Messages.resources_errorMoving, (Object)source.getFullPath(), (Object)destination.getFullPath());
                    status2 = new ResourceStatus(4, source.getFullPath(), message2, e);
                    this.failed(status2);
                }
                ((ProjectInfo)destination.getResourceInfo(false, true)).fixupAfterMove();
                try {
                    workspace.getMarkerManager().moved(source, destination, depth);
                }
                catch (CoreException e) {
                    message2 = NLS.bind((String)Messages.resources_errorMarkersMove, (Object)source.getFullPath(), (Object)destination.getFullPath());
                    status2 = new ResourceStatus(4, source.getFullPath(), message2, e);
                    this.failed(status2);
                }
                this.copyLocalHistory(source, destination);
            }
            try {
                ((ProjectDescription)destDescription).setLinkDescriptions(destination.internalGetDescription().getLinks());
                ((ProjectDescription)destDescription).setFilterDescriptions(destination.internalGetDescription().getFilters());
                ((ProjectDescription)destDescription).setVariableDescriptions(destination.internalGetDescription().getVariables());
                destination.internalSetDescription(destDescription, true);
                destination.writeDescription(1);
            }
            catch (CoreException e) {
                message = Messages.resources_projectDesc;
                status = new ResourceStatus(4, destination.getFullPath(), message, e);
                this.failed(status);
            }
            try {
                workspace.getMetaArea().writePrivateDescription(destination);
            }
            catch (CoreException e) {
                this.failed(e.getStatus());
            }
            try {
                destination.refreshLocal(2, (IProgressMonitor)new NullProgressMonitor());
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.resources_errorRefresh, (Object)destination.getFullPath());
                status = new ResourceStatus(4, destination.getFullPath(), message, e);
                this.failed(status);
                this.lock.release();
                return false;
            }
            return true;
        }
        finally {
            this.lock.release();
        }
    }

    private void moveProjectContent(IProject source, IFileStore destStore, int flags, IProgressMonitor monitor) throws CoreException {
        try {
            boolean replace;
            String message = NLS.bind((String)Messages.resources_moving, (Object)source.getFullPath());
            monitor.beginTask(message, 10);
            IProjectDescription srcDescription = source.getDescription();
            URI srcLocation = srcDescription.getLocationURI();
            if (srcLocation != null && URIUtil.equals((URI)srcLocation, (URI)destStore.toURI())) {
                return;
            }
            boolean bl = replace = (flags & 0x100) != 0;
            if (replace) {
                destStore.mkdir(0, Policy.subMonitorFor(monitor, 10));
                return;
            }
            this.localManager.move(source, destStore, flags, Policy.subMonitorFor(monitor, 9));
            if ((flags & 0x20) == 0) {
                IResource[] children = source.members();
                int i = 0;
                while (i < children.length) {
                    if (children[i].isLinked()) {
                        message = NLS.bind((String)Messages.resources_moving, (Object)children[i].getFullPath());
                        monitor.subTask(message);
                        IFileStore linkDestination = destStore.getChild(children[i].getName());
                        try {
                            this.localManager.move(children[i], linkDestination, flags, Policy.monitorFor(null));
                        }
                        catch (CoreException ce) {
                            this.failed(ce.getStatus());
                        }
                    }
                    ++i;
                }
            }
            monitor.worked(1);
        }
        finally {
            monitor.done();
        }
    }

    public void standardDeleteFile(IFile file, int flags, IProgressMonitor monitor) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            this.internalDeleteFile(file, flags, monitor);
        }
        finally {
            this.lock.release();
        }
    }

    public void standardDeleteFolder(IFolder folder, int flags, IProgressMonitor monitor) {
        Assert.isLegal((boolean)this.isValid);
        try {
            try {
                this.lock.acquire();
                this.internalDeleteFolder(folder, flags, monitor);
            }
            catch (OperationCanceledException oce) {
                this.safeRefresh(folder);
                throw oce;
            }
        }
        finally {
            this.lock.release();
            monitor.done();
        }
    }

    public void standardDeleteProject(IProject project, int flags, IProgressMonitor monitor) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            String message = NLS.bind((String)Messages.resources_deleting, (Object)project.getFullPath());
            monitor.beginTask(message, 100);
            if (!project.exists()) {
                return;
            }
            boolean alwaysDeleteContent = (flags & 4) != 0;
            boolean neverDeleteContent = (flags & 8) != 0;
            boolean success = true;
            if (alwaysDeleteContent || project.isOpen() && !neverDeleteContent) {
                if (alwaysDeleteContent || this.isSynchronized(project, 2)) {
                    flags |= 1;
                }
                if (project.isOpen()) {
                    success = this.internalDeleteProject(project, flags, monitor);
                    if (!success) {
                        IFileStore store = this.localManager.getStore(project);
                        message = NLS.bind((String)Messages.resources_couldnotDelete, (Object)store.toString());
                        ResourceStatus status = new ResourceStatus(273, project.getFullPath(), message);
                        this.failed(status);
                    }
                    return;
                }
                try {
                    IFileStore projectStore = this.localManager.getStore(project);
                    IFileStore[] members = projectStore.childStores(0, null);
                    int i = 0;
                    while (i < members.length) {
                        if (!".project".equals(members[i].getName())) {
                            members[i].delete(0, Policy.subMonitorFor(monitor, 87 / members.length));
                        }
                        ++i;
                    }
                    projectStore.delete(0, Policy.subMonitorFor(monitor, 87 / (members.length > 0 ? members.length : 1)));
                }
                catch (OperationCanceledException oce) {
                    this.safeRefresh(project);
                    throw oce;
                }
                catch (CoreException ce) {
                    message = NLS.bind((String)Messages.localstore_couldnotDelete, (Object)project.getFullPath());
                    ResourceStatus status = new ResourceStatus(4, 273, project.getFullPath(), message, ce);
                    this.failed(status);
                    this.lock.release();
                    monitor.done();
                    return;
                }
            }
            if (success) {
                this.deletedProject(project);
            } else {
                message = NLS.bind((String)Messages.localstore_couldnotDelete, (Object)project.getFullPath());
                ResourceStatus status = new ResourceStatus(273, project.getFullPath(), message);
                this.failed(status);
            }
        }
        finally {
            this.lock.release();
            monitor.done();
        }
    }

    public void standardMoveFile(IFile source, IFile destination, int flags, IProgressMonitor monitor) {
        Assert.isLegal((boolean)this.isValid);
        try {
            boolean failedDeletingSource;
            block15: {
                boolean isDeep;
                this.lock.acquire();
                String message = NLS.bind((String)Messages.resources_moving, (Object)source.getFullPath());
                monitor.subTask(message);
                if (!source.exists() || destination.exists() || !destination.getParent().isAccessible()) {
                    throw new IllegalArgumentException();
                }
                boolean force = (flags & 1) != 0;
                boolean keepHistory = (flags & 2) != 0;
                boolean bl = isDeep = (flags & 0x20) == 0;
                if (!force && !this.isSynchronized(source, 2)) {
                    message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)source.getFullPath());
                    ResourceStatus status = new ResourceStatus(274, source.getFullPath(), message);
                    this.failed(status);
                    return;
                }
                monitor.worked(25);
                if (keepHistory) {
                    this.addToLocalHistory(source);
                }
                monitor.worked(25);
                if (!isDeep && source.isLinked()) {
                    this.movedFile(source, destination);
                    return;
                }
                IFileStore destStore = null;
                failedDeletingSource = false;
                try {
                    destStore = this.localManager.getStore(destination);
                    destStore.getParent().mkdir(0, Policy.subMonitorFor(monitor, 0));
                    this.localManager.move(source, destStore, flags, monitor);
                }
                catch (CoreException e) {
                    this.failed(e.getStatus());
                    boolean bl2 = failedDeletingSource = destStore != null && destStore.fetchInfo().exists();
                    if (failedDeletingSource) break block15;
                    this.lock.release();
                    monitor.done();
                    return;
                }
            }
            this.movedFile(source, destination);
            this.updateMovedFileTimestamp(destination, this.internalComputeTimestamp(destination));
            if (failedDeletingSource) {
                try {
                    source.refreshLocal(2, null);
                }
                catch (CoreException coreException) {}
            }
            monitor.worked(25);
            return;
        }
        finally {
            this.lock.release();
            monitor.done();
        }
    }

    public void standardMoveFolder(IFolder source, IFolder destination, int flags, IProgressMonitor monitor) {
        Assert.isLegal((boolean)this.isValid);
        try {
            boolean failedDeletingSource;
            boolean isDeep;
            block14: {
                boolean force;
                this.lock.acquire();
                String message = NLS.bind((String)Messages.resources_moving, (Object)source.getFullPath());
                monitor.beginTask(message, 100);
                if (!source.exists() || destination.exists() || !destination.getParent().isAccessible()) {
                    throw new IllegalArgumentException();
                }
                boolean bl = force = (flags & 1) != 0;
                if (!force && !this.isSynchronized(source, 2)) {
                    message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)source.getFullPath());
                    ResourceStatus status = new ResourceStatus(4, source.getFullPath(), message);
                    this.failed(status);
                    return;
                }
                monitor.worked(20);
                boolean bl2 = isDeep = (flags & 0x20) == 0;
                if (!isDeep && (source.isLinked() || source.isVirtual())) {
                    this.movedFolderSubtree(source, destination);
                    return;
                }
                IFileStore destStore = null;
                failedDeletingSource = false;
                try {
                    destStore = this.localManager.getStore(destination);
                    this.localManager.move(source, destStore, flags, Policy.subMonitorFor(monitor, 60));
                }
                catch (CoreException e) {
                    this.failed(e.getStatus());
                    boolean bl3 = failedDeletingSource = destStore != null && destStore.fetchInfo().exists();
                    if (failedDeletingSource) break block14;
                    this.lock.release();
                    monitor.done();
                    return;
                }
            }
            this.movedFolderSubtree(source, destination);
            monitor.worked(20);
            this.updateTimestamps(destination, isDeep);
            if (failedDeletingSource) {
                try {
                    source.refreshLocal(2, null);
                    destination.refreshLocal(2, null);
                }
                catch (CoreException coreException) {}
            }
        }
        finally {
            this.lock.release();
            monitor.done();
        }
    }

    public void standardMoveProject(IProject source, IProjectDescription description, int flags, IProgressMonitor monitor) {
        Assert.isLegal((boolean)this.isValid);
        try {
            boolean force;
            this.lock.acquire();
            String message = NLS.bind((String)Messages.resources_moving, (Object)source.getFullPath());
            monitor.beginTask(message, 100);
            if (!source.isAccessible()) {
                throw new IllegalArgumentException();
            }
            if (!this.isContentChange(source, description)) {
                this.movedProjectSubtree(source, description);
                return;
            }
            boolean bl = force = (flags & 1) != 0;
            if (!force && !this.isSynchronized(source, 2)) {
                message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)source.getFullPath());
                ResourceStatus status = new ResourceStatus(274, source.getFullPath(), message);
                this.failed(status);
                return;
            }
            IFileStore destinationStore = this.computeDestinationStore(description);
            if ((flags & 0x100) == 0 && !this.ensureDestinationEmpty(source, destinationStore, monitor)) {
                return;
            }
            try {
                this.moveProjectContent(source, destinationStore, flags, Policy.subMonitorFor(monitor, 75));
            }
            catch (CoreException e) {
                message = NLS.bind((String)Messages.localstore_couldNotMove, (Object)source.getFullPath());
                ResourceStatus status = new ResourceStatus(4, source.getFullPath(), message, e);
                this.failed(status);
                try {
                    source.refreshLocal(2, null);
                }
                catch (CoreException coreException) {}
            }
            this.movedProjectSubtree(source, description);
            monitor.worked(12);
            boolean isDeep = (flags & 0x20) == 0;
            this.updateTimestamps(source.getWorkspace().getRoot().getProject(description.getName()), isDeep);
            monitor.worked(12);
        }
        finally {
            this.lock.release();
            monitor.done();
        }
    }

    public void updateMovedFileTimestamp(IFile file, long timestamp) {
        Assert.isLegal((boolean)this.isValid);
        try {
            this.lock.acquire();
            if (!file.exists()) {
                return;
            }
            ResourceInfo info = ((Resource)((Object)file)).getResourceInfo(false, true);
            this.localManager.updateLocalSync(info, timestamp);
            info.clear(65536);
        }
        finally {
            this.lock.release();
        }
    }

    private void updateTimestamps(IResource root, final boolean isDeep) {
        IResourceVisitor visitor = new IResourceVisitor(){

            public boolean visit(IResource resource) {
                if (resource.isLinked()) {
                    if (isDeep && !((Resource)resource).isUnderVirtual()) {
                        ResourceInfo info = ((Resource)resource).getResourceInfo(false, true);
                        info.clear(65536);
                    }
                    return true;
                }
                return true;
            }
        };
        try {
            root.accept(visitor, 2, 10);
        }
        catch (CoreException coreException) {}
    }
}

