/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 */
package org.eclipse.core.internal.databinding.property;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.map.MapProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.property.PropertyObservableUtil;

public class SetPropertyDetailValuesMap
extends MapProperty {
    private final ISetProperty masterProperty;
    private final IValueProperty detailProperty;

    public SetPropertyDetailValuesMap(ISetProperty masterProperty, IValueProperty detailProperty) {
        this.masterProperty = masterProperty;
        this.detailProperty = detailProperty;
    }

    public Object getKeyType() {
        return this.masterProperty.getElementType();
    }

    public Object getValueType() {
        return this.detailProperty.getValueType();
    }

    protected Map doGetMap(Object source) {
        Set set = this.masterProperty.getSet(source);
        IdentityMap map = new IdentityMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Object key = it.next();
            map.put(key, this.detailProperty.getValue(key));
        }
        return map;
    }

    protected void doUpdateMap(Object source, MapDiff diff) {
        if (!diff.getAddedKeys().isEmpty()) {
            throw new UnsupportedOperationException(String.valueOf(this.toString()) + " does not support entry additions");
        }
        if (!diff.getRemovedKeys().isEmpty()) {
            throw new UnsupportedOperationException(String.valueOf(this.toString()) + " does not support entry removals");
        }
        Iterator it = diff.getChangedKeys().iterator();
        while (it.hasNext()) {
            Object key = it.next();
            Object newValue = diff.getNewValue(key);
            this.detailProperty.setValue(key, newValue);
        }
    }

    public IObservableMap observe(Realm realm, Object source) {
        IObservableSet masterSet;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterSet = this.masterProperty.observe(realm, source);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterSet);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterSet);
        return detailMap;
    }

    public IObservableMap observeDetail(IObservableValue master) {
        IObservableSet masterSet;
        ObservableTracker.setIgnore((boolean)true);
        try {
            masterSet = this.masterProperty.observeDetail(master);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        IObservableMap detailMap = this.detailProperty.observeDetail(masterSet);
        PropertyObservableUtil.cascadeDispose((IObservable)detailMap, (IObservable)masterSet);
        return detailMap;
    }

    public String toString() {
        return this.masterProperty + " => " + this.detailProperty;
    }
}

