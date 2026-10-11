/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.set;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.AbstractObservable;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.observable.set.SetDiff;

public abstract class ObservableSet
extends AbstractObservable
implements IObservableSet {
    protected Set wrappedSet;
    private boolean stale = false;
    protected Object elementType;

    protected ObservableSet(Set wrappedSet, Object elementType) {
        this(Realm.getDefault(), wrappedSet, elementType);
    }

    protected ObservableSet(Realm realm, Set wrappedSet, Object elementType) {
        super(realm);
        this.wrappedSet = wrappedSet;
        this.elementType = elementType;
    }

    public synchronized void addSetChangeListener(ISetChangeListener listener) {
        this.addListener(SetChangeEvent.TYPE, listener);
    }

    public synchronized void removeSetChangeListener(ISetChangeListener listener) {
        this.removeListener(SetChangeEvent.TYPE, listener);
    }

    protected void fireSetChange(SetDiff diff) {
        super.fireChange();
        this.fireEvent(new SetChangeEvent(this, diff));
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return this.wrappedSet.contains(o);
    }

    public boolean containsAll(Collection c) {
        this.getterCalled();
        return this.wrappedSet.containsAll(c);
    }

    public boolean equals(Object o) {
        this.getterCalled();
        return o == this || this.wrappedSet.equals(o);
    }

    public int hashCode() {
        this.getterCalled();
        return this.wrappedSet.hashCode();
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.wrappedSet.isEmpty();
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator wrappedIterator = this.wrappedSet.iterator();
        return new Iterator(){

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext() {
                ObservableTracker.getterCalled(ObservableSet.this);
                return wrappedIterator.hasNext();
            }

            public Object next() {
                ObservableTracker.getterCalled(ObservableSet.this);
                return wrappedIterator.next();
            }
        };
    }

    public int size() {
        this.getterCalled();
        return this.wrappedSet.size();
    }

    public Object[] toArray() {
        this.getterCalled();
        return this.wrappedSet.toArray();
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        return this.wrappedSet.toArray(a);
    }

    public String toString() {
        this.getterCalled();
        return this.wrappedSet.toString();
    }

    protected void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection c) {
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

    protected void setWrappedSet(Set wrappedSet) {
        this.wrappedSet = wrappedSet;
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireSetChange() instead");
    }

    public synchronized void dispose() {
        super.dispose();
    }

    public Object getElementType() {
        return this.elementType;
    }
}

