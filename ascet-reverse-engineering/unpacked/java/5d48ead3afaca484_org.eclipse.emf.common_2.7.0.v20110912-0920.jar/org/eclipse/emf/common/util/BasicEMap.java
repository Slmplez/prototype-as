/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicEMap<K, V>
implements EMap<K, V>,
Cloneable,
Serializable {
    private static final long serialVersionUID = 1L;
    protected transient EList<Entry<K, V>> delegateEList;
    protected transient int size;
    protected transient BasicEList<Entry<K, V>>[] entryData;
    protected transient int modCount;
    protected transient View<K, V> view;

    public BasicEMap() {
        this.initializeDelegateEList();
    }

    protected void initializeDelegateEList() {
        this.delegateEList = new BasicEList<Entry<K, V>>(){
            private static final long serialVersionUID = 1L;

            @Override
            protected void didAdd(int index, Entry<K, V> newObject) {
                BasicEMap.this.doPut(newObject);
            }

            @Override
            protected void didSet(int index, Entry<K, V> newObject, Entry<K, V> oldObject) {
                this.didRemove(index, oldObject);
                this.didAdd(index, newObject);
            }

            @Override
            protected void didRemove(int index, Entry<K, V> oldObject) {
                BasicEMap.this.doRemove(oldObject);
            }

            @Override
            protected void didClear(int size, Object[] oldObjects) {
                BasicEMap.this.doClear();
            }

            @Override
            protected void didMove(int index, Entry<K, V> movedObject, int oldIndex) {
                BasicEMap.this.doMove(movedObject);
            }
        };
    }

    public BasicEMap(int initialCapacity) {
        this();
        if (initialCapacity < 0) {
            throw new IllegalArgumentException("Illegal Capacity:" + initialCapacity);
        }
        this.entryData = this.newEntryData(initialCapacity);
    }

    public BasicEMap(Map<? extends K, ? extends V> map) {
        this();
        int mapSize = map.size();
        if (mapSize > 0) {
            this.entryData = this.newEntryData(2 * mapSize);
            this.putAll(map);
        }
    }

    protected BasicEList<Entry<K, V>>[] newEntryData(int capacity) {
        return new BasicEList[capacity];
    }

    protected void ensureEntryDataExists() {
        if (this.entryData == null) {
            this.entryData = this.newEntryData(2 * this.size + 1);
            int oldModCount = this.modCount;
            this.size = 0;
            for (Entry entry : this.delegateEList) {
                this.doPut(entry);
            }
            this.modCount = oldModCount;
        }
    }

    protected BasicEList<Entry<K, V>> newList() {
        return new BasicEList<Entry<K, V>>(){
            private static final long serialVersionUID = 1L;

            @Override
            public Object[] newData(int listCapacity) {
                return new EntryImpl[listCapacity];
            }
        };
    }

    protected Entry<K, V> newEntry(int hash, K key, V value) {
        this.validateKey(key);
        this.validateValue(value);
        return new EntryImpl(hash, key, value);
    }

    protected V putEntry(Entry<K, V> entry, V value) {
        return entry.setValue(value);
    }

    protected boolean useEqualsForKey() {
        return true;
    }

    protected boolean useEqualsForValue() {
        return true;
    }

    protected V resolve(K key, V value) {
        return value;
    }

    protected void validateKey(K key) {
    }

    protected void validateValue(V value) {
    }

    protected void didAdd(Entry<K, V> entry) {
    }

    protected void didModify(Entry<K, V> entry, V oldValue) {
    }

    protected void didRemove(Entry<K, V> entry) {
    }

    protected void didClear(BasicEList<Entry<K, V>>[] oldEntryData) {
        if (oldEntryData != null) {
            int i = 0;
            while (i < oldEntryData.length) {
                BasicEList<Entry<K, V>> eList = oldEntryData[i];
                if (eList != null) {
                    Entry[] entries = (Entry[])eList.data;
                    int size = eList.size;
                    int j = 0;
                    while (j < size) {
                        Entry entry = entries[j];
                        this.didRemove(entry);
                        ++j;
                    }
                }
                ++i;
            }
        }
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public int indexOfKey(Object key) {
        if (this.useEqualsForKey() && key != null) {
            int i = 0;
            int size = this.delegateEList.size();
            while (i < size) {
                Entry entry = (Entry)this.delegateEList.get(i);
                if (key.equals(entry.getKey())) {
                    return i;
                }
                ++i;
            }
        } else {
            int i = 0;
            int size = this.delegateEList.size();
            while (i < size) {
                Entry entry = (Entry)this.delegateEList.get(i);
                if (key == entry.getKey()) {
                    return i;
                }
                ++i;
            }
        }
        return -1;
    }

    @Override
    public boolean containsKey(Object key) {
        if (this.size > 0) {
            this.ensureEntryDataExists();
            int hash = this.hashOf(key);
            int index = this.indexOf(hash);
            int entryIndex = this.entryIndexForKey(index, hash, key);
            return entryIndex != -1;
        }
        return false;
    }

    @Override
    public boolean containsValue(Object value) {
        block10: {
            if (this.size <= 0) break block10;
            this.ensureEntryDataExists();
            if (this.useEqualsForValue() && value != null) {
                int i = 0;
                while (i < this.entryData.length) {
                    BasicEList<Entry<K, V>> eList = this.entryData[i];
                    if (eList != null) {
                        Entry[] entries = (Entry[])eList.data;
                        int size = eList.size;
                        int j = 0;
                        while (j < size) {
                            Entry entry = entries[j];
                            if (value.equals(entry.getValue())) {
                                return true;
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
            } else {
                int i = 0;
                while (i < this.entryData.length) {
                    BasicEList<Entry<K, V>> eList = this.entryData[i];
                    if (eList != null) {
                        Entry[] entries = (Entry[])eList.data;
                        int size = eList.size;
                        int j = 0;
                        while (j < size) {
                            Entry entry = entries[j];
                            if (value == entry.getValue()) {
                                return true;
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
            }
        }
        return false;
    }

    @Override
    public V get(Object key) {
        if (this.size > 0) {
            this.ensureEntryDataExists();
            int hash = this.hashOf(key);
            int index = this.indexOf(hash);
            Entry<K, V> entry = this.entryForKey(index, hash, key);
            if (entry != null) {
                Object object = key;
                return this.resolve(object, entry.getValue());
            }
        }
        return null;
    }

    @Override
    public V put(K key, V value) {
        int index;
        Entry<K, V> entry;
        this.ensureEntryDataExists();
        int hash = this.hashOf(key);
        if (this.size > 0 && (entry = this.entryForKey(index = this.indexOf(hash), hash, key)) != null) {
            V result = this.putEntry(entry, value);
            this.didModify(entry, result);
            return result;
        }
        Entry<K, V> entry2 = this.newEntry(hash, key, value);
        this.delegateEList.add(entry2);
        return null;
    }

    protected void doPut(Entry<K, V> entry) {
        if (this.entryData == null) {
            ++this.modCount;
            ++this.size;
        } else {
            int hash = entry.getHash();
            this.grow(this.size + 1);
            int index = this.indexOf(hash);
            BasicEList<Entry<K, V>> eList = this.entryData[index];
            if (eList == null) {
                this.entryData[index] = this.newList();
                eList = this.entryData[index];
            }
            eList.add(entry);
            ++this.size;
            this.didAdd(entry);
        }
    }

    @Override
    public V removeKey(Object key) {
        this.ensureEntryDataExists();
        int hash = this.hashOf(key);
        int index = this.indexOf(hash);
        Entry<K, V> entry = this.entryForKey(index, hash, key);
        if (entry != null) {
            this.remove(entry);
            return entry.getValue();
        }
        return null;
    }

    protected void doRemove(Entry<K, V> entry) {
        if (this.entryData == null) {
            ++this.modCount;
            --this.size;
        } else {
            Object key = entry.getKey();
            int hash = entry.getHash();
            int index = this.indexOf(hash);
            this.removeEntry(index, this.entryIndexForKey(index, hash, key));
            this.didRemove(entry);
        }
    }

    protected V removeEntry(int index, int entryIndex) {
        ++this.modCount;
        --this.size;
        Entry<K, V> entry = this.entryData[index].remove(entryIndex);
        return entry.getValue();
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void putAll(EMap<? extends K, ? extends V> map) {
        for (Map.Entry entry : map) {
            this.put(entry.getKey(), entry.getValue());
        }
    }

    protected void doClear() {
        if (this.entryData == null) {
            ++this.modCount;
            this.size = 0;
            this.didClear(null);
        } else {
            ++this.modCount;
            BasicEList<Entry<K, V>>[] oldEntryData = this.entryData;
            this.entryData = null;
            this.size = 0;
            this.didClear(oldEntryData);
        }
    }

    protected void doMove(Entry<K, V> entry) {
        ++this.modCount;
    }

    public Object clone() {
        try {
            BasicEMap result = (BasicEMap)super.clone();
            if (this.entryData != null) {
                result.entryData = this.newEntryData(this.entryData.length);
                int i = 0;
                while (i < this.entryData.length) {
                    BasicEList basicEList;
                    result.entryData[i] = basicEList = this.entryData[i] == null ? null : (BasicEList)this.entryData[i].clone();
                    ++i;
                }
            }
            result.view = null;
            result.modCount = 0;
            return result;
        }
        catch (CloneNotSupportedException exception) {
            throw new InternalError();
        }
    }

    @Override
    public Map<K, V> map() {
        if (this.view == null) {
            this.view = new View();
        }
        if (this.view.map == null) {
            this.view.map = new DelegatingMap();
        }
        return this.view.map;
    }

    @Override
    public Set<K> keySet() {
        if (this.view == null) {
            this.view = new View();
        }
        if (this.view.keySet == null) {
            this.view.keySet = new AbstractSet<K>(){

                @Override
                public Iterator<K> iterator() {
                    return BasicEMap.this.size == 0 ? ECollections.emptyEList().iterator() : new BasicEMapKeyIterator();
                }

                @Override
                public int size() {
                    return BasicEMap.this.size;
                }

                @Override
                public boolean contains(Object key) {
                    return BasicEMap.this.containsKey(key);
                }

                @Override
                public boolean remove(Object key) {
                    int oldSize = BasicEMap.this.size;
                    BasicEMap.this.removeKey(key);
                    return BasicEMap.this.size != oldSize;
                }

                @Override
                public void clear() {
                    BasicEMap.this.clear();
                }
            };
        }
        return this.view.keySet;
    }

    @Override
    public Collection<V> values() {
        if (this.view == null) {
            this.view = new View();
        }
        if (this.view.values == null) {
            this.view.values = new AbstractCollection<V>(){

                @Override
                public Iterator<V> iterator() {
                    return BasicEMap.this.size == 0 ? ECollections.emptyEList().iterator() : new BasicEMapValueIterator();
                }

                @Override
                public int size() {
                    return BasicEMap.this.size;
                }

                @Override
                public boolean contains(Object value) {
                    return BasicEMap.this.containsValue(value);
                }

                @Override
                public void clear() {
                    BasicEMap.this.clear();
                }
            };
        }
        return this.view.values;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.view == null) {
            this.view = new View();
        }
        if (this.view.entrySet == null) {
            this.view.entrySet = new AbstractSet<Map.Entry<K, V>>(){

                @Override
                public int size() {
                    return BasicEMap.this.size;
                }

                @Override
                public boolean contains(Object object) {
                    if (BasicEMap.this.size > 0 && object instanceof Map.Entry) {
                        BasicEMap.this.ensureEntryDataExists();
                        Map.Entry otherEntry = (Map.Entry)object;
                        Object key = otherEntry.getKey();
                        int hash = key == null ? 0 : key.hashCode();
                        int index = BasicEMap.this.indexOf(hash);
                        BasicEList eList = BasicEMap.this.entryData[index];
                        if (eList != null) {
                            Entry[] entries = (Entry[])eList.data;
                            int size = eList.size;
                            int j = 0;
                            while (j < size) {
                                Entry entry = entries[j];
                                if (entry.getHash() == hash && entry.equals(otherEntry)) {
                                    return true;
                                }
                                ++j;
                            }
                        }
                    }
                    return false;
                }

                @Override
                public boolean remove(Object object) {
                    if (BasicEMap.this.size > 0 && object instanceof Map.Entry) {
                        BasicEMap.this.ensureEntryDataExists();
                        Map.Entry otherEntry = (Map.Entry)object;
                        Object key = otherEntry.getKey();
                        int hash = key == null ? 0 : key.hashCode();
                        int index = BasicEMap.this.indexOf(hash);
                        BasicEList eList = BasicEMap.this.entryData[index];
                        if (eList != null) {
                            Entry[] entries = (Entry[])eList.data;
                            int size = eList.size;
                            int j = 0;
                            while (j < size) {
                                Entry entry = entries[j];
                                if (entry.getHash() == hash && entry.equals(otherEntry)) {
                                    this.remove(otherEntry);
                                    return true;
                                }
                                ++j;
                            }
                        }
                    }
                    return false;
                }

                @Override
                public void clear() {
                    BasicEMap.this.clear();
                }

                @Override
                public Iterator<Map.Entry<K, V>> iterator() {
                    return BasicEMap.this.size == 0 ? ECollections.emptyEList().iterator() : new BasicEMapIterator();
                }
            };
        }
        return this.view.entrySet;
    }

    protected int hashOf(Object key) {
        return key == null ? 0 : key.hashCode();
    }

    protected int indexOf(int hash) {
        return (hash & Integer.MAX_VALUE) % this.entryData.length;
    }

    protected Entry<K, V> entryForKey(int index, int hash, Object key) {
        block6: {
            BasicEList<Entry<K, V>> eList = this.entryData[index];
            if (eList == null) break block6;
            Object[] entries = eList.data;
            int size = eList.size;
            if (this.useEqualsForKey() && key != null) {
                int j = 0;
                while (j < size) {
                    Entry entry = (Entry)entries[j];
                    if (entry.getHash() == hash && key.equals(entry.getKey())) {
                        return entry;
                    }
                    ++j;
                }
            } else {
                int j = 0;
                while (j < size) {
                    Entry entry = (Entry)entries[j];
                    if (entry.getKey() == key) {
                        return entry;
                    }
                    ++j;
                }
            }
        }
        return null;
    }

    protected int entryIndexForKey(int index, int hash, Object key) {
        block6: {
            block5: {
                if (!this.useEqualsForKey() || key == null) break block5;
                BasicEList<Entry<K, V>> eList = this.entryData[index];
                if (eList == null) break block6;
                Object[] entries = eList.data;
                int size = eList.size;
                int j = 0;
                while (j < size) {
                    Entry entry = (Entry)entries[j];
                    if (entry.getHash() == hash && key.equals(entry.getKey())) {
                        return j;
                    }
                    ++j;
                }
                break block6;
            }
            BasicEList<Entry<K, V>> eList = this.entryData[index];
            if (eList != null) {
                Object[] entries = eList.data;
                int size = eList.size;
                int j = 0;
                while (j < size) {
                    Entry entry = (Entry)entries[j];
                    if (entry.getKey() == key) {
                        return j;
                    }
                    ++j;
                }
            }
        }
        return -1;
    }

    protected boolean grow(int minimumCapacity) {
        int oldCapacity;
        ++this.modCount;
        int n = oldCapacity = this.entryData == null ? 0 : this.entryData.length;
        if (minimumCapacity > oldCapacity) {
            BasicEList<Entry<K, V>>[] oldEntryData = this.entryData;
            this.entryData = this.newEntryData(2 * oldCapacity + 4);
            int i = 0;
            while (i < oldCapacity) {
                BasicEList<Entry<K, V>> oldEList = oldEntryData[i];
                if (oldEList != null) {
                    Object[] entries = oldEList.data;
                    int size = oldEList.size;
                    int j = 0;
                    while (j < size) {
                        Entry entry = (Entry)entries[j];
                        int index = this.indexOf(entry.getHash());
                        BasicEList<Entry<K, V>> eList = this.entryData[index];
                        if (eList == null) {
                            this.entryData[index] = this.newList();
                            eList = this.entryData[index];
                        }
                        eList.add(entry);
                        ++j;
                    }
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.entryData == null) {
            objectOutputStream.writeInt(0);
        } else {
            objectOutputStream.writeInt(this.entryData.length);
            objectOutputStream.writeInt(this.size);
            int i = 0;
            while (i < this.entryData.length) {
                BasicEList<Entry<K, V>> eList = this.entryData[i];
                if (eList != null) {
                    Object[] entries = eList.data;
                    int size = eList.size;
                    int j = 0;
                    while (j < size) {
                        Entry entry = (Entry)entries[j];
                        objectOutputStream.writeObject(entry.getKey());
                        objectOutputStream.writeObject(entry.getValue());
                        ++j;
                    }
                }
                ++i;
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.initializeDelegateEList();
        int capacity = objectInputStream.readInt();
        if (capacity > 0) {
            this.entryData = this.newEntryData(capacity);
            int i = 0;
            int size = objectInputStream.readInt();
            while (i < size) {
                Object key = objectInputStream.readObject();
                Object value = objectInputStream.readObject();
                this.put(key, value);
                ++i;
            }
        }
    }

    @Override
    public boolean contains(Object object) {
        return this.delegateEList.contains(object);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.delegateEList.containsAll(collection);
    }

    @Override
    public int indexOf(Object object) {
        return this.delegateEList.indexOf(object);
    }

    @Override
    public int lastIndexOf(Object object) {
        return this.delegateEList.lastIndexOf(object);
    }

    @Override
    public Object[] toArray() {
        return this.delegateEList.toArray();
    }

    @Override
    public <T> T[] toArray(T[] array) {
        return this.delegateEList.toArray(array);
    }

    @Override
    public Entry<K, V> get(int index) {
        return (Entry)this.delegateEList.get(index);
    }

    @Override
    public Map.Entry<K, V> set(int index, Map.Entry<K, V> object) {
        return this.delegateEList.set(index, (Entry)object);
    }

    @Override
    public boolean add(Map.Entry<K, V> object) {
        return this.delegateEList.add((Entry)object);
    }

    @Override
    public void add(int index, Map.Entry<K, V> object) {
        this.delegateEList.add(index, (Entry)object);
    }

    @Override
    public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
        return this.delegateEList.addAll(collection);
    }

    @Override
    public boolean addAll(int index, Collection<? extends Map.Entry<K, V>> collection) {
        return this.delegateEList.addAll(index, collection);
    }

    @Override
    public boolean remove(Object object) {
        if (object instanceof Map.Entry) {
            return this.delegateEList.remove(object);
        }
        boolean result = this.containsKey(object);
        this.removeKey(object);
        return result;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        return this.delegateEList.removeAll(collection);
    }

    @Override
    public Map.Entry<K, V> remove(int index) {
        return (Map.Entry)this.delegateEList.remove(index);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        return this.delegateEList.retainAll(collection);
    }

    @Override
    public void clear() {
        this.delegateEList.clear();
    }

    @Override
    public void move(int index, Map.Entry<K, V> object) {
        this.delegateEList.move(index, (Entry)object);
    }

    @Override
    public Map.Entry<K, V> move(int targetIndex, int sourceIndex) {
        return this.delegateEList.move(targetIndex, sourceIndex);
    }

    @Override
    public Iterator<Map.Entry<K, V>> iterator() {
        return this.delegateEList.iterator();
    }

    @Override
    public ListIterator<Map.Entry<K, V>> listIterator() {
        return this.delegateEList.listIterator();
    }

    @Override
    public ListIterator<Map.Entry<K, V>> listIterator(int index) {
        return this.delegateEList.listIterator(index);
    }

    @Override
    public List<Map.Entry<K, V>> subList(int start, int end) {
        return this.delegateEList.subList(start, end);
    }

    @Override
    public int hashCode() {
        return this.delegateEList.hashCode();
    }

    @Override
    public boolean equals(Object object) {
        if (object instanceof EMap) {
            return this.delegateEList.equals(object);
        }
        return false;
    }

    public String toString() {
        return this.delegateEList.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class BasicEMapIterator<U>
    implements Iterator<U> {
        protected int cursor;
        protected int entryCursor = -1;
        protected int lastCursor;
        protected int lastEntryCursor;
        protected int expectedModCount;

        BasicEMapIterator() {
            this.expectedModCount = BasicEMap.this.modCount;
            if (BasicEMap.this.size > 0) {
                this.scan();
            }
        }

        protected U yield(Entry<K, V> entry) {
            return (U)entry;
        }

        protected void scan() {
            BasicEList eList;
            BasicEMap.this.ensureEntryDataExists();
            if (this.entryCursor != -1) {
                ++this.entryCursor;
                eList = BasicEMap.this.entryData[this.cursor];
                if (this.entryCursor < eList.size) {
                    return;
                }
                ++this.cursor;
            }
            while (this.cursor < BasicEMap.this.entryData.length) {
                eList = BasicEMap.this.entryData[this.cursor];
                if (eList != null && !eList.isEmpty()) {
                    this.entryCursor = 0;
                    return;
                }
                ++this.cursor;
            }
            this.entryCursor = -1;
        }

        @Override
        public boolean hasNext() {
            return this.entryCursor != -1;
        }

        @Override
        public U next() {
            if (BasicEMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
            if (this.entryCursor == -1) {
                throw new NoSuchElementException();
            }
            this.lastCursor = this.cursor;
            this.lastEntryCursor = this.entryCursor;
            this.scan();
            Entry result = (Entry)BasicEMap.this.entryData[this.lastCursor].data[this.lastEntryCursor];
            return this.yield(result);
        }

        @Override
        public void remove() {
            if (BasicEMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
            if (this.lastEntryCursor == -1) {
                throw new IllegalStateException();
            }
            BasicEMap.this.delegateEList.remove(BasicEMap.this.entryData[this.lastCursor].get(this.lastEntryCursor));
            this.expectedModCount = BasicEMap.this.modCount;
            this.lastEntryCursor = -1;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class BasicEMapKeyIterator
    extends BasicEMapIterator<K> {
        BasicEMapKeyIterator() {
        }

        @Override
        protected K yield(Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class BasicEMapValueIterator
    extends BasicEMapIterator<V> {
        BasicEMapValueIterator() {
        }

        @Override
        protected V yield(Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class DelegatingMap
    implements EMap.InternalMapView<K, V> {
        @Override
        public EMap<K, V> eMap() {
            return BasicEMap.this;
        }

        @Override
        public int size() {
            return BasicEMap.this.size();
        }

        @Override
        public boolean isEmpty() {
            return BasicEMap.this.isEmpty();
        }

        @Override
        public boolean containsKey(Object key) {
            return BasicEMap.this.containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            return BasicEMap.this.containsValue(value);
        }

        @Override
        public V get(Object key) {
            return BasicEMap.this.get(key);
        }

        @Override
        public V put(K key, V value) {
            return BasicEMap.this.put(key, value);
        }

        @Override
        public V remove(Object key) {
            return BasicEMap.this.removeKey(key);
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> map) {
            BasicEMap.this.putAll(map);
        }

        @Override
        public void clear() {
            BasicEMap.this.clear();
        }

        @Override
        public Set<K> keySet() {
            return BasicEMap.this.keySet();
        }

        @Override
        public Collection<V> values() {
            return BasicEMap.this.values();
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return BasicEMap.this.entrySet();
        }

        @Override
        public boolean equals(Object object) {
            return BasicEMap.this.equals(object);
        }

        @Override
        public int hashCode() {
            return BasicEMap.this.hashCode();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Entry<K, V>
    extends Map.Entry<K, V> {
        public void setKey(K var1);

        public int getHash();

        public void setHash(int var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class EntryImpl
    implements Entry<K, V> {
        protected int hash;
        protected K key;
        protected V value;

        public EntryImpl(int hash, K key, V value) {
            this.hash = hash;
            this.key = key;
            this.value = value;
        }

        protected Object clone() {
            return BasicEMap.this.newEntry(this.hash, this.key, this.value);
        }

        @Override
        public int getHash() {
            return this.hash;
        }

        @Override
        public void setHash(int hash) {
            this.hash = hash;
        }

        @Override
        public K getKey() {
            return this.key;
        }

        @Override
        public void setKey(K key) {
            throw new RuntimeException();
        }

        @Override
        public V getValue() {
            return this.value;
        }

        @Override
        public V setValue(V value) {
            BasicEMap.this.validateValue(value);
            Object oldValue = this.value;
            this.value = value;
            return oldValue;
        }

        @Override
        public boolean equals(Object object) {
            if (object instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry)object;
                return (BasicEMap.this.useEqualsForKey() && this.key != null ? this.key.equals(entry.getKey()) : this.key == entry.getKey()) && (BasicEMap.this.useEqualsForValue() && this.value != null ? this.value.equals(entry.getValue()) : this.value == entry.getValue());
            }
            return false;
        }

        @Override
        public int hashCode() {
            return this.hash ^ (this.value == null ? 0 : this.value.hashCode());
        }

        public String toString() {
            return this.key + "->" + this.value;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class View<K, V> {
        public transient Map<K, V> map;
        public transient Set<K> keySet;
        public transient Set<Map.Entry<K, V>> entrySet;
        public transient Collection<V> values;
    }
}

