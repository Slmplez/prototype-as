/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.value.AbstractObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueDiff;

public abstract class ComputedValue
extends AbstractObservableValue {
    private boolean dirty = true;
    private boolean stale = false;
    private Object cachedValue = null;
    private IObservable[] dependencies = null;
    private PrivateInterface privateInterface = new PrivateInterface();
    private Object valueType;

    public ComputedValue() {
        this(Realm.getDefault(), null);
    }

    public ComputedValue(Object valueType) {
        this(Realm.getDefault(), valueType);
    }

    public ComputedValue(Realm realm) {
        this(realm, null);
    }

    public ComputedValue(Realm realm, Object valueType) {
        super(realm);
        this.valueType = valueType;
    }

    protected final Object doGetValue() {
        if (this.dirty) {
            IObservable[] newDependencies = ObservableTracker.runAndMonitor(this.privateInterface, this.privateInterface, null);
            this.stale = false;
            int i = 0;
            while (i < newDependencies.length) {
                IObservable observable = newDependencies[i];
                if (observable.isStale()) {
                    this.stale = true;
                } else {
                    observable.addStaleListener(this.privateInterface);
                }
                ++i;
            }
            this.dependencies = newDependencies;
            this.dirty = false;
        }
        return this.cachedValue;
    }

    protected abstract Object calculate();

    protected final void makeDirty() {
        if (!this.dirty) {
            this.dirty = true;
            this.stopListening();
            final Object oldValue = this.cachedValue;
            this.fireValueChange(new ValueDiff(){

                public Object getOldValue() {
                    return oldValue;
                }

                public Object getNewValue() {
                    return ComputedValue.this.getValue();
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

    public boolean isStale() {
        this.getValue();
        return this.stale;
    }

    public Object getValueType() {
        return this.valueType;
    }

    protected boolean hasListeners() {
        return super.hasListeners();
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        super.addChangeListener(listener);
        this.computeValueForListeners();
    }

    private void computeValueForListeners() {
        this.getRealm().exec(new Runnable(){

            public void run() {
                if (ComputedValue.this.dependencies == null && ComputedValue.this.hasListeners()) {
                    ComputedValue.this.getValue();
                }
            }
        });
    }

    public synchronized void addValueChangeListener(IValueChangeListener listener) {
        super.addValueChangeListener(listener);
        this.computeValueForListeners();
    }

    public synchronized void dispose() {
        super.dispose();
        this.stopListening();
    }

    private class PrivateInterface
    implements Runnable,
    IChangeListener,
    IStaleListener {
        private PrivateInterface() {
        }

        public void run() {
            ComputedValue.this.cachedValue = ComputedValue.this.calculate();
        }

        public void handleStale(StaleEvent event) {
            if (!ComputedValue.this.dirty && !ComputedValue.this.stale) {
                ComputedValue.this.stale = true;
                ComputedValue.this.fireStale();
            }
        }

        public void handleChange(ChangeEvent event) {
            ComputedValue.this.makeDirty();
        }
    }
}

