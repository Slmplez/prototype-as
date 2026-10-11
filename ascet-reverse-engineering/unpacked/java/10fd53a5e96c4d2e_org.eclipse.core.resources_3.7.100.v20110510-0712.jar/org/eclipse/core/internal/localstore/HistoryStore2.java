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
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.localstore;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.localstore.BlobStore;
import org.eclipse.core.internal.localstore.Bucket;
import org.eclipse.core.internal.localstore.BucketTree;
import org.eclipse.core.internal.localstore.HistoryBucket;
import org.eclipse.core.internal.localstore.IHistoryStore;
import org.eclipse.core.internal.resources.FileState;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.resources.WorkspaceDescription;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.utils.UniversalUniqueIdentifier;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HistoryStore2
implements IHistoryStore {
    private BlobStore blobStore;
    private Set<UniversalUniqueIdentifier> blobsToRemove = new HashSet<UniversalUniqueIdentifier>();
    final BucketTree tree;
    private Workspace workspace;

    public HistoryStore2(Workspace workspace, IFileStore store, int limit) {
        this.workspace = workspace;
        try {
            store.mkdir(0, null);
        }
        catch (CoreException coreException) {}
        this.blobStore = new BlobStore(store, limit);
        this.tree = new BucketTree(workspace, new HistoryBucket());
    }

    @Override
    public synchronized IFileState addState(IPath key, IFileStore localFile, IFileInfo info, boolean moveContents) {
        long lastModified = info.getLastModified();
        if (Policy.DEBUG_HISTORY) {
            System.out.println("History: Adding state for key: " + key + ", file: " + localFile + ", timestamp: " + lastModified + ", size: " + localFile.fetchInfo().getLength());
        }
        if (!this.isValid(localFile, info)) {
            return null;
        }
        UniversalUniqueIdentifier uuid = null;
        try {
            uuid = this.blobStore.addBlob(localFile, moveContents);
            this.tree.loadBucketFor(key);
            HistoryBucket currentBucket = (HistoryBucket)this.tree.getCurrent();
            currentBucket.addBlob(key, uuid, lastModified);
        }
        catch (CoreException e) {
            this.log(e);
        }
        return new FileState(this, key, lastModified, uuid);
    }

    @Override
    public synchronized Set<IPath> allFiles(IPath root, int depth, IProgressMonitor monitor) {
        final HashSet<IPath> allFiles = new HashSet<IPath>();
        try {
            this.tree.accept(new Bucket.Visitor(){

                public int visit(Bucket.Entry fileEntry) {
                    allFiles.add(fileEntry.getPath());
                    return 0;
                }
            }, root, depth == 2 ? Integer.MAX_VALUE : depth);
        }
        catch (CoreException e) {
            this.log(e);
        }
        return allFiles;
    }

    protected void applyPolicy(HistoryBucket.HistoryEntry fileEntry, int maxStates, long minTimeStamp) {
        int i = 0;
        while (i < fileEntry.getOccurrences()) {
            if (i >= maxStates || fileEntry.getTimestamp(i) < minTimeStamp) {
                this.blobsToRemove.add(fileEntry.getUUID(i));
                fileEntry.deleteOccurrence(i);
            }
            ++i;
        }
    }

    private void applyPolicy(IPath root) throws CoreException {
        WorkspaceDescription description = this.workspace.internalGetDescription();
        final long minimumTimestamp = System.currentTimeMillis() - description.getFileStateLongevity();
        final int maxStates = description.getMaxFileStates();
        this.tree.accept(new Bucket.Visitor(){

            public int visit(Bucket.Entry entry) {
                HistoryStore2.this.applyPolicy((HistoryBucket.HistoryEntry)entry, maxStates, minimumTimestamp);
                return 0;
            }
        }, root, Integer.MAX_VALUE);
        this.tree.getCurrent().save();
    }

    @Override
    public synchronized void clean(final IProgressMonitor monitor) {
        long start = System.currentTimeMillis();
        try {
            try {
                monitor.beginTask(Messages.resources_pruningHistory, -1);
                WorkspaceDescription description = this.workspace.internalGetDescription();
                final long minimumTimestamp = System.currentTimeMillis() - description.getFileStateLongevity();
                final int maxStates = description.getMaxFileStates();
                final int[] entryCount = new int[1];
                if (description.isApplyFileStatePolicy()) {
                    this.tree.accept(new Bucket.Visitor(){

                        public int visit(Bucket.Entry fileEntry) {
                            if (monitor.isCanceled()) {
                                return 1;
                            }
                            entryCount[0] = entryCount[0] + fileEntry.getOccurrences();
                            HistoryStore2.this.applyPolicy((HistoryBucket.HistoryEntry)fileEntry, maxStates, minimumTimestamp);
                            HistoryStore2.this.removeUnreferencedBlobs(100);
                            return monitor.isCanceled() ? 1 : 0;
                        }
                    }, (IPath)Path.ROOT, Integer.MAX_VALUE);
                }
                if (Policy.DEBUG_HISTORY) {
                    Policy.debug("Time to apply history store policies: " + (System.currentTimeMillis() - start) + "ms.");
                    Policy.debug("Total number of history store entries: " + entryCount[0]);
                }
                this.removeUnreferencedBlobs(0);
            }
            catch (Exception e) {
                String message = Messages.history_problemsCleaning;
                ResourceStatus status = new ResourceStatus(273, null, message, e);
                Policy.log(status);
                monitor.done();
            }
        }
        finally {
            monitor.done();
        }
    }

    void removeUnreferencedBlobs(int limit) {
        if (limit <= 0 || limit <= this.blobsToRemove.size()) {
            long start = System.currentTimeMillis();
            this.blobStore.deleteBlobs(this.blobsToRemove);
            if (Policy.DEBUG_HISTORY) {
                Policy.debug("Time to remove " + this.blobsToRemove.size() + " unreferenced blobs: " + (System.currentTimeMillis() - start) + "ms.");
            }
            this.blobsToRemove = new HashSet<UniversalUniqueIdentifier>();
        }
    }

    @Override
    public void closeHistoryStore(IResource resource) {
        try {
            this.tree.getCurrent().save();
            this.tree.getCurrent().flush();
        }
        catch (CoreException e) {
            this.log(e);
        }
    }

    @Override
    public synchronized void copyHistory(IResource sourceResource, IResource destinationResource, boolean moving) {
        if (sourceResource == null || destinationResource == null) {
            String message = Messages.history_copyToNull;
            ResourceStatus status = new ResourceStatus(566, null, message, null);
            Policy.log(status);
            return;
        }
        if (sourceResource.equals(destinationResource)) {
            String message = Messages.history_copyToSelf;
            ResourceStatus status = new ResourceStatus(566, sourceResource.getFullPath(), message, null);
            Policy.log(status);
            return;
        }
        IPath source = sourceResource.getFullPath();
        IPath destination = destinationResource.getFullPath();
        Assert.isLegal((source.segmentCount() > 0 ? 1 : 0) != 0);
        Assert.isLegal((destination.segmentCount() > 0 ? 1 : 0) != 0);
        Assert.isLegal((source.segmentCount() > 1 || destination.segmentCount() == 1 ? 1 : 0) != 0);
        try {
            if (moving && sourceResource.getType() == 4) {
                Bucket bucket = this.tree.getCurrent();
                bucket.save();
                bucket.flush();
                return;
            }
            HistoryCopyVisitor copyVisitor = new HistoryCopyVisitor(source, destination);
            this.tree.accept(copyVisitor, source, Integer.MAX_VALUE);
            this.applyPolicy(destinationResource.getFullPath());
        }
        catch (CoreException e) {
            this.log(e);
        }
    }

    @Override
    public boolean exists(IFileState target) {
        return this.blobStore.fileFor(((FileState)target).getUUID()).fetchInfo().exists();
    }

    @Override
    public InputStream getContents(IFileState target) throws CoreException {
        if (!target.exists()) {
            String message = Messages.history_notValid;
            throw new ResourceException(271, target.getFullPath(), message, null);
        }
        return this.blobStore.getBlob(((FileState)target).getUUID());
    }

    @Override
    public synchronized IFileState[] getStates(IPath filePath, IProgressMonitor monitor) {
        try {
            this.tree.loadBucketFor(filePath);
            HistoryBucket currentBucket = (HistoryBucket)this.tree.getCurrent();
            HistoryBucket.HistoryEntry fileEntry = currentBucket.getEntry(filePath);
            if (fileEntry == null || fileEntry.isEmpty()) {
                return new IFileState[0];
            }
            IFileState[] states = new IFileState[fileEntry.getOccurrences()];
            int i = 0;
            while (i < states.length) {
                states[i] = new FileState(this, fileEntry.getPath(), fileEntry.getTimestamp(i), fileEntry.getUUID(i));
                ++i;
            }
            return states;
        }
        catch (CoreException ce) {
            this.log(ce);
            return new IFileState[0];
        }
    }

    public BucketTree getTree() {
        return this.tree;
    }

    private boolean isValid(IFileStore localFile, IFileInfo info) {
        boolean result;
        WorkspaceDescription description = this.workspace.internalGetDescription();
        if (!description.isApplyFileStatePolicy()) {
            return true;
        }
        long length = info.getLength();
        boolean bl = result = length <= description.getMaxFileStateSize();
        if (Policy.DEBUG_HISTORY && !result) {
            System.out.println("History: Ignoring file (too large). File: " + localFile.toString() + ", size: " + length + ", max: " + description.getMaxFileStateSize());
        }
        return result;
    }

    private void log(CoreException e) {
        IStatus status = e.getStatus();
        if (status.getException() == null) {
            status = new Status(4, "org.eclipse.core.resources", 568, "Internal error in history store", (Throwable)e);
        }
        Policy.log(status);
    }

    @Override
    public synchronized void remove(IPath root, IProgressMonitor monitor) {
        try {
            final Set<UniversalUniqueIdentifier> tmpBlobsToRemove = this.blobsToRemove;
            this.tree.accept(new Bucket.Visitor(){

                public int visit(Bucket.Entry fileEntry) {
                    int i = 0;
                    while (i < fileEntry.getOccurrences()) {
                        tmpBlobsToRemove.add(((HistoryBucket.HistoryEntry)fileEntry).getUUID(i));
                        ++i;
                    }
                    fileEntry.delete();
                    return 0;
                }
            }, root, Integer.MAX_VALUE);
        }
        catch (CoreException ce) {
            this.log(ce);
        }
    }

    @Override
    public synchronized void removeGarbage() {
        try {
            final Set<UniversalUniqueIdentifier> tmpBlobsToRemove = this.blobsToRemove;
            this.tree.accept(new Bucket.Visitor(){

                public int visit(Bucket.Entry fileEntry) {
                    int i = 0;
                    while (i < fileEntry.getOccurrences()) {
                        tmpBlobsToRemove.remove(((HistoryBucket.HistoryEntry)fileEntry).getUUID(i));
                        ++i;
                    }
                    return 0;
                }
            }, (IPath)Path.ROOT, Integer.MAX_VALUE);
            this.blobStore.deleteBlobs(this.blobsToRemove);
            this.blobsToRemove = new HashSet<UniversalUniqueIdentifier>();
        }
        catch (Exception e) {
            String message = Messages.history_problemsCleaning;
            ResourceStatus status = new ResourceStatus(273, null, message, e);
            Policy.log(status);
        }
    }

    @Override
    public synchronized void shutdown(IProgressMonitor monitor) throws CoreException {
        this.tree.close();
    }

    @Override
    public void startup(IProgressMonitor monitor) {
    }

    class HistoryCopyVisitor
    extends Bucket.Visitor {
        private List<HistoryBucket.HistoryEntry> changes = new ArrayList<HistoryBucket.HistoryEntry>();
        private IPath destination;
        private IPath source;

        public HistoryCopyVisitor(IPath source, IPath destination) {
            this.source = source;
            this.destination = destination;
        }

        public void afterSaving(Bucket bucket) throws CoreException {
            this.saveChanges();
            this.changes.clear();
        }

        private void saveChanges() throws CoreException {
            if (this.changes.isEmpty()) {
                return;
            }
            Iterator<HistoryBucket.HistoryEntry> i = this.changes.iterator();
            HistoryBucket.HistoryEntry entry = i.next();
            HistoryStore2.this.tree.loadBucketFor(entry.getPath());
            HistoryBucket bucket = (HistoryBucket)HistoryStore2.this.tree.getCurrent();
            bucket.addBlobs(entry);
            while (i.hasNext()) {
                bucket.addBlobs(i.next());
            }
            bucket.save();
        }

        public int visit(Bucket.Entry sourceEntry) {
            IPath destinationPath = this.destination.append(sourceEntry.getPath().removeFirstSegments(this.source.segmentCount()));
            HistoryBucket.HistoryEntry destinationEntry = new HistoryBucket.HistoryEntry(destinationPath, (HistoryBucket.HistoryEntry)sourceEntry);
            this.changes.add(destinationEntry);
            return 0;
        }
    }
}

