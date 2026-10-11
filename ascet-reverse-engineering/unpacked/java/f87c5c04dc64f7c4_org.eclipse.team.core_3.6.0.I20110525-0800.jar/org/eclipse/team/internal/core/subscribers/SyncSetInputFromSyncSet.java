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
import org.eclipse.team.core.ITeamStatus;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeEvent;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeListener;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSet;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoSet;
import org.eclipse.team.internal.core.subscribers.SyncSetInput;

public class SyncSetInputFromSyncSet
extends SyncSetInput
implements ISyncInfoSetChangeListener {
    SubscriberSyncInfoSet inputSyncSet;

    public SyncSetInputFromSyncSet(SubscriberSyncInfoSet set, SubscriberEventHandler handler) {
        super(handler);
        this.inputSyncSet = set;
        this.inputSyncSet.addSyncSetChangedListener(this);
    }

    public void disconnect() {
        if (this.inputSyncSet == null) {
            return;
        }
        this.inputSyncSet.removeSyncSetChangedListener(this);
        this.inputSyncSet = null;
    }

    protected void fetchInput(IProgressMonitor monitor) {
        if (this.inputSyncSet == null) {
            return;
        }
        SyncInfo[] infos = this.inputSyncSet.getSyncInfos();
        int i = 0;
        while (i < infos.length) {
            this.collect(infos[i], monitor);
            ++i;
        }
    }

    public void syncInfoChanged(ISyncInfoSetChangeEvent event, IProgressMonitor monitor) {
        SubscriberSyncInfoSet syncSet = this.getSyncSet();
        try {
            syncSet.beginInput();
            monitor.beginTask(null, 105);
            this.syncSetChanged(event.getChangedResources(), Policy.subMonitorFor(monitor, 50));
            this.syncSetChanged(event.getAddedResources(), Policy.subMonitorFor(monitor, 50));
            this.remove(event.getRemovedResources());
        }
        finally {
            syncSet.endInput(Policy.subMonitorFor(monitor, 5));
        }
    }

    private void syncSetChanged(SyncInfo[] infos, IProgressMonitor monitor) {
        int i = 0;
        while (i < infos.length) {
            this.collect(infos[i], monitor);
            ++i;
        }
    }

    private void remove(IResource[] resources) {
        int i = 0;
        while (i < resources.length) {
            this.remove(resources[i]);
            ++i;
        }
    }

    public void reset() {
        this.inputSyncSet.connect(this);
    }

    public void syncInfoSetReset(SyncInfoSet set, IProgressMonitor monitor) {
        if (this.inputSyncSet == null) {
            set.removeSyncSetChangedListener(this);
        } else {
            SubscriberSyncInfoSet syncSet = this.getSyncSet();
            try {
                syncSet.beginInput();
                monitor.beginTask(null, 100);
                ((SyncInfoSet)syncSet).clear();
                this.fetchInput(Policy.subMonitorFor(monitor, 95));
            }
            finally {
                syncSet.endInput(Policy.subMonitorFor(monitor, 5));
                monitor.done();
            }
        }
    }

    public void syncInfoSetErrors(SyncInfoSet set, ITeamStatus[] errors, IProgressMonitor monitor) {
        SubscriberSyncInfoSet syncSet = this.getSyncSet();
        try {
            syncSet.beginInput();
            int i = 0;
            while (i < errors.length) {
                ITeamStatus status = errors[i];
                syncSet.addError(status);
                ++i;
            }
        }
        finally {
            syncSet.endInput(monitor);
        }
    }
}

