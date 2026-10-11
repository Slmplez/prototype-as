/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IDiff
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 */
package org.eclipse.core.internal.databinding.property.value;

import org.eclipse.core.databinding.observable.IDiff;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.NativePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;

public class ObservableValueProperty
extends SimpleValueProperty {
    private final Object valueType;

    public ObservableValueProperty(Object valueType) {
        this.valueType = valueType;
    }

    public Object getValueType() {
        return this.valueType;
    }

    protected Object doGetValue(Object source) {
        return ((IObservableValue)source).getValue();
    }

    protected void doSetValue(Object source, Object value) {
        ((IObservableValue)source).setValue(value);
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return new Listener(this, listener);
    }

    public IObservableValue observe(Realm realm, Object source) {
        return (IObservableValue)source;
    }

    public String toString() {
        String result = "IObservableValue#value";
        if (this.valueType != null) {
            result = String.valueOf(result) + " <" + this.valueType + ">";
        }
        return result;
    }

    private class Listener
    extends NativePropertyListener
    implements IValueChangeListener,
    IStaleListener {
        Listener(IProperty property, ISimplePropertyListener listener) {
            super(property, listener);
        }

        public void handleValueChange(ValueChangeEvent event) {
            this.fireChange(event.getObservable(), (IDiff)event.diff);
        }

        public void handleStale(StaleEvent event) {
            this.fireStale(event.getObservable());
        }

        protected void doAddTo(Object source) {
            IObservableValue observable = (IObservableValue)source;
            observable.addValueChangeListener((IValueChangeListener)this);
            observable.addStaleListener((IStaleListener)this);
        }

        protected void doRemoveFrom(Object source) {
            IObservableValue observable = (IObservableValue)source;
            observable.removeValueChangeListener((IValueChangeListener)this);
            observable.removeStaleListener((IStaleListener)this);
        }
    }
}

