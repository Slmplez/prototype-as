/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.databinding.observable.DecoratingObservable;
import org.eclipse.core.databinding.observable.IObservableCollection;

public class DecoratingObservableCollection
extends DecoratingObservable
implements IObservableCollection {
    private IObservableCollection decorated;

    public DecoratingObservableCollection(IObservableCollection decorated, boolean disposeDecoratedOnDispose) {
        super(decorated, disposeDecoratedOnDispose);
        this.decorated = decorated;
    }

    public boolean add(Object o) {
        this.getterCalled();
        return this.decorated.add(o);
    }

    public boolean addAll(Collection c) {
        this.getterCalled();
        return this.decorated.addAll(c);
    }

    public void clear() {
        this.checkRealm();
        this.decorated.clear();
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return this.decorated.contains(o);
    }

    public boolean containsAll(Collection c) {
        this.getterCalled();
        return this.decorated.containsAll(c);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.decorated.isEmpty();
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator decoratedIterator = this.decorated.iterator();
        return new Iterator(){

            public void remove() {
                decoratedIterator.remove();
            }

            public boolean hasNext() {
                DecoratingObservableCollection.this.getterCalled();
                return decoratedIterator.hasNext();
            }

            public Object next() {
                DecoratingObservableCollection.this.getterCalled();
                return decoratedIterator.next();
            }
        };
    }

    public boolean remove(Object o) {
        this.getterCalled();
        return this.decorated.remove(o);
    }

    public boolean removeAll(Collection c) {
        this.getterCalled();
        return this.decorated.removeAll(c);
    }

    public boolean retainAll(Collection c) {
        this.getterCalled();
        return this.decorated.retainAll(c);
    }

    public int size() {
        this.getterCalled();
        return this.decorated.size();
    }

    public Object[] toArray() {
        this.getterCalled();
        return this.decorated.toArray();
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        return this.decorated.toArray(a);
    }

    public Object getElementType() {
        return this.decorated.getElementType();
    }

    public boolean equals(Object obj) {
        this.getterCalled();
        if (this == obj) {
            return true;
        }
        return this.decorated.equals(obj);
    }

    public int hashCode() {
        this.getterCalled();
        return this.decorated.hashCode();
    }

    public String toString() {
        this.getterCalled();
        return this.decorated.toString();
    }

    public synchronized void dispose() {
        this.decorated = null;
        super.dispose();
    }
}

