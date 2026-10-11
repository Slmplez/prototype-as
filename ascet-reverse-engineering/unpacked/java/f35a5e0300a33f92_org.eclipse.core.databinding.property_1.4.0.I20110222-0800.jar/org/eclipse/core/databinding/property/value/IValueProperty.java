/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.value;

import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;

public interface IValueProperty
extends IProperty {
    public Object getValueType();

    public Object getValue(Object var1);

    public void setValue(Object var1, Object var2);

    public IObservableValue observe(Object var1);

    public IObservableValue observe(Realm var1, Object var2);

    public IObservableFactory valueFactory();

    public IObservableFactory valueFactory(Realm var1);

    public IObservableValue observeDetail(IObservableValue var1);

    public IObservableList observeDetail(IObservableList var1);

    public IObservableMap observeDetail(IObservableSet var1);

    public IObservableMap observeDetail(IObservableMap var1);

    public IValueProperty value(IValueProperty var1);

    public IListProperty list(IListProperty var1);

    public ISetProperty set(ISetProperty var1);

    public IMapProperty map(IMapProperty var1);
}

