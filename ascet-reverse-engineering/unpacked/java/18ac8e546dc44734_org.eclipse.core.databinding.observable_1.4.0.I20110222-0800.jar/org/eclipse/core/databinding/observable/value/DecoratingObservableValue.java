/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.value;

import org.eclipse.core.databinding.observable.DecoratingObservable;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.databinding.observable.value.ValueDiff;

public class DecoratingObservableValue
extends DecoratingObservable
implements IObservableValue {
    private IObservableValue decorated;
    private IValueChangeListener valueChangeListener;

    public DecoratingObservableValue(IObservableValue decorated, boolean disposeDecoratedOnDispose) {
        super(decorated, disposeDecoratedOnDispose);
        this.decorated = decorated;
    }

    public synchronized void addValueChangeListener(IValueChangeListener listener) {
        this.addListener(ValueChangeEvent.TYPE, listener);
    }

    public synchronized void removeValueChangeListener(IValueChangeListener listener) {
        this.removeListener(ValueChangeEvent.TYPE, listener);
    }

    protected void fireValueChange(ValueDiff diff) {
        super.fireChange();
        this.fireEvent(new ValueChangeEvent(this, diff));
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireValueChange() instead");
    }

    protected void firstListenerAdded() {
        if (this.valueChangeListener == null) {
            this.valueChangeListener = new IValueChangeListener(){

                public void handleValueChange(ValueChangeEvent event) {
                    DecoratingObservableValue.this.handleValueChange(event);
                }
            };
        }
        this.decorated.addValueChangeListener(this.valueChangeListener);
        super.firstListenerAdded();
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        if (this.valueChangeListener != null) {
            this.decorated.removeValueChangeListener(this.valueChangeListener);
            this.valueChangeListener = null;
        }
    }

    protected void handleValueChange(ValueChangeEvent event) {
        this.fireValueChange(event.diff);
    }

    public Object getValue() {
        this.getterCalled();
        return this.decorated.getValue();
    }

    public void setValue(Object value) {
        this.checkRealm();
        this.decorated.setValue(value);
    }

    public Object getValueType() {
        return this.decorated.getValueType();
    }

    public synchronized void dispose() {
        if (this.decorated != null && this.valueChangeListener != null) {
            this.decorated.removeValueChangeListener(this.valueChangeListener);
        }
        this.decorated = null;
        this.valueChangeListener = null;
        super.dispose();
    }
}

