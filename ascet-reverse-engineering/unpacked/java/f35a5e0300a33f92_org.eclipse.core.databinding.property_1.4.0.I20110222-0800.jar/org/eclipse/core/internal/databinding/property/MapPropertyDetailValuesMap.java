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
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 */
package org.eclipse.core.internal.databinding.property;

import java.util.Iterator;
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
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class MapPropertyDetailValuesMap
extends MapProperty {
    private final IMapProperty masterProperty;
    private final IValueProperty detailProperty;

    public MapPropertyDetailValuesMap(IMapProperty masterProperty, IValueProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getKeyType() {
        return this.masterProperty.getKeyType();
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    protected Map doGetMap(Object source) {
        Map masterMap = this.masterProperty.getMap(source);
        IdentityMap detailMap = new IdentityMap();
        Iterator it = masterMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = it.next();
            detailMap.put(entry.getKey(), this.detailProperty.getValue(entry.getValue()));
        }
        return detailMap;
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        if (!diff.getAddedKeys().isEmpty()) {
            throw new UnsupportedOperationException(String.valueOf(this.toString()) + " does not support entry additions");
        }
        if (!diff.getRemovedKeys().isEmpty()) {
            throw new UnsupportedOperationException(String.valueOf(this.toString()) + " does not support entry removals");
        }
        Map masterMap = this.masterProperty.getMap(source);
        Iterator it = diff.getChangedKeys().iterator();
        while (it.hasNext()) {
            Object key = it.next();
            Object masterValue = masterMap.get(key);
            this.detailProperty.setValue(masterValue, diff.getNewValue(key));
        }
    }

    public IObservableMap observe(Realm realm, Object source) {
        IObservableMap masterMap;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterMap = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterMap);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterMap);
        return detailMap;
    }

    public IObservableMap observeDetail(IObservableValue master) {
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

