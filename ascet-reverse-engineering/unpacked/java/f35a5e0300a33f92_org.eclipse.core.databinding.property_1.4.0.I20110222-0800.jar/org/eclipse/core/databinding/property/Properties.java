/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 */
package org.eclipse.core.databinding.property;

import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.property.list.IListProperty;
import org.eclipse.core.databinding.property.map.IMapProperty;
import org.eclipse.core.databinding.property.set.ISetProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.core.internal.databinding.property.list.SelfListProperty;
import org.eclipse.core.internal.databinding.property.map.SelfMapProperty;
import org.eclipse.core.internal.databinding.property.set.SelfSetProperty;
import org.eclipse.core.internal.databinding.property.value.ObservableValueProperty;
import org.eclipse.core.internal.databinding.property.value.SelfValueProperty;

public class Properties {
    public static IObservableMap[] observeEach(IObservableSet domainSet, IValueProperty[] properties) {
        IObservableMap[] maps = new IObservableMap[properties.length];
        int i = 0;
        while (i < maps.length) {
            maps[i] = properties[i].observeDetail(domainSet);
            ++i;
        }
        return maps;
    }

    public static IObservableMap[] observeEach(IObservableMap domainMap, IValueProperty[] properties) {
        IObservableMap[] maps = new IObservableMap[properties.length];
        int i = 0;
        while (i < maps.length) {
            maps[i] = properties[i].observeDetail(domainMap);
            ++i;
        }
        return maps;
    }

    public static IValueProperty selfValue(Object valueType) {
        return new SelfValueProperty(valueType);
    }

    public static IListProperty selfList(Object elementType) {
        return new SelfListProperty(elementType);
    }

    public static ISetProperty selfSet(Object elementType) {
        return new SelfSetProperty(elementType);
    }

    public static IMapProperty selfMap(Object keyType, Object valueType) {
        return new SelfMapProperty(keyType, valueType);
    }

    public static IValueProperty observableValue(Object valueType) {
        return new ObservableValueProperty(valueType);
    }
}

