/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.BundleDeltaImpl;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.service.resolver.BundleDelta;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ResolverHookException;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;

final class StateDeltaImpl
implements StateDelta {
    private final State state;
    private final Map<BundleDescription, BundleDelta> changes = new HashMap<BundleDescription, BundleDelta>();
    private ResolverHookException error;

    public StateDeltaImpl(State state) {
        this.state = state;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public BundleDelta[] getChanges() {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            return this.changes.values().toArray(new BundleDelta[this.changes.size()]);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public BundleDelta[] getChanges(int mask, boolean exact) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            ArrayList<BundleDelta> result = new ArrayList<BundleDelta>();
            Iterator<BundleDelta> changesIter = this.changes.values().iterator();
            while (changesIter.hasNext()) {
                BundleDelta change = changesIter.next();
                if (mask != change.getType() && (exact || (change.getType() & mask) == 0)) continue;
                result.add(change);
            }
            return result.toArray(new BundleDelta[result.size()]);
        }
    }

    public State getState() {
        return this.state;
    }

    public ResolverHookException getResovlerHookException() {
        return this.error;
    }

    void setResolverHookException(ResolverHookException error) {
        this.error = error;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void recordBundleAdded(BundleDescriptionImpl added) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            BundleDeltaImpl change = (BundleDeltaImpl)this.changes.get(added);
            if (change == null) {
                this.changes.put(added, new BundleDeltaImpl(added, 1));
                return;
            }
            if (change.getType() == 2) {
                this.changes.remove(added);
                return;
            }
            int newType = change.getType();
            if ((newType & 2) != 0) {
                newType &= 0xFFFFFFFD;
            }
            change.setType(newType | 1);
            change.setBundle(added);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void recordBundleUpdated(BundleDescriptionImpl updated) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            BundleDeltaImpl change = (BundleDeltaImpl)this.changes.get(updated);
            if (change == null) {
                this.changes.put(updated, new BundleDeltaImpl(updated, 4));
                return;
            }
            if ((change.getType() & 3) != 0) {
                return;
            }
            change.setType(change.getType() | 4);
            change.setBundle(updated);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void recordBundleRemoved(BundleDescriptionImpl removed) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            BundleDeltaImpl change = (BundleDeltaImpl)this.changes.get(removed);
            if (change == null) {
                this.changes.put(removed, new BundleDeltaImpl(removed, 2));
                return;
            }
            if (change.getType() == 1) {
                this.changes.remove(removed);
                return;
            }
            int newType = change.getType();
            if ((newType & 1) != 0) {
                newType &= 0xFFFFFFFE;
            }
            change.setType(newType | 2);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void recordBundleRemovalPending(BundleDescriptionImpl removed) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            BundleDeltaImpl change = (BundleDeltaImpl)this.changes.get(removed);
            if (change == null) {
                this.changes.put(removed, new BundleDeltaImpl(removed, 128));
                return;
            }
            int newType = change.getType();
            if ((newType & 0x100) != 0) {
                newType &= 0xFFFFFEFF;
            }
            change.setType(newType | 0x80);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void recordBundleRemovalComplete(BundleDescriptionImpl removed) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            BundleDeltaImpl change = (BundleDeltaImpl)this.changes.get(removed);
            if (change == null) {
                this.changes.put(removed, new BundleDeltaImpl(removed, 256));
                return;
            }
            int newType = change.getType();
            if ((newType & 0x80) != 0) {
                newType &= 0xFFFFFF7F;
            }
            change.setType(newType | 0x100);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void recordBundleResolved(BundleDescriptionImpl resolved, boolean result) {
        Map<BundleDescription, BundleDelta> map = this.changes;
        synchronized (map) {
            int newType;
            if (resolved.isResolved() == result) {
                return;
            }
            BundleDeltaImpl change = (BundleDeltaImpl)this.changes.get(resolved);
            int n = newType = result ? 8 : 16;
            if (change == null) {
                change = new BundleDeltaImpl(resolved, newType);
                this.changes.put(resolved, change);
                return;
            }
            change.setType(newType |= change.getType() & 0xFFFFFFE7);
            change.setBundle(resolved);
        }
    }
}

