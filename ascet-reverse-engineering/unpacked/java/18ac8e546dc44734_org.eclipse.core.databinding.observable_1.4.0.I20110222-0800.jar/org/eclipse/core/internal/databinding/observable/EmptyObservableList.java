/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.runtime.Assert;

public class EmptyObservableList
implements IObservableList {
    private static final List emptyList = Collections.EMPTY_LIST;
    private final Realm realm;
    private Object elementType;

    public EmptyObservableList(Realm realm) {
        this(realm, null);
    }

    public EmptyObservableList(Realm realm, Object elementType) {
        this.realm = realm;
        this.elementType = elementType;
        ObservableTracker.observableCreated(this);
    }

    public void addListChangeListener(IListChangeListener listener) {
    }

    public void removeListChangeListener(IListChangeListener listener) {
    }

    public Object getElementType() {
        return this.elementType;
    }

    public int size() {
        this.checkRealm();
        return 0;
    }

    void checkRealm() {
        Assert.isTrue((boolean)this.realm.isCurrent(), (String)"Observable cannot be accessed outside its realm");
    }

    public boolean isEmpty() {
        this.checkRealm();
        return true;
    }

    public boolean contains(Object o) {
        this.checkRealm();
        return false;
    }

    public Iterator iterator() {
        this.checkRealm();
        return emptyList.iterator();
    }

    public Object[] toArray() {
        this.checkRealm();
        return emptyList.toArray();
    }

    public Object[] toArray(Object[] a) {
        return emptyList.toArray(a);
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean remove(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean containsAll(Collection c) {
        this.checkRealm();
        return c.isEmpty();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public void addChangeListener(IChangeListener listener) {
    }

    public void removeChangeListener(IChangeListener listener) {
    }

    public void addStaleListener(IStaleListener listener) {
    }

    public void removeStaleListener(IStaleListener listener) {
    }

    public void addDisposeListener(IDisposeListener listener) {
    }

    public void removeDisposeListener(IDisposeListener listener) {
    }

    public boolean isStale() {
        this.checkRealm();
        return false;
    }

    public boolean isDisposed() {
        return false;
    }

    public void dispose() {
    }

    public boolean addAll(int index, Collection c) {
        throw new UnsupportedOperationException();
    }

    public Object get(int index) {
        return emptyList.get(index);
    }

    public int indexOf(Object o) {
        return -1;
    }

    public int lastIndexOf(Object o) {
        return -1;
    }

    public ListIterator listIterator() {
        return emptyList.listIterator();
    }

    public ListIterator listIterator(int index) {
        return emptyList.listIterator(index);
    }

    public Object remove(int index) {
        throw new UnsupportedOperationException();
    }

    public Object set(int index, Object element) {
        throw new UnsupportedOperationException();
    }

    public Object move(int oldIndex, int newIndex) {
        throw new UnsupportedOperationException();
    }

    public List subList(int fromIndex, int toIndex) {
        return emptyList.subList(fromIndex, toIndex);
    }

    public void add(int index, Object o) {
        throw new UnsupportedOperationException();
    }

    public Realm getRealm() {
        return this.realm;
    }

    public boolean equals(Object obj) {
        this.checkRealm();
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        return ((List)obj).isEmpty();
    }

    public int hashCode() {
        this.checkRealm();
        return 1;
    }
}

