/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.team.core.variants;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.ISynchronizerChangeListener;
import org.eclipse.team.core.variants.PersistantResourceVariantByteStore;
import org.eclipse.team.core.variants.ResourceVariantByteStore;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.BatchingLock;
import org.eclipse.team.internal.core.subscribers.SyncByteConverter;

public class ThreeWaySynchronizer {
    private BatchingLock.IFlushOperation flushOperation = new BatchingLock.IFlushOperation(){

        public void flush(BatchingLock.ThreadInfo info, IProgressMonitor monitor) throws TeamException {
            if (info != null && !info.isEmpty()) {
                ThreeWaySynchronizer.this.broadcastSyncChanges(info.getChangedResources());
            }
        }
    };
    private static final byte[] IGNORED_BYTES = "i".getBytes();
    private ILock lock = Job.getJobManager().newLock();
    private BatchingLock batchingLock = new BatchingLock();
    private ResourceVariantByteStore cache;
    private Set listeners = new HashSet();

    public ThreeWaySynchronizer(QualifiedName name) {
        this(new PersistantResourceVariantByteStore(name));
    }

    public ThreeWaySynchronizer(ResourceVariantByteStore store) {
        this.cache = store;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addListener(ISynchronizerChangeListener listener) {
        Set set = this.listeners;
        synchronized (set) {
            this.listeners.add(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeListener(ISynchronizerChangeListener listener) {
        Set set = this.listeners;
        synchronized (set) {
            this.listeners.remove(listener);
        }
    }

    public byte[] getBaseBytes(IResource resource) throws TeamException {
        try {
            this.beginOperation();
            byte[] syncBytes = this.internalGetSyncBytes(resource);
            if (syncBytes == null) {
                return null;
            }
            byte[] baseBytes = this.getSlot(syncBytes, 1);
            if (baseBytes == null || baseBytes.length == 0) {
                return null;
            }
            byte[] byArray = baseBytes;
            return byArray;
        }
        finally {
            this.endOperation();
        }
    }

    public void setBaseBytes(IResource resource, byte[] baseBytes) throws TeamException {
        Assert.isNotNull((Object)baseBytes);
        ISchedulingRule rule = null;
        try {
            rule = this.beginBatching((ISchedulingRule)resource, null);
            try {
                this.beginOperation();
                String base = new String(baseBytes);
                String[] slots = new String[]{new Long(resource.getModificationStamp()).toString(), base, base};
                byte[] syncBytes = this.toBytes(slots);
                this.internalSetSyncBytes(resource, syncBytes);
                this.batchingLock.resourceChanged(resource);
            }
            finally {
                this.endOperation();
            }
        }
        finally {
            if (rule != null) {
                this.endBatching(rule, null);
            }
        }
    }

    public boolean isLocallyModified(IResource resource) throws TeamException {
        return this.internalGetSyncBytes(resource) == null && !this.isIgnored(resource) || this.getLocalTimestamp(resource) != resource.getModificationStamp() || this.getBaseBytes(resource) != null && !resource.exists();
    }

    public byte[] getRemoteBytes(IResource resource) throws TeamException {
        try {
            this.beginOperation();
            byte[] syncBytes = this.internalGetSyncBytes(resource);
            if (syncBytes == null) {
                return null;
            }
            byte[] remoteBytes = this.getSlot(syncBytes, 2);
            if (remoteBytes == null || remoteBytes.length == 0) {
                return null;
            }
            byte[] byArray = remoteBytes;
            return byArray;
        }
        finally {
            this.endOperation();
        }
    }

    /*
     * Unable to fully structure code
     */
    public boolean setRemoteBytes(IResource resource, byte[] remoteBytes) throws TeamException {
        Assert.isNotNull((Object)remoteBytes);
        rule = null;
        try {
            block9: {
                rule = this.beginBatching((ISchedulingRule)resource, null);
                try {
                    block10: {
                        this.beginOperation();
                        syncBytes = this.internalGetSyncBytes(resource);
                        if (syncBytes != null) break block10;
                        slots = new String[]{"", "", new String(remoteBytes)};
                        syncBytes = this.toBytes(slots);
                        ** GOTO lbl26
                    }
                    currentRemote = this.getSlot(syncBytes, 2);
                    if (!this.equals(remoteBytes, currentRemote)) break block9;
                    this.endOperation();
                    return false;
                }
                catch (Throwable var6_7) {
                    this.endOperation();
                    throw var6_7;
                }
            }
            syncBytes = this.setSlot(syncBytes, 2, remoteBytes);
lbl26:
            // 2 sources

            this.internalSetSyncBytes(resource, syncBytes);
            this.batchingLock.resourceChanged(resource);
            this.endOperation();
            return true;
        }
        finally {
            if (rule != null) {
                this.endBatching(rule, null);
            }
        }
    }

    public boolean removeRemoteBytes(IResource resource) throws TeamException {
        ISchedulingRule rule = null;
        try {
            block10: {
                byte[] syncBytes;
                block11: {
                    rule = this.beginBatching((ISchedulingRule)resource, null);
                    try {
                        this.beginOperation();
                        syncBytes = this.internalGetSyncBytes(resource);
                        if (syncBytes == null) break block10;
                        String currentRemote = new String(this.getSlot(syncBytes, 2));
                        if (currentRemote.length() != 0) break block11;
                        this.endOperation();
                        return false;
                    }
                    catch (Throwable throwable) {
                        this.endOperation();
                        throw throwable;
                    }
                }
                syncBytes = this.setSlot(syncBytes, 2, new byte[0]);
                this.internalSetSyncBytes(resource, syncBytes);
                this.batchingLock.resourceChanged(resource);
                this.endOperation();
                return true;
            }
            this.endOperation();
            return false;
        }
        finally {
            if (rule != null) {
                this.endBatching(rule, null);
            }
        }
    }

    public boolean hasSyncBytes(IResource resource) throws TeamException {
        return this.internalGetSyncBytes(resource) != null;
    }

    public boolean isIgnored(IResource resource) throws TeamException {
        byte[] bytes = this.cache.getBytes(resource);
        return bytes != null && this.equals(bytes, IGNORED_BYTES);
    }

    public void setIgnored(IResource resource) throws TeamException {
        this.internalSetSyncBytes(resource, IGNORED_BYTES);
    }

    public IResource[] members(IResource resource) throws TeamException {
        if (resource.getType() == 1) {
            return new IResource[0];
        }
        try {
            HashSet<IResource> potentialChildren = new HashSet<IResource>();
            IContainer container = (IContainer)resource;
            if (container.exists()) {
                potentialChildren.addAll(Arrays.asList(container.members()));
            }
            potentialChildren.addAll(Arrays.asList(this.cache.members(resource)));
            ArrayList<IResource> result = new ArrayList<IResource>();
            Iterator iter = potentialChildren.iterator();
            while (iter.hasNext()) {
                IResource child = (IResource)iter.next();
                if (!child.exists() && !this.hasSyncBytes(child)) continue;
                result.add(child);
            }
            return result.toArray(new IResource[result.size()]);
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }

    public void flush(IResource resource, int depth) throws TeamException {
        ISchedulingRule rule = null;
        try {
            rule = this.beginBatching((ISchedulingRule)resource, null);
            try {
                this.beginOperation();
                if (this.cache.flushBytes(resource, depth)) {
                    this.batchingLock.resourceChanged(resource);
                }
            }
            finally {
                this.endOperation();
            }
        }
        finally {
            if (rule != null) {
                this.endBatching(rule, null);
            }
        }
    }

    public void run(IResource resourceRule, IWorkspaceRunnable runnable, IProgressMonitor monitor) throws TeamException {
        monitor = Policy.monitorFor(monitor);
        monitor.beginTask(null, 100);
        ISchedulingRule rule = this.beginBatching((ISchedulingRule)resourceRule, Policy.subMonitorFor(monitor, 10));
        try {
            try {
                this.cache.run(resourceRule, runnable, Policy.subMonitorFor(monitor, 80));
            }
            catch (CoreException e) {
                throw TeamException.asTeamException(e);
            }
        }
        finally {
            if (rule != null) {
                this.endBatching(rule, Policy.subMonitorFor(monitor, 10));
            }
            monitor.done();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void broadcastSyncChanges(final IResource[] resources) {
        ISynchronizerChangeListener[] allListeners;
        Set set = this.listeners;
        synchronized (set) {
            allListeners = this.listeners.toArray(new ISynchronizerChangeListener[this.listeners.size()]);
        }
        int i = 0;
        while (i < allListeners.length) {
            final ISynchronizerChangeListener listener = allListeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.syncStateChanged(resources);
                }
            });
            ++i;
        }
    }

    private byte[] internalGetSyncBytes(IResource resource) throws TeamException {
        byte[] bytes = this.cache.getBytes(resource);
        if (bytes != null && this.equals(bytes, IGNORED_BYTES)) {
            return null;
        }
        return bytes;
    }

    private boolean internalSetSyncBytes(IResource resource, byte[] syncBytes) throws TeamException {
        return this.cache.setBytes(resource, syncBytes);
    }

    private byte[] getSlot(byte[] syncBytes, int i) {
        return SyncByteConverter.getSlot(syncBytes, i, false);
    }

    private byte[] setSlot(byte[] syncBytes, int i, byte[] insertBytes) throws TeamException {
        return SyncByteConverter.setSlot(syncBytes, i, insertBytes);
    }

    private byte[] toBytes(String[] slots) {
        return SyncByteConverter.toBytes(slots);
    }

    private long getLocalTimestamp(IResource resource) throws TeamException {
        try {
            this.beginOperation();
            byte[] syncBytes = this.internalGetSyncBytes(resource);
            if (syncBytes == null) {
                return -1L;
            }
            byte[] bytes = this.getSlot(syncBytes, 0);
            if (bytes == null || bytes.length == 0) {
                return -1L;
            }
            long l = Long.parseLong(new String(bytes));
            return l;
        }
        finally {
            this.endOperation();
        }
    }

    private boolean equals(byte[] syncBytes, byte[] oldBytes) {
        if (syncBytes.length != oldBytes.length) {
            return false;
        }
        int i = 0;
        while (i < oldBytes.length) {
            if (oldBytes[i] != syncBytes[i]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private void beginOperation() {
        if (ResourcesPlugin.getWorkspace().isTreeLocked()) {
            return;
        }
        this.lock.acquire();
    }

    private void endOperation() {
        if (ResourcesPlugin.getWorkspace().isTreeLocked()) {
            return;
        }
        this.lock.release();
    }

    private ISchedulingRule beginBatching(ISchedulingRule resourceRule, IProgressMonitor monitor) {
        return this.batchingLock.acquire(resourceRule, this.flushOperation, monitor);
    }

    private void endBatching(ISchedulingRule rule, IProgressMonitor monitor) throws TeamException {
        this.batchingLock.release(rule, monitor);
    }
}

