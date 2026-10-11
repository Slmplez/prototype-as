/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.internal.databinding.property;

import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.databinding.property.value.ValueProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class ValuePropertyDetailValue
extends ValueProperty
implements IValueProperty {
    private IValueProperty masterProperty;
    private IValueProperty detailProperty;

    public ValuePropertyDetailValue(IValueProperty masterProperty, IValueProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    protected Object doGetValue(Object source) {
        Object masterValue = this.masterProperty.getValue(source);
        return this.detailProperty.getValue(masterValue);
    }

    protected void doSetValue(Object source, Object value) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.setValue(masterValue, value);
    }

    public IObservableValue observe(Realm realm, Object source) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableValue detailValue = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailValue, (IObservable)masterValue);
        return detailValue;
    }

    public IObservableValue observeDetail(IObservableValue master) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableValue detailValue = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailValue, (IObservable)masterValue);
        return detailValue;
    }

    public IObservableList observeDetail(IObservableList master) {
        IObservableList masterList;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterList = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableList detailList = this.detailProperty.observeDetail(masterList);
        PropertyObservableUtil.cascadeDispose((IObservable)detailList, (IObservable)masterList);
        return detailList;
    }

    public IObservableMap observeDetail(IObservableSet master) {
        IObservableMap masterMap;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterMap = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterMap);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterMap);
        return detailMap;
    }

    public IObservableMap observeDetail(IObservableMap master) {
        IObservableMap masterMap;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterMap = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterMap);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterMap);
        return detailMap;
    }

    public String toString() {
        return this.masterProperty + " => " + this.detailProperty;
    }
}

