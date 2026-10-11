/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.util.HashSet;
import java.util.LinkedList;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.localstore.IHistoryStore;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.utils.WrappedRuntimeException;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceFilterDescription;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.osgi.util.NLS;

public abstract class Container
extends Resource
implements IContainer {
    protected Container(IPath path, Workspace container) {
        super(path, container);
    }

    public void convertToPhantom() throws CoreException {
        if (this.isPhantom()) {
            return;
        }
        super.convertToPhantom();
        IResource[] members = this.members(11);
        int i = 0;
        while (i < members.length) {
            ((Resource)members[i]).convertToPhantom();
            ++i;
        }
    }

    public IResourceFilterDescription createFilter(int type, FileInfoMatcherDescription matcherDescription, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)this.getProject());
        monitor = Policy.monitorFor(monitor);
        FilterDescription filter = null;
        try {
            String message = NLS.bind((String)Messages.links_creating, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            Policy.checkCanceled(monitor);
            this.checkValidPath(this.path, 6, true);
            ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(131072, this));
                    this.workspace.beginOperation(true);
                    monitor.worked(Policy.opWork * 5 / 100);
                    filter = new FilterDescription(this, type, matcherDescription);
                    filter.setId(System.currentTimeMillis());
                    Project project = (Project)this.getProject();
                    project.internalGetDescription().addFilter(this.getProjectRelativePath(), filter);
                    project.writeDescription(0);
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
        return filter;
    }

    public boolean exists(IPath childPath) {
        return this.workspace.getResourceInfo(this.getFullPath().append(childPath), false, false) != null;
    }

    public IResource findMember(String memberPath) {
        return this.findMember(memberPath, false);
    }

    public IResource findMember(String memberPath, boolean phantom) {
        IPath childPath = this.getFullPath().append(memberPath);
        ResourceInfo info = this.workspace.getResourceInfo(childPath, phantom, false);
        return info == null ? null : this.workspace.newResource(childPath, info.getType());
    }

    public IResource findMember(IPath childPath) {
        return this.findMember(childPath, false);
    }

    public IResource findMember(IPath childPath, boolean phantom) {
        childPath = this.getFullPath().append(childPath);
        ResourceInfo info = this.workspace.getResourceInfo(childPath, phantom, false);
        return info == null ? null : this.workspace.newResource(childPath, info.getType());
    }

    protected void fixupAfterMoveSource() throws CoreException {
        super.fixupAfterMoveSource();
        if (!this.synchronizing(this.getResourceInfo(true, false))) {
            return;
        }
        IResource[] members = this.members(11);
        int i = 0;
        while (i < members.length) {
            ((Resource)members[i]).fixupAfterMoveSource();
            ++i;
        }
    }

    protected IResource[] getChildren(int memberFlags) {
        IPath[] children = null;
        try {
            children = this.workspace.tree.getChildren(this.path);
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        if (children == null || children.length == 0) {
            return ICoreConstants.EMPTY_RESOURCE_ARRAY;
        }
        IResource[] result = new Resource[children.length];
        int found = 0;
        int i = 0;
        while (i < children.length) {
            ResourceInfo info = this.workspace.getResourceInfo(children[i], true, false);
            if (info != null && this.isMember(info.getFlags(), memberFlags)) {
                result[found++] = this.workspace.newResource(children[i], info.getType());
            }
            ++i;
        }
        if (found == result.length) {
            return result;
        }
        IResource[] trimmedResult = new Resource[found];
        System.arraycopy(result, 0, trimmedResult, 0, found);
        return trimmedResult;
    }

    public IFile getFile(String name) {
        return (IFile)((Object)this.workspace.newResource(this.getFullPath().append(name), 1));
    }

    public IResourceFilterDescription[] getFilters() throws CoreException {
        LinkedList<FilterDescription> list;
        IResourceFilterDescription[] results = null;
        this.checkValidPath(this.path, 6, true);
        Project project = (Project)this.getProject();
        ProjectDescription desc = project.internalGetDescription();
        if (desc != null && (list = desc.getFilter(this.getProjectRelativePath())) != null) {
            results = new IResourceFilterDescription[list.size()];
            int i = 0;
            while (i < list.size()) {
                results[i] = list.get(i);
                ++i;
            }
            return results;
        }
        return new IResourceFilterDescription[0];
    }

    public boolean hasFilters() {
        IProject project = this.getProject();
        if (project == null) {
            return false;
        }
        ProjectDescription desc = ((Project)project).internalGetDescription();
        if (desc == null) {
            return false;
        }
        LinkedList<FilterDescription> filters = desc.getFilter(this.getProjectRelativePath());
        return filters != null && filters.size() > 0;
    }

    public IFile getFile(IPath childPath) {
        return (IFile)((Object)this.workspace.newResource(this.getFullPath().append(childPath), 1));
    }

    public IFolder getFolder(String name) {
        return (IFolder)((Object)this.workspace.newResource(this.getFullPath().append(name), 2));
    }

    public IFolder getFolder(IPath childPath) {
        return (IFolder)((Object)this.workspace.newResource(this.getFullPath().append(childPath), 2));
    }

    public boolean isLocal(int flags, int depth) {
        if (!super.isLocal(flags, depth)) {
            return false;
        }
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

    public IResource[] members() throws CoreException {
        return this.members(0);
    }

    public IResource[] members(boolean phantom) throws CoreException {
        return this.members(phantom ? 1 : 0);
    }

    public IResource[] members(int memberFlags) throws CoreException {
        boolean phantom = (memberFlags & 1) != 0;
        ResourceInfo info = this.getResourceInfo(phantom, false);
        this.checkAccessible(this.getFlags(info));
        if (info.isSet(0x100000)) {
            this.workspace.refreshManager.refresh(this);
        }
        return this.getChildren(memberFlags);
    }

    public void removeFilter(IResourceFilterDescription filterDescription, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.links_creating, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            Policy.checkCanceled(monitor);
            this.checkValidPath(this.path, 6, true);
            ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(262144, this));
                    this.workspace.beginOperation(true);
                    monitor.worked(Policy.opWork * 5 / 100);
                    Project project = (Project)this.getProject();
                    project.internalGetDescription().removeFilter(this.getProjectRelativePath(), (FilterDescription)filterDescription);
                    project.writeDescription(0);
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

    public String getDefaultCharset() throws CoreException {
        return this.getDefaultCharset(true);
    }

    public IFile[] findDeletedMembersWithHistory(int depth, IProgressMonitor monitor) {
        IHistoryStore historyStore = this.getLocalManager().getHistoryStore();
        IPath basePath = this.getFullPath();
        IWorkspaceRoot root = this.getWorkspace().getRoot();
        HashSet<IFile> deletedFiles = new HashSet<IFile>();
        if (depth == 0) {
            IFile file;
            if (historyStore.getStates(basePath, monitor).length > 0 && !(file = root.getFile(basePath)).exists()) {
                deletedFiles.add(file);
            }
        } else {
            for (IPath filePath : historyStore.allFiles(basePath, depth, monitor)) {
                IFile file = root.getFile(filePath);
                if (file.exists()) continue;
                deletedFiles.add(file);
            }
        }
        return deletedFiles.toArray(new IFile[deletedFiles.size()]);
    }

    public void setDefaultCharset(String charset) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        this.workspace.getCharsetManager().setCharsetFor(this.getFullPath(), charset);
    }

    public void setDefaultCharset(String newCharset, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_settingDefaultCharsetContainer, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            ISchedulingRule rule = this.workspace.getRuleFactory().charsetRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.checkAccessible(this.getFlags(this.getResourceInfo(false, false)));
                    this.workspace.beginOperation(true);
                    this.workspace.getCharsetManager().setCharsetFor(this.getFullPath(), newCharset);
                    IElementContentVisitor visitor = new IElementContentVisitor(){
                        boolean visitedRoot = false;

                        public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                            if (elementContents == null) {
                                return false;
                            }
                            IPath nodePath = requestor.requestPath();
                            if (!this.visitedRoot) {
                                this.visitedRoot = true;
                                ResourceInfo info = Container.this.workspace.getResourceInfo(nodePath, false, true);
                                if (info == null) {
                                    return false;
                                }
                                info.incrementCharsetGenerationCount();
                                return true;
                            }
                            if (Container.this.workspace.getCharsetManager().getCharsetFor(nodePath, false) != null) {
                                return false;
                            }
                            ResourceInfo info = Container.this.workspace.getResourceInfo(nodePath, false, true);
                            if (info == null) {
                                return false;
                            }
                            info.incrementCharsetGenerationCount();
                            return true;
                        }
                    };
                    try {
                        new ElementTreeIterator(this.workspace.getElementTree(), this.getFullPath()).iterate(visitor);
                    }
                    catch (WrappedRuntimeException e) {
                        throw (CoreException)e.getTargetException();
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
}

