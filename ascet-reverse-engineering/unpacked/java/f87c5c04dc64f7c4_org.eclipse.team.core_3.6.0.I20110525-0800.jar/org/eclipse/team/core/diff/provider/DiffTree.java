/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.jobs.ILock
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.team.core.diff.provider;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.jobs.ILock;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.team.core.diff.FastDiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffChangeListener;
import org.eclipse.team.core.diff.IDiffTree;
import org.eclipse.team.core.diff.IDiffVisitor;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.internal.core.Policy;
import org.eclipse.team.internal.core.mapping.DiffChangeEvent;
import org.eclipse.team.internal.core.mapping.PathTree;
import org.eclipse.team.internal.core.subscribers.DiffTreeStatistics;

public class DiffTree
implements IDiffTree {
    public static final int START_CLIENT_PROPERTY_RANGE = 1024;
    private ListenerList listeners = new ListenerList();
    private PathTree pathTree = new PathTree();
    private ILock lock = Job.getJobManager().newLock();
    private DiffTreeStatistics statistics = new DiffTreeStatistics();
    private DiffChangeEvent changes;
    private boolean lockedForModification;
    private Map propertyChanges = new HashMap();

    public DiffTree() {
        this.resetChanges();
    }

    public void addDiffChangeListener(IDiffChangeListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeDiffChangeListener(IDiffChangeListener listener) {
        this.listeners.remove((Object)listener);
    }

    public void accept(IPath path, IDiffVisitor visitor, int depth) {
        IDiff delta = this.getDiff(path);
        if (delta == null || visitor.visit(delta)) {
            if (depth == 0) {
                return;
            }
            IPath[] children = this.getChildren(path);
            int i = 0;
            while (i < children.length) {
                IPath child = children[i];
                this.accept(child, visitor, depth == 1 ? 0 : 2);
                ++i;
            }
        }
    }

    public IDiff getDiff(IPath path) {
        return (IDiff)this.pathTree.get(path);
    }

    public IPath[] getChildren(IPath path) {
        return this.pathTree.getChildren(path);
    }

    public boolean isEmpty() {
        return this.pathTree.isEmpty();
    }

    public void add(IDiff delta) {
        try {
            this.beginInput();
            IDiff oldDiff = this.getDiff(delta.getPath());
            this.internalAdd(delta);
            if (oldDiff != null) {
                this.internalChanged(delta);
            } else {
                this.internalAdded(delta);
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void remove(IPath path) {
        try {
            this.beginInput();
            IDiff delta = this.getDiff(path);
            if (delta != null) {
                this.internalRemove(delta);
                this.internalRemoved(path, delta);
            }
        }
        finally {
            this.endInput(null);
        }
    }

    public void clear() {
        try {
            this.beginInput();
            this.pathTree.clear();
            this.statistics.clear();
            this.internalReset();
        }
        finally {
            this.endInput(null);
        }
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

    private void fireChanges(final IProgressMonitor monitor) {
        final DiffChangeEvent event = this.getChangeEvent();
        this.resetChanges();
        final Map propertyChanges = this.propertyChanges;
        this.propertyChanges = new HashMap();
        if (event.isEmpty() && !event.isReset() && propertyChanges.isEmpty()) {
            return;
        }
        Object[] listeners = this.listeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IDiffChangeListener listener = (IDiffChangeListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    try {
                        DiffTree.this.lockedForModification = true;
                        if (!event.isEmpty() || event.isReset()) {
                            listener.diffsChanged(event, Policy.subMonitorFor(monitor, 100));
                        }
                        Iterator iter = propertyChanges.keySet().iterator();
                        while (iter.hasNext()) {
                            Integer key = (Integer)iter.next();
                            Set paths = (Set)propertyChanges.get(key);
                            listener.propertyChanged(DiffTree.this, key, paths.toArray(new IPath[paths.size()]));
                        }
                    }
                    finally {
                        DiffTree.this.lockedForModification = false;
                    }
                }
            });
            ++i;
        }
        monitor.done();
    }

    private DiffChangeEvent getChangeEvent() {
        return this.changes;
    }

    private void resetChanges() {
        this.changes = this.createEmptyChangeEvent();
    }

    private DiffChangeEvent createEmptyChangeEvent() {
        return new DiffChangeEvent(this);
    }

    private void internalAdd(IDiff delta) {
        Assert.isTrue((!this.lockedForModification ? 1 : 0) != 0);
        IDiff oldDiff = (IDiff)this.pathTree.get(delta.getPath());
        this.pathTree.put(delta.getPath(), delta);
        if (oldDiff == null) {
            this.statistics.add(delta);
        } else {
            this.statistics.remove(oldDiff);
            this.statistics.add(delta);
        }
        boolean isConflict = false;
        if (delta instanceof IThreeWayDiff) {
            IThreeWayDiff twd = (IThreeWayDiff)delta;
            isConflict = twd.getDirection() == 768;
        }
        this.setPropertyToRoot(delta, 2, isConflict);
    }

    private void internalRemove(IDiff delta) {
        Assert.isTrue((!this.lockedForModification ? 1 : 0) != 0);
        this.statistics.remove(delta);
        this.setPropertyToRoot(delta, 2, false);
        this.setPropertyToRoot(delta, 1, false);
        this.pathTree.remove(delta.getPath());
    }

    private void internalAdded(IDiff delta) {
        this.changes.added(delta);
    }

    private void internalChanged(IDiff delta) {
        this.changes.changed(delta);
    }

    private void internalRemoved(IPath path, IDiff delta) {
        this.changes.removed(path, delta);
    }

    private void internalReset() {
        this.changes.reset();
    }

    public IPath[] getPaths() {
        return this.pathTree.getPaths();
    }

    public IDiff[] getDiffs() {
        return this.pathTree.values().toArray(new IDiff[this.pathTree.size()]);
    }

    public long countFor(int state, int mask) {
        if (state == 0) {
            return this.size();
        }
        return this.statistics.countFor(state, mask);
    }

    public int size() {
        return this.pathTree.size();
    }

    public void setPropertyToRoot(IDiff node, int property, boolean value) {
        try {
            this.beginInput();
            IPath[] paths = this.pathTree.setPropogatedProperty(node.getPath(), property, value);
            this.accumulatePropertyChanges(property, paths);
        }
        finally {
            this.endInput(null);
        }
    }

    private void accumulatePropertyChanges(int property, IPath[] paths) {
        Integer key = new Integer(property);
        HashSet<IPath> changes = (HashSet<IPath>)this.propertyChanges.get(key);
        if (changes == null) {
            changes = new HashSet<IPath>();
            this.propertyChanges.put(key, changes);
        }
        int i = 0;
        while (i < paths.length) {
            IPath path = paths[i];
            changes.add(path);
            ++i;
        }
    }

    public boolean getProperty(IPath path, int property) {
        return this.pathTree.getProperty(path, property);
    }

    public void setBusy(IDiff[] diffs, IProgressMonitor monitor) {
        try {
            this.beginInput();
            int i = 0;
            while (i < diffs.length) {
                IDiff node = diffs[i];
                this.setPropertyToRoot(node, 1, true);
                ++i;
            }
        }
        finally {
            this.endInput(monitor);
        }
    }

    public void clearBusy(IProgressMonitor monitor) {
        try {
            this.beginInput();
            IPath[] paths = this.pathTree.getPaths();
            int i = 0;
            while (i < paths.length) {
                IPath path = paths[i];
                IPath[] changed = this.pathTree.setPropogatedProperty(path, 1, false);
                this.accumulatePropertyChanges(1, changed);
                ++i;
            }
        }
        finally {
            this.endInput(monitor);
        }
    }

    public boolean hasMatchingDiffs(IPath path, final FastDiffFilter filter) {
        final RuntimeException found = new RuntimeException();
        try {
            this.accept(path, new IDiffVisitor(){

                public boolean visit(IDiff delta) {
                    if (filter.select(delta)) {
                        throw found;
                    }
                    return false;
                }
            }, 2);
        }
        catch (RuntimeException e) {
            if (e == found) {
                return true;
            }
            throw e;
        }
        return false;
    }

    public void reportError(IStatus status) {
        try {
            this.beginInput();
            this.getChangeEvent().errorOccurred(status);
        }
        finally {
            this.endInput(null);
        }
    }
}

