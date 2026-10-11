/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.map.IObservableMap
 *  org.eclipse.core.databinding.observable.map.MapDiff
 *  org.eclipse.core.databinding.observable.masterdetail.IObservableFactory
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 */
package org.eclipse.core.databinding.property.map;

import java.util.Map;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.map.IObservableMap;
import org.eclipse.core.databinding.observable.map.MapDiff;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.value.IValueProperty;

public interface IMapProperty
extends IProperty {
    public Object getKeyType();

    public Object getValueType();

    public Map getMap(Object var1);

    public void setMap(Object var1, Map var2);

    public void updateMap(Object var1, MapDiff var2);

    public IObservableMap observe(Object var1);

    public IObservableMap observe(Realm var1, Object var2);

    public IObservableFactory mapFactory();

    public IObservableFactory mapFactory(Realm var1);

    public IObservableMap observeDetail(IObservableValue var1);

    public IMapProperty values(IValueProperty var1);
}

