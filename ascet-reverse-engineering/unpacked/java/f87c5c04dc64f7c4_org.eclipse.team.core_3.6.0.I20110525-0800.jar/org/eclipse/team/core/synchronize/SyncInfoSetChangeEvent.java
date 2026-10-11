/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.synchronize;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.ITeamStatus;
import org.eclipse.team.core.synchronize.ISyncInfoSetChangeEvent;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.synchronize.SyncInfoSet;

public class SyncInfoSetChangeEvent
implements ISyncInfoSetChangeEvent {
    private SyncInfoSet set;
    private Map changedResources = new HashMap();
    private Set removedResources = new HashSet();
    private Map addedResources = new HashMap();
    private boolean reset = false;
    private List errors = new ArrayList();

    public SyncInfoSetChangeEvent(SyncInfoSet set) {
        this.set = set;
    }

    public void added(SyncInfo info) {
        if (this.removedResources.contains(info.getLocal())) {
            this.removedResources.remove(info.getLocal());
            this.changed(info);
        } else {
            this.addedResources.put(info.getLocal(), info);
        }
    }

    public void removed(IResource resource) {
        if (this.changedResources.containsKey(resource)) {
            this.changedResources.remove(resource);
        } else if (this.addedResources.containsKey(resource)) {
            this.addedResources.remove(resource);
            return;
        }
        this.removedResources.add(resource);
    }

    public void changed(SyncInfo info) {
        IResource resource = info.getLocal();
        if (this.addedResources.containsKey(resource)) {
            this.addedResources.put(resource, info);
            return;
        }
        this.changedResources.put(resource, info);
    }

    public SyncInfo[] getAddedResources() {
        return this.addedResources.values().toArray(new SyncInfo[this.addedResources.size()]);
    }

    public SyncInfo[] getChangedResources() {
        return this.changedResources.values().toArray(new SyncInfo[this.changedResources.size()]);
    }

    public IResource[] getRemovedResources() {
        return this.removedResources.toArray(new IResource[this.removedResources.size()]);
    }

    public SyncInfoSet getSet() {
        return this.set;
    }

    public void reset() {
        this.reset = true;
    }

    public boolean isReset() {
        return this.reset;
    }

    public boolean isEmpty() {
        return this.changedResources.isEmpty() && this.removedResources.isEmpty() && this.addedResources.isEmpty() && this.errors.isEmpty();
    }

    public void errorOccurred(ITeamStatus status) {
        this.errors.add(status);
    }

    public ITeamStatus[] getErrors() {
        return this.errors.toArray(new ITeamStatus[this.errors.size()]);
    }
}

