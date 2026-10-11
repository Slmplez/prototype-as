/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ShrinkableCollection<E>
implements Collection<E> {
    private final Collection<? extends E> collection;
    private final List<Collection<? extends E>> list;
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.osgi.internal.serviceregistry.ShrinkableCollection");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        $assertionsDisabled = !clazz.desiredAssertionStatus();
    }

    public ShrinkableCollection(Collection<? extends E> c) {
        List empty;
        if (c == null) {
            throw new NullPointerException();
        }
        this.list = empty = Collections.EMPTY_LIST;
        this.collection = c;
    }

    public ShrinkableCollection(Collection<? extends E> c1, Collection<? extends E> c2) {
        this.list = new ArrayList<Collection<? extends E>>(2);
        this.list.add(c1);
        this.list.add(c2);
        this.collection = ShrinkableCollection.initComposite(this.list);
    }

    public ShrinkableCollection(List<Collection<? extends E>> l) {
        this.list = new ArrayList<Collection<Collection<? extends E>>>(l);
        this.collection = ShrinkableCollection.initComposite(this.list);
    }

    private static <E> Collection<? extends E> initComposite(List<Collection<? extends E>> collections) {
        int size = 0;
        for (Collection<E> c : collections) {
            if (!$assertionsDisabled && !ShrinkableCollection.verifyNoDuplicates(c)) {
                throw new AssertionError();
            }
            size += c.size();
        }
        ArrayList<E> result = new ArrayList<E>(size);
        for (Collection<E> c : collections) {
            for (E e : c) {
                if (result.contains(e)) continue;
                result.add(e);
            }
        }
        return result;
    }

    private static <E> boolean verifyNoDuplicates(Collection<? extends E> c) {
        for (E e : c) {
            int count = 0;
            for (E f : c) {
                if (e == null) {
                    if (f != null) continue;
                    ++count;
                    continue;
                }
                if (!e.equals(f)) continue;
                ++count;
            }
            if (count == true) continue;
            return false;
        }
        return true;
    }

    @Override
    public boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(Collection<? extends E> c) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        this.collection.clear();
        for (Collection<E> c : this.list) {
            c.clear();
        }
    }

    @Override
    public boolean contains(Object o) {
        return this.collection.contains(o);
    }

    @Override
    public boolean containsAll(Collection<?> c) {
        return this.collection.containsAll(c);
    }

    @Override
    public boolean isEmpty() {
        return this.collection.isEmpty();
    }

    @Override
    public Iterator<E> iterator() {
        final Iterator<? extends E> iter = this.collection.iterator();
        final List<Collection<E>> collections = this.list;
        if (collections.isEmpty()) {
            return iter;
        }
        return new Iterator<E>(){
            private E last;

            @Override
            public boolean hasNext() {
                return iter.hasNext();
            }

            @Override
            public E next() {
                this.last = iter.next();
                return this.last;
            }

            @Override
            public void remove() {
                iter.remove();
                for (Collection c : collections) {
                    c.remove(this.last);
                }
            }
        };
    }

    @Override
    public boolean remove(Object o) {
        boolean result = this.collection.remove(o);
        if (result) {
            for (Collection<E> c : this.list) {
                c.remove(o);
            }
        }
        return result;
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        boolean result = this.collection.removeAll(c);
        if (result) {
            for (Collection<E> cc : this.list) {
                cc.removeAll(c);
            }
        }
        return result;
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        boolean result = this.collection.retainAll(c);
        if (result) {
            for (Collection<E> cc : this.list) {
                cc.retainAll(c);
            }
        }
        return result;
    }

    @Override
    public int size() {
        return this.collection.size();
    }

    @Override
    public Object[] toArray() {
        return this.collection.toArray();
    }

    @Override
    public <T> T[] toArray(T[] var0) {
        return this.collection.toArray(var0);
    }

    public String toString() {
        return this.collection.toString();
    }
}

