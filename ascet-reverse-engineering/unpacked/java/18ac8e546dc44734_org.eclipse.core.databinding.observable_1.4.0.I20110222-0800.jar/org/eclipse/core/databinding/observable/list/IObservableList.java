/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.IObservableCollection;
import org.eclipse.core.databinding.observable.list.IListChangeListener;

public interface IObservableList
extends List,
IObservableCollection {
    public void addListChangeListener(IListChangeListener var1);

    public void removeListChangeListener(IListChangeListener var1);

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

    public boolean addAll(int var1, Collection var2);

    public boolean removeAll(Collection var1);

    public boolean retainAll(Collection var1);

    public boolean equals(Object var1);

    public int hashCode();

    public Object get(int var1);

    public Object set(int var1, Object var2);

    public Object move(int var1, int var2);

    public Object remove(int var1);

    public int indexOf(Object var1);

    public int lastIndexOf(Object var1);

    public ListIterator listIterator();

    public ListIterator listIterator(int var1);

    public List subList(int var1, int var2);

    public Object getElementType();
}

