/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.team.core.synchronize;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.team.core.ITeamStatus;
import org.eclipse.team.core.TeamStatus;
import org.eclipse.team.core.synchronize.FastSyncInfoFilter;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeListener;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSetChangeEvent;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.SyncInfoStatistics;

public class SyncInfoSet {
    private Map resources = Collections.synchronizedMap(new HashMap());
    private SyncInfoStatistics statistics = new SyncInfoStatistics();
    private Map errors = new HashMap();
    private boolean lockedForModification;
    private ILock lock = Job.getJobManager().newLock();
    private Set listeners = Collections.synchronizedSet(new HashSet());
    private SyncInfoSetChangeEvent changes = this.createEmptyChangeEvent();

    public SyncInfoSet() {
    }

    public SyncInfoSet(SyncInfo[] infos) {
        this();
        int i = 0;
        while (i < infos.length) {
            this.internalAdd(infos[i]);
            ++i;
        }
    }

    public synchronized SyncInfo[] getSyncInfos() {
        return this.resources.values().toArray(new SyncInfo[this.resources.size()]);
    }

    public IResource[] getResources() {
        SyncInfo[] infos = this.getSyncInfos();
        ArrayList<IResource> resources = new ArrayList<IResource>();
        int i = 0;
        while (i < infos.length) {
            SyncInfo info = infos[i];
            resources.add(info.getLocal());
            ++i;
        }
        return resources.toArray(new IResource[resources.size()]);
    }

    public synchronized SyncInfo getSyncInfo(IResource resource) {
        return (SyncInfo)this.resources.get(resource.getFullPath());
    }

    public synchronized int size() {
        return this.resources.size();
    }

    public long countFor(int kind, int mask) {
        return this.statistics.countFor(kind, mask);
    }

    public boolean hasConflicts() {
        return this.countFor(12, 12) > 0L;
    }

    public synchronized boolean isEmpty() {
        return this.resources.isEmpty();
    }

    protected synchronized void internalAdd(SyncInfo info) {
        Assert.isTrue((!this.lockedForModification ? 1 : 0) != 0);
        IResource local = info.getLocal();
        IPath path = local.getFullPath();
        SyncInfo oldSyncInfo = this.resources.put(path, info);
        if (oldSyncInfo == null) {
            this.statistics.add(info);
        } else {
            this.statistics.remove(oldSyncInfo);
            this.statistics.add(info);
        }
    }

