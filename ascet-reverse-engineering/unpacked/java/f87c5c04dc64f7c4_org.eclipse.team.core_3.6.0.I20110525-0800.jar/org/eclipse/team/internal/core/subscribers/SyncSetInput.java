/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.synchronize.FastSyncInfoFilter;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoFilter;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoSet;

public abstract class SyncSetInput {
    private SubscriberSyncInfoSet syncSet;
    private SyncInfoFilter filter = new FastSyncInfoFilter();

    public SyncSetInput(SubscriberEventHandler handler) {
        this.syncSet = new SubscriberSyncInfoSet(handler);
    }

    public SubscriberSyncInfoSet getSyncSet() {
        return this.syncSet;
    }

    protected abstract void fetchInput(IProgressMonitor var1) throws TeamException;

    public abstract void disconnect();

    public void reset(IProgressMonitor monitor) throws TeamException {
        try {
            this.syncSet.beginInput();
            monitor = Policy.monitorFor(monitor);
            monitor.beginTask(null, 100);
            this.syncSet.clear();
            this.fetchInput(Policy.subMonitorFor(monitor, 90));
        }
        finally {
            this.syncSet.endInput(Policy.subMonitorFor(monitor, 10));
            monitor.done();
        }
    }

    protected void collect(SyncInfo info, IProgressMonitor monitor) {
        boolean wasOutOfSync;
        boolean isOutOfSync = this.filter.select(info, monitor);
        SyncInfo oldInfo = this.syncSet.getSyncInfo(info.getLocal());
        boolean bl = wasOutOfSync = oldInfo != null;
        if (isOutOfSync) {
            this.syncSet.add(info);
        } else if (wasOutOfSync) {
            this.syncSet.remove(info.getLocal());
        }
    }

    protected void remove(IResource resource) {
        SyncInfo oldInfo = this.syncSet.getSyncInfo(resource);
        if (oldInfo != null) {
            this.syncSet.remove(resource);
        }
    }

    public SyncInfoFilter getFilter() {
        return this.filter;
    }

    public void setFilter(SyncInfoFilter filter) {
        this.filter = filter;
    }
}

