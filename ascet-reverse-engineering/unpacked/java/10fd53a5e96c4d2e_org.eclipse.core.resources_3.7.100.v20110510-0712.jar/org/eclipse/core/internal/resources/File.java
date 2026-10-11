/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectInfo;
import org.eclipse.core.internal.resources.ProjectPreferences;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.BitMask;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.osgi.util.NLS;

public class File
extends Resource
implements IFile {
    protected File(IPath path, Workspace container) {
        super(path, container);
    }

    public void appendContents(InputStream content, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_settingContents, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            Assert.isNotNull((Object)content, (String)"Content cannot be null.");
            if (this.workspace.shouldValidate) {
                this.workspace.validateSave(this);
            }
            ISchedulingRule rule = this.workspace.getRuleFactory().modifyRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    ResourceInfo info = this.getResourceInfo(false, false);
                    this.checkAccessible(this.getFlags(info));
                    this.workspace.beginOperation(true);
                    IFileInfo fileInfo = this.getStore().fetchInfo();
                    this.internalSetContents(content, fileInfo, updateFlags, true, Policy.subMonitorFor(monitor, Policy.opWork));
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

    public void appendContents(InputStream content, boolean force, boolean keepHistory, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.appendContents(content, updateFlags |= keepHistory ? 2 : 0, monitor);
    }

    public IFolder changeToFolder() throws CoreException {
        this.getPropertyManager().deleteProperties(this, 0);
        IFolder result = this.workspace.getRoot().getFolder(this.path);
        if (this.isLinked()) {
            IPath location = this.getRawLocation();
            this.delete(0, null);
            result.createLink(location, 16, null);
        } else {
            this.workspace.deleteResource(this);
            this.workspace.createResource((IResource)result, false);
        }
        return result;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void create(InputStream content, int updateFlags, IProgressMonitor monitor) throws CoreException {
        boolean monitorNull = monitor == null;
        monitor = Policy.monitorFor(monitor);
        try {
            String message = monitorNull ? "" : NLS.bind((String)Messages.resources_creating, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            this.checkValidPath(this.path, 1, true);
            ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
            try {
                try {
                    boolean local;
                    this.workspace.prepareOperation(rule, monitor);
                    this.checkDoesNotExist();
                    Container parent = (Container)this.getParent();
                    ResourceInfo info = parent.getResourceInfo(false, false);
                    parent.checkAccessible(this.getFlags(info));
                    this.checkValidGroupContainer(parent, false, false);
                    this.workspace.beginOperation(true);
                    IFileStore store = this.getStore();
                    IFileInfo localInfo = store.fetchInfo();
                    if (BitMask.isSet(updateFlags, 1)) {
                        if (!Workspace.caseSensitive && localInfo.exists()) {
                            String name = this.getLocalManager().getLocalName(store);
                            if (name != null && !localInfo.getName().equals(name)) {
                                message = NLS.bind((String)Messages.resources_existsLocalDifferentCase, (Object)new Path(store.toString()).removeLastSegments(1).append(name).toOSString());
                                throw new ResourceException(275, this.getFullPath(), message, null);
                            }
                            this.delete(true, null);
                        }
                    } else if (localInfo.exists()) {
                        String name;
                        if (!Workspace.caseSensitive && (name = this.getLocalManager().getLocalName(store)) != null && !localInfo.getName().equals(name)) {
                            message = NLS.bind((String)Messages.resources_existsLocalDifferentCase, (Object)new Path(store.toString()).removeLastSegments(1).append(name).toOSString());
                            throw new ResourceException(275, this.getFullPath(), message, null);
                        }
                        message = NLS.bind((String)Messages.resources_fileExists, (Object)store.toString());
                        throw new ResourceException(272, this.getFullPath(), message, null);
                    }
                    monitor.worked(Policy.opWork * 40 / 100);
                    info = this.workspace.createResource((IResource)this, updateFlags);
                    boolean bl = local = content != null;
                    if (local) {
                        try {
                            this.internalSetContents(content, localInfo, updateFlags, false, Policy.subMonitorFor(monitor, Policy.opWork * 60 / 100));
                        }
                        catch (CoreException e) {
                            this.workspace.deleteResource(this);
                            store.delete(0, null);
                            throw e;
                        }
                        catch (OperationCanceledException e) {
                            this.workspace.deleteResource(this);
                            store.delete(0, null);
                            throw e;
                        }
                    }
                    this.internalSetLocal(local, 0);
                    if (local) return;
                    this.getResourceInfo(true, true).clearModificationStamp();
                    return;
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
            FileUtil.safeClose(content);
        }
    }

    public void create(InputStream content, boolean force, IProgressMonitor monitor) throws CoreException {
        this.create(content, force ? 1 : 0, monitor);
    }

    public String getCharset() throws CoreException {
        return this.getCharset(true);
    }

    public String getCharset(boolean checkImplicit) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        if (!this.exists(flags, false)) {
            return checkImplicit ? this.workspace.getCharsetManager().getCharsetFor(this.getFullPath().removeLastSegments(1), true) : null;
        }
        this.checkLocal(flags, 0);
        return this.internalGetCharset(checkImplicit, info);
    }

    public String getCharsetFor(Reader contents) throws CoreException {
        IContentDescription description;
        String charset;
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        if (this.exists(flags, true) && (charset = this.workspace.getCharsetManager().getCharsetFor(this.getFullPath(), false)) != null) {
            return charset;
        }
        try {
            IContentTypeManager contentTypeManager = Platform.getContentTypeManager();
            description = contentTypeManager.getDescriptionFor(contents, this.getName(), new QualifiedName[]{IContentDescription.CHARSET});
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.resources_errorContentDescription, (Object)this.getFullPath());
            throw new ResourceException(381, this.getFullPath(), message, e);
        }
        if (description != null && (charset = description.getCharset()) != null) {
            return charset;
        }
        return this.workspace.getCharsetManager().getCharsetFor(this.getFullPath().removeLastSegments(1), true);
    }

    private String internalGetCharset(boolean checkImplicit, ResourceInfo info) throws CoreException {
        String contentCharset;
        String charset = this.workspace.getCharsetManager().getCharsetFor(this.getFullPath(), false);
        if (charset != null || !checkImplicit) {
            return charset;
        }
        IContentDescription description = this.workspace.getContentDescriptionManager().getDescriptionFor(this, info, true);
        if (description != null && (contentCharset = description.getCharset()) != null) {
            return contentCharset;
        }
        return this.workspace.getCharsetManager().getCharsetFor(this.getFullPath().removeLastSegments(1), true);
    }

    public IContentDescription getContentDescription() throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        this.checkLocal(flags, 0);
        boolean isSynchronized = this.isSynchronized(0);
        if (!isSynchronized && !this.getLocalManager().isLightweightAutoRefreshEnabled()) {
            String message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)this.getFullPath());
            throw new ResourceException(274, this.getFullPath(), message, null);
        }
        return this.workspace.getContentDescriptionManager().getDescriptionFor(this, info, isSynchronized);
    }

    public InputStream getContents() throws CoreException {
        return this.getContents(this.getLocalManager().isLightweightAutoRefreshEnabled());
    }

    public InputStream getContents(boolean force) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        this.checkLocal(flags, 0);
        return this.getLocalManager().read(this, force, null);
    }

    public int getEncoding() throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        this.checkLocal(flags, 0);
        return this.getLocalManager().getEncoding(this);
    }

    public IFileState[] getHistory(IProgressMonitor monitor) {
        return this.getLocalManager().getHistoryStore().getStates(this.getFullPath(), monitor);
    }

    public int getType() {
        return 1;
    }

    protected void internalSetContents(InputStream content, IFileInfo fileInfo, int updateFlags, boolean append, IProgressMonitor monitor) throws CoreException {
        if (content == null) {
            content = new ByteArrayInputStream(new byte[0]);
        }
        this.getLocalManager().write(this, content, fileInfo, updateFlags, append, monitor);
        this.updateMetadataFiles();
        this.workspace.getAliasManager().updateAliases(this, this.getStore(), 0, monitor);
    }

    public void refreshLocal(int depth, IProgressMonitor monitor) throws CoreException {
        if (!this.getLocalManager().fastIsSynchronized(this)) {
            super.refreshLocal(0, monitor);
        }
    }

    public void setContents(IFileState content, int updateFlags, IProgressMonitor monitor) throws CoreException {
        this.setContents(content.getContents(), updateFlags, monitor);
    }

    public void setContents(InputStream content, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_settingContents, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            if (this.workspace.shouldValidate) {
                this.workspace.validateSave(this);
            }
            ISchedulingRule rule = this.workspace.getRuleFactory().modifyRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    ResourceInfo info = this.getResourceInfo(false, false);
                    this.checkAccessible(this.getFlags(info));
                    this.workspace.beginOperation(true);
                    IFileInfo fileInfo = this.getStore().fetchInfo();
                    this.internalSetContents(content, fileInfo, updateFlags, false, Policy.subMonitorFor(monitor, Policy.opWork));
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
            FileUtil.safeClose(content);
        }
    }

    public long setLocalTimeStamp(long value) throws CoreException {
        ResourceInfo projectInfo;
        long result = super.setLocalTimeStamp(value);
        if (this.path.segmentCount() == 2 && this.path.segment(1).equals(".project") && (projectInfo = ((Project)this.getProject()).getResourceInfo(false, false)) != null) {
            this.getLocalManager().updateLocalSync(projectInfo, result);
        }
        return result;
    }

    public void updateMetadataFiles() throws CoreException {
        int count = this.path.segmentCount();
        String name = this.path.segment(1);
        if (count == 2 && name.equals(".project")) {
            Project project = (Project)this.getProject();
            project.updateDescription();
            ProjectInfo projectInfo = (ProjectInfo)project.getResourceInfo(false, true);
            projectInfo.discardNatures();
            return;
        }
        if (count == 3 && ".settings".equals(name)) {
            ProjectPreferences.updatePreferences(this);
            return;
        }
    }

    public void setCharset(String newCharset) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        this.workspace.getCharsetManager().setCharsetFor(this.getFullPath(), newCharset);
    }

    public void setCharset(String newCharset, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_settingCharset, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            ISchedulingRule rule = this.workspace.getRuleFactory().charsetRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    ResourceInfo info = this.getResourceInfo(false, false);
                    this.checkAccessible(this.getFlags(info));
                    this.workspace.beginOperation(true);
                    this.workspace.getCharsetManager().setCharsetFor(this.getFullPath(), newCharset);
                    info = this.getResourceInfo(false, true);
                    info.incrementCharsetGenerationCount();
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

    public void setContents(InputStream content, boolean force, boolean keepHistory, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.setContents(content, updateFlags |= keepHistory ? 2 : 0, monitor);
    }

    public void setContents(IFileState source, boolean force, boolean keepHistory, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.setContents(source.getContents(), updateFlags |= keepHistory ? 2 : 0, monitor);
    }
}