    protected synchronized SyncInfo internalRemove(IResource resource) {
        Assert.isTrue((!this.lockedForModification ? 1 : 0) != 0);
        IPath path = resource.getFullPath();
        SyncInfo info = (SyncInfo)this.resources.remove(path);
        if (info != null) {
            this.statistics.remove(info);
        }
        return info;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addSyncSetChangedListener(ISyncInfoSetChangeListener listener) {
        Set set = this.listeners;
        synchronized (set) {
            this.listeners.add(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeSyncSetChangedListener(ISyncInfoSetChangeListener listener) {
        Set set = this.listeners;
        synchronized (set) {
            this.listeners.remove(listener);
        }
    }

    public void clear() {
        try {
            this.beginInput();
            this.errors.clear();
            this.resources.clear();
            this.statistics.clear();
            this.getChangeEvent().reset();
        }
        finally {
            this.endInput(null);
        }
    }

    private void run(IWorkspaceRunnable runnable, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        monitor.beginTask(null, 100);
        try {
            try {
                this.beginInput();
                runnable.run(Policy.subMonitorFor(monitor, 80));
            }
            catch (CoreException e) {
                this.addError(new TeamStatus(4, "org.eclipse.team.core", 2, e.getMessage(), e, null));
                this.endInput(Policy.subMonitorFor(monitor, 20));
            }
        }
        finally {
            this.endInput(Policy.subMonitorFor(monitor, 20));
        }
    }

    public void connect(final ISyncInfoSetChangeListener listener, IProgressMonitor monitor) {
        this.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) {
                try {
                    monitor.beginTask(null, 100);
                    SyncInfoSet.this.addSyncSetChangedListener(listener);
                    listener.syncInfoSetReset(SyncInfoSet.this, Policy.subMonitorFor(monitor, 95));
                }
                finally {
                    monitor.done();
                }
            }
        }, monitor);
    }

    public void add(SyncInfo info) {
        try {
            this.beginInput();
            boolean alreadyExists = this.getSyncInfo(info.getLocal()) != null;
            this.internalAdd(info);
            if (alreadyExists) {
                this.getChangeEvent().changed(info);
            } else {
                this.getChangeEvent().added(info);
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void addAll(SyncInfoSet set) {
        try {
            this.beginInput();
            SyncInfo[] infos = set.getSyncInfos();
            int i = 0;
            while (i < infos.length) {
                this.add(infos[i]);
                ++i;
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void remove(IResource resource) {
        try {
            this.beginInput();
            this.internalRemove(resource);
            this.getChangeEvent().removed(resource);
        }
        finally {
            this.endInput(null);
        }
    }

    public void removeAll(IResource[] resources) {
        try {
            this.beginInput();
            int i = 0;
            while (i < resources.length) {
                this.remove(resources[i]);
                ++i;
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void removeConflictingNodes() {
        this.rejectNodes(new FastSyncInfoFilter.SyncInfoDirectionFilter(12));
    }

    public void removeOutgoingNodes() {
        this.rejectNodes(new FastSyncInfoFilter.SyncInfoDirectionFilter(4));
    }

    public void removeIncomingNodes() {
        this.rejectNodes(new FastSyncInfoFilter.SyncInfoDirectionFilter(8));
    }

    public boolean hasNodes(FastSyncInfoFilter filter) {
        SyncInfo[] infos = this.getSyncInfos();
        int i = 0;
        while (i < infos.length) {
            SyncInfo info = infos[i];
            if (info != null && filter.select(info)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void selectNodes(FastSyncInfoFilter filter) {
        try {
            this.beginInput();
            SyncInfo[] infos = this.getSyncInfos();
            int i = 0;
            while (i < infos.length) {
                SyncInfo info = infos[i];
                if (info == null || !filter.select(info)) {
                    this.remove(info.getLocal());
                }
                ++i;
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void rejectNodes(FastSyncInfoFilter filter) {
        try {
            this.beginInput();
            SyncInfo[] infos = this.getSyncInfos();
            int i = 0;
            while (i < infos.length) {
                SyncInfo info = infos[i];
                if (info != null && filter.select(info)) {
                    this.remove(info.getLocal());
                }
                ++i;
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public SyncInfo[] getNodes(FastSyncInfoFilter filter) {
        ArrayList<SyncInfo> result = new ArrayList<SyncInfo>();
        SyncInfo[] infos = this.getSyncInfos();
        int i = 0;
        while (i < infos.length) {
            SyncInfo info = infos[i];
            if (info != null && filter.select(info)) {
                result.add(info);
            }
            ++i;
        }
        return result.toArray(new SyncInfo[result.size()]);
    }

    public boolean hasIncomingChanges() {
        return this.countFor(8, 12) > 0L;
    }

    public boolean hasOutgoingChanges() {
        return this.countFor(4, 12) > 0L;
    }

    public void beginInput() {
        this.lock.acquire();
    }

    public void endInput(IProgressMonitor monitor) {
        try {
            if (this.lock.getDepth() == 1) {
                this.fireChanges(Policy.monitorFor(monitor));
            }
        }
        finally {
            this.lock.release();
        }
    }

    protected void resetChanges() {
        this.changes = this.createEmptyChangeEvent();
    }

    protected SyncInfoSetChangeEvent createEmptyChangeEvent() {
        return new SyncInfoSetChangeEvent(this);
    }

    private void fireChanges(final IProgressMonitor monitor) {
        final SyncInfoSetChangeEvent event = this.getChangeEvent();
        this.resetChanges();
        if (event.isEmpty() && !event.isReset()) {
            return;
        }
        ISyncInfoSetChangeListener[] allListeners = this.getListeners();
        final ITeamStatus[] newErrors = event.getErrors();
        monitor.beginTask(null, 100 + (newErrors.length > 0 ? 50 : 0) * allListeners.length);
        int i = 0;
        while (i < allListeners.length) {
            final ISyncInfoSetChangeListener listener = allListeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    try {
                        SyncInfoSet.this.lockedForModification = true;
                        if (event.isReset()) {
                            listener.syncInfoSetReset(SyncInfoSet.this, Policy.subMonitorFor(monitor, 100));
                        } else {
                            listener.syncInfoChanged(event, Policy.subMonitorFor(monitor, 100));
                        }
                        if (newErrors.length > 0) {
                            listener.syncInfoSetErrors(SyncInfoSet.this, newErrors, Policy.subMonitorFor(monitor, 50));
                        }
                    }
                    finally {
                        SyncInfoSet.this.lockedForModification = false;
                    }
                }
            });
            ++i;
        }
        monitor.done();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected ISyncInfoSetChangeListener[] getListeners() {
        ISyncInfoSetChangeListener[] allListeners;
        Set set = this.listeners;
        synchronized (set) {
            allListeners = this.listeners.toArray(new ISyncInfoSetChangeListener[this.listeners.size()]);
        }
        return allListeners;
    }

    protected SyncInfoSetChangeEvent getChangeEvent() {
        return this.changes;
    }

    public void addError(ITeamStatus status) {
        try {
            this.beginInput();
            this.errors.put(status.getResource(), status);
            this.getChangeEvent().errorOccurred(status);
        }
        finally {
            this.endInput(null);
        }
    }

    public ITeamStatus[] getErrors() {
        return this.errors.values().toArray(new ITeamStatus[this.errors.size()]);
    }

    public Iterator iterator() {
        return this.resources.values().iterator();
    }
}

