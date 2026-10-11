/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.value;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.core.databinding.property.value.ValueProperty;
import org.eclipse.core.internal.databinding.property.value.ListDelegatingValueObservableList;
import org.eclipse.core.internal.databinding.property.value.MapDelegatingValueObservableMap;
import org.eclipse.core.internal.databinding.property.value.SetDelegatingValueObservableMap;

public abstract class DelegatingValueProperty
extends ValueProperty {
    private final Object valueType;
    private final IValueProperty nullProperty = new NullValueProperty();

    protected DelegatingValueProperty() {
        this(null);
    }

    protected DelegatingValueProperty(Object valueType) {
        this.valueType = valueType;
    }

    public final IValueProperty getDelegate(Object source) {
        if (source == null) {
            return this.nullProperty;
        }
        IValueProperty delegate = this.doGetDelegate(source);
        if (delegate == null) {
            delegate = this.nullProperty;
        }
        return delegate;
    }

    protected abstract IValueProperty doGetDelegate(Object var1);

    protected Object doGetValue(Object source) {
        return this.getDelegate(source).getValue(source);
    }

    protected void doSetValue(Object source, Object value) {
        this.getDelegate(source).setValue(source, value);
    }

    public Object getValueType() {
        return this.valueType;
    }

    public IObservableValue observe(Object source) {
        return this.getDelegate(source).observe(source);
    }

    public IObservableValue observe(Realm realm, Object source) {
        return this.getDelegate(source).observe(realm, source);
    }

    public IObservableList observeDetail(IObservableList master) {
        return new ListDelegatingValueObservableList(master, this);
    }

    public IObservableMap observeDetail(IObservableSet master) {
        return new SetDelegatingValueObservableMap(master, this);
    }

    public IObservableMap observeDetail(IObservableMap master) {
        return new MapDelegatingValueObservableMap(master, this);
    }

    private class NullValueProperty
    extends SimpleValueProperty {
        private NullValueProperty() {
        }

        public Object getValueType() {
            return DelegatingValueProperty.this.valueType;
        }

        protected Object doGetValue(Object source) {
            return null;
        }

        protected void doSetValue(Object source, Object value) {
        }

        public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
            return null;
        }
    }
}

