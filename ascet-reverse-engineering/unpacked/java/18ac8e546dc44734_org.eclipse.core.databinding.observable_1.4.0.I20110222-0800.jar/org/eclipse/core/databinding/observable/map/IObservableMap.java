/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.map;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.map.IMapChangeListener;

public interface IObservableMap
extends Map,
IObservable {
    public Object getKeyType();

    public Object getValueType();

    public void addMapChangeListener(IMapChangeListener var1);

    public void removeMapChangeListener(IMapChangeListener var1);

    public int size();

    public boolean isEmpty();

    public boolean containsKey(Object var1);

    public boolean containsValue(Object var1);

    public Object get(Object var1);

    public Object put(Object var1, Object var2);

    public Object remove(Object var1);

    public Set keySet();

    public Collection values();

    public Set entrySet();

    public boolean equals(Object var1);

    public int hashCode();
}

