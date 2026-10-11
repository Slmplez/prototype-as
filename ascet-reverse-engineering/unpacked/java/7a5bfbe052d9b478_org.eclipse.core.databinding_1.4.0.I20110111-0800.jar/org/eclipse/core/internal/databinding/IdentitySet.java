/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.internal.databinding.IdentityWrapper;

public class IdentitySet
implements Set {
    private final Set wrappedSet = new HashSet();

    public IdentitySet() {
    }

    public IdentitySet(Collection collection) {
        this();
        this.addAll(collection);
    }

    public boolean add(Object o) {
        return this.wrappedSet.add(IdentityWrapper.wrap(o));
    }

    public boolean addAll(Collection c) {
        boolean changed = false;
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            changed |= this.wrappedSet.add(IdentityWrapper.wrap(iterator.next()));
        }
        return changed;
    }

    public void clear() {
        this.wrappedSet.clear();
    }

    public boolean contains(Object o) {
        return this.wrappedSet.contains(IdentityWrapper.wrap(o));
    }

    public boolean containsAll(Collection c) {
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            if (this.wrappedSet.contains(IdentityWrapper.wrap(iterator.next()))) continue;
            return false;
        }
        return true;
    }

    public boolean isEmpty() {
        return this.wrappedSet.isEmpty();
    }

    public Iterator iterator() {
        final Iterator wrappedIterator = this.wrappedSet.iterator();
        return new Iterator(){

            public boolean hasNext() {
                return wrappedIterator.hasNext();
            }

            public Object next() {
                return ((IdentityWrapper)wrappedIterator.next()).unwrap();
            }

            public void remove() {
                wrappedIterator.remove();
            }
        };
    }

    public boolean remove(Object o) {
        return this.wrappedSet.remove(IdentityWrapper.wrap(o));
    }

    public boolean removeAll(Collection c) {
        boolean changed = false;
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            changed |= this.remove(iterator.next());
        }
        return changed;
    }

    public boolean retainAll(Collection c) {
        boolean changed = false;
        Object[] retainAll = c.toArray();
        Iterator iterator = this.iterator();
        block0: while (iterator.hasNext()) {
            Object element = iterator.next();
            int i = 0;
            while (i < retainAll.length) {
                if (element == retainAll[i]) continue block0;
                ++i;
            }
            iterator.remove();
            changed = true;
        }
        return changed;
    }

    public int size() {
        return this.wrappedSet.size();
    }

    public Object[] toArray() {
        return this.toArray(new Object[this.wrappedSet.size()]);
    }

    public Object[] toArray(Object[] a) {
        int size = this.wrappedSet.size();
        IdentityWrapper[] wrappedArray = this.wrappedSet.toArray(new IdentityWrapper[size]);
        Object[] result = a;
        if (a.length < size) {
            result = (Object[])Array.newInstance(a.getClass().getComponentType(), size);
        }
        int i = 0;
        while (i < size) {
            result[i] = wrappedArray[i].unwrap();
            ++i;
        }
        return result;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set that = (Set)obj;
        return this.size() == that.size() && this.containsAll((Collection)that);
    }

    public int hashCode() {
        int hash = 0;
        Iterator iterator = this.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            hash += element == null ? 0 : element.hashCode();
        }
        return hash;
    }
}

