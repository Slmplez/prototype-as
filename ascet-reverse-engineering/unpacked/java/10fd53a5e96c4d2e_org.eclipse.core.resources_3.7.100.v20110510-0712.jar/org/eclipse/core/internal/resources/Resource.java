/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.filesystem.provider.FileInfo
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.localstore.FileSystemResourceManager;
import org.eclipse.core.internal.properties.IPropertyManager;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Filter;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.Marker;
import org.eclipse.core.internal.resources.MarkerInfo;
import org.eclipse.core.internal.resources.MarkerManager;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectPathVariableManager;
import org.eclipse.core.internal.resources.ProjectPreferences;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceProxy;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.ResourceTree;
import org.eclipse.core.internal.resources.Rules;
import org.eclipse.core.internal.resources.WorkManager;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.utils.WrappedRuntimeException;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.resources.team.IMoveDeleteHook;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Resource
extends PlatformObject
implements IResource,
ICoreConstants,
Cloneable,
IPathRequestor {
    IPath path;
    Workspace workspace;

    protected Resource(IPath path, Workspace workspace) {
        this.path = path.removeTrailingSeparator();
        this.workspace = workspace;
    }

    @Override
    public void accept(final IResourceProxyVisitor visitor, final int memberFlags) throws CoreException {
        boolean includePhantoms = (memberFlags & 1) != 0;
        this.checkAccessible(this.getFlags(this.getResourceInfo(includePhantoms, false)));
        final ResourceProxy proxy = new ResourceProxy();
        IElementContentVisitor elementVisitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object contents) {
                ResourceInfo info = (ResourceInfo)contents;
                if (!Resource.this.isMember(Resource.this.getFlags(info), memberFlags)) {
                    return false;
                }
                proxy.requestor = requestor;
                proxy.info = info;
                try {
                    boolean bl = visitor.visit(proxy);
                    return bl;
                }
                catch (CoreException e) {
                    throw new WrappedRuntimeException(e);
                }
                finally {
                    proxy.reset();
                }
            }
        };
        try {
            try {
                new ElementTreeIterator(this.workspace.getElementTree(), this.getFullPath()).iterate(elementVisitor);
            }
            catch (WrappedRuntimeException e) {
                throw (CoreException)e.getTargetException();
            }
        }
        finally {
            proxy.requestor = null;
            proxy.info = null;
        }
    }

    @Override
    public void accept(IResourceVisitor visitor) throws CoreException {
        this.accept(visitor, 2, 0);
    }

    @Override
    public void accept(IResourceVisitor visitor, int depth, boolean includePhantoms) throws CoreException {
        this.accept(visitor, depth, includePhantoms ? 1 : 0);
    }

    @Override
    public void accept(final IResourceVisitor visitor, int depth, int memberFlags) throws CoreException {
        if (depth == 2) {
            this.accept(new IResourceProxyVisitor(){

                public boolean visit(IResourceProxy proxy) throws CoreException {
                    return visitor.visit(proxy.requestResource());
                }
            }, memberFlags);
            return;
        }
        boolean includePhantoms = (memberFlags & 1) != 0;
        ResourceInfo info = this.getResourceInfo(includePhantoms, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        if (!this.isMember(flags, memberFlags)) {
            return;
        }
        if (!visitor.visit(this) || depth == 0) {
            return;
        }
        info = this.getResourceInfo(includePhantoms, false);
        if (info == null) {
            return;
        }
        int type = info.getType();
        if (type == 1) {
            return;
        }
        IContainer resource = this.getType() != type ? (IContainer)((Object)this.workspace.newResource(this.getFullPath(), type)) : (IContainer)((Object)this);
        IResource[] members = resource.members(memberFlags);
        int i = 0;
        while (i < members.length) {
            members[i].accept(visitor, 0, memberFlags);
            ++i;
        }
    }

    protected void assertCopyRequirements(IPath destination, int destinationType, int updateFlags) throws CoreException {
        IStatus status = this.checkCopyRequirements(destination, destinationType, updateFlags);
        if (!status.isOK()) {
            Assert.isTrue((boolean)false, (String)status.getChildren()[0].getMessage());
        }
    }

    protected IFileInfo assertLinkRequirements(URI localLocation, int updateFlags) throws CoreException {
        IStatus locationStatus;
        boolean variableUndefined;
        boolean allowMissingLocal;
        boolean bl = allowMissingLocal = (updateFlags & 0x10) != 0;
        if ((updateFlags & 0x100) == 0) {
            this.checkDoesNotExist(this.getFlags(this.getResourceInfo(false, false)), true);
        }
        boolean bl2 = variableUndefined = (locationStatus = this.workspace.validateLinkLocationURI(this, localLocation)).getCode() == 333;
        if (locationStatus.getSeverity() == 4 || variableUndefined && !allowMissingLocal) {
            throw new ResourceException(locationStatus);
        }
        Container parent = (Container)this.getParent();
        parent.checkAccessible(this.getFlags(parent.getResourceInfo(false, false)));
        if (variableUndefined) {
            return null;
        }
        URI resolved = this.getPathVariableManager().resolveURI(localLocation);
        IFileStore store = EFS.getStore((URI)resolved);
        IFileInfo fileInfo = store.fetchInfo();
        boolean localExists = fileInfo.exists();
        if (!allowMissingLocal && !localExists) {
            String msg = NLS.bind((String)Messages.links_localDoesNotExist, (Object)store.toString());
            throw new ResourceException(269, this.getFullPath(), msg, null);
        }
        if (localExists && this.getType() == 2 != fileInfo.isDirectory()) {
            String msg = NLS.bind((String)Messages.links_wrongLocalType, (Object)this.getFullPath());
            throw new ResourceException(276, this.getFullPath(), msg, null);
        }
        return fileInfo;
    }

    protected void assertMoveRequirements(IPath destination, int destinationType, int updateFlags) throws CoreException {
        IStatus status = this.checkMoveRequirements(destination, destinationType, updateFlags);
        if (!status.isOK()) {
            Assert.isTrue((boolean)false, (String)status.getChildren()[0].getMessage());
        }
    }

    public void checkAccessible(int flags) throws CoreException {
        this.checkExists(flags, true);
    }

    private ResourceInfo checkAccessibleAndLocal(int depth) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        this.checkLocal(flags, depth);
        return info;
    }

    public IStatus checkCopyRequirements(IPath destination, int destinationType, int updateFlags) throws CoreException {
        String message = Messages.resources_copyNotMet;
        MultiStatus status = new MultiStatus("org.eclipse.core.resources", 77, message, null);
        if (destination == null) {
            message = Messages.resources_destNotNull;
            return new ResourceStatus(77, this.getFullPath(), message);
        }
        destination = this.makePathAbsolute(destination);
        if (this.getFullPath().isPrefixOf(destination)) {
            message = NLS.bind((String)Messages.resources_copyDestNotSub, (Object)this.getFullPath());
            status.add((IStatus)new ResourceStatus(77, this.getFullPath(), message));
        }
        this.checkValidPath(destination, destinationType, false);
        this.checkAccessibleAndLocal(2);
        IPath destinationParent = destination.removeLastSegments(1);
        this.checkValidGroupContainer(destinationParent, this.isLinked(), this.isVirtual());
        Resource dest = this.workspace.newResource(destination, destinationType);
        dest.checkDoesNotExist();
        if (this.getType() == 1 && destinationType == 4) {
            message = Messages.resources_fileToProj;
            throw new ResourceException(77, this.getFullPath(), message, null);
        }
        if (destinationType != 4) {
            Project project = (Project)dest.getProject();
            ResourceInfo info = project.getResourceInfo(false, false);
            project.checkAccessible(this.getFlags(info));
            Container parent = (Container)dest.getParent();
            if (!parent.equals(project)) {
                info = parent.getResourceInfo(false, false);
                parent.checkExists(this.getFlags(info), true);
            }
        }
        if (this.isUnderLink() || dest.isUnderLink()) {
            URI sourceLocation = this.getLocationURI();
            if (sourceLocation == null) {
                message = NLS.bind((String)Messages.localstore_locationUndefined, (Object)this.getFullPath());
                throw new ResourceException(271, this.getFullPath(), message, null);
            }
            URI destLocation = dest.getLocationURI();
            if (destLocation == null && !dest.isUnderVirtual()) {
                message = NLS.bind((String)Messages.localstore_locationUndefined, (Object)dest.getFullPath());
                throw new ResourceException(271, dest.getFullPath(), message, null);
            }
            if (this.getStore().isParentOf(dest.getStore())) {
                message = NLS.bind((String)Messages.resources_copyDestNotSub, (Object)this.getFullPath());
                throw new ResourceException(77, this.getFullPath(), message, null);
            }
        }
        return status.isOK() ? Status.OK_STATUS : status;
    }

    protected void checkDoesNotExist() throws CoreException {
        this.checkDoesNotExist(this.getFlags(this.getResourceInfo(false, false)), false);
    }

    public void checkDoesNotExist(int flags, boolean checkType) throws CoreException {
        if (this.exists(flags, checkType)) {
            String message = NLS.bind((String)Messages.resources_mustNotExist, (Object)this.getFullPath());
            throw new ResourceException(checkType ? 367 : 374, this.getFullPath(), message, null);
        }
        if (Workspace.caseSensitive) {
            return;
        }
        IResource variant = this.findExistingResourceVariant(this.getFullPath());
        if (variant == null) {
            return;
        }
        String msg = NLS.bind((String)Messages.resources_existsDifferentCase, (Object)variant.getFullPath());
        throw new ResourceException(275, variant.getFullPath(), msg, null);
    }

    public void checkExists(int flags, boolean checkType) throws CoreException {
        if (!this.exists(flags, checkType)) {
            String message = NLS.bind((String)Messages.resources_mustExist, (Object)this.getFullPath());
            throw new ResourceException(368, this.getFullPath(), message, null);
        }
    }

    public void checkLocal(int flags, int depth) throws CoreException {
        if (!this.isLocal(flags, depth)) {
            String message = NLS.bind((String)Messages.resources_mustBeLocal, (Object)this.getFullPath());
            throw new ResourceException(369, this.getFullPath(), message, null);
        }
    }

    protected IStatus checkMoveRequirements(IPath destination, int destinationType, int updateFlags) throws CoreException {
        IResource variant;
        String message = Messages.resources_moveNotMet;
        MultiStatus status = new MultiStatus("org.eclipse.core.resources", 77, message, null);
        if (destination == null) {
            message = Messages.resources_destNotNull;
            return new ResourceStatus(77, this.getFullPath(), message);
        }
        destination = this.makePathAbsolute(destination);
        if (this.getFullPath().isPrefixOf(destination)) {
            message = NLS.bind((String)Messages.resources_moveDestNotSub, (Object)this.getFullPath());
            status.add((IStatus)new ResourceStatus(77, this.getFullPath(), message));
        }
        this.checkValidPath(destination, destinationType, false);
        this.checkAccessibleAndLocal(2);
        IPath destinationParent = destination.removeLastSegments(1);
        this.checkValidGroupContainer(destinationParent, this.isLinked(), this.isVirtual());
        Resource dest = this.workspace.newResource(destination, destinationType);
        IResource iResource = variant = Workspace.caseSensitive ? null : this.findExistingResourceVariant(destination);
        if (variant == null || !this.equals(variant)) {
            dest.checkDoesNotExist();
        }
        if (this.getType() == 1 && dest.getType() == 4) {
            message = Messages.resources_fileToProj;
            throw new ResourceException(new ResourceStatus(77, this.getFullPath(), message));
        }
        if (destinationType != 4) {
            Project project = (Project)dest.getProject();
            ResourceInfo info = project.getResourceInfo(false, false);
            project.checkAccessible(this.getFlags(info));
            Container parent = (Container)dest.getParent();
            if (!parent.equals(project)) {
                info = parent.getResourceInfo(false, false);
                parent.checkExists(this.getFlags(info), true);
            }
        }
        if (this.isUnderLink() || dest.isUnderLink()) {
            URI sourceLocation = this.getLocationURI();
            if (sourceLocation == null) {
                message = NLS.bind((String)Messages.localstore_locationUndefined, (Object)this.getFullPath());
                throw new ResourceException(271, this.getFullPath(), message, null);
            }
            URI destLocation = dest.getLocationURI();
            if (destLocation == null && !dest.isUnderVirtual()) {
                message = NLS.bind((String)Messages.localstore_locationUndefined, (Object)dest.getFullPath());
                throw new ResourceException(271, dest.getFullPath(), message, null);
            }
            if (this.getStore().isParentOf(dest.getStore())) {
                message = NLS.bind((String)Messages.resources_moveDestNotSub, (Object)this.getFullPath());
                throw new ResourceException(77, this.getFullPath(), message, null);
            }
        }
        return status.isOK() ? Status.OK_STATUS : status;
    }

    public void checkValidPath(IPath toValidate, int type, boolean lastSegmentOnly) throws CoreException {
        IStatus result = this.workspace.locationValidator.validatePath(toValidate, type, lastSegmentOnly);
        if (!result.isOK()) {
            throw new ResourceException(result);
        }
    }

    public void checkValidGroupContainer(IPath destination, boolean isLink, boolean isGroup) throws CoreException {
        if (!isLink && !isGroup) {
            String message = Messages.group_invalidParent;
            ResourceInfo info = this.workspace.getResourceInfo(destination, false, false);
            if (info != null && info.isSet(524288)) {
                throw new ResourceException(new ResourceStatus(77, null, message));
            }
        }
    }

    public void checkValidGroupContainer(Container destination, boolean isLink, boolean isGroup) throws CoreException {
        if (!isLink && !isGroup) {
            String message = Messages.group_invalidParent;
            if (destination.isVirtual()) {
                throw new ResourceException(new ResourceStatus(77, null, message));
            }
        }
    }

    public IStatus getValidGroupContainer(IPath destination, boolean isLink, boolean isGroup) throws CoreException {
        if (!isLink && !isGroup) {
            String message = Messages.group_invalidParent;
            ResourceInfo info = this.workspace.getResourceInfo(destination, false, false);
            if (info.isSet(524288)) {
                return new ResourceStatus(77, null, message);
            }
        }
        return Status.OK_STATUS;
    }

    @Override
    public void clearHistory(IProgressMonitor monitor) {
        this.getLocalManager().getHistoryStore().remove(this.getFullPath(), monitor);
    }

    public boolean contains(ISchedulingRule rule) {
        if (this == rule) {
            return true;
        }
        if (rule.getClass().equals(WorkManager.NotifyRule.class)) {
            return true;
        }
        if (rule instanceof MultiRule) {
            MultiRule multi = (MultiRule)rule;
            ISchedulingRule[] children = multi.getChildren();
            int i = 0;
            while (i < children.length) {
                if (!this.contains(children[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        if (!(rule instanceof IResource)) {
            return false;
        }
        return this.path.isPrefixOf(((IResource)rule).getFullPath());
    }

    public void convertToPhantom() throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, true);
        if (info == null || this.isPhantom(this.getFlags(info))) {
            return;
        }
        info.clearSessionProperties();
        info.set(8);
        this.getLocalManager().updateLocalSync(info, -1L);
        info.clearModificationStamp();
        info.setMarkers(null);
    }

    @Override
    public void copy(IPath destination, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.copy(destination, updateFlags, monitor);
    }

    @Override
    public void copy(IPath destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        try {
            monitor = Policy.monitorFor(monitor);
            String message = NLS.bind((String)Messages.resources_copying, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            Policy.checkCanceled(monitor);
            destination = this.makePathAbsolute(destination);
            this.checkValidPath(destination, this.getType(), false);
            Resource destResource = this.workspace.newResource(destination, this.getType());
            ISchedulingRule rule = this.workspace.getRuleFactory().copyRule(this, destResource);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.assertCopyRequirements(destination, this.getType(), updateFlags);
                    this.workspace.beginOperation(true);
                    this.getLocalManager().copy(this, destResource, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork));
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void copy(IProjectDescription destDesc, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.copy(destDesc, updateFlags, monitor);
    }

    @Override
    public void copy(IProjectDescription destDesc, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)destDesc);
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_copying, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            try {
                try {
                    this.workspace.prepareOperation(this.workspace.getRoot(), monitor);
                    IPath destPath = new Path(destDesc.getName()).makeAbsolute();
                    this.assertCopyRequirements(destPath, this.getType(), updateFlags);
                    Project destProject = (Project)this.workspace.getRoot().getProject(destPath.lastSegment());
                    this.workspace.beginOperation(true);
                    destProject.create(destDesc, Policy.subMonitorFor(monitor, Policy.opWork * 5 / 100));
                    destProject.open(Policy.subMonitorFor(monitor, Policy.opWork * 5 / 100));
                    IResource[] children = ((IContainer)((Object)this)).members(10);
                    int i = 0;
                    while (i < children.length) {
                        Resource child = (Resource)children[i];
                        child.copy(destPath.append(child.getName()), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 60 / 100 / children.length));
                        ++i;
                    }
                    this.getPropertyManager().copy(this, destProject, 0);
                    monitor.worked(Policy.opWork * 15 / 100);
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(this.workspace.getRoot(), true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    public int countResources(int depth, boolean phantom) {
        return this.workspace.countResources(this.path, depth, phantom);
    }

    public void createLink(IPath localLocation, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)localLocation);
        this.createLink(URIUtil.toURI((IPath)localLocation), updateFlags, monitor);
    }

    public void createLink(URI localLocation, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)localLocation);
        monitor = Policy.monitorFor(monitor);
        IResource existing = null;
        if ((updateFlags & 0x100) != 0 && (existing = this.workspace.getRoot().findMember(this.getFullPath())) != null && existing.isLinked()) {
            this.setLinkLocation(localLocation, updateFlags, monitor);
            return;
        }
        try {
            String message = NLS.bind((String)Messages.links_creating, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            Policy.checkCanceled(monitor);
            this.checkValidPath(this.path, 2, true);
            ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    IFileInfo fileInfo = this.assertLinkRequirements(localLocation, updateFlags);
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(512, this));
                    this.workspace.beginOperation(true);
                    if ((updateFlags & 0x100) != 0 && existing != null) {
                        this.workspace.deleteResource(existing);
                    }
                    ResourceInfo info = this.workspace.createResource((IResource)this, false);
                    if ((updateFlags & 0x1000) != 0) {
                        info.set(0x200000);
                    }
                    info.set(65536);
                    localLocation = FileUtil.canonicalURI(localLocation);
                    LinkDescription linkDescription = new LinkDescription(this, localLocation);
                    if (linkDescription.isGroup()) {
                        info.set(524288);
                    }
                    this.getLocalManager().link(this, localLocation, fileInfo);
                    monitor.worked(Policy.opWork * 5 / 100);
                    Project project = (Project)this.getProject();
                    boolean changed = project.internalGetDescription().setLinkLocation(this.getProjectRelativePath(), linkDescription);
                    if (changed) {
                        try {
                            project.writeDescription(0);
                        }
                        catch (CoreException e) {
                            this.workspace.deleteResource(this);
                            throw e;
                        }
                    }
                    monitor.worked(Policy.opWork * 5 / 100);
                    if (this.getType() != 1) {
                        if ((updateFlags & 0x80) != 0) {
                            this.workspace.refreshManager.refresh(this);
                            monitor.worked(Policy.opWork * 90 / 100);
                        } else {
                            this.refreshLocal(2, Policy.subMonitorFor(monitor, Policy.opWork * 90 / 100));
                        }
                    } else {
                        monitor.worked(Policy.opWork * 90 / 100);
                    }
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public IMarker createMarker(String type) throws CoreException {
        Assert.isNotNull((Object)type);
        ISchedulingRule rule = this.workspace.getRuleFactory().markerRule(this);
        try {
            this.workspace.prepareOperation(rule, null);
            this.checkAccessible(this.getFlags(this.getResourceInfo(false, false)));
            this.workspace.beginOperation(true);
            MarkerInfo info = new MarkerInfo();
            info.setType(type);
            info.setCreationTime(System.currentTimeMillis());
            this.workspace.getMarkerManager().add(this, info);
            Marker marker = new Marker(this, info.getId());
            return marker;
        }
        finally {
            this.workspace.endOperation(rule, false, null);
        }
    }

    @Override
    public IResourceProxy createProxy() {
        ResourceProxy result = new ResourceProxy();
        result.info = this.getResourceInfo(false, false);
        result.requestor = this;
        result.resource = this;
        return result;
    }

    public void delete(boolean force, boolean keepHistory, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.delete(updateFlags |= keepHistory ? 2 : 0, monitor);
    }

    @Override
    public void delete(boolean force, IProgressMonitor monitor) throws CoreException {
        this.delete(force ? 1 : 0, monitor);
    }

    @Override
    public void delete(int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_deleting, (Object)this.getFullPath());
            monitor.beginTask("", 100000);
            monitor.subTask(message);
            ISchedulingRule rule = this.workspace.getRuleFactory().deleteRule(this);
            try {
                this.workspace.prepareOperation(rule, monitor);
                if (!this.exists()) {
                    return;
                }
                try {
                    this.workspace.beginOperation(true);
                    this.broadcastPreDeleteEvent();
                    if (this.getType() == 4) {
                        this.workspace.flushBuildOrder();
                    }
                    IFileStore originalStore = this.getStore();
                    boolean wasLinked = this.isLinked();
                    message = Messages.resources_deleteProblem;
                    MultiStatus status = new MultiStatus("org.eclipse.core.resources", 273, message, null);
                    WorkManager workManager = this.workspace.getWorkManager();
                    ResourceTree tree = new ResourceTree(this.workspace.getFileSystemManager(), workManager.getLock(), status, updateFlags);
                    int depth = 0;
                    try {
                        depth = workManager.beginUnprotected();
                        this.unprotectedDelete(tree, updateFlags, monitor);
                    }
                    finally {
                        workManager.endUnprotected(depth);
                    }
                    if (this.getType() == 8) {
                        this.workspace.getMarkerManager().removeMarkers(this, 0);
                        this.getPropertyManager().deleteProperties(this, 0);
                        this.getResourceInfo(false, false).clearSessionProperties();
                    }
                    tree.makeInvalid();
                    if (!tree.getStatus().isOK()) {
                        throw new ResourceException(tree.getStatus());
                    }
                    if (!wasLinked) {
                        this.workspace.getAliasManager().updateAliases(this, originalStore, 2, monitor);
                    }
                    if (this.getType() == 4) {
                        ((Rules)this.workspace.getRuleFactory()).setRuleFactory((IProject)((Object)this), null);
                    }
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork * 1000));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void deleteMarkers(String type, boolean includeSubtypes, int depth) throws CoreException {
        ISchedulingRule rule = this.workspace.getRuleFactory().markerRule(this);
        try {
            this.workspace.prepareOperation(rule, null);
            ResourceInfo info = this.getResourceInfo(false, false);
            this.checkAccessible(this.getFlags(info));
            this.workspace.beginOperation(true);
            this.workspace.getMarkerManager().removeMarkers(this, type, includeSubtypes, depth);
        }
        finally {
            this.workspace.endOperation(rule, false, null);
        }
    }

    public void deleteResource(boolean convertToPhantom, MultiStatus status) throws CoreException {
        Project project;
        ProjectDescription description;
        List<Resource> filters;
        Iterator<Resource> it;
        Project project2;
        ProjectDescription description2;
        List<Resource> links;
        if (this.exists()) {
            this.getMarkerManager().removeMarkers(this, 2);
        }
        if ((links = this.findLinks()) != null) {
            Iterator<Resource> it2 = links.iterator();
            while (it2.hasNext()) {
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(1024, it2.next()));
            }
        }
        ProjectPreferences.deleted(this);
        if (convertToPhantom && this.getType() != 4 && this.synchronizing(this.getResourceInfo(true, false))) {
            this.convertToPhantom();
        } else {
            this.workspace.deleteResource(this);
        }
        if (this.getType() != 4 && links != null && (description2 = (project2 = (Project)this.getProject()).internalGetDescription()) != null) {
            boolean wasChanged = false;
            it = links.iterator();
            while (it.hasNext()) {
                wasChanged |= description2.setLinkLocation(it.next().getProjectRelativePath(), null);
            }
            if (wasChanged) {
                project2.internalSetDescription(description2, true);
                project2.writeDescription(1);
            }
        }
        if ((filters = this.findFilters()) != null && filters.size() > 0 && (description = (project = (Project)this.getProject()).internalGetDescription()) != null) {
            it = filters.iterator();
            while (it.hasNext()) {
                description.setFilters(it.next().getProjectRelativePath(), null);
            }
            project.internalSetDescription(description, true);
            project.writeDescription(1);
        }
        CoreException err = null;
        try {
            this.getPropertyManager().deleteResource(this);
        }
        catch (CoreException e) {
            if (status != null) {
                status.add(e.getStatus());
            }
            err = e;
        }
        if (err != null) {
            throw err;
        }
    }

    private List<Resource> findLinks() {
        Project project = (Project)this.getProject();
        ProjectDescription description = project.internalGetDescription();
        HashMap<IPath, LinkDescription> linkMap = description.getLinks();
        if (linkMap == null) {
            return null;
        }
        ArrayList<Resource> links = null;
        IPath myPath = this.getProjectRelativePath();
        for (LinkDescription link : linkMap.values()) {
            IPath linkPath = link.getProjectRelativePath();
            if (!myPath.isPrefixOf(linkPath)) continue;
            if (links == null) {
                links = new ArrayList<Resource>();
            }
            links.add(this.workspace.newResource(project.getFullPath().append(linkPath), link.getType()));
        }
        return links;
    }

    private List<Resource> findFilters() {
        HashMap<IPath, LinkedList<FilterDescription>> filterMap;
        Project project = (Project)this.getProject();
        ProjectDescription description = project.internalGetDescription();
        ArrayList<Resource> filters = null;
        if (description != null && (filterMap = description.getFilters()) != null) {
            IPath myPath = this.getProjectRelativePath();
            for (IPath filterPath : filterMap.keySet()) {
                if (!myPath.isPrefixOf(filterPath)) continue;
                if (filters == null) {
                    filters = new ArrayList<Resource>();
                }
                filters.add(this.workspace.newResource(project.getFullPath().append(filterPath), 2));
            }
        }
        return filters;
    }

    @Override
    public boolean equals(Object target) {
        if (this == target) {
            return true;
        }
        if (!(target instanceof Resource)) {
            return false;
        }
        Resource resource = (Resource)target;
        return this.getType() == resource.getType() && this.path.equals((Object)resource.path) && this.workspace.equals(resource.workspace);
    }

    @Override
    public boolean exists() {
        ResourceInfo info = this.getResourceInfo(false, false);
        return this.exists(this.getFlags(info), true);
    }

    public boolean exists(int flags, boolean checkType) {
        return flags != -1 && (!checkType || ResourceInfo.getType(flags) == this.getType());
    }

    public IResource findExistingResourceVariant(IPath target) {
        if (!this.workspace.tree.includesIgnoreCase(target)) {
            return null;
        }
        ResourceInfo info = (ResourceInfo)this.workspace.tree.getElementDataIgnoreCase(target);
        if (info != null && info.isSet(8)) {
            return null;
        }
        Path result = Path.ROOT;
        int segmentCount = target.segmentCount();
        int i = 0;
        while (i < segmentCount) {
            String[] childNames = this.workspace.tree.getNamesOfChildren((IPath)result);
            String name = this.findVariant(target.segment(i), childNames);
            if (name == null) {
                return null;
            }
            result = result.append(name);
            ++i;
        }
        return this.workspace.getRoot().findMember((IPath)result);
    }

    @Override
    public IMarker findMarker(long id) {
        return this.workspace.getMarkerManager().findMarker(this, id);
    }

    @Override
    public IMarker[] findMarkers(String type, boolean includeSubtypes, int depth) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        return this.workspace.getMarkerManager().findMarkers(this, type, includeSubtypes, depth);
    }

    @Override
    public int findMaxProblemSeverity(String type, boolean includeSubtypes, int depth) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        return this.workspace.getMarkerManager().findMaxProblemSeverity(this, type, includeSubtypes, depth);
    }

    private String findVariant(String target, String[] list) {
        int i = 0;
        while (i < list.length) {
            if (target.equalsIgnoreCase(list[i])) {
                return list[i];
            }
            ++i;
        }
        return null;
    }

    protected void fixupAfterMoveSource() throws CoreException {
        List<Resource> filters;
        Project project;
        ResourceInfo info = this.getResourceInfo(true, true);
        if ((this.isLinked() || this.isVirtual()) && (project = (Project)this.getProject()).internalGetDescription().setLinkLocation(this.getProjectRelativePath(), null)) {
            project.writeDescription(0);
        }
        if ((filters = this.findFilters()) != null && filters.size() > 0) {
            Project project2 = (Project)this.getProject();
            ProjectDescription description = project2.internalGetDescription();
            Iterator<Resource> it = filters.iterator();
            while (it.hasNext()) {
                description.setFilters(it.next().getProjectRelativePath(), null);
            }
            project2.writeDescription(0);
        }
        ProjectPreferences.deleted(this);
        if (!this.synchronizing(info)) {
            this.workspace.deleteResource(this);
            return;
        }
        info.clearSessionProperties();
        info.clear(2);
        info.setLocalSyncInfo(-1L);
        info.set(8);
        info.clearModificationStamp();
        info.setMarkers(null);
    }

    @Override
    public String getFileExtension() {
        String name = this.getName();
        int index = name.lastIndexOf(46);
        if (index == -1) {
            return null;
        }
        if (index == name.length() - 1) {
            return "";
        }
        return name.substring(index + 1);
    }

    public int getFlags(ResourceInfo info) {
        return info == null ? -1 : info.getFlags();
    }

    @Override
    public IPath getFullPath() {
        return this.path;
    }

    public FileSystemResourceManager getLocalManager() {
        return this.workspace.getFileSystemManager();
    }

    @Override
    public long getLocalTimeStamp() {
        ResourceInfo info = this.getResourceInfo(false, false);
        return info == null || this.isVirtual() ? -1L : info.getLocalSyncInfo();
    }

    @Override
    public IPath getLocation() {
        IProject project = this.getProject();
        if (project != null && !project.exists()) {
            return null;
        }
        return this.getLocalManager().locationFor(this);
    }

    @Override
    public URI getLocationURI() {
        IProject project = this.getProject();
        if (project != null && !project.exists()) {
            return null;
        }
        return this.getLocalManager().locationURIFor(this);
    }

    @Override
    public IMarker getMarker(long id) {
        return new Marker(this, id);
    }

    protected MarkerManager getMarkerManager() {
        return this.workspace.getMarkerManager();
    }

    @Override
    public long getModificationStamp() {
        ResourceInfo info = this.getResourceInfo(false, false);
        return info == null ? -1L : info.getModificationStamp();
    }

    @Override
    public String getName() {
        return this.path.lastSegment();
    }

    @Override
    public IContainer getParent() {
        int segments = this.path.segmentCount();
        if (segments < 2) {
            Assert.isLegal((boolean)false, (String)this.path.toString());
        }
        if (segments == 2) {
            return this.workspace.getRoot().getProject(this.path.segment(0));
        }
        return (IFolder)((Object)this.workspace.newResource(this.path.removeLastSegments(1), 2));
    }

    @Override
    public String getPersistentProperty(QualifiedName key) throws CoreException {
        this.checkAccessibleAndLocal(0);
        return this.getPropertyManager().getProperty(this, key);
    }

    @Override
    public Map<QualifiedName, String> getPersistentProperties() throws CoreException {
        this.checkAccessibleAndLocal(0);
        return this.getPropertyManager().getProperties(this);
    }

    @Override
    public IProject getProject() {
        return this.workspace.getRoot().getProject(this.path.segment(0));
    }

    @Override
    public IPath getProjectRelativePath() {
        return this.getFullPath().removeFirstSegments(1);
    }

    public IPropertyManager getPropertyManager() {
        return this.workspace.getPropertyManager();
    }

    @Override
    public IPath getRawLocation() {
        if (this.isLinked()) {
            return FileUtil.toPath(((Project)this.getProject()).internalGetDescription().getLinkLocationURI(this.getProjectRelativePath()));
        }
        return this.getLocation();
    }

    @Override
    public URI getRawLocationURI() {
        if (this.isLinked()) {
            return ((Project)this.getProject()).internalGetDescription().getLinkLocationURI(this.getProjectRelativePath());
        }
        return this.getLocationURI();
    }

    @Override
    public ResourceAttributes getResourceAttributes() {
        if (!this.isAccessible() || this.isVirtual()) {
            return null;
        }
        return this.getLocalManager().attributes(this);
    }

    public ResourceInfo getResourceInfo(boolean phantom, boolean mutable) {
        return this.workspace.getResourceInfo(this.getFullPath(), phantom, mutable);
    }

    @Override
    public Object getSessionProperty(QualifiedName key) throws CoreException {
        ResourceInfo info = this.checkAccessibleAndLocal(0);
        return info.getSessionProperty(key);
    }

    @Override
    public Map<QualifiedName, Object> getSessionProperties() throws CoreException {
        ResourceInfo info = this.checkAccessibleAndLocal(0);
        return info.getSessionProperties();
    }

    public IFileStore getStore() {
        return this.getLocalManager().getStore(this);
    }

    @Override
    public abstract int getType();

    public String getTypeString() {
        switch (this.getType()) {
            case 1: {
                return "L";
            }
            case 2: {
                return "F";
            }
            case 4: {
                return "P";
            }
            case 8: {
                return "R";
            }
        }
        return "";
    }

    @Override
    public IWorkspace getWorkspace() {
        return this.workspace;
    }

    public int hashCode() {
        return this.getFullPath().hashCode();
    }

    protected void internalSetLocal(boolean flag, int depth) throws CoreException {
        ResourceInfo info = this.getResourceInfo(true, true);
        if (info.isSet(2) != flag) {
            if (flag && !this.isPhantom(this.getFlags(info))) {
                info.set(2);
                this.workspace.updateModificationStamp(info);
            } else {
                info.clear(2);
                info.clearModificationStamp();
            }
        }
        if (this.getType() == 1 || depth == 0) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        IResource[] children = ((IContainer)((Object)this)).members();
        int i = 0;
        while (i < children.length) {
            ((Resource)children[i]).internalSetLocal(flag, depth);
            ++i;
        }
    }

    @Override
    public boolean isAccessible() {
        return this.exists();
    }

    public boolean isConflicting(ISchedulingRule rule) {
        if (rule.getClass().equals(WorkManager.NotifyRule.class)) {
            return true;
        }
        if (!(rule instanceof IResource)) {
            return false;
        }
        IPath otherPath = ((IResource)rule).getFullPath();
        return this.path.isPrefixOf(otherPath) || otherPath.isPrefixOf(this.path);
    }

    @Override
    public boolean isDerived() {
        return this.isDerived(0);
    }

    @Override
    public boolean isDerived(int options) {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        if (flags != -1 && ResourceInfo.isSet(flags, 16384)) {
            return true;
        }
        if ((options & 0x200) != 0) {
            return this.getParent().isDerived(options);
        }
        return false;
    }

    @Override
    public boolean isHidden() {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        return flags != -1 && ResourceInfo.isSet(flags, 0x200000);
    }

    @Override
    public boolean isHidden(int options) {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        if (flags != -1 && ResourceInfo.isSet(flags, 0x200000)) {
            return true;
        }
        if ((options & 0x200) != 0) {
            return this.getParent().isHidden(options);
        }
        return false;
    }

    @Override
    public boolean isLinked() {
        return this.isLinked(0);
    }

    @Override
    public boolean isLinked(int options) {
        if ((options & 0x200) != 0) {
            IProject project = this.getProject();
            if (project == null) {
                return false;
            }
            ProjectDescription desc = ((Project)project).internalGetDescription();
            if (desc == null) {
                return false;
            }
            HashMap<IPath, LinkDescription> links = desc.getLinks();
            if (links == null) {
                return false;
            }
            IPath myPath = this.getProjectRelativePath();
            Iterator<LinkDescription> it = links.values().iterator();
            while (it.hasNext()) {
                if (!it.next().getProjectRelativePath().isPrefixOf(myPath)) continue;
                return true;
            }
            return false;
        }
        ResourceInfo info = this.getResourceInfo(false, false);
        return info != null && info.isSet(65536);
    }

    @Override
    public boolean isVirtual() {
        ResourceInfo info = this.getResourceInfo(false, false);
        return info != null && info.isSet(524288);
    }

    public boolean isUnderVirtual() {
        IContainer parent = this.getParent();
        while (parent != null) {
            if (parent.isVirtual()) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    @Override
    public boolean isLocal(int depth) {
        ResourceInfo info = this.getResourceInfo(false, false);
        return this.isLocal(this.getFlags(info), depth);
    }

    public boolean isLocal(int flags, int depth) {
        return flags != -1 && ResourceInfo.isSet(flags, 2);
    }

    protected boolean isMember(int flags, int memberFlags) {
        int excludeMask = 0;
        if ((memberFlags & 1) == 0) {
            excludeMask |= 8;
        }
        if ((memberFlags & 8) == 0) {
            excludeMask |= 0x200000;
        }
        if ((memberFlags & 2) == 0) {
            excludeMask |= 0x8000;
        }
        if ((memberFlags & 4) != 0) {
            excludeMask |= 0x4000;
        }
        return flags != -1 && (flags & excludeMask) == 0;
    }

    @Override
    public boolean isPhantom() {
        ResourceInfo info = this.getResourceInfo(true, false);
        return this.isPhantom(this.getFlags(info));
    }

    public boolean isPhantom(int flags) {
        return flags != -1 && ResourceInfo.isSet(flags, 8);
    }

    @Override
    public boolean isReadOnly() {
        ResourceAttributes attributes = this.getResourceAttributes();
        return attributes == null ? false : attributes.isReadOnly();
    }

    @Override
    public boolean isSynchronized(int depth) {
        return this.getLocalManager().isSynchronized(this, depth);
    }

    @Override
    public boolean isTeamPrivateMember() {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        return flags != -1 && ResourceInfo.isSet(flags, 32768);
    }

    @Override
    public boolean isTeamPrivateMember(int options) {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        if (flags != -1 && ResourceInfo.isSet(flags, 32768)) {
            return true;
        }
        if ((options & 0x200) != 0) {
            return this.getParent().isTeamPrivateMember(options);
        }
        return false;
    }

    public boolean isUnderLink() {
        int depth = this.path.segmentCount();
        if (depth < 2) {
            return false;
        }
        if (depth == 2) {
            return this.isLinked();
        }
        IPath linkParent = this.path.removeLastSegments(depth - 2);
        return this.workspace.getResourceInfo(linkParent, false, false).isSet(65536);
    }

    protected IPath makePathAbsolute(IPath target) {
        if (target.isAbsolute()) {
            return target;
        }
        return this.getParent().getFullPath().append(target);
    }

    public void move(IPath destination, boolean force, boolean keepHistory, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.move(destination, updateFlags |= keepHistory ? 2 : 0, monitor);
    }

    @Override
    public void move(IPath destination, boolean force, IProgressMonitor monitor) throws CoreException {
        this.move(destination, force ? 1 : 0, monitor);
    }

    @Override
    public void move(IPath destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_moving, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            Policy.checkCanceled(monitor);
            destination = this.makePathAbsolute(destination);
            this.checkValidPath(destination, this.getType(), false);
            Resource destResource = this.workspace.newResource(destination, this.getType());
            ISchedulingRule rule = this.workspace.getRuleFactory().moveRule(this, destResource);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.assertMoveRequirements(destination, this.getType(), updateFlags);
                    this.workspace.beginOperation(true);
                    this.broadcastPreMoveEvent(destResource, updateFlags);
                    IFileStore originalStore = this.getStore();
                    message = Messages.resources_moveProblem;
                    MultiStatus status = new MultiStatus("org.eclipse.core.resources", 4, message, null);
                    WorkManager workManager = this.workspace.getWorkManager();
                    ResourceTree tree = new ResourceTree(this.workspace.getFileSystemManager(), workManager.getLock(), status, updateFlags);
                    boolean success = false;
                    int depth = 0;
                    try {
                        depth = workManager.beginUnprotected();
                        success = this.unprotectedMove(tree, destResource, updateFlags, monitor);
                    }
                    finally {
                        workManager.endUnprotected(depth);
                    }
                    tree.makeInvalid();
                    if (success) {
                        this.workspace.getAliasManager().updateAliases(this, originalStore, 2, monitor);
                        this.workspace.getAliasManager().updateAliases(destResource, destResource.getStore(), 2, monitor);
                    }
                    if (!tree.getStatus().isOK()) {
                        throw new ResourceException(tree.getStatus());
                    }
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void move(IProjectDescription description, boolean force, boolean keepHistory, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.move(description, updateFlags |= keepHistory ? 2 : 0, monitor);
    }

    @Override
    public void move(IProjectDescription description, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)description);
        if (this.getType() != 4) {
            String message = NLS.bind((String)Messages.resources_moveNotProject, (Object)this.getFullPath(), (Object)description.getName());
            throw new ResourceException(77, this.getFullPath(), message, null);
        }
        ((Project)this).move(description, updateFlags, monitor);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void refreshLocal(int depth, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            boolean isRoot = this.getType() == 8;
            String message = isRoot ? Messages.resources_refreshingRoot : NLS.bind((String)Messages.resources_refreshing, (Object)this.getFullPath());
            monitor.beginTask("", 100);
            monitor.subTask(message);
            boolean build = false;
            ISchedulingRule rule = this.workspace.getRuleFactory().refreshRule(this);
            try {
                this.workspace.prepareOperation(rule, monitor);
                if (!isRoot && !this.getProject().isAccessible()) {
                    return;
                }
                if (!this.exists() && this.isFiltered()) {
                    return;
                }
                this.workspace.beginOperation(true);
                if (this.getType() == 4 || this.getType() == 8) {
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(4096, this));
                }
                build = this.getLocalManager().refresh(this, depth, true, Policy.subMonitorFor(monitor, Policy.opWork));
                return;
            }
            catch (OperationCanceledException e) {
                this.workspace.getWorkManager().operationCanceled();
                throw e;
            }
            catch (Error e) {
                Policy.log(e);
                throw e;
            }
            catch (RuntimeException e) {
                Policy.log(e);
                throw e;
            }
            finally {
                this.workspace.endOperation(rule, build, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public String requestName() {
        return this.getName();
    }

    @Override
    public IPath requestPath() {
        return this.getFullPath();
    }

    @Override
    public void revertModificationStamp(long value) throws CoreException {
        if (value < 0L) {
            throw new IllegalArgumentException("Illegal value: " + value);
        }
        ResourceInfo info = this.checkAccessibleAndLocal(0);
        info.setModificationStamp(value);
    }

    @Override
    @Deprecated
    public void setDerived(boolean isDerived) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        if (info.getType() == 1 || info.getType() == 2) {
            if (isDerived) {
                info.set(16384);
            } else {
                info.clear(16384);
            }
        }
    }

    @Override
    public void setDerived(boolean isDerived, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_settingDerivedFlag, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            ISchedulingRule rule = this.workspace.getRuleFactory().derivedRule(this);
            try {
                this.workspace.prepareOperation(rule, monitor);
                ResourceInfo info = this.getResourceInfo(false, false);
                this.checkAccessible(this.getFlags(info));
                if (info.getType() != 1 && info.getType() != 2) {
                    return;
                }
                try {
                    this.workspace.beginOperation(true);
                    info = this.getResourceInfo(false, true);
                    if (isDerived) {
                        info.set(16384);
                    } else {
                        info.clear(16384);
                    }
                    monitor.worked(Policy.opWork);
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void setHidden(boolean isHidden) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        if (isHidden) {
            info.set(0x200000);
        } else {
            info.clear(0x200000);
        }
    }

    @Override
    public void setLocal(boolean flag, int depth, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = Messages.resources_setLocal;
            monitor.beginTask(message, 100);
            try {
                this.workspace.prepareOperation(null, monitor);
                this.workspace.beginOperation(true);
                this.internalSetLocal(flag, depth);
                monitor.worked(Policy.opWork);
            }
            finally {
                this.workspace.endOperation(null, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public long setLocalTimeStamp(long value) throws CoreException {
        if (value < 0L) {
            throw new IllegalArgumentException("Illegal value: " + value);
        }
        ResourceInfo info = this.checkAccessibleAndLocal(0);
        return this.getLocalManager().setLocalTimeStamp(this, info, value);
    }

    @Override
    public void setPersistentProperty(QualifiedName key, String value) throws CoreException {
        this.checkAccessibleAndLocal(0);
        this.getPropertyManager().setProperty(this, key, value);
    }

    @Override
    public void setReadOnly(boolean readonly) {
        ResourceAttributes attributes = this.getResourceAttributes();
        if (attributes == null) {
            return;
        }
        attributes.setReadOnly(readonly);
        try {
            this.setResourceAttributes(attributes);
        }
        catch (CoreException coreException) {}
    }

    @Override
    public void setResourceAttributes(ResourceAttributes attributes) throws CoreException {
        this.checkAccessibleAndLocal(0);
        this.getLocalManager().setResourceAttributes(this, attributes);
    }

    @Override
    public void setSessionProperty(QualifiedName key, Object value) throws CoreException {
        ResourceInfo info = this.checkAccessibleAndLocal(0);
        info.setSessionProperty(key, value);
    }

    @Override
    public void setTeamPrivateMember(boolean isTeamPrivate) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        if (info.getType() == 1 || info.getType() == 2) {
            if (isTeamPrivate) {
                info.set(32768);
            } else {
                info.clear(32768);
            }
        }
    }

    public boolean synchronizing(ResourceInfo info) {
        return info != null && info.getSyncInfo(false) != null;
    }

    public String toString() {
        return String.valueOf(this.getTypeString()) + this.getFullPath().toString();
    }

    @Override
    public void touch(IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_touch, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            ISchedulingRule rule = this.workspace.getRuleFactory().modifyRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    ResourceInfo info = this.checkAccessibleAndLocal(0);
                    this.workspace.beginOperation(true);
                    info = this.getResourceInfo(false, true);
                    info.incrementContentId();
                    info.clear(393216);
                    this.workspace.updateModificationStamp(info);
                    monitor.worked(Policy.opWork);
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    private void unprotectedDelete(ResourceTree tree, int updateFlags, IProgressMonitor monitor) {
        IMoveDeleteHook hook = this.workspace.getMoveDeleteHook();
        switch (this.getType()) {
            case 1: {
                if (hook.deleteFile(tree, (IFile)((Object)this), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000 / 2))) break;
                tree.standardDeleteFile((IFile)((Object)this), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000));
                break;
            }
            case 2: {
                if (hook.deleteFolder(tree, (IFolder)((Object)this), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000 / 2))) break;
                tree.standardDeleteFolder((IFolder)((Object)this), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000));
                break;
            }
            case 4: {
                if (hook.deleteProject(tree, (IProject)((Object)this), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000 / 2))) break;
                tree.standardDeleteProject((IProject)((Object)this), updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000));
                break;
            }
            case 8: {
                IProject[] projects = ((IWorkspaceRoot)((Object)this)).getProjects(8);
                int i = 0;
                while (i < projects.length) {
                    if (!hook.deleteProject(tree, projects[i], updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000 / projects.length / 2))) {
                        tree.standardDeleteProject(projects[i], updateFlags, Policy.subMonitorFor(monitor, Policy.opWork * 1000 / projects.length));
                    }
                    ++i;
                }
                break;
            }
        }
    }

    private boolean unprotectedMove(ResourceTree tree, IResource destination, int updateFlags, IProgressMonitor monitor) throws CoreException, ResourceException {
        IMoveDeleteHook hook = this.workspace.getMoveDeleteHook();
        switch (this.getType()) {
            case 1: {
                if (hook.moveFile(tree, (IFile)((Object)this), (IFile)destination, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork / 2))) break;
                tree.standardMoveFile((IFile)((Object)this), (IFile)destination, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork));
                break;
            }
            case 2: {
                if (hook.moveFolder(tree, (IFolder)((Object)this), (IFolder)destination, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork / 2))) break;
                tree.standardMoveFolder((IFolder)((Object)this), (IFolder)destination, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork));
                break;
            }
            case 4: {
                IProject project = (IProject)((Object)this);
                if (this.getName().equals(destination.getName())) {
                    return false;
                }
                IProjectDescription description = project.getDescription();
                description.setName(destination.getName());
                if (hook.moveProject(tree, project, description, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork / 2))) break;
                tree.standardMoveProject(project, description, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork));
                break;
            }
            case 8: {
                String msg = Messages.resources_moveRoot;
                throw new ResourceException(new ResourceStatus(77, this.getFullPath(), msg));
            }
        }
        return true;
    }

    private void broadcastPreDeleteEvent() throws CoreException {
        switch (this.getType()) {
            case 4: {
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(16, this));
                break;
            }
            case 8: {
                IResource[] projects = ((Container)this).getChildren(8);
                int i = 0;
                while (i < projects.length) {
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(16, projects[i]));
                    ++i;
                }
                break;
            }
        }
    }

    private void broadcastPreMoveEvent(IResource destination, int updateFlags) throws CoreException {
        switch (this.getType()) {
            case 1: {
                if (!this.isLinked()) break;
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(2048, this, destination, updateFlags));
                break;
            }
            case 2: {
                if (this.isLinked()) {
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(2048, this, destination, updateFlags));
                }
                if (!this.isVirtual()) break;
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(65536, this, destination, updateFlags));
                break;
            }
            case 4: {
                if (this.getName().equals(destination.getName())) break;
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(64, this, destination, updateFlags));
            }
        }
    }

    @Override
    public IPathVariableManager getPathVariableManager() {
        if (this.getProject() == null) {
            return this.workspace.getPathVariableManager();
        }
        return new ProjectPathVariableManager(this);
    }

    public boolean isFiltered() {
        try {
            return this.isFilteredWithException(false);
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    public boolean isFilteredWithException(boolean throwExeception) throws CoreException {
        if (this.isLinked() || this.isVirtual()) {
            return false;
        }
        Project project = (Project)this.getProject();
        if (project == null) {
            return false;
        }
        ProjectDescription description = project.internalGetDescription();
        if (description == null) {
            return false;
        }
        if (description.getFilters() == null) {
            return false;
        }
        Resource currentResource = this;
        while (currentResource != null && currentResource.getParent() != null) {
            Resource parent = (Resource)((Object)currentResource.getParent());
            IFileStore store = currentResource.getStore();
            if (store != null) {
                IFileInfo[] filtered;
                FileInfo fileInfo = new FileInfo(store.getName());
                fileInfo.setDirectory(currentResource.getType() == 2);
                if (fileInfo != null && (filtered = parent.filterChildren(project, description, new IFileInfo[]{fileInfo}, throwExeception)).length == 0) {
                    return true;
                }
            }
            currentResource = parent;
        }
        return false;
    }

    public IFileInfo[] filterChildren(IFileInfo[] list, boolean throwException) throws CoreException {
        Project project = (Project)this.getProject();
        if (project == null) {
            return list;
        }
        ProjectDescription description = project.internalGetDescription();
        if (description == null) {
            return list;
        }
        return this.filterChildren(project, description, list, throwException);
    }

    private IFileInfo[] filterChildren(Project project, ProjectDescription description, IFileInfo[] list, boolean throwException) throws CoreException {
        block10: {
            IPath relativePath = this.getProjectRelativePath();
            LinkedList<Filter> currentIncludeFilters = new LinkedList<Filter>();
            LinkedList<Filter> currentExcludeFilters = new LinkedList<Filter>();
            LinkedList<FilterDescription> filters = null;
            boolean firstSegment = true;
            do {
                if (!firstSegment) {
                    relativePath = relativePath.removeLastSegments(1);
                }
                if ((filters = description.getFilter(relativePath)) != null) {
                    for (FilterDescription desc : filters) {
                        if (!firstSegment && !desc.isInheritable()) continue;
                        Filter filter = new Filter(project, desc);
                        if (filter.isIncludeOnly()) {
                            if (filter.isFirst()) {
                                currentIncludeFilters.addFirst(filter);
                                continue;
                            }
                            currentIncludeFilters.addLast(filter);
                            continue;
                        }
                        if (filter.isFirst()) {
                            currentExcludeFilters.addFirst(filter);
                            continue;
                        }
                        currentExcludeFilters.addLast(filter);
                    }
                }
                firstSegment = false;
            } while (relativePath.segmentCount() > 0);
            if (currentIncludeFilters.size() > 0 || currentExcludeFilters.size() > 0) {
                try {
                    list = Filter.filter(project, currentIncludeFilters, currentExcludeFilters, (IContainer)((Object)this), list);
                }
                catch (CoreException e) {
                    if (!throwException) break block10;
                    throw e;
                }
            }
        }
        return list;
    }

    public void setLinkLocation(URI location, int updateFlags, IProgressMonitor monitor) throws CoreException {
        if (!this.isLinked()) {
            String message = NLS.bind((String)Messages.links_resourceIsNotALink, (Object)this.getFullPath());
            throw new ResourceException(77, this.getFullPath(), message, null);
        }
        ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
        try {
            String message = NLS.bind((String)Messages.links_setLocation, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            this.workspace.prepareOperation(rule, monitor);
            this.workspace.broadcastEvent(LifecycleEvent.newEvent(524288, this));
            this.workspace.beginOperation(true);
            ResourceInfo info = this.workspace.getResourceInfo(this.getFullPath(), true, false);
            this.getLocalManager().setLocation(this, info, location);
            LinkDescription linkDescription = new LinkDescription(this, location);
            Project project = (Project)this.getProject();
            project.internalGetDescription().setLinkLocation(this.getProjectRelativePath(), linkDescription);
            project.writeDescription(updateFlags);
            if ((updateFlags & 0x80) != 0) {
                this.workspace.refreshManager.refresh(this);
                monitor.worked(Policy.opWork * 90 / 100);
            } else {
                this.refreshLocal(2, Policy.subMonitorFor(monitor, Policy.opWork * 90 / 100));
            }
        }
        finally {
            this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
        }
    }

    public void setLinkLocation(IPath location, int updateFlags, IProgressMonitor monitor) throws CoreException {
        if (location.isAbsolute()) {
            this.setLinkLocation(URIUtil.toURI((String)location.toPortableString()), updateFlags, monitor);
        } else {
            try {
                this.setLinkLocation(new URI(null, null, location.toPortableString(), null), updateFlags, monitor);
            }
            catch (URISyntaxException uRISyntaxException) {
                this.setLinkLocation(URIUtil.toURI((String)location.toPortableString()), updateFlags, monitor);
            }
        }
    }
}

