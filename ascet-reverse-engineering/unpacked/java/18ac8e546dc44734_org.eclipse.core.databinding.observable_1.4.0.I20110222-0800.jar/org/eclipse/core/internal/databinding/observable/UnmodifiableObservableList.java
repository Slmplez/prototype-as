/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.list.DecoratingObservableList;
import org.eclipse.core.databinding.observable.list.IObservableList;

public class UnmodifiableObservableList
extends DecoratingObservableList {
    private List unmodifiableList;

    public UnmodifiableObservableList(IObservableList decorated) {
        super(decorated, false);
        this.unmodifiableList = Collections.unmodifiableList(decorated);
    }

    public void add(int index, Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(int index, Collection c) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Iterator iterator() {
        this.getterCalled();
        return this.unmodifiableList.iterator();
    }

    public ListIterator listIterator() {
        return this.listIterator(0);
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        return this.unmodifiableList.listIterator(index);
    }

    public Object move(int oldIndex, int newIndex) {
        throw new UnsupportedOperationException();
    }

    public Object remove(int index) {
        throw new UnsupportedOperationException();
    }

    public boolean remove(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public Object set(int index, Object element) {
        throw new UnsupportedOperationException();
    }

    public List subList(int fromIndex, int toIndex) {
        this.getterCalled();
        return this.unmodifiableList.subList(fromIndex, toIndex);
    }

    public synchronized void dispose() {
        this.unmodifiableList = null;
        super.dispose();
    }
}

