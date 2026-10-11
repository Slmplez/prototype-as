/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.osgi.util.NLS;

public class Folder
extends Container
implements IFolder {
    protected Folder(IPath path, Workspace container) {
        super(path, container);
    }

    protected void assertCreateRequirements(IFileStore store, IFileInfo localInfo, int updateFlags) throws CoreException {
        boolean force;
        this.checkDoesNotExist();
        Container parent = (Container)this.getParent();
        ResourceInfo info = parent.getResourceInfo(false, false);
        parent.checkAccessible(this.getFlags(info));
        this.checkValidGroupContainer(parent, false, false);
        boolean bl = force = (updateFlags & 1) != 0;
        if (!force && localInfo.exists()) {
            String name;
            if (!Workspace.caseSensitive && (name = this.getLocalManager().getLocalName(store)) != null && !store.getName().equals(name)) {
                String msg = NLS.bind((String)Messages.resources_existsLocalDifferentCase, (Object)new Path(store.toString()).removeLastSegments(1).append(name).toOSString());
                throw new ResourceException(275, this.getFullPath(), msg, null);
            }
            String msg = NLS.bind((String)Messages.resources_fileExists, (Object)store.toString());
            throw new ResourceException(272, this.getFullPath(), msg, null);
        }
    }

    public IFile changeToFile() throws CoreException {
        this.getPropertyManager().deleteProperties(this, 2);
        IFile result = this.workspace.getRoot().getFile(this.path);
        if (this.isLinked()) {
            URI location = this.getRawLocationURI();
            this.delete(0, null);
            result.createLink(location, 16, null);
        } else {
            this.workspace.deleteResource(this);
            this.workspace.createResource((IResource)result, false);
        }
        return result;
    }

    public void create(int updateFlags, boolean local, IProgressMonitor monitor) throws CoreException {
        if ((updateFlags & 0x2000) == 8192) {
            this.createLink(LinkDescription.VIRTUAL_LOCATION, updateFlags, monitor);
            return;
        }
        boolean force = (updateFlags & 1) != 0;
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_creating, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            this.checkValidPath(this.path, 2, true);
            ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    IFileStore store = this.getStore();
                    IFileInfo localInfo = store.fetchInfo();
                    this.assertCreateRequirements(store, localInfo, updateFlags);
                    this.workspace.beginOperation(true);
                    if (force && !Workspace.caseSensitive && localInfo.exists()) {
                        String name = this.getLocalManager().getLocalName(store);
                        if (name == null || localInfo.getName().equals(name)) {
                            this.delete(true, null);
                        } else {
                            String msg = NLS.bind((String)Messages.resources_existsLocalDifferentCase, (Object)new Path(store.toString()).removeLastSegments(1).append(name).toOSString());
                            throw new ResourceException(275, this.getFullPath(), msg, null);
                        }
                    }
                    this.internalCreate(updateFlags, local, Policy.subMonitorFor(monitor, Policy.opWork));
                    this.workspace.getAliasManager().updateAliases(this, this.getStore(), 0, monitor);
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

    public void create(boolean force, boolean local, IProgressMonitor monitor) throws CoreException {
        this.create(force ? 1 : 0, local, monitor);
    }

    public void ensureExists(IProgressMonitor monitor) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        if (this.exists(flags, true)) {
            return;
        }
        if (this.exists(flags, false)) {
            String message = NLS.bind((String)Messages.resources_folderOverFile, (Object)this.getFullPath());
            throw new ResourceException(366, this.getFullPath(), message, null);
        }
        Container parent = (Container)this.getParent();
        if (parent.getType() == 4) {
            info = parent.getResourceInfo(false, false);
            parent.checkExists(this.getFlags(info), true);
        } else {
            ((Folder)parent).ensureExists(monitor);
        }
        if (this.getType() == 2 && this.isUnderVirtual()) {
            this.create(8193, true, monitor);
        } else {
            this.internalCreate(1, true, monitor);
        }
    }

    public String getDefaultCharset(boolean checkImplicit) {
        if (!this.exists()) {
            return checkImplicit ? this.workspace.getCharsetManager().getCharsetFor(this.getFullPath().removeLastSegments(1), true) : null;
        }
        return this.workspace.getCharsetManager().getCharsetFor(this.getFullPath(), checkImplicit);
    }

    public int getType() {
        return 2;
    }

    public void internalCreate(int updateFlags, boolean local, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_creating, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            this.workspace.createResource((IResource)this, updateFlags);
            if (local) {
                try {
                    boolean force = (updateFlags & 1) != 0;
                    this.getLocalManager().write(this, force, Policy.subMonitorFor(monitor, 100));
                }
                catch (CoreException e) {
                    this.workspace.deleteResource(this);
                    throw e;
                }
            }
            this.internalSetLocal(local, 0);
            if (!local) {
                this.getResourceInfo(true, true).clearModificationStamp();
            }
        }
        finally {
            monitor.done();
        }
    }
}

