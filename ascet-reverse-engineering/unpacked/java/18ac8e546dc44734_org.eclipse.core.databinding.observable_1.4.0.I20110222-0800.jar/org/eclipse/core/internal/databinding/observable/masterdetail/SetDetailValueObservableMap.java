/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.map.ComputedObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.identity.IdentitySet;

public class SetDetailValueObservableMap
extends ComputedObservableMap
implements IObserving {
    private IObservableFactory observableValueFactory;
    private Map detailObservableValueMap = new HashMap();
    private IdentitySet staleDetailObservables = new IdentitySet();
    private IStaleListener detailStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            SetDetailValueObservableMap.this.addStaleDetailObservable((IObservableValue)staleEvent.getObservable());
        }
    };

    public SetDetailValueObservableMap(IObservableSet masterKeySet, IObservableFactory observableValueFactory, Object detailValueType) {
        super(masterKeySet, detailValueType);
        this.observableValueFactory = observableValueFactory;
    }

    protected void hookListener(final Object addedKey) {
        final IObservableValue detailValue = this.getDetailObservableValue(addedKey);
        detailValue.addValueChangeListener(new IValueChangeListener(){

            public void handleValueChange(ValueChangeEvent event) {
                if (!event.getObservableValue().isStale()) {
                    SetDetailValueObservableMap.this.staleDetailObservables.remove(detailValue);
                }
                SetDetailValueObservableMap.this.fireSingleChange(addedKey, event.diff.getOldValue(), event.diff.getNewValue());
            }
        });
        detailValue.addStaleListener(this.detailStaleListener);
    }

    protected void unhookListener(Object removedKey) {
        if (this.isDisposed()) {
            return;
        }
        IObservableValue detailValue = (IObservableValue)this.detailObservableValueMap.remove(removedKey);
        this.staleDetailObservables.remove(detailValue);
        detailValue.dispose();
    }

    private IObservableValue getDetailObservableValue(Object masterKey) {
        IObservableValue detailValue = (IObservableValue)this.detailObservableValueMap.get(masterKey);
        if (detailValue == null) {
            ObservableTracker.setIgnore(true);
            try {
                detailValue = (IObservableValue)this.observableValueFactory.createObservable(masterKey);
            }
            finally {
                ObservableTracker.setIgnore(false);
            }
            this.detailObservableValueMap.put(masterKey, detailValue);
            if (detailValue.isStale()) {
                this.addStaleDetailObservable(detailValue);
            }
        }
        return detailValue;
    }

    private void addStaleDetailObservable(IObservableValue detailObservable) {
        boolean wasStale = this.isStale();
        this.staleDetailObservables.add(detailObservable);
        if (!wasStale) {
            this.fireStale();
        }
    }

    protected Object doGet(Object key) {
        IObservableValue detailValue = this.getDetailObservableValue(key);
        return detailValue.getValue();
    }

    protected Object doPut(Object key, Object value) {
        IObservableValue detailValue = this.getDetailObservableValue(key);
        Object oldValue = detailValue.getValue();
        detailValue.setValue(value);
        return oldValue;
    }

    public boolean containsKey(Object key) {
        this.getterCalled();
        return this.keySet().contains(key);
    }

    public Object remove(Object key) {
        this.checkRealm();
        if (!this.containsKey(key)) {
            return null;
        }
        IObservableValue detailValue = this.getDetailObservableValue(key);
        Object oldValue = detailValue.getValue();
        this.keySet().remove(key);
        return oldValue;
    }

    public int size() {
        this.getterCalled();
        return this.keySet().size();
    }

    public boolean isStale() {
        return super.isStale() || this.staleDetailObservables != null && !this.staleDetailObservables.isEmpty();
    }

    public Object getObserved() {
        return this.keySet();
    }

    public synchronized void dispose() {
        super.dispose();
        this.observableValueFactory = null;
        this.detailObservableValueMap = null;
        this.detailStaleListener = null;
        this.staleDetailObservables = null;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }
}

