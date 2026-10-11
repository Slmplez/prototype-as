/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.AbstractObservable;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.AbstractObservableList;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;

public abstract class ObservableList
extends AbstractObservable
implements IObservableList {
    protected List wrappedList;
    private boolean stale = false;
    private Object elementType;

    protected ObservableList(List wrappedList, Object elementType) {
        this(Realm.getDefault(), wrappedList, elementType);
    }

    protected ObservableList(Realm realm, List wrappedList, Object elementType) {
        super(realm);
        this.wrappedList = wrappedList;
        this.elementType = elementType;
    }

    public synchronized void addListChangeListener(IListChangeListener listener) {
        this.addListener(ListChangeEvent.TYPE, listener);
    }

    public synchronized void removeListChangeListener(IListChangeListener listener) {
        this.removeListener(ListChangeEvent.TYPE, listener);
    }

    protected void fireListChange(ListDiff diff) {
        super.fireChange();
        this.fireEvent(new ListChangeEvent(this, diff));
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return this.wrappedList.contains(o);
    }

    public boolean containsAll(Collection c) {
        this.getterCalled();
        return this.wrappedList.containsAll(c);
    }

    public boolean equals(Object o) {
        this.getterCalled();
        return o == this || this.wrappedList.equals(o);
    }

    public int hashCode() {
        this.getterCalled();
        return this.wrappedList.hashCode();
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.wrappedList.isEmpty();
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator wrappedIterator = this.wrappedList.iterator();
        return new Iterator(){

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext() {
                return wrappedIterator.hasNext();
            }

            public Object next() {
                return wrappedIterator.next();
            }
        };
    }

    public int size() {
        this.getterCalled();
        return this.wrappedList.size();
    }

    public Object[] toArray() {
        this.getterCalled();
        return this.wrappedList.toArray();
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        return this.wrappedList.toArray(a);
    }

    public String toString() {
        this.getterCalled();
        return this.wrappedList.toString();
    }

    public Object get(int index) {
        this.getterCalled();
        return this.wrappedList.get(index);
    }

    public int indexOf(Object o) {
        this.getterCalled();
        return this.wrappedList.indexOf(o);
    }

    public int lastIndexOf(Object o) {
        this.getterCalled();
        return this.wrappedList.lastIndexOf(o);
    }

    public ListIterator listIterator() {
        return this.listIterator(0);
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        final ListIterator wrappedIterator = this.wrappedList.listIterator(index);
        return new ListIterator(){

            public int nextIndex() {
                return wrappedIterator.nextIndex();
            }

            public int previousIndex() {
                return wrappedIterator.previousIndex();
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext() {
                return wrappedIterator.hasNext();
            }

            public boolean hasPrevious() {
                return wrappedIterator.hasPrevious();
            }

            public Object next() {
                return wrappedIterator.next();
            }

            public Object previous() {
                return wrappedIterator.previous();
            }

            public void add(Object o) {
                throw new UnsupportedOperationException();
            }

            public void set(Object o) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public List subList(final int fromIndex, final int toIndex) {
        this.getterCalled();
        if (fromIndex < 0 || fromIndex > toIndex || toIndex > this.size()) {
            throw new IndexOutOfBoundsException();
        }
        return new AbstractObservableList(this.getRealm()){

            public Object getElementType() {
                return ObservableList.this.getElementType();
            }

            public Object get(int location) {
                return ObservableList.this.get(fromIndex + location);
            }

            protected int doGetSize() {
                return toIndex - fromIndex;
            }
        };
    }

    protected void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    public Object set(int index, Object element) {
        throw new UnsupportedOperationException();
    }

    public Object move(int oldIndex, int newIndex) {
        this.checkRealm();
        int size = this.wrappedList.size();
        if (oldIndex < 0 || oldIndex >= size) {
            throw new IndexOutOfBoundsException("oldIndex: " + oldIndex + ", size:" + size);
        }
        if (newIndex < 0 || newIndex >= size) {
            throw new IndexOutOfBoundsException("newIndex: " + newIndex + ", size:" + size);
        }
        Object element = this.remove(oldIndex);
        this.add(newIndex, element);
        return element;
    }

    public Object remove(int index) {
        throw new UnsupportedOperationException();
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public void add(int index, Object element) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(int index, Collection c) {
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

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean isStale() {
        this.getterCalled();
        return this.stale;
    }

    public void setStale(boolean stale) {
        this.checkRealm();
        boolean wasStale = this.stale;
        this.stale = stale;
        if (!wasStale && stale) {
            this.fireStale();
        }
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireListChange() instead");
    }

    public synchronized void dispose() {
        super.dispose();
    }

    public Object getElementType() {
        return this.elementType;
    }

    protected void updateWrappedList(List newList) {
        List oldList = this.wrappedList;
        ListDiff listDiff = Diffs.computeListDiff(oldList, newList);
        this.wrappedList = newList;
        this.fireListChange(listDiff);
    }
}

