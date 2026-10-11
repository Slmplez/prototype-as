/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.AbstractObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.databinding.observable.value.ValueDiff;

public abstract class AbstractObservableValue
extends AbstractObservable
implements IObservableValue {
    public AbstractObservableValue() {
        this(Realm.getDefault());
    }

    public AbstractObservableValue(Realm realm) {
        super(realm);
    }

    public synchronized void addValueChangeListener(IValueChangeListener listener) {
        this.addListener(ValueChangeEvent.TYPE, listener);
    }

    public synchronized void removeValueChangeListener(IValueChangeListener listener) {
        this.removeListener(ValueChangeEvent.TYPE, listener);
    }

    public final void setValue(Object value) {
        this.checkRealm();
        this.doSetValue(value);
    }

    protected void doSetValue(Object value) {
        throw new UnsupportedOperationException();
    }

    protected void fireValueChange(ValueDiff diff) {
        super.fireChange();
        this.fireEvent(new ValueChangeEvent(this, diff));
    }

    public final Object getValue() {
        this.getterCalled();
        return this.doGetValue();
    }

    protected abstract Object doGetValue();

    public boolean isStale() {
        this.getterCalled();
        return false;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireValueChange() instead");
    }
}

