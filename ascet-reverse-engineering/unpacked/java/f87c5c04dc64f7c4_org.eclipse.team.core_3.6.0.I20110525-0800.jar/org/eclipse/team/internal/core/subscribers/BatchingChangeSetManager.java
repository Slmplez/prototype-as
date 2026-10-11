/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.subscribers.ChangeSet;
import org.eclipse.team.internal.core.subscribers.ChangeSetManager;
import org.eclipse.team.internal.core.subscribers.IChangeSetChangeListener;

public class BatchingChangeSetManager
extends ChangeSetManager {
    private ILock lock = Job.getJobManager().newLock();
    private CollectorChangeEvent changes = new CollectorChangeEvent(this);

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

    private void fireChanges(final IProgressMonitor monitor) {
        if (this.changes.isEmpty()) {
            return;
        }
        final CollectorChangeEvent event = this.changes;
        this.changes = new CollectorChangeEvent(this);
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IChangeSetChangeListener listener = (IChangeSetChangeListener)listeners[i];
            if (listener instanceof IChangeSetCollectorChangeListener) {
                final IChangeSetCollectorChangeListener csccl = (IChangeSetCollectorChangeListener)((Object)listener);
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void handleException(Throwable exception) {
                    }

                    public void run() throws Exception {
                        csccl.changeSetChanges(event, monitor);
                    }
                });
            }
            ++i;
        }
    }

    public void add(ChangeSet set) {
        try {
            this.beginInput();
            super.add(set);
            this.changes.setAdded(set);
        }
        finally {
            this.endInput(null);
        }
    }

    public void remove(ChangeSet set) {
        try {
            this.beginInput();
            super.remove(set);
            this.changes.setRemoved(set);
        }
        finally {
            this.endInput(null);
        }
    }

    protected void fireResourcesChangedEvent(ChangeSet changeSet, IPath[] allAffectedResources) {
        super.fireResourcesChangedEvent(changeSet, allAffectedResources);
        try {
            this.beginInput();
            this.changes.changed(changeSet, allAffectedResources);
        }
        finally {
            this.endInput(null);
        }
    }

    protected void initializeSets() {
    }

    public static class CollectorChangeEvent {
        Set added = new HashSet();
        Set removed = new HashSet();
        Map changed = new HashMap();
        private final BatchingChangeSetManager collector;

        public CollectorChangeEvent(BatchingChangeSetManager collector) {
            this.collector = collector;
        }

        private void setAdded(ChangeSet set) {
            this.added.add(set);
            this.removed.remove(set);
        }

        private void setRemoved(ChangeSet set) {
            this.added.remove(set);
            this.removed.add(set);
        }

        private void changed(ChangeSet changeSet, IPath[] allAffectedResources) {
            if (this.added.contains(changeSet)) {
                return;
            }
            IPath[] paths = (IPath[])this.changed.get(changeSet);
            if (paths == null) {
                this.changed.put(changeSet, allAffectedResources);
            } else {
                IPath path;
                HashSet<IPath> allPaths = new HashSet<IPath>();
                int i = 0;
                while (i < paths.length) {
                    path = paths[i];
                    allPaths.add(path);
                    ++i;
                }
                i = 0;
                while (i < allAffectedResources.length) {
                    path = allAffectedResources[i];
                    allPaths.add(path);
                    ++i;
                }
                this.changed.put(changeSet, allPaths.toArray(new IPath[allPaths.size()]));
            }
        }

        public boolean isEmpty() {
            return this.changed.isEmpty() && this.added.isEmpty() && this.removed.isEmpty();
        }

        public ChangeSet[] getAddedSets() {
            return this.added.toArray(new ChangeSet[this.added.size()]);
        }

        public ChangeSet[] getRemovedSets() {
            return this.removed.toArray(new ChangeSet[this.removed.size()]);
        }

        public ChangeSet[] getChangedSets() {
            return this.changed.keySet().toArray(new ChangeSet[this.changed.size()]);
        }

        public IPath[] getChangesFor(ChangeSet set) {
            return (IPath[])this.changed.get(set);
        }

        public BatchingChangeSetManager getSource() {
            return this.collector;
        }
    }

    public static interface IChangeSetCollectorChangeListener {
        public void changeSetChanges(CollectorChangeEvent var1, IProgressMonitor var2);
    }
}

