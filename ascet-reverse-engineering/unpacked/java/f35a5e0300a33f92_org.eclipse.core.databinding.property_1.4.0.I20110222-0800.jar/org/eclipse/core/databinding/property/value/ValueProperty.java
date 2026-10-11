/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.value;

import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.masterdetail.MasterDetailObservables;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.ValuePropertyDetailList;
import org.eclipse.core.internal.databinding.property.ValuePropertyDetailMap;
import org.eclipse.core.internal.databinding.property.ValuePropertyDetailSet;
import org.eclipse.core.internal.databinding.property.ValuePropertyDetailValue;

public abstract class ValueProperty
implements IValueProperty {
    public Object getValue(Object source) {
        if (source == null) {
            return null;
        }
        return this.doGetValue(source);
    }

    protected Object doGetValue(Object source) {
        IObservableValue observable = this.observe(source);
        try {
            Object object = observable.getValue();
            return object;
        }
        finally {
            observable.dispose();
        }
    }

    public final void setValue(Object source, Object value) {
        if (source != null) {
            this.doSetValue(source, value);
        }
    }

    protected void doSetValue(Object source, Object value) {
        IObservableValue observable = this.observe(source);
        try {
            observable.setValue(value);
        }
        finally {
            observable.dispose();
        }
    }

    public IObservableValue observe(Object source) {
        return this.observe(Realm.getDefault(), source);
    }

    public IObservableFactory valueFactory() {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return ValueProperty.this.observe(target);
            }
        };
    }

    public IObservableFactory valueFactory(final Realm realm) {
        return new IObservableFactory(){

            public IObservable createObservable(Object target) {
                return ValueProperty.this.observe(realm, target);
            }
        };
    }

    public IObservableValue observeDetail(IObservableValue master) {
        return MasterDetailObservables.detailValue((IObservableValue)master, (IObservableFactory)this.valueFactory(master.getRealm()), (Object)this.getValueType());
    }

    public IObservableList observeDetail(IObservableList master) {
        return MasterDetailObservables.detailValues((IObservableList)master, (IObservableFactory)this.valueFactory(master.getRealm()), (Object)this.getValueType());
    }

    public IObservableMap observeDetail(IObservableSet master) {
        return MasterDetailObservables.detailValues((IObservableSet)master, (IObservableFactory)this.valueFactory(master.getRealm()), (Object)this.getValueType());
    }

    public IObservableMap observeDetail(IObservableMap master) {
        return MasterDetailObservables.detailValues((IObservableMap)master, (IObservableFactory)this.valueFactory(master.getRealm()), (Object)this.getValueType());
    }

    public final IValueProperty value(IValueProperty detailValue) {
        return new ValuePropertyDetailValue(this, detailValue);
    }

    public final IListProperty list(IListProperty detailList) {
        return new ValuePropertyDetailList(this, detailList);
    }

    public final ISetProperty set(ISetProperty detailSet) {
        return new ValuePropertyDetailSet(this, detailSet);
    }

    public final IMapProperty map(IMapProperty detailMap) {
        return new ValuePropertyDetailMap(this, detailMap);
    }
}

