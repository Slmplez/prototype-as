/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.set.AbstractObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetDiff;

public abstract class ComputedSet
extends AbstractObservableSet {
    private Set cachedSet = new HashSet();
    private boolean dirty = true;
    private boolean stale = false;
    private IObservable[] dependencies = new IObservable[0];
    private PrivateInterface privateInterface = new PrivateInterface();
    private Object elementType;

    public ComputedSet() {
        this(Realm.getDefault(), null);
    }

    public ComputedSet(Object elementType) {
        this(Realm.getDefault(), elementType);
    }

    public ComputedSet(Realm realm) {
        this(realm, null);
    }

    public ComputedSet(Realm realm, Object elementType) {
        super(realm);
        this.elementType = elementType;
    }

    protected int doGetSize() {
        return this.doGetSet().size();
    }

    private final Set getSet() {
        this.getterCalled();
        return this.doGetSet();
    }

    protected Set getWrappedSet() {
        return this.doGetSet();
    }

    final Set doGetSet() {
        if (this.dirty) {
            IObservable[] newDependencies = ObservableTracker.runAndMonitor(this.privateInterface, this.privateInterface, null);
            this.stale = false;
            int i = 0;
            while (i < newDependencies.length) {
                if (newDependencies[i].isStale()) {
                    this.makeStale();
                    break;
                }
                ++i;
            }
            if (!this.stale) {
                i = 0;
                while (i < newDependencies.length) {
                    newDependencies[i].addStaleListener(this.privateInterface);
                    ++i;
                }
            }
            this.dependencies = newDependencies;
            this.dirty = false;
        }
        return this.cachedSet;
    }

    protected abstract Set calculate();

    private void makeDirty() {
        if (!this.dirty) {
            this.dirty = true;
            this.makeStale();
            this.stopListening();
            final HashSet oldSet = new HashSet(this.cachedSet);
            this.fireSetChange(new SetDiff(){
                SetDiff delegate;

                private SetDiff getDelegate() {
                    if (this.delegate == null) {
                        this.delegate = Diffs.computeSetDiff(oldSet, ComputedSet.this.getSet());
                    }
                    return this.delegate;
                }

                public Set getAdditions() {
                    return this.getDelegate().getAdditions();
                }

                public Set getRemovals() {
                    return this.getDelegate().getRemovals();
                }
            });
        }
    }

    private void stopListening() {
        if (this.dependencies != null) {
            int i = 0;
            while (i < this.dependencies.length) {
                IObservable observable = this.dependencies[i];
                observable.removeChangeListener(this.privateInterface);
                observable.removeStaleListener(this.privateInterface);
                ++i;
            }
            this.dependencies = null;
        }
    }

    private void makeStale() {
        if (!this.stale) {
            this.stale = true;
            this.fireStale();
        }
    }

    public boolean isStale() {
        this.getSet();
        return this.stale;
    }

    public Object getElementType() {
        return this.elementType;
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        super.addChangeListener(listener);
        this.computeSetForListeners();
    }

    public synchronized void addSetChangeListener(ISetChangeListener listener) {
        super.addSetChangeListener(listener);
        this.computeSetForListeners();
    }

    private void computeSetForListeners() {
        this.getRealm().exec(new Runnable(){

            public void run() {
                if (ComputedSet.this.dependencies == null) {
                    ComputedSet.this.getSet();
                }
            }
        });
    }

    public synchronized void dispose() {
        this.stopListening();
        super.dispose();
    }

    private class PrivateInterface
    implements Runnable,
    IChangeListener,
    IStaleListener {
        private PrivateInterface() {
        }

        public void run() {
            ComputedSet.this.cachedSet = ComputedSet.this.calculate();
            if (ComputedSet.this.cachedSet == null) {
                ComputedSet.this.cachedSet = Collections.EMPTY_SET;
            }
        }

        public void handleStale(StaleEvent event) {
            if (!ComputedSet.this.dirty) {
                ComputedSet.this.makeStale();
            }
        }

        public void handleChange(ChangeEvent event) {
            ComputedSet.this.makeDirty();
        }
    }
}

