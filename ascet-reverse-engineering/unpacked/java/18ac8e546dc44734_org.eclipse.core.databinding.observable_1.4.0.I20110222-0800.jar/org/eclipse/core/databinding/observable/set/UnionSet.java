/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.ObservableSet;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.internal.databinding.observable.IStalenessConsumer;
import org.eclipse.core.internal.databinding.observable.StalenessTracker;

public final class UnionSet
extends ObservableSet {
    private IObservableSet[] childSets;
    private boolean stale = false;
    private HashMap refCounts = null;
    private StalenessTracker stalenessTracker;
    private ISetChangeListener childSetChangeListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            UnionSet.this.processAddsAndRemoves(event.diff.getAdditions(), event.diff.getRemovals());
        }
    };
    private IStalenessConsumer stalenessConsumer = new IStalenessConsumer(){

        public void setStale(boolean stale) {
            boolean oldStale = UnionSet.this.stale;
            UnionSet.this.stale = stale;
            if (stale && !oldStale) {
                UnionSet.this.fireStale();
            }
        }
    };

    public UnionSet(IObservableSet[] childSets) {
        this(childSets, childSets[0].getElementType());
    }

    public UnionSet(IObservableSet[] childSets, Object elementType) {
        super(childSets[0].getRealm(), null, elementType);
        this.childSets = new IObservableSet[childSets.length];
        System.arraycopy(childSets, 0, this.childSets, 0, childSets.length);
        this.stalenessTracker = new StalenessTracker(childSets, this.stalenessConsumer);
    }

    public boolean isStale() {
        this.getterCalled();
        if (this.refCounts != null) {
            return this.stale;
        }
        int i = 0;
        while (i < this.childSets.length) {
            IObservableSet childSet = this.childSets[i];
            if (childSet.isStale()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void processAddsAndRemoves(Set adds, Set removes) {
        int refs;
        Integer refCount;
        HashSet addsToFire = new HashSet();
        HashSet removesToFire = new HashSet();
        Iterator iter = adds.iterator();
        while (iter.hasNext()) {
            Object added = iter.next();
            refCount = (Integer)this.refCounts.get(added);
            if (refCount == null) {
                this.refCounts.put(added, new Integer(1));
                addsToFire.add(added);
                continue;
            }
            refs = refCount;
            refCount = new Integer(refs + 1);
            this.refCounts.put(added, refCount);
        }
        iter = removes.iterator();
        while (iter.hasNext()) {
            Object removed = iter.next();
            refCount = (Integer)this.refCounts.get(removed);
            if (refCount == null) continue;
            refs = refCount;
            if (refs <= 1) {
                removesToFire.add(removed);
                this.refCounts.remove(removed);
                continue;
            }
            refCount = new Integer(refCount - 1);
            this.refCounts.put(removed, refCount);
        }
        addsToFire.removeAll(removesToFire);
        if (addsToFire.size() > 0 || removesToFire.size() > 0) {
            this.fireSetChange(Diffs.createSetDiff(addsToFire, removesToFire));
        }
    }

    protected void firstListenerAdded() {
        super.firstListenerAdded();
        this.refCounts = new HashMap();
        int i = 0;
        while (i < this.childSets.length) {
            IObservableSet next = this.childSets[i];
            next.addSetChangeListener(this.childSetChangeListener);
            this.incrementRefCounts(next);
            ++i;
        }
        this.stalenessTracker = new StalenessTracker(this.childSets, this.stalenessConsumer);
        this.setWrappedSet(this.refCounts.keySet());
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        int i = 0;
        while (i < this.childSets.length) {
            IObservableSet next = this.childSets[i];
            next.removeSetChangeListener(this.childSetChangeListener);
            this.stalenessTracker.removeObservable(next);
            ++i;
        }
        this.refCounts = null;
        this.stalenessTracker = null;
        this.setWrappedSet(null);
    }

    private ArrayList incrementRefCounts(Collection added) {
        ArrayList adds = new ArrayList();
        Iterator iter = added.iterator();
        while (iter.hasNext()) {
            Object next = iter.next();
            Integer refCount = (Integer)this.refCounts.get(next);
            if (refCount == null) {
                adds.add(next);
                refCount = new Integer(1);
                this.refCounts.put(next, refCount);
                continue;
            }
            refCount = new Integer(refCount + 1);
            this.refCounts.put(next, refCount);
        }
        return adds;
    }

    protected void getterCalled() {
        super.getterCalled();
        if (this.refCounts == null) {
            this.setWrappedSet(this.computeElements());
        }
    }

    private Set computeElements() {
        if (this.refCounts == null) {
            HashSet result = new HashSet();
            int i = 0;
            while (i < this.childSets.length) {
                result.addAll(this.childSets[i]);
                ++i;
            }
            return result;
        }
        return this.refCounts.keySet();
    }
}

