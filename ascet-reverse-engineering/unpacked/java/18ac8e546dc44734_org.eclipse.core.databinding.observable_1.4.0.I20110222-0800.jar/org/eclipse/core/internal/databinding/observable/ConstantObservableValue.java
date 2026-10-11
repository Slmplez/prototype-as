/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable;

import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.runtime.Assert;

public class ConstantObservableValue
implements IObservableValue {
    final Realm realm;
    final Object value;
    final Object type;

    public ConstantObservableValue(Object value, Object type) {
        this(Realm.getDefault(), value, type);
    }

    public ConstantObservableValue(Realm realm, Object value, Object type) {
        Assert.isNotNull((Object)realm, (String)"Realm cannot be null");
        this.realm = realm;
        this.value = value;
        this.type = type;
        ObservableTracker.observableCreated(this);
    }

    public Object getValueType() {
        return this.type;
    }

    public Object getValue() {
        ObservableTracker.getterCalled(this);
        return this.value;
    }

    public void setValue(Object value) {
        throw new UnsupportedOperationException();
    }

    public void addValueChangeListener(IValueChangeListener listener) {
    }

    public void removeValueChangeListener(IValueChangeListener listener) {
    }

    public void addChangeListener(IChangeListener listener) {
    }

    public void addDisposeListener(IDisposeListener listener) {
    }

    public void addStaleListener(IStaleListener listener) {
    }

    public boolean isDisposed() {
        return false;
    }

    public void dispose() {
    }

    public Realm getRealm() {
        return this.realm;
    }

    public boolean isStale() {
        return false;
    }

    public void removeChangeListener(IChangeListener listener) {
    }

    public void removeDisposeListener(IDisposeListener listener) {
    }

    public void removeStaleListener(IStaleListener listener) {
    }
}

