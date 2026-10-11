/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoFilter;
import org.eclipse.team.core.synchronize.SyncInfoSet;
import org.eclipse.team.core.synchronize.SyncInfoTree;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoCollector;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoSet;
import org.eclipse.team.internal.core.subscribers.SyncSetInputFromSyncSet;
import org.eclipse.team.internal.core.subscribers.WorkingSetSyncSetInput;

public final class WorkingSetFilteredSyncInfoCollector {
    private WorkingSetSyncSetInput workingSetInput;
    private SyncSetInputFromSyncSet filteredInput;
    private SubscriberEventHandler eventHandler;

    public WorkingSetFilteredSyncInfoCollector(SubscriberSyncInfoCollector collector, IResource[] roots) {
        this.eventHandler = collector.getEventHandler();
        this.workingSetInput = new WorkingSetSyncSetInput((SubscriberSyncInfoSet)collector.getSyncInfoSet(), this.getEventHandler());
        this.filteredInput = new SyncSetInputFromSyncSet(this.workingSetInput.getSyncSet(), this.getEventHandler());
        this.filteredInput.setFilter(new SyncInfoFilter(){

            public boolean select(SyncInfo info, IProgressMonitor monitor) {
                return true;
            }
        });
    }

    public SyncInfoTree getSyncInfoTree() {
        return this.filteredInput.getSyncSet();
    }

    public void reset() {
        this.workingSetInput.reset();
    }

    public void dispose() {
        this.workingSetInput.disconnect();
        if (this.filteredInput != null) {
            this.filteredInput.disconnect();
        }
    }

    protected SubscriberEventHandler getEventHandler() {
        return this.eventHandler;
    }

    public void setFilter(SyncInfoFilter filter) {
        this.filteredInput.setFilter(filter);
        this.filteredInput.reset();
    }

    public SyncInfoSet getWorkingSetSyncInfoSet() {
        return this.workingSetInput.getSyncSet();
    }

    public void run(IWorkspaceRunnable runnable) {
        this.eventHandler.run(runnable, true);
    }
}

