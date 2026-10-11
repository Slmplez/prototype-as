/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractMapEntry;
import com.google.common.collect.Iterators;
import com.google.common.collect.LinkedHashMultiset;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSequentialList;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(serializable=true, emulated=true)
public class LinkedListMultimap<K, V>
implements ListMultimap<K, V>,
Serializable {
    private transient Node<K, V> head;
    private transient Node<K, V> tail;
    private transient Multiset<K> keyCount;
    private transient Map<K, Node<K, V>> keyToKeyHead;
    private transient Map<K, Node<K, V>> keyToKeyTail;
    private transient Set<K> keySet;
    private transient Multiset<K> keys;
    private transient List<V> valuesList;
    private transient List<Map.Entry<K, V>> entries;
    private transient Map<K, Collection<V>> map;
    @GwtIncompatible(value="java serialization not supported")
    private static final long serialVersionUID = 0L;

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<K, V>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int expectedKeys) {
        return new LinkedListMultimap<K, V>(expectedKeys);
    }

    public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new LinkedListMultimap<K, V>(multimap);
    }

    LinkedListMultimap() {
        this.keyCount = LinkedHashMultiset.create();
        this.keyToKeyHead = Maps.newHashMap();
        this.keyToKeyTail = Maps.newHashMap();
    }

    private LinkedListMultimap(int expectedKeys) {
        this.keyCount = LinkedHashMultiset.create(expectedKeys);
        this.keyToKeyHead = Maps.newHashMapWithExpectedSize(expectedKeys);
        this.keyToKeyTail = Maps.newHashMapWithExpectedSize(expectedKeys);
    }

    private LinkedListMultimap(Multimap<? extends K, ? extends V> multimap) {
        this(multimap.keySet().size());
        this.putAll(multimap);
    }

    private Node<K, V> addNode(@Nullable K key, @Nullable V value, @Nullable Node<K, V> nextSibling) {
        Node<K, V> node = new Node<K, V>(key, value);
        if (this.head == null) {
            this.tail = node;
            this.head = this.tail;
            this.keyToKeyHead.put(key, node);
            this.keyToKeyTail.put(key, node);
        } else if (nextSibling == null) {
            this.tail.next = node;
            node.previous = this.tail;
            Node<K, V> keyTail = this.keyToKeyTail.get(key);
            if (keyTail == null) {
                this.keyToKeyHead.put(key, node);
            } else {
                keyTail.nextSibling = node;
                node.previousSibling = keyTail;
            }
            this.keyToKeyTail.put(key, node);
            this.tail = node;
        } else {
            node.previous = nextSibling.previous;
            node.previousSibling = nextSibling.previousSibling;
            node.next = nextSibling;
            node.nextSibling = nextSibling;
            if (nextSibling.previousSibling == null) {
                this.keyToKeyHead.put(key, node);
            } else {
                nextSibling.previousSibling.nextSibling = node;
            }
            if (nextSibling.previous == null) {
                this.head = node;
            } else {
                nextSibling.previous.next = node;
            }
            nextSibling.previous = node;
            nextSibling.previousSibling = node;
        }
        this.keyCount.add(key);
        return node;
    }

    private void removeNode(Node<K, V> node) {
        if (node.previous != null) {
            node.previous.next = node.next;
        } else {
            this.head = node.next;
        }
        if (node.next != null) {
            node.next.previous = node.previous;
        } else {
            this.tail = node.previous;
        }
        if (node.previousSibling != null) {
            node.previousSibling.nextSibling = node.nextSibling;
        } else if (node.nextSibling != null) {
            this.keyToKeyHead.put(node.key, node.nextSibling);
        } else {
            this.keyToKeyHead.remove(node.key);
        }
        if (node.nextSibling != null) {
            node.nextSibling.previousSibling = node.previousSibling;
        } else if (node.previousSibling != null) {
            this.keyToKeyTail.put(node.key, node.previousSibling);
        } else {
            this.keyToKeyTail.remove(node.key);
        }
        this.keyCount.remove(node.key);
    }

    private void removeAllNodes(@Nullable Object key) {
        ValueForKeyIterator i = new ValueForKeyIterator(key);
        while (i.hasNext()) {
            i.next();
            i.remove();
        }
    }

    private static void checkElement(@Nullable Object node) {
        if (node == null) {
            throw new NoSuchElementException();
        }
    }

    @Override
    public int size() {
        return this.keyCount.size();
    }

    @Override
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override
    public boolean containsKey(@Nullable Object key) {
        return this.keyToKeyHead.containsKey(key);
    }

    @Override
    public boolean containsValue(@Nullable Object value) {
        NodeIterator i = new NodeIterator();
        while (i.hasNext()) {
            if (!Objects.equal(((Node)i.next()).value, value)) continue;
            return true;
        }
        return false;
    }

    @Override
    public boolean containsEntry(@Nullable Object key, @Nullable Object value) {
        ValueForKeyIterator i = new ValueForKeyIterator(key);
        while (i.hasNext()) {
            if (!Objects.equal(i.next(), value)) continue;
            return true;
        }
        return false;
    }

    @Override
    public boolean put(@Nullable K key, @Nullable V value) {
        this.addNode(key, value, null);
        return true;
    }

    @Override
    public boolean remove(@Nullable Object key, @Nullable Object value) {
        ValueForKeyIterator values = new ValueForKeyIterator(key);
        while (values.hasNext()) {
            if (!Objects.equal(values.next(), value)) continue;
            values.remove();
            return true;
        }
        return false;
    }

    @Override
    public boolean putAll(@Nullable K key, Iterable<? extends V> values) {
        boolean changed = false;
        for (V value : values) {
            changed |= this.put(key, value);
        }
        return changed;
    }

    @Override
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        boolean changed = false;
        for (Map.Entry<K, V> entry : multimap.entries()) {
            changed |= this.put(entry.getKey(), entry.getValue());
        }
        return changed;
    }

    @Override
    public List<V> replaceValues(@Nullable K key, Iterable<? extends V> values) {
        List<V> oldValues = this.getCopy(key);
        ValueForKeyIterator keyValues = new ValueForKeyIterator(key);
        Iterator<V> newValues = values.iterator();
        while (keyValues.hasNext() && newValues.hasNext()) {
            keyValues.next();
            keyValues.set(newValues.next());
        }
        while (keyValues.hasNext()) {
            keyValues.next();
            keyValues.remove();
        }
        while (newValues.hasNext()) {
            keyValues.add(newValues.next());
        }
        return oldValues;
    }

    private List<V> getCopy(@Nullable Object key) {
        return Collections.unmodifiableList(Lists.newArrayList(new ValueForKeyIterator(key)));
    }

    @Override
    public List<V> removeAll(@Nullable Object key) {
        List<V> oldValues = this.getCopy(key);
        this.removeAllNodes(key);
        return oldValues;
    }

    @Override
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyCount.clear();
        this.keyToKeyHead.clear();
        this.keyToKeyTail.clear();
    }

    @Override
    public List<V> get(final @Nullable K key) {
        return new AbstractSequentialList<V>(){

            @Override
            public int size() {
                return LinkedListMultimap.this.keyCount.count(key);
            }

            @Override
            public ListIterator<V> listIterator(int index) {
                return new ValueForKeyIterator(key, index);
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                return Iterators.removeAll(this.iterator(), c);
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                return Iterators.retainAll(this.iterator(), c);
            }
        };
    }

    @Override
    public Set<K> keySet() {
        AbstractSet result = this.keySet;
        if (result == null) {
            this.keySet = result = new AbstractSet<K>(){

                @Override
                public int size() {
                    return LinkedListMultimap.this.keyCount.elementSet().size();
                }

                @Override
                public Iterator<K> iterator() {
                    return new DistinctKeyIterator();
                }

                @Override
                public boolean contains(Object key) {
                    return LinkedListMultimap.this.keyCount.contains(key);
                }

                @Override
                public boolean removeAll(Collection<?> c) {
                    Preconditions.checkNotNull(c);
                    return super.removeAll(c);
                }
            };
        }
        return result;
    }

    @Override
    public Multiset<K> keys() {
        MultisetView result = this.keys;
        if (result == null) {
            this.keys = result = new MultisetView();
        }
        return result;
    }

    @Override
    public List<V> values() {
        AbstractSequentialList result = this.valuesList;
        if (result == null) {
            this.valuesList = result = new AbstractSequentialList<V>(){

                @Override
                public int size() {
                    return LinkedListMultimap.this.keyCount.size();
                }

                @Override
                public ListIterator<V> listIterator(int index) {
                    final NodeIterator nodes = new NodeIterator(index);
                    return new ListIterator<V>(){

                        @Override
                        public boolean hasNext() {
                            return nodes.hasNext();
                        }

                        @Override
                        public V next() {
                            return ((Node)nodes.next()).value;
                        }

                        @Override
                        public boolean hasPrevious() {
                            return nodes.hasPrevious();
                        }

                        @Override
                        public V previous() {
                            return ((Node)nodes.previous()).value;
                        }

                        @Override
                        public int nextIndex() {
                            return nodes.nextIndex();
                        }

                        @Override
                        public int previousIndex() {
                            return nodes.previousIndex();
                        }

                        @Override
                        public void remove() {
                            nodes.remove();
                        }

                        @Override
                        public void set(V e) {
                            nodes.setValue(e);
                        }

                        @Override
                        public void add(V e) {
                            throw new UnsupportedOperationException();
                        }
                    };
                }
            };
        }
        return result;
    }

    private static <K, V> Map.Entry<K, V> createEntry(final Node<K, V> node) {
        return new AbstractMapEntry<K, V>(){

            @Override
            public K getKey() {
                return node.key;
            }

            @Override
            public V getValue() {
                return node.value;
            }

            @Override
            public V setValue(V value) {
                Object oldValue = node.value;
                node.value = value;
                return oldValue;
            }
        };
    }

    @Override
    public List<Map.Entry<K, V>> entries() {
        AbstractSequentialList result = this.entries;
        if (result == null) {
            this.entries = result = new AbstractSequentialList<Map.Entry<K, V>>(){

                @Override
                public int size() {
                    return LinkedListMultimap.this.keyCount.size();
                }

                @Override
                public ListIterator<Map.Entry<K, V>> listIterator(int index) {
                    final NodeIterator nodes = new NodeIterator(index);
                    return new ListIterator<Map.Entry<K, V>>(){

                        @Override
                        public boolean hasNext() {
                            return nodes.hasNext();
                        }

                        @Override
                        public Map.Entry<K, V> next() {
                            return LinkedListMultimap.createEntry((Node)nodes.next());
                        }

                        @Override
                        public void remove() {
                            nodes.remove();
                        }

                        @Override
                        public boolean hasPrevious() {
                            return nodes.hasPrevious();
                        }

                        @Override
                        public Map.Entry<K, V> previous() {
                            return LinkedListMultimap.createEntry((Node)nodes.previous());
                        }

                        @Override
                        public int nextIndex() {
                            return nodes.nextIndex();
                        }

                        @Override
                        public int previousIndex() {
                            return nodes.previousIndex();
                        }

                        @Override
                        public void set(Map.Entry<K, V> e) {
                            throw new UnsupportedOperationException();
                        }

                        @Override
                        public void add(Map.Entry<K, V> e) {
                            throw new UnsupportedOperationException();
                        }
                    };
                }
            };
        }
        return result;
    }

    @Override
    public Map<K, Collection<V>> asMap() {
        AbstractMap result = this.map;
        if (result == null) {
            this.map = result = new AbstractMap<K, Collection<V>>(){
                Set<Map.Entry<K, Collection<V>>> entrySet;

                @Override
                public Set<Map.Entry<K, Collection<V>>> entrySet() {
                    AsMapEntries result = this.entrySet;
                    if (result == null) {
                        this.entrySet = result = new AsMapEntries();
                    }
                    return result;
                }

                @Override
                public boolean containsKey(@Nullable Object key) {
                    return LinkedListMultimap.this.containsKey(key);
                }

                @Override
                public Collection<V> get(@Nullable Object key) {
                    Collection collection = LinkedListMultimap.this.get(key);
                    return collection.isEmpty() ? null : collection;
                }

                @Override
                public Collection<V> remove(@Nullable Object key) {
                    Collection collection = LinkedListMultimap.this.removeAll(key);
                    return collection.isEmpty() ? null : collection;
                }
            };
        }
        return result;
    }

    @Override
    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof Multimap) {
            Multimap that = (Multimap)other;
            return ((Object)this.asMap()).equals(that.asMap());
        }
        return false;
    }

    @Override
    public int hashCode() {
        return ((Object)this.asMap()).hashCode();
    }

    public String toString() {
        return this.asMap().toString();
    }

    @GwtIncompatible(value="java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        stream.writeInt(this.size());
        for (Map.Entry entry : this.entries()) {
            stream.writeObject(entry.getKey());
            stream.writeObject(entry.getValue());
        }
    }

    @GwtIncompatible(value="java.io.ObjectInputStream")
    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        this.keyCount = LinkedHashMultiset.create();
        this.keyToKeyHead = Maps.newHashMap();
        this.keyToKeyTail = Maps.newHashMap();
        int size = stream.readInt();
        for (int i = 0; i < size; ++i) {
            Object key = stream.readObject();
            Object value = stream.readObject();
            this.put(key, value);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class AsMapEntries
    extends AbstractSet<Map.Entry<K, Collection<V>>> {
        private AsMapEntries() {
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.keyCount.elementSet().size();
        }

        @Override
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            final DistinctKeyIterator keyIterator = new DistinctKeyIterator();
            return new Iterator<Map.Entry<K, Collection<V>>>(){

                @Override
                public boolean hasNext() {
                    return keyIterator.hasNext();
                }

                @Override
                public Map.Entry<K, Collection<V>> next() {
                    final Object key = keyIterator.next();
                    return new AbstractMapEntry<K, Collection<V>>(){

                        @Override
                        public K getKey() {
                            return key;
                        }

                        @Override
                        public Collection<V> getValue() {
                            return LinkedListMultimap.this.get(key);
                        }
                    };
                }

                @Override
                public void remove() {
                    keyIterator.remove();
                }
            };
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class DistinctKeyIterator
    implements Iterator<K> {
        final Set<K> seenKeys;
        Node<K, V> next;
        Node<K, V> current;

        private DistinctKeyIterator() {
            this.seenKeys = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.next = LinkedListMultimap.this.head;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        public K next() {
            LinkedListMultimap.checkElement(this.next);
            this.current = this.next;
            this.seenKeys.add(this.current.key);
            do {
                this.next = this.next.next;
            } while (this.next != null && !this.seenKeys.add(this.next.key));
            return this.current.key;
        }

        @Override
        public void remove() {
            Preconditions.checkState(this.current != null);
            LinkedListMultimap.this.removeAllNodes(this.current.key);
            this.current = null;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class MultisetView
    extends AbstractCollection<K>
    implements Multiset<K> {
        private MultisetView() {
        }

        @Override
        public int size() {
            return LinkedListMultimap.this.keyCount.size();
        }

        @Override
        public Iterator<K> iterator() {
            final NodeIterator nodes = new NodeIterator();
            return new Iterator<K>(){

                @Override
                public boolean hasNext() {
                    return nodes.hasNext();
                }

                @Override
                public K next() {
                    return ((Node)nodes.next()).key;
                }

                @Override
                public void remove() {
                    nodes.remove();
                }
            };
        }

        @Override
        public int count(@Nullable Object key) {
            return LinkedListMultimap.this.keyCount.count(key);
        }

        @Override
        public int add(@Nullable K key, int occurrences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int remove(@Nullable Object key, int occurrences) {
            Preconditions.checkArgument(occurrences >= 0);
            int oldCount = this.count(key);
            ValueForKeyIterator values = new ValueForKeyIterator(key);
            while (occurrences-- > 0 && values.hasNext()) {
                values.next();
                values.remove();
            }
            return oldCount;
        }

        @Override
        public int setCount(K element, int count) {
            return Multisets.setCountImpl(this, element, count);
        }

        @Override
        public boolean setCount(K element, int oldCount, int newCount) {
            return Multisets.setCountImpl(this, element, oldCount, newCount);
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            return Iterators.removeAll(this.iterator(), c);
        }

        @Override
        public boolean retainAll(Collection<?> c) {
            return Iterators.retainAll(this.iterator(), c);
        }

        @Override
        public Set<K> elementSet() {
            return LinkedListMultimap.this.keySet();
        }

        @Override
        public Set<Multiset.Entry<K>> entrySet() {
            return new AbstractSet<Multiset.Entry<K>>(){

                @Override
                public int size() {
                    return LinkedListMultimap.this.keyCount.elementSet().size();
                }

                @Override
                public Iterator<Multiset.Entry<K>> iterator() {
                    final DistinctKeyIterator keyIterator = new DistinctKeyIterator();
                    return new Iterator<Multiset.Entry<K>>(){

                        @Override
                        public boolean hasNext() {
                            return keyIterator.hasNext();
                        }

                        @Override
                        public Multiset.Entry<K> next() {
                            final Object key = keyIterator.next();
                            return new Multisets.AbstractEntry<K>(){

                                @Override
                                public K getElement() {
                                    return key;
                                }

                                @Override
                                public int getCount() {
                                    return LinkedListMultimap.this.keyCount.count(key);
                                }
                            };
                        }

                        @Override
                        public void remove() {
                            keyIterator.remove();
                        }
                    };
                }
            };
        }

        @Override
        public boolean equals(@Nullable Object object) {
            return ((Object)LinkedListMultimap.this.keyCount).equals(object);
        }

        @Override
        public int hashCode() {
            return ((Object)LinkedListMultimap.this.keyCount).hashCode();
        }

        @Override
        public String toString() {
            return ((Object)LinkedListMultimap.this.keyCount).toString();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class Node<K, V> {
        final K key;
        V value;
        Node<K, V> next;
        Node<K, V> previous;
        Node<K, V> nextSibling;
        Node<K, V> previousSibling;

        Node(@Nullable K key, @Nullable V value) {
            this.key = key;
            this.value = value;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class NodeIterator
    implements ListIterator<Node<K, V>> {
        int nextIndex;
        Node<K, V> next;
        Node<K, V> current;
        Node<K, V> previous;

        NodeIterator() {
            this.next = LinkedListMultimap.this.head;
        }

        NodeIterator(int index) {
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(index, size);
            if (index >= size / 2) {
                this.previous = LinkedListMultimap.this.tail;
                this.nextIndex = size;
                while (index++ < size) {
                    this.previous();
                }
            } else {
                this.next = LinkedListMultimap.this.head;
                while (index-- > 0) {
                    this.next();
                }
            }
            this.current = null;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        public Node<K, V> next() {
            LinkedListMultimap.checkElement(this.next);
            this.current = this.next;
            this.previous = this.current;
            this.next = this.next.next;
            ++this.nextIndex;
            return this.current;
        }

        @Override
        public void remove() {
            Preconditions.checkState(this.current != null);
            if (this.current != this.next) {
                this.previous = this.current.previous;
                --this.nextIndex;
            } else {
                this.next = this.current.next;
            }
            LinkedListMultimap.this.removeNode(this.current);
            this.current = null;
        }

        @Override
        public boolean hasPrevious() {
            return this.previous != null;
        }

        @Override
        public Node<K, V> previous() {
            LinkedListMultimap.checkElement(this.previous);
            this.current = this.previous;
            this.next = this.current;
            this.previous = this.previous.previous;
            --this.nextIndex;
            return this.current;
        }

        @Override
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override
        public int previousIndex() {
            return this.nextIndex - 1;
        }

        @Override
        public void set(Node<K, V> e) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void add(Node<K, V> e) {
            throw new UnsupportedOperationException();
        }

        void setValue(V value) {
            Preconditions.checkState(this.current != null);
            this.current.value = value;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ValueForKeyIterator
    implements ListIterator<V> {
        final Object key;
        int nextIndex;
        Node<K, V> next;
        Node<K, V> current;
        Node<K, V> previous;

        ValueForKeyIterator(Object key) {
            this.key = key;
            this.next = (Node)LinkedListMultimap.this.keyToKeyHead.get(key);
        }

        public ValueForKeyIterator(Object key, int index) {
            int size = LinkedListMultimap.this.keyCount.count(key);
            Preconditions.checkPositionIndex(index, size);
            if (index >= size / 2) {
                this.previous = (Node)LinkedListMultimap.this.keyToKeyTail.get(key);
                this.nextIndex = size;
                while (index++ < size) {
                    this.previous();
                }
            } else {
                this.next = (Node)LinkedListMultimap.this.keyToKeyHead.get(key);
                while (index-- > 0) {
                    this.next();
                }
            }
            this.key = key;
            this.current = null;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        public V next() {
            LinkedListMultimap.checkElement(this.next);
            this.current = this.next;
            this.previous = this.current;
            this.next = this.next.nextSibling;
            ++this.nextIndex;
            return this.current.value;
        }

        @Override
        public boolean hasPrevious() {
            return this.previous != null;
        }

        @Override
        public V previous() {
            LinkedListMultimap.checkElement(this.previous);
            this.current = this.previous;
            this.next = this.current;
            this.previous = this.previous.previousSibling;
            --this.nextIndex;
            return this.current.value;
        }

        @Override
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override
        public int previousIndex() {
            return this.nextIndex - 1;
        }

        @Override
        public void remove() {
            Preconditions.checkState(this.current != null);
            if (this.current != this.next) {
                this.previous = this.current.previousSibling;
                --this.nextIndex;
            } else {
                this.next = this.current.nextSibling;
            }
            LinkedListMultimap.this.removeNode(this.current);
            this.current = null;
        }

        @Override
        public void set(V value) {
            Preconditions.checkState(this.current != null);
            this.current.value = value;
        }

        @Override
        public void add(V value) {
            this.previous = LinkedListMultimap.this.addNode(this.key, value, this.next);
            ++this.nextIndex;
            this.current = null;
        }
    }
}

