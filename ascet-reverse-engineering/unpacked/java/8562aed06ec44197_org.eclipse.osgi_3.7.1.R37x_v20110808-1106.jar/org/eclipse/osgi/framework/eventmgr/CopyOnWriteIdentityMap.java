/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.eventmgr;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CopyOnWriteIdentityMap<K, V>
implements Map<K, V> {
    private static final Entry[] emptyArray = new Entry[0];
    private volatile Entry<K, V>[] entries;

    public CopyOnWriteIdentityMap() {
        this.entries = CopyOnWriteIdentityMap.empty();
    }

    public CopyOnWriteIdentityMap(CopyOnWriteIdentityMap<? extends K, ? extends V> source) {
        Entry<? extends K, ? extends V>[] toCopy = super.entries();
        this.entries = toCopy;
    }

    @Override
    public synchronized V put(K key, V value) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        int size = this.entries.length;
        int i = 0;
        while (i < size) {
            if (this.entries[i].key == key) {
                Object v = this.entries[i].value;
                if (v == value) {
                    return v;
                }
                Entry[] newEntries = new Entry[size];
                System.arraycopy(this.entries, 0, newEntries, 0, size);
                newEntries[i] = new Entry<K, V>(key, value);
                this.entries = newEntries;
                return v;
            }
            ++i;
        }
        Entry[] newEntries = new Entry[size + 1];
        if (size > 0) {
            System.arraycopy(this.entries, 0, newEntries, 0, size);
        }
        newEntries[size] = new Entry<K, V>(key, value);
        this.entries = newEntries;
        return null;
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> source) {
        int sourceSize = source.size();
        if (sourceSize == 0) {
            return;
        }
        if (source instanceof CopyOnWriteIdentityMap) {
            this.putAll(((CopyOnWriteIdentityMap)source).entries());
            return;
        }
        Entry[] toCopy = new Entry[sourceSize];
        Iterator<Map.Entry<K, V>> iter = source.entrySet().iterator();
        int i = 0;
        while (i < sourceSize) {
            Map.Entry<K, V> mapEntry = iter.next();
            toCopy[i] = new Entry<K, V>(mapEntry.getKey(), mapEntry.getValue());
            ++i;
        }
        this.putAll(toCopy);
    }

    public <L extends K> void putAll(L[] keys) {
        int sourceSize = keys.length;
        if (sourceSize == 0) {
            return;
        }
        Entry[] toCopy = new Entry[sourceSize];
        int i = 0;
        while (i < sourceSize) {
            toCopy[i] = new Entry<L, Object>(keys[i], null);
            ++i;
        }
        this.putAll(toCopy);
    }

    private synchronized void putAll(Entry<? extends K, ? extends V>[] toCopy) {
        int sourceSize = toCopy.length;
        int size = this.entries.length;
        Entry[] newEntries = new Entry[size + sourceSize];
        System.arraycopy(this.entries, 0, newEntries, 0, size);
        int n = 0;
        while (n < sourceSize) {
            block4: {
                Entry<? extends K, ? extends V> copy = toCopy[n];
                int i = 0;
                while (i < size) {
                    if (newEntries[i].key == copy.key) {
                        newEntries[i] = copy;
                        break block4;
                    }
                    ++i;
                }
                newEntries[size] = copy;
                ++size;
            }
            ++n;
        }
        if (size == newEntries.length) {
            this.entries = newEntries;
            return;
        }
        Entry[] e = new Entry[size];
        System.arraycopy(newEntries, 0, e, 0, size);
        this.entries = e;
    }

    @Override
    public synchronized V remove(Object key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        int size = this.entries.length;
        int i = 0;
        while (i < size) {
            if (this.entries[i].key == key) {
                Object v = this.entries[i].value;
                this.entries = CopyOnWriteIdentityMap.removeEntry(this.entries, i);
                return v;
            }
            ++i;
        }
        return null;
    }

    static <K, V> Entry<K, V>[] removeEntry(Entry<K, V>[] entries, int i) {
        int next;
        int size = entries.length;
        if (size == 1) {
            return CopyOnWriteIdentityMap.empty();
        }
        Entry[] newEntries = new Entry[size - 1];
        if (i > 0) {
            System.arraycopy(entries, 0, newEntries, 0, i);
        }
        if ((next = size - 1 - i) > 0) {
            System.arraycopy(entries, i + 1, newEntries, i, next);
        }
        return newEntries;
    }

    @Override
    public synchronized void clear() {
        this.entries = CopyOnWriteIdentityMap.empty();
    }

    private Entry<K, V>[] entries() {
        return this.entries;
    }

    static <K, V> Entry<K, V>[] empty() {
        return emptyArray;
    }

    @Override
    public boolean isEmpty() {
        return this.size() == 0;
    }

    @Override
    public int size() {
        return this.entries().length;
    }

    @Override
    public V get(Object key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        Entry<K, V>[] e = this.entries();
        int i = 0;
        while (i < e.length) {
            if (e[i].key == key) {
                return e[i].value;
            }
            ++i;
        }
        return null;
    }

    @Override
    public boolean containsKey(Object key) {
        if (key == null) {
            throw new IllegalArgumentException();
        }
        Entry<K, V>[] e = this.entries();
        int i = 0;
        while (i < e.length) {
            if (e[i].key == key) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public boolean containsValue(Object value) {
        Entry<K, V>[] e = this.entries();
        int i = 0;
        while (i < e.length) {
            if (e[i].value == value) {
                return true;
            }
            ++i;
        }
        return false;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return new Snapshot<K, V>(this.entries()).entrySet();
    }

    @Override
    public Set<K> keySet() {
        return new Snapshot<K, V>(this.entries()).keySet();
    }

    @Override
    public Collection<V> values() {
        return new Snapshot<K, V>(this.entries()).values();
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class Entry<K, V>
    implements Map.Entry<K, V> {
        final K key;
        final V value;

        Entry(K key, V value) {
            this.key = key;
            this.value = value;
        }

        @Override
        public K getKey() {
            return this.key;
        }

        @Override
        public V getValue() {
            return this.value;
        }

        @Override
        public V setValue(V value) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            return new StringBuffer().append(this.key).append("=").append(this.value).toString();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this.key) ^ System.identityHashCode(this.value);
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry e = (Map.Entry)obj;
            return this.key == e.getKey() && this.value == e.getValue();
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class Snapshot<K, V> {
        volatile Entry<K, V>[] entries;

        Snapshot(Entry<K, V>[] e) {
            this.entries = e;
        }

        Entry<K, V>[] entries() {
            return this.entries;
        }

        synchronized void removeEntry(int i) {
            this.entries = CopyOnWriteIdentityMap.removeEntry(this.entries, i);
        }

        synchronized void clearEntries() {
            this.entries = CopyOnWriteIdentityMap.empty();
        }

        Set<Map.Entry<K, V>> entrySet() {
            return new EntrySet();
        }

        Set<K> keySet() {
            return new KeySet();
        }

        Collection<V> values() {
            return new ValueCollection();
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private final class EntryIterator
        extends SnapshotIterator<Map.Entry<K, V>> {
            EntryIterator() {
            }

            @Override
            public Map.Entry<K, V> next() {
                return this.nextEntry();
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private final class EntrySet
        extends AbstractSet<Map.Entry<K, V>> {
            EntrySet() {
            }

            @Override
            public Iterator<Map.Entry<K, V>> iterator() {
                return new EntryIterator();
            }

            @Override
            public int size() {
                return Snapshot.this.entries().length;
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public boolean remove(Object o) {
                if (o == null) {
                    throw new IllegalArgumentException();
                }
                Snapshot snapshot = Snapshot.this;
                synchronized (snapshot) {
                    int size = Snapshot.this.entries.length;
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            return false;
                        }
                        if (Snapshot.this.entries[i].equals(o)) {
                            Snapshot.this.removeEntry(i);
                            return true;
                        }
                        ++i;
                    }
                }
            }

            @Override
            public void clear() {
                Snapshot.this.clearEntries();
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private final class KeyIterator
        extends SnapshotIterator<K> {
            KeyIterator() {
            }

            @Override
            public K next() {
                return this.nextEntry().key;
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private final class KeySet
        extends AbstractSet<K> {
            KeySet() {
            }

            @Override
            public Iterator<K> iterator() {
                return new KeyIterator();
            }

            @Override
            public int size() {
                return Snapshot.this.entries().length;
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public boolean remove(Object o) {
                if (o == null) {
                    throw new IllegalArgumentException();
                }
                Snapshot snapshot = Snapshot.this;
                synchronized (snapshot) {
                    int size = Snapshot.this.entries.length;
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            return false;
                        }
                        if (Snapshot.this.entries[i].key == o) {
                            Snapshot.this.removeEntry(i);
                            return true;
                        }
                        ++i;
                    }
                }
            }

            @Override
            public void clear() {
                Snapshot.this.clearEntries();
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private abstract class SnapshotIterator<E>
        implements Iterator<E> {
            private int length;
            private int cursor;

            SnapshotIterator() {
                this.length = Snapshot.this.entries().length;
                this.cursor = 0;
            }

            @Override
            public final boolean hasNext() {
                return this.cursor < this.length;
            }

            protected final Entry<K, V> nextEntry() {
                Entry<K, V>[] e = Snapshot.this.entries();
                if (this.length != e.length) {
                    throw new ConcurrentModificationException();
                }
                if (this.cursor == this.length) {
                    throw new NoSuchElementException();
                }
                return e[this.cursor++];
            }

            @Override
            public final void remove() {
                if (this.length != Snapshot.this.entries().length) {
                    throw new ConcurrentModificationException();
                }
                if (this.cursor == 0) {
                    throw new IllegalStateException();
                }
                --this.cursor;
                Snapshot.this.removeEntry(this.cursor);
                this.length = Snapshot.this.entries().length;
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private final class ValueCollection
        extends AbstractCollection<V> {
            ValueCollection() {
            }

            @Override
            public Iterator<V> iterator() {
                return new ValueIterator();
            }

            @Override
            public int size() {
                return Snapshot.this.entries().length;
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public boolean remove(Object o) {
                if (o == null) {
                    throw new IllegalArgumentException();
                }
                Snapshot snapshot = Snapshot.this;
                synchronized (snapshot) {
                    int size = Snapshot.this.entries.length;
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            return false;
                        }
                        if (Snapshot.this.entries[i].value == o) {
                            Snapshot.this.removeEntry(i);
                            return true;
                        }
                        ++i;
                    }
                }
            }

            @Override
            public void clear() {
                Snapshot.this.clearEntries();
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private final class ValueIterator
        extends SnapshotIterator<V> {
            ValueIterator() {
            }

            @Override
            public V next() {
                return this.nextEntry().value;
            }
        }
    }
}

