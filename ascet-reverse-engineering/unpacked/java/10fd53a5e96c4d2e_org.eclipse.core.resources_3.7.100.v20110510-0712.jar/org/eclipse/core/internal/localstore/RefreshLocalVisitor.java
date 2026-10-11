/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import org.eclipse.core.internal.localstore.ILocalStoreConstants;
import org.eclipse.core.internal.localstore.IUnifiedTreeVisitor;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.File;
import org.eclipse.core.internal.resources.Folder;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public class RefreshLocalVisitor
implements IUnifiedTreeVisitor,
ILocalStoreConstants {
    protected static final int RL_UNKNOWN = 0;
    protected static final int RL_IN_SYNC = 1;
    protected static final int RL_NOT_IN_SYNC = 2;
    public static final int TOTAL_WORK = 250;
    private int currentIncrement = 4;
    private int halfWay = 125;
    private int nextProgress = this.currentIncrement;
    private int worked = 0;
    protected MultiStatus errors;
    protected IProgressMonitor monitor;
    protected boolean resourceChanged;
    protected Workspace workspace;

    public RefreshLocalVisitor(IProgressMonitor monitor) {
        this.monitor = monitor;
        this.workspace = (Workspace)ResourcesPlugin.getWorkspace();
        this.resourceChanged = false;
        String msg = Messages.resources_errorMultiRefresh;
        this.errors = new MultiStatus("org.eclipse.core.resources", 271, msg, null);
    }

    protected void contentAdded(UnifiedTreeNode node, Resource target) {
        this.resourceChanged(node, target);
    }

    protected void createResource(UnifiedTreeNode node, Resource target) throws CoreException {
        IContainer parent;
        ResourceInfo info = target.getResourceInfo(false, false);
        int flags = target.getFlags(info);
        if (target.exists(flags, false)) {
            return;
        }
        if (node.getLevel() == 0 && (parent = target.getParent()).getType() == 2) {
            ((Folder)target.getParent()).ensureExists(this.monitor);
        }
        info = this.workspace.createResource((IResource)target, false);
        info.set(0x100000);
        target.getLocalManager().updateLocalSync(info, node.getLastModified());
    }

    protected void deleteResource(UnifiedTreeNode node, Resource target) throws CoreException {
        ResourceInfo info = target.getResourceInfo(false, false);
        int flags = target.getFlags(info);
        if (ResourceInfo.isSet(flags, 65536)) {
            info = target.getResourceInfo(false, true);
            if (info != null) {
                info.clearModificationStamp();
                target.getLocalManager().updateLocalSync(info, node.getLastModified());
            }
            return;
        }
        if (target.exists(flags, false)) {
            target.deleteResource(true, this.errors);
        }
        node.setExistsWorkspace(false);
    }

    protected void fileToFolder(UnifiedTreeNode node, Resource target) throws CoreException {
        ResourceInfo info = target.getResourceInfo(false, false);
        int flags = target.getFlags(info);
        if (target.exists(flags, true)) {
            target = (Folder)((File)target).changeToFolder();
        } else if (!target.exists(flags, false)) {
            target = (Resource)((Object)this.workspace.getRoot().getFolder(target.getFullPath()));
            this.workspace.createResource((IResource)target, false);
        }
        node.setResource(target);
        info = target.getResourceInfo(false, true);
        target.getLocalManager().updateLocalSync(info, node.getLastModified());
    }

    protected void folderToFile(UnifiedTreeNode node, Resource target) throws CoreException {
        ResourceInfo info = target.getResourceInfo(false, false);
        int flags = target.getFlags(info);
        if (target.exists(flags, true)) {
            target = (File)((Folder)target).changeToFile();
        } else if (!target.exists(flags, false)) {
            target = (Resource)((Object)this.workspace.getRoot().getFile(target.getFullPath()));
            this.workspace.createResource((IResource)target, false);
        }
        node.setResource(target);
        info = target.getResourceInfo(false, true);
        target.getLocalManager().updateLocalSync(info, node.getLastModified());
    }

    public IStatus getErrorStatus() {
        return this.errors;
    }

    protected void makeLocal(UnifiedTreeNode node, Resource target) {
        ResourceInfo info = target.getResourceInfo(false, true);
        if (info != null) {
            target.getLocalManager().updateLocalSync(info, node.getLastModified());
        }
    }

    protected void refresh(Container parent) throws CoreException {
        parent.getLocalManager().refresh(parent, 0, false, null);
    }

    protected void resourceChanged(UnifiedTreeNode node, Resource target) {
        ResourceInfo info = target.getResourceInfo(false, true);
        if (info == null) {
            return;
        }
        target.getLocalManager().updateLocalSync(info, node.getLastModified());
        info.incrementContentId();
        info.clear(393216);
        this.workspace.updateModificationStamp(info);
    }

    public boolean resourcesChanged() {
        return this.resourceChanged;
    }

    protected int synchronizeExistence(UnifiedTreeNode node, Resource target) throws CoreException {
        if (node.existsInWorkspace()) {
            if (!node.existsInFileSystem()) {
                if (target.isLocal(0) && target.getModificationStamp() != -1L) {
                    this.deleteResource(node, target);
                    this.resourceChanged = true;
                    return 2;
                }
                return 1;
            }
        } else {
            IResource genderVariant = this.workspace.getRoot().findMember(target.getFullPath());
            if (genderVariant != null) {
                return 0;
            }
            if (node.existsInFileSystem()) {
                IResource variant;
                Container parent = (Container)target.getParent();
                if (!parent.exists()) {
                    this.refresh(parent);
                    if (!parent.exists()) {
                        return 2;
                    }
                }
                if (!target.getName().equals(node.getLocalName())) {
                    return 1;
                }
                if (!Workspace.caseSensitive && node.getLevel() == 0 && (variant = target.findExistingResourceVariant(target.getFullPath())) != null) {
                    this.deleteResource(node, (Resource)variant);
                    this.createResource(node, target);
                    this.resourceChanged = true;
                    return 2;
                }
                this.createResource(node, target);
                this.resourceChanged = true;
                return 2;
            }
        }
        return 0;
    }

    protected boolean synchronizeGender(UnifiedTreeNode node, Resource target) throws CoreException {
        IResource genderVariant;
        if (!node.existsInWorkspace() && (genderVariant = this.workspace.getRoot().findMember(target.getFullPath())) != null) {
            target = (Resource)genderVariant;
        }
        if (target.getType() == 1) {
            if (node.isFolder()) {
                this.fileToFolder(node, target);
                this.resourceChanged = true;
                return false;
            }
        } else if (!node.isFolder()) {
            this.folderToFile(node, target);
            this.resourceChanged = true;
            return false;
        }
        return true;
    }

    protected void synchronizeLastModified(UnifiedTreeNode node, Resource target) {
        if (target.isLocal(0)) {
            this.resourceChanged(node, target);
        } else {
            this.contentAdded(node, target);
        }
        this.resourceChanged = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean visit(UnifiedTreeNode node) throws CoreException {
        Policy.checkCanceled(this.monitor);
        try {
            Resource target = (Resource)node.getResource();
            int targetType = target.getType();
            if (targetType == 4) {
                return true;
            }
            if (node.existsInWorkspace() && node.existsInFileSystem()) {
                ResourceInfo info;
                if (targetType == 2 && node.isFolder()) {
                    if (!target.isLocal(0)) {
                        this.makeLocal(node, target);
                    }
                    if ((info = target.getResourceInfo(false, false)) != null && info.getModificationStamp() != -1L) {
                        return true;
                    }
                }
                if (targetType == 1 && !node.isFolder() && (info = target.getResourceInfo(false, false)) != null && info.getModificationStamp() != -1L && info.getLocalSyncInfo() == node.getLastModified()) {
                    return true;
                }
            } else {
                if (node.existsInFileSystem() && !Path.EMPTY.isValidSegment(node.getLocalName())) {
                    String message = NLS.bind((String)Messages.resources_invalidResourceName, (Object)node.getLocalName());
                    this.errors.merge((IStatus)new ResourceStatus(278, message));
                    return false;
                }
                int state = this.synchronizeExistence(node, target);
                if (state == 1 || state == 2) {
                    if (targetType != 1) return true;
                    try {
                        ((File)target).updateMetadataFiles();
                        return true;
                    }
                    catch (CoreException e) {
                        this.errors.merge(e.getStatus());
                        return true;
                    }
                }
            }
            if (this.synchronizeGender(node, target)) {
                this.synchronizeLastModified(node, target);
            }
            if (targetType != 1) return true;
            try {
                ((File)target).updateMetadataFiles();
                return true;
            }
            catch (CoreException e) {
                this.errors.merge(e.getStatus());
                return true;
            }
        }
        finally {
            if (--this.nextProgress <= 0) {
                this.monitor.worked(1);
                ++this.worked;
                if (this.worked >= this.halfWay) {
                    this.currentIncrement *= 2;
                    this.halfWay += (250 - this.halfWay) / 2;
                }
                this.nextProgress = this.currentIncrement;
            }
        }
    }
}

