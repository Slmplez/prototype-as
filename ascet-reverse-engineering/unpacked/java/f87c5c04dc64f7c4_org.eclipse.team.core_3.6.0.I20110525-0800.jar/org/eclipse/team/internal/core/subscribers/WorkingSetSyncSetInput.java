/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.internal.core.subscribers.SubscriberEventHandler;
import org.eclipse.team.internal.core.subscribers.SubscriberSyncInfoSet;
import org.eclipse.team.internal.core.subscribers.SyncInfoWorkingSetFilter;
import org.eclipse.team.internal.core.subscribers.SyncSetInputFromSyncSet;

public class WorkingSetSyncSetInput
extends SyncSetInputFromSyncSet {
    private SyncInfoWorkingSetFilter workingSetFilter = new SyncInfoWorkingSetFilter();

    public WorkingSetSyncSetInput(SubscriberSyncInfoSet set, SubscriberEventHandler handler) {
        super(set, handler);
        this.setFilter(this.workingSetFilter);
    }

    public void setWorkingSet(IResource[] resources) {
        this.workingSetFilter.setWorkingSet(resources);
    }

    public IResource[] getWorkingSet() {
        return this.workingSetFilter.getWorkingSet();
    }
}

