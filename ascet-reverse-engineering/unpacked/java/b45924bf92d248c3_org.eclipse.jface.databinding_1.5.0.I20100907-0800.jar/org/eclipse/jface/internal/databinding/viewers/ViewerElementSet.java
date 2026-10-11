/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.IElementComparer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementWrapper;
import org.eclipse.jface.viewers.IElementComparer;

public class ViewerElementSet
implements Set {
    private final Set wrappedSet;
    private final IElementComparer comparer;

    public ViewerElementSet(IElementComparer comparer) {
        Assert.isNotNull((Object)comparer);
        this.wrappedSet = new HashSet();
        this.comparer = comparer;
    }

    public ViewerElementSet(Collection collection, IElementComparer comparer) {
        this(comparer);
        this.addAll(collection);
    }

    public boolean add(Object o) {
        return this.wrappedSet.add(new ViewerElementWrapper(o, this.comparer));
    }

    public boolean addAll(Collection c) {
        boolean changed = false;
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            changed |= this.wrappedSet.add(new ViewerElementWrapper(iterator.next(), this.comparer));
        }
        return changed;
    }

    public void clear() {
        this.wrappedSet.clear();
    }

    public boolean contains(Object o) {
        return this.wrappedSet.contains(new ViewerElementWrapper(o, this.comparer));
    }

    public boolean containsAll(Collection c) {
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            if (this.wrappedSet.contains(new ViewerElementWrapper(iterator.next(), this.comparer))) continue;
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
                return ((ViewerElementWrapper)wrappedIterator.next()).unwrap();
            }

            public void remove() {
                wrappedIterator.remove();
            }
        };
    }

    public boolean remove(Object o) {
        return this.wrappedSet.remove(new ViewerElementWrapper(o, this.comparer));
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
                if (this.comparer.equals(element, retainAll[i])) continue block0;
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
        ViewerElementWrapper[] wrappedArray = this.wrappedSet.toArray(new ViewerElementWrapper[size]);
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

    public static Set withComparer(IElementComparer comparer) {
        if (comparer == null) {
            return new HashSet();
        }
        return new ViewerElementSet(comparer);
    }
}

