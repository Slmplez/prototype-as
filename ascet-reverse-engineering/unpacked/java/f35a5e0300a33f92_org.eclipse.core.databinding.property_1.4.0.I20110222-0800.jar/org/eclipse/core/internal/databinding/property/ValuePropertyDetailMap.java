/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.internal.databinding.property;

import java.util.Map;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.map.MapProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class ValuePropertyDetailMap
extends MapProperty {
    private final IValueProperty masterProperty;
    private final IMapProperty detailProperty;

    public ValuePropertyDetailMap(IValueProperty masterProperty, IMapProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getKeyType() {
        return this.detailProperty.getKeyType();
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    protected Map doGetMap(Object source) {
        Object masterValue = this.masterProperty.getValue(source);
        return this.detailProperty.getMap(masterValue);
    }

    protected void doSetMap(Object source, Map map) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.setMap(masterValue, map);
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        Object masterValue = this.masterProperty.getValue(source);
        this.detailProperty.updateMap(masterValue, diff);
    }

    public IObservableMap observe(Realm realm, Object source) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterValue);
        return detailMap;
    }

    public IObservableMap observeDetail(IObservableValue master) {
        IObservableValue masterValue;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterValue = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterValue);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterValue);
        return detailMap;
    }

    public String toString() {
        return this.masterProperty + " => " + this.detailProperty;
    }
}

