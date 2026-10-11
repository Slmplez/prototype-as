/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;

public interface IObservableSet
extends Set,
IObservableCollection {
    public void addSetChangeListener(ISetChangeListener var1);

    public void removeSetChangeListener(ISetChangeListener var1);

    public Object getElementType();

    public int size();

    public boolean isEmpty();

    public boolean contains(Object var1);

    public Iterator iterator();

    public Object[] toArray();

    public Object[] toArray(Object[] var1);

    public boolean add(Object var1);

    public boolean remove(Object var1);

    public boolean containsAll(Collection var1);

    public boolean addAll(Collection var1);

    public boolean retainAll(Collection var1);

    public boolean removeAll(Collection var1);

    public boolean equals(Object var1);

    public int hashCode();
}

