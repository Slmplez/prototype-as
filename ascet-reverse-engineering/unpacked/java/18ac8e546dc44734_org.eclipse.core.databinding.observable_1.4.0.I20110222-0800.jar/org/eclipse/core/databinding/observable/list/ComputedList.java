/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.AbstractObservableList;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;

public abstract class ComputedList
extends AbstractObservableList {
    private List cachedList = new ArrayList();
    private boolean dirty = true;
    private boolean stale = false;
    private IObservable[] dependencies = new IObservable[0];
    private PrivateInterface privateInterface = new PrivateInterface();
    private Object elementType;

    public ComputedList() {
        this(Realm.getDefault(), null);
    }

    public ComputedList(Object elementType) {
        this(Realm.getDefault(), elementType);
    }

    public ComputedList(Realm realm) {
        this(realm, null);
    }

    public ComputedList(Realm realm, Object elementType) {
        super(realm);
        this.elementType = elementType;
    }

    protected int doGetSize() {
        return this.doGetList().size();
    }

    public Object get(int index) {
        this.getterCalled();
        return this.doGetList().get(index);
    }

    private final List getList() {
        this.getterCalled();
        return this.doGetList();
    }

    final List doGetList() {
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
        return this.cachedList;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    protected abstract List calculate();

    private void makeDirty() {
        if (!this.dirty) {
            this.dirty = true;
            this.makeStale();
            this.stopListening();
            final ArrayList oldList = new ArrayList(this.cachedList);
            this.fireListChange(new ListDiff(){
                ListDiffEntry[] differences;

                public ListDiffEntry[] getDifferences() {
                    if (this.differences == null) {
                        this.differences = Diffs.computeListDiff(oldList, ComputedList.this.getList()).getDifferences();
                    }
                    return this.differences;
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
        this.getList();
        return this.stale;
    }

    public Object getElementType() {
        return this.elementType;
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        super.addChangeListener(listener);
        this.computeListForListeners();
    }

    public synchronized void addListChangeListener(IListChangeListener listener) {
        super.addListChangeListener(listener);
        this.computeListForListeners();
    }

    private void computeListForListeners() {
        this.getRealm().exec(new Runnable(){

            public void run() {
                if (ComputedList.this.dependencies == null) {
                    ComputedList.this.getList();
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
            ComputedList.this.cachedList = ComputedList.this.calculate();
            if (ComputedList.this.cachedList == null) {
                ComputedList.this.cachedList = Collections.EMPTY_LIST;
            }
        }

        public void handleStale(StaleEvent event) {
            if (!ComputedList.this.dirty) {
                ComputedList.this.makeStale();
            }
        }

        public void handleChange(ChangeEvent event) {
            ComputedList.this.makeDirty();
        }
    }
}

