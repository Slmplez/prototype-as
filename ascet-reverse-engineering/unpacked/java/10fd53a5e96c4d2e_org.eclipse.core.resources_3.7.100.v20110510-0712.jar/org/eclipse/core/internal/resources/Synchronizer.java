/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.internal.localstore.SafeChunkyInputStream;
import org.eclipse.core.internal.localstore.SafeFileInputStream;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.SyncInfoReader;
import org.eclipse.core.internal.resources.SyncInfoSnapReader;
import org.eclipse.core.internal.resources.SyncInfoWriter;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.ISynchronizer;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Synchronizer
implements ISynchronizer {
    protected Workspace workspace;
    protected SyncInfoWriter writer;
    protected Set<QualifiedName> registry = new HashSet<QualifiedName>(5);

    public Synchronizer(Workspace workspace) {
        this.workspace = workspace;
        this.writer = new SyncInfoWriter(workspace, this);
    }

    @Override
    public void accept(QualifiedName partner, IResource resource, IResourceVisitor visitor, int depth) throws CoreException {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        Assert.isLegal((resource != null ? 1 : 0) != 0);
        Assert.isLegal((visitor != null ? 1 : 0) != 0);
        if (this.getSyncInfo(partner, resource) != null && !visitor.visit(resource)) {
            return;
        }
        if (depth == 0 || resource.getType() == 1) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        IResource[] children = ((IContainer)resource).members();
        int i = 0;
        while (i < children.length) {
            this.accept(partner, children[i], visitor, depth);
            ++i;
        }
    }

    @Override
    public void add(QualifiedName partner) {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        this.registry.add(partner);
    }

    @Override
    public void flushSyncInfo(final QualifiedName partner, final IResource root, final int depth) throws CoreException {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        Assert.isLegal((root != null ? 1 : 0) != 0);
        IWorkspaceRunnable body = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                IResourceVisitor visitor = new IResourceVisitor(){

                    public boolean visit(IResource resource) throws CoreException {
                        if (Synchronizer.this.getSyncInfo(partner, resource) != null) {
                            Synchronizer.this.setSyncInfo(partner, resource, null);
                        }
                        return true;
                    }
                };
                root.accept(visitor, depth, true);
            }
        };
        this.workspace.run(body, root, 0, null);
    }

    @Override
    public QualifiedName[] getPartners() {
        return this.registry.toArray(new QualifiedName[this.registry.size()]);
    }

    protected Set<QualifiedName> getRegistry() {
        return this.registry;
    }

    @Override
    public byte[] getSyncInfo(QualifiedName partner, IResource resource) throws CoreException {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        Assert.isLegal((resource != null ? 1 : 0) != 0);
        if (!this.isRegistered(partner)) {
            String message = NLS.bind((String)Messages.synchronizer_partnerNotRegistered, (Object)partner);
            throw new ResourceException(new ResourceStatus(375, message));
        }
        ResourceInfo info = this.workspace.getResourceInfo(resource.getFullPath(), true, false);
        return info == null ? null : info.getSyncInfo(partner, true);
    }

    protected boolean isRegistered(QualifiedName partner) {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        return this.registry.contains(partner);
    }

    public void readPartners(DataInputStream input) throws CoreException {
        SyncInfoReader reader = new SyncInfoReader(this.workspace, this);
        reader.readPartners(input);
    }

    public void restore(IResource resource, IProgressMonitor monitor) throws CoreException {
        this.restoreFromSave(resource);
        this.restoreFromSnap(resource);
    }

    protected void restoreFromSave(IResource resource) throws CoreException {
        IPath sourceLocation = this.workspace.getMetaArea().getSyncInfoLocationFor(resource);
        IPath tempLocation = this.workspace.getMetaArea().getBackupLocationFor(sourceLocation);
        if (!sourceLocation.toFile().exists() && !tempLocation.toFile().exists()) {
            return;
        }
        try {
            DataInputStream input = new DataInputStream(new SafeFileInputStream(sourceLocation.toOSString(), tempLocation.toOSString()));
            try {
                SyncInfoReader reader = new SyncInfoReader(this.workspace, this);
                reader.readSyncInfo(input);
            }
            finally {
                input.close();
            }
        }
        catch (Exception e) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)sourceLocation);
            throw new ResourceException(567, sourceLocation, msg, e);
        }
    }

    protected void restoreFromSnap(IResource resource) {
        IPath sourceLocation = this.workspace.getMetaArea().getSyncInfoSnapshotLocationFor(resource);
        if (!sourceLocation.toFile().exists()) {
            return;
        }
        try {
            DataInputStream input = new DataInputStream(new SafeChunkyInputStream(sourceLocation.toFile()));
            try {
                try {
                    SyncInfoSnapReader reader = new SyncInfoSnapReader(this.workspace, this);
                    while (true) {
                        reader.readSyncInfo(input);
                    }
                }
                catch (EOFException eOFException) {
                    input.close();
                }
            }
            catch (Throwable throwable) {
                input.close();
                throw throwable;
            }
        }
        catch (Exception e) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)sourceLocation);
            Policy.log(new ResourceStatus(567, sourceLocation, msg, e));
        }
    }

    @Override
    public void remove(QualifiedName partner) {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        if (this.isRegistered(partner)) {
            try {
                this.flushSyncInfo(partner, this.workspace.getRoot(), 2);
                this.registry.remove(partner);
            }
            catch (CoreException e) {
                Policy.log(e);
            }
        }
    }

    public void savePartners(DataOutputStream output) throws IOException {
        this.writer.savePartners(output);
    }

    public void saveSyncInfo(ResourceInfo info, IPathRequestor requestor, DataOutputStream output, List<QualifiedName> writtenPartners) throws IOException {
        this.writer.saveSyncInfo(info, requestor, output, writtenPartners);
    }

    protected void setRegistry(Set<QualifiedName> registry) {
        this.registry = registry;
    }

    @Override
    public void setSyncInfo(QualifiedName partner, IResource resource, byte[] info) throws CoreException {
        Assert.isLegal((partner != null ? 1 : 0) != 0);
        Assert.isLegal((resource != null ? 1 : 0) != 0);
        try {
            this.workspace.prepareOperation(resource, null);
            this.workspace.beginOperation(true);
            if (!this.isRegistered(partner)) {
                String message = NLS.bind((String)Messages.synchronizer_partnerNotRegistered, (Object)partner);
                throw new ResourceException(new ResourceStatus(375, message));
            }
            if (resource.getType() == 8) {
                return;
            }
            Resource target = (Resource)resource;
            ResourceInfo resourceInfo = this.workspace.getResourceInfo(target.getFullPath(), true, false);
            int flags = target.getFlags(resourceInfo);
            if (!target.exists(flags, false)) {
                if (info == null) {
                    return;
                }
                target.checkValidPath(target.getFullPath(), target.getType(), false);
                Container parent = (Container)target.getParent();
                parent.checkAccessible(parent.getFlags(parent.getResourceInfo(true, false)));
                this.workspace.createResource((IResource)target, true);
            }
            resourceInfo = target.getResourceInfo(true, true);
            resourceInfo.setSyncInfo(partner, info);
            resourceInfo.incrementSyncInfoGenerationCount();
            resourceInfo.set(8192);
            flags = target.getFlags(resourceInfo);
            if (target.isPhantom(flags) && resourceInfo.getSyncInfo(false) == null) {
                MultiStatus status = new MultiStatus("org.eclipse.core.resources", 566, Messages.resources_deleteProblem, null);
                ((Resource)resource).deleteResource(false, status);
                if (!status.isOK()) {
                    throw new ResourceException((IStatus)status);
                }
            }
        }
        finally {
            this.workspace.endOperation(resource, false, null);
        }
    }

    public void snapSyncInfo(ResourceInfo info, IPathRequestor requestor, DataOutputStream output) throws IOException {
        this.writer.snapSyncInfo(info, requestor, output);
    }
}

