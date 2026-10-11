/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractMultiset;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
abstract class AbstractMapBasedMultiset<E>
extends AbstractMultiset<E>
implements Serializable {
    private transient Map<E, AtomicInteger> backingMap;
    private transient long size;
    private transient EntrySet entrySet;
    private static final long serialVersionUID = -2250766705698539974L;

    protected AbstractMapBasedMultiset(Map<E, AtomicInteger> backingMap) {
        this.backingMap = Preconditions.checkNotNull(backingMap);
        this.size = super.size();
    }

    Map<E, AtomicInteger> backingMap() {
        return this.backingMap;
    }

    void setBackingMap(Map<E, AtomicInteger> backingMap) {
        this.backingMap = backingMap;
    }

    @Override
    public Set<Multiset.Entry<E>> entrySet() {
        EntrySet result = this.entrySet;
        if (result == null) {
            this.entrySet = result = new EntrySet();
        }
        return result;
    }

    @Override
    public int size() {
        return (int)Math.min(this.size, Integer.MAX_VALUE);
    }

    @Override
    public Iterator<E> iterator() {
        return new MapBasedMultisetIterator();
    }

    @Override
    public int count(@Nullable Object element) {
        AtomicInteger frequency = this.backingMap.get(element);
        return frequency == null ? 0 : frequency.get();
    }

    @Override
    public int add(@Nullable E element, int occurrences) {
        int oldCount;
        if (occurrences == 0) {
            return this.count(element);
        }
        Preconditions.checkArgument(occurrences > 0, "occurrences cannot be negative: %s", occurrences);
        AtomicInteger frequency = this.backingMap.get(element);
        if (frequency == null) {
            oldCount = 0;
            this.backingMap.put(element, new AtomicInteger(occurrences));
        } else {
            oldCount = frequency.get();
            long newCount = (long)oldCount + (long)occurrences;
            Preconditions.checkArgument(newCount <= Integer.MAX_VALUE, "too many occurrences: %s", newCount);
            frequency.getAndAdd(occurrences);
        }
        this.size += (long)occurrences;
        return oldCount;
    }

    @Override
    public int remove(@Nullable Object element, int occurrences) {
        int numberRemoved;
        if (occurrences == 0) {
            return this.count(element);
        }
        Preconditions.checkArgument(occurrences > 0, "occurrences cannot be negative: %s", occurrences);
        AtomicInteger frequency = this.backingMap.get(element);
        if (frequency == null) {
            return 0;
        }
        int oldCount = frequency.get();
        if (oldCount > occurrences) {
            numberRemoved = occurrences;
        } else {
            numberRemoved = oldCount;
            this.backingMap.remove(element);
        }
        frequency.addAndGet(-numberRemoved);
        this.size -= (long)numberRemoved;
        return oldCount;
    }

    @Override
    public int setCount(E element, int count) {
        int oldCount;
        Multisets.checkNonnegative(count, "count");
        if (count == 0) {
            AtomicInteger existingCounter = this.backingMap.remove(element);
            oldCount = AbstractMapBasedMultiset.getAndSet(existingCounter, count);
        } else {
            AtomicInteger existingCounter = this.backingMap.get(element);
            oldCount = AbstractMapBasedMultiset.getAndSet(existingCounter, count);
            if (existingCounter == null) {
                this.backingMap.put(element, new AtomicInteger(count));
            }
        }
        this.size += (long)(count - oldCount);
        return oldCount;
    }

    private static int getAndSet(AtomicInteger i, int count) {
        if (i == null) {
            return 0;
        }
        return i.getAndSet(count);
    }

    private int removeAllOccurrences(@Nullable Object element, Map<E, AtomicInteger> map) {
        AtomicInteger frequency = map.remove(element);
        if (frequency == null) {
            return 0;
        }
        int numberRemoved = frequency.getAndSet(0);
        this.size -= (long)numberRemoved;
        return numberRemoved;
    }

    @Override
    Set<E> createElementSet() {
        return new MapBasedElementSet(this.backingMap);
    }

    private void readObjectNoData() throws ObjectStreamException {
        throw new InvalidObjectException("Stream data required");
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class EntrySet
    extends AbstractSet<Multiset.Entry<E>> {
        private EntrySet() {
        }

        @Override
        public Iterator<Multiset.Entry<E>> iterator() {
            final Iterator backingEntries = AbstractMapBasedMultiset.this.backingMap.entrySet().iterator();
            return new Iterator<Multiset.Entry<E>>(){
                Map.Entry<E, AtomicInteger> toRemove;

                @Override
                public boolean hasNext() {
                    return backingEntries.hasNext();
                }

                @Override
                public Multiset.Entry<E> next() {
                    Map.Entry mapEntry;
                    this.toRemove = mapEntry = (Map.Entry)backingEntries.next();
                    return new Multisets.AbstractEntry<E>(){

                        @Override
                        public E getElement() {
                            return mapEntry.getKey();
                        }

                        @Override
                        public int getCount() {
                            AtomicInteger frequency;
                            int count = ((AtomicInteger)mapEntry.getValue()).get();
                            if (count == 0 && (frequency = (AtomicInteger)AbstractMapBasedMultiset.this.backingMap.get(this.getElement())) != null) {
                                count = frequency.get();
                            }
                            return count;
                        }
                    };
                }

                @Override
                public void remove() {
                    Preconditions.checkState(this.toRemove != null, "no calls to next() since the last call to remove()");
                    AbstractMapBasedMultiset.this.size -= this.toRemove.getValue().getAndSet(0);
                    backingEntries.remove();
                    this.toRemove = null;
                }
            };
        }

        @Override
        public int size() {
            return AbstractMapBasedMultiset.this.backingMap.size();
        }

        @Override
        public void clear() {
            for (AtomicInteger frequency : AbstractMapBasedMultiset.this.backingMap.values()) {
                frequency.set(0);
            }
            AbstractMapBasedMultiset.this.backingMap.clear();
            AbstractMapBasedMultiset.this.size = 0L;
        }

        @Override
        public boolean contains(Object o) {
            if (o instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry)o;
                int count = AbstractMapBasedMultiset.this.count(entry.getElement());
                return count == entry.getCount() && count > 0;
            }
            return false;
        }

        @Override
        public boolean remove(Object o) {
            if (this.contains(o)) {
                Multiset.Entry entry = (Multiset.Entry)o;
                AtomicInteger frequency = (AtomicInteger)AbstractMapBasedMultiset.this.backingMap.remove(entry.getElement());
                int numberRemoved = frequency.getAndSet(0);
                AbstractMapBasedMultiset.this.size -= numberRemoved;
                return true;
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class MapBasedElementSet
    extends ForwardingSet<E> {
        private final Map<E, AtomicInteger> map;
        private final Set<E> delegate;

        MapBasedElementSet(Map<E, AtomicInteger> map) {
            this.map = map;
            this.delegate = map.keySet();
        }

        @Override
        protected Set<E> delegate() {
            return this.delegate;
        }

        @Override
        public Iterator<E> iterator() {
            final Iterator entries = this.map.entrySet().iterator();
            return new Iterator<E>(){
                Map.Entry<E, AtomicInteger> toRemove;

                @Override
                public boolean hasNext() {
                    return entries.hasNext();
                }

                @Override
                public E next() {
                    this.toRemove = (Map.Entry)entries.next();
                    return this.toRemove.getKey();
                }

                @Override
                public void remove() {
                    Preconditions.checkState(this.toRemove != null, "no calls to next() since the last call to remove()");
                    AbstractMapBasedMultiset.this.size -= this.toRemove.getValue().getAndSet(0);
                    entries.remove();
                    this.toRemove = null;
                }
            };
        }

        @Override
        public boolean remove(Object element) {
            return AbstractMapBasedMultiset.this.removeAllOccurrences(element, this.map) != 0;
        }

        @Override
        public boolean removeAll(Collection<?> elementsToRemove) {
            return Iterators.removeAll(this.iterator(), elementsToRemove);
        }

        @Override
        public boolean retainAll(Collection<?> elementsToRetain) {
            return Iterators.retainAll(this.iterator(), elementsToRetain);
        }

        @Override
        public void clear() {
            if (this.map == AbstractMapBasedMultiset.this.backingMap) {
                AbstractMapBasedMultiset.this.clear();
            } else {
                Iterator i = this.iterator();
                while (i.hasNext()) {
                    i.next();
                    i.remove();
                }
            }
        }

        public Map<E, AtomicInteger> getMap() {
            return this.map;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class MapBasedMultisetIterator
    implements Iterator<E> {
        final Iterator<Map.Entry<E, AtomicInteger>> entryIterator;
        Map.Entry<E, AtomicInteger> currentEntry;
        int occurrencesLeft;
        boolean canRemove;

        MapBasedMultisetIterator() {
            this.entryIterator = AbstractMapBasedMultiset.this.backingMap.entrySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.occurrencesLeft > 0 || this.entryIterator.hasNext();
        }

        @Override
        public E next() {
            if (this.occurrencesLeft == 0) {
                this.currentEntry = this.entryIterator.next();
                this.occurrencesLeft = this.currentEntry.getValue().get();
            }
            --this.occurrencesLeft;
            this.canRemove = true;
            return this.currentEntry.getKey();
        }

        @Override
        public void remove() {
            Preconditions.checkState(this.canRemove, "no calls to next() since the last call to remove()");
            int frequency = this.currentEntry.getValue().get();
            if (frequency <= 0) {
                throw new ConcurrentModificationException();
            }
            if (this.currentEntry.getValue().addAndGet(-1) == 0) {
                this.entryIterator.remove();
            }
            AbstractMapBasedMultiset.this.size--;
            this.canRemove = false;
        }
    }
}

