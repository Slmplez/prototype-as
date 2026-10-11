/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.provider.FileInfo
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.internal.localstore.IHistoryStore;
import org.eclipse.core.internal.localstore.IUnifiedTreeVisitor;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DeleteVisitor
implements IUnifiedTreeVisitor,
ICoreConstants {
    protected boolean force;
    protected boolean keepHistory;
    protected IProgressMonitor monitor;
    protected List<Resource> skipList;
    protected MultiStatus status;
    private int ticks;

    public DeleteVisitor(List<Resource> skipList, int flags, IProgressMonitor monitor, int ticks) {
        this.skipList = skipList;
        this.ticks = ticks;
        this.force = (flags & 1) != 0;
        this.keepHistory = (flags & 2) != 0;
        this.monitor = monitor;
        this.status = new MultiStatus("org.eclipse.core.resources", 273, Messages.localstore_deleteProblem, null);
    }

    protected void delete(UnifiedTreeNode node, boolean shouldKeepHistory) {
        Resource target = (Resource)node.getResource();
        try {
            IFileStore localFile;
            boolean deleteLocalFile = !target.isLinked() && node.existsInFileSystem();
            IFileStore iFileStore = localFile = deleteLocalFile ? node.getStore() : null;
            if (deleteLocalFile && shouldKeepHistory) {
                this.recursiveKeepHistory(target.getLocalManager().getHistoryStore(), node);
            }
            node.removeChildrenFromTree();
            int work = this.ticks < 0 ? 0 : this.ticks;
            this.ticks -= work;
            if (deleteLocalFile) {
                localFile.delete(0, Policy.subMonitorFor(this.monitor, work));
            } else {
                this.monitor.worked(work);
            }
            if (node.existsInWorkspace()) {
                target.deleteResource(true, this.status);
            }
        }
        catch (CoreException e) {
            this.status.add(e.getStatus());
            try {
                target.refreshLocal(2, null);
            }
            catch (CoreException coreException) {}
        }
    }

    protected boolean equals(IResource one, IResource another) {
        return one.getFullPath().equals((Object)another.getFullPath());
    }

    public MultiStatus getStatus() {
        return this.status;
    }

    protected boolean isAncestor(IResource one, IResource another) {
        return one.getFullPath().isPrefixOf(another.getFullPath()) && !this.equals(one, another);
    }

    protected boolean isAncestorOfResourceToSkip(IResource resource) {
        if (this.skipList == null) {
            return false;
        }
        for (IResource iResource : this.skipList) {
            if (!this.isAncestor(resource, iResource)) continue;
            return true;
        }
        return false;
    }

    private void recursiveKeepHistory(IHistoryStore store, UnifiedTreeNode node) {
        IResource target = node.getResource();
        if (target.isLinked() || target.isVirtual() || node.isSymbolicLink()) {
            return;
        }
        if (node.isFolder()) {
            this.monitor.subTask(NLS.bind((String)Messages.localstore_deleting, (Object)target.getFullPath()));
            Iterator<UnifiedTreeNode> children = node.getChildren();
            while (children.hasNext()) {
                this.recursiveKeepHistory(store, children.next());
            }
        } else {
            IFileInfo info = node.fileInfo;
            if (info == null) {
                info = new FileInfo(node.getLocalName());
            }
            store.addState(target.getFullPath(), node.getStore(), info, true);
        }
        this.monitor.worked(1);
        --this.ticks;
    }

    protected void removeFromSkipList(IResource resource) {
        if (this.skipList != null) {
            this.skipList.remove(resource);
        }
    }

    protected boolean shouldSkip(IResource resource) {
        if (this.skipList == null) {
            return false;
        }
        int i = 0;
        while (i < this.skipList.size()) {
            if (this.equals(resource, this.skipList.get(i))) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public boolean visit(UnifiedTreeNode node) {
        Policy.checkCanceled(this.monitor);
        Resource target = (Resource)node.getResource();
        if (this.shouldSkip(target)) {
            this.removeFromSkipList(target);
            int skipTicks = target.countResources(2, false);
            this.monitor.worked(skipTicks);
            this.ticks -= skipTicks;
            return false;
        }
        if (this.isAncestorOfResourceToSkip(target)) {
            return true;
        }
        this.delete(node, this.keepHistory);
        return false;
    }
}

