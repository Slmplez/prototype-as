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
import org.eclipse.core.databinding.property.value.ValueProperty;
import org.eclipse.core.internal.databinding.property.value.ListSimpleValueObservableList;
import org.eclipse.core.internal.databinding.property.value.MapSimpleValueObservableMap;
import org.eclipse.core.internal.databinding.property.value.SetSimpleValueObservableMap;
import org.eclipse.core.internal.databinding.property.value.SimplePropertyObservableValue;

public abstract class SimpleValueProperty
extends ValueProperty {
    protected abstract Object doGetValue(Object var1);

    protected abstract void doSetValue(Object var1, Object var2);

    public abstract INativePropertyListener adaptListener(ISimplePropertyListener var1);

    public IObservableValue observe(Realm realm, Object source) {
        return new SimplePropertyObservableValue(realm, source, this);
    }

    public IObservableList observeDetail(IObservableList master) {
        return new ListSimpleValueObservableList(master, this);
    }

    public IObservableMap observeDetail(IObservableSet master) {
        return new SetSimpleValueObservableMap(master, this);
    }

    public IObservableMap observeDetail(IObservableMap master) {
        return new MapSimpleValueObservableMap(master, this);
    }
}

