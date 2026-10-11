/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractMapBasedMultiset;
import com.google.common.collect.Iterables;
import com.google.common.collect.Serialization;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Comparator;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public final class TreeMultiset<E>
extends AbstractMapBasedMultiset<E> {
    private static final long serialVersionUID = 0L;

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<E>();
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        return new TreeMultiset<E>(comparator);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> elements) {
        TreeMultiset<E> multiset = TreeMultiset.create();
        Iterables.addAll(multiset, elements);
        return multiset;
    }

    private TreeMultiset() {
        super(new TreeMap());
    }

    private TreeMultiset(Comparator<? super E> comparator) {
        super(new TreeMap(comparator));
    }

    @Override
    public SortedSet<E> elementSet() {
        return (SortedSet)super.elementSet();
    }

    @Override
    public int count(@Nullable Object element) {
        try {
            return super.count(element);
        }
        catch (NullPointerException e) {
            return 0;
        }
        catch (ClassCastException e) {
            return 0;
        }
    }

    @Override
    Set<E> createElementSet() {
        return new SortedMapBasedElementSet((SortedMap)this.backingMap());
    }

    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        stream.writeObject(this.elementSet().comparator());
        Serialization.writeMultiset(this, stream);
    }

    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        Comparator comparator = (Comparator)stream.readObject();
        this.setBackingMap(new TreeMap(comparator));
        Serialization.populateMultiset(this, stream);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class SortedMapBasedElementSet
    extends AbstractMapBasedMultiset.MapBasedElementSet
    implements SortedSet<E> {
        SortedMapBasedElementSet(SortedMap<E, AtomicInteger> map) {
            super(map);
        }

        SortedMap<E, AtomicInteger> sortedMap() {
            return (SortedMap)this.getMap();
        }

        @Override
        public Comparator<? super E> comparator() {
            return this.sortedMap().comparator();
        }

        @Override
        public E first() {
            return this.sortedMap().firstKey();
        }

        @Override
        public E last() {
            return this.sortedMap().lastKey();
        }

        @Override
        public SortedSet<E> headSet(E toElement) {
            return new SortedMapBasedElementSet(this.sortedMap().headMap(toElement));
        }

        @Override
        public SortedSet<E> subSet(E fromElement, E toElement) {
            return new SortedMapBasedElementSet(this.sortedMap().subMap(fromElement, toElement));
        }

        @Override
        public SortedSet<E> tailSet(E fromElement) {
            return new SortedMapBasedElementSet(this.sortedMap().tailMap(fromElement));
        }

        @Override
        public boolean remove(Object element) {
            try {
                return super.remove(element);
            }
            catch (NullPointerException e) {
                return false;
            }
            catch (ClassCastException e) {
                return false;
            }
        }
    }
}

