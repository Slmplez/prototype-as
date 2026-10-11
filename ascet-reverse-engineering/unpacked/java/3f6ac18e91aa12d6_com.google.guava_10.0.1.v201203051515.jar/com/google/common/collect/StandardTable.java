/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.google.common.collect.StandardTable$Column.KeySet
 *  com.google.common.collect.StandardTable$Column.Values
 *  com.google.common.collect.StandardTable$ColumnMap.ColumnMapValues
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.AbstractMapEntry;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.ImmutableEntry;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.StandardTable;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
class StandardTable<R, C, V>
implements Table<R, C, V>,
Serializable {
    final Map<R, Map<C, V>> backingMap;
    final Supplier<? extends Map<C, V>> factory;
    private transient CellSet cellSet;
    private transient RowKeySet rowKeySet;
    private transient Set<C> columnKeySet;
    private transient Values values;
    private transient RowMap rowMap;
    private transient ColumnMap columnMap;
    private static final long serialVersionUID = 0L;

    StandardTable(Map<R, Map<C, V>> backingMap, Supplier<? extends Map<C, V>> factory) {
        this.backingMap = backingMap;
        this.factory = factory;
    }

    @Override
    public boolean contains(@Nullable Object rowKey, @Nullable Object columnKey) {
        if (rowKey == null || columnKey == null) {
            return false;
        }
        Map<C, V> map = Maps.safeGet(this.backingMap, rowKey);
        return map != null && Maps.safeContainsKey(map, columnKey);
    }

    @Override
    public boolean containsColumn(@Nullable Object columnKey) {
        if (columnKey == null) {
            return false;
        }
        for (Map<C, V> map : this.backingMap.values()) {
            if (!Maps.safeContainsKey(map, columnKey)) continue;
            return true;
        }
        return false;
    }

    @Override
    public boolean containsRow(@Nullable Object rowKey) {
        return rowKey != null && Maps.safeContainsKey(this.backingMap, rowKey);
    }

    @Override
    public boolean containsValue(@Nullable Object value) {
        if (value == null) {
            return false;
        }
        for (Map<C, V> map : this.backingMap.values()) {
            if (!map.containsValue(value)) continue;
            return true;
        }
        return false;
    }

    @Override
    public V get(@Nullable Object rowKey, @Nullable Object columnKey) {
        if (rowKey == null || columnKey == null) {
            return null;
        }
        Map<C, V> map = Maps.safeGet(this.backingMap, rowKey);
        return map == null ? null : (V)Maps.safeGet(map, columnKey);
    }

    @Override
    public boolean isEmpty() {
        return this.backingMap.isEmpty();
    }

    @Override
    public int size() {
        int size = 0;
        for (Map<C, V> map : this.backingMap.values()) {
            size += map.size();
        }
        return size;
    }

    @Override
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Table) {
            Table other = (Table)obj;
            return ((Object)this.cellSet()).equals(other.cellSet());
        }
        return false;
    }

    @Override
    public int hashCode() {
        return ((Object)this.cellSet()).hashCode();
    }

    public String toString() {
        return this.rowMap().toString();
    }

    @Override
    public void clear() {
        this.backingMap.clear();
    }

    private Map<C, V> getOrCreate(R rowKey) {
        Map<C, V> map = this.backingMap.get(rowKey);
        if (map == null) {
            map = this.factory.get();
            this.backingMap.put(rowKey, map);
        }
        return map;
    }

    @Override
    public V put(R rowKey, C columnKey, V value) {
        Preconditions.checkNotNull(rowKey);
        Preconditions.checkNotNull(columnKey);
        Preconditions.checkNotNull(value);
        return this.getOrCreate(rowKey).put(columnKey, value);
    }

    @Override
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        for (Table.Cell<R, C, V> cell : table.cellSet()) {
            this.put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
        }
    }

    @Override
    public V remove(@Nullable Object rowKey, @Nullable Object columnKey) {
        if (rowKey == null || columnKey == null) {
            return null;
        }
        Map<C, V> map = Maps.safeGet(this.backingMap, rowKey);
        if (map == null) {
            return null;
        }
        V value = map.remove(columnKey);
        if (map.isEmpty()) {
            this.backingMap.remove(rowKey);
        }
        return value;
    }

    private Map<R, V> removeColumn(Object column) {
        LinkedHashMap<R, V> output = new LinkedHashMap<R, V>();
        Iterator<Map.Entry<R, Map<C, V>>> iterator = this.backingMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<R, Map<C, V>> entry = iterator.next();
            V value = entry.getValue().remove(column);
            if (value == null) continue;
            output.put(entry.getKey(), value);
            if (!entry.getValue().isEmpty()) continue;
            iterator.remove();
        }
        return output;
    }

    private boolean containsMapping(Object rowKey, Object columnKey, Object value) {
        return value != null && value.equals(this.get(rowKey, columnKey));
    }

    private boolean removeMapping(Object rowKey, Object columnKey, Object value) {
        if (this.containsMapping(rowKey, columnKey, value)) {
            this.remove(rowKey, columnKey);
            return true;
        }
        return false;
    }

    @Override
    public Set<Table.Cell<R, C, V>> cellSet() {
        CellSet result = this.cellSet;
        return result == null ? (this.cellSet = new CellSet()) : result;
    }

    @Override
    public Map<C, V> row(R rowKey) {
        return new Row(rowKey);
    }

    @Override
    public Map<R, V> column(C columnKey) {
        return new Column(columnKey);
    }

    @Override
    public Set<R> rowKeySet() {
        RowKeySet result = this.rowKeySet;
        return result == null ? (this.rowKeySet = new RowKeySet()) : result;
    }

    @Override
    public Set<C> columnKeySet() {
        ColumnKeySet result = this.columnKeySet;
        return result == null ? (this.columnKeySet = new ColumnKeySet()) : result;
    }

    Iterator<C> createColumnKeyIterator() {
        return new ColumnKeyIterator();
    }

    @Override
    public Collection<V> values() {
        Values result = this.values;
        return result == null ? (this.values = new Values()) : result;
    }

    @Override
    public Map<R, Map<C, V>> rowMap() {
        RowMap result = this.rowMap;
        return result == null ? (this.rowMap = new RowMap()) : result;
    }

    @Override
    public Map<C, Map<R, V>> columnMap() {
        ColumnMap result = this.columnMap;
        return result == null ? (this.columnMap = new ColumnMap()) : result;
    }

    static <K, V> Iterator<K> keyIteratorImpl(Map<K, V> map) {
        final Iterator<Map.Entry<K, V>> entryIterator = map.entrySet().iterator();
        return new Iterator<K>(){

            @Override
            public boolean hasNext() {
                return entryIterator.hasNext();
            }

            @Override
            public K next() {
                return ((Map.Entry)entryIterator.next()).getKey();
            }

            @Override
            public void remove() {
                entryIterator.remove();
            }
        };
    }

    static <K, V> Iterator<V> valueIteratorImpl(Map<K, V> map) {
        final Iterator<Map.Entry<K, V>> entryIterator = map.entrySet().iterator();
        return new Iterator<V>(){

            @Override
            public boolean hasNext() {
                return entryIterator.hasNext();
            }

            @Override
            public V next() {
                return ((Map.Entry)entryIterator.next()).getValue();
            }

            @Override
            public void remove() {
                entryIterator.remove();
            }
        };
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class CellIterator
    implements Iterator<Table.Cell<R, C, V>> {
        final Iterator<Map.Entry<R, Map<C, V>>> rowIterator;
        Map.Entry<R, Map<C, V>> rowEntry;
        Iterator<Map.Entry<C, V>> columnIterator;

        private CellIterator() {
            this.rowIterator = StandardTable.this.backingMap.entrySet().iterator();
            this.columnIterator = Iterators.emptyModifiableIterator();
        }

        @Override
        public boolean hasNext() {
            return this.rowIterator.hasNext() || this.columnIterator.hasNext();
        }

        @Override
        public Table.Cell<R, C, V> next() {
            if (!this.columnIterator.hasNext()) {
                this.rowEntry = this.rowIterator.next();
                this.columnIterator = this.rowEntry.getValue().entrySet().iterator();
            }
            Map.Entry columnEntry = this.columnIterator.next();
            return Tables.immutableCell(this.rowEntry.getKey(), columnEntry.getKey(), columnEntry.getValue());
        }

        @Override
        public void remove() {
            this.columnIterator.remove();
            if (this.rowEntry.getValue().isEmpty()) {
                this.rowIterator.remove();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class CellSet
    extends TableSet<Table.Cell<R, C, V>> {
        private CellSet() {
        }

        @Override
        public Iterator<Table.Cell<R, C, V>> iterator() {
            return new CellIterator();
        }

        @Override
        public int size() {
            return StandardTable.this.size();
        }

        @Override
        public boolean contains(Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell)obj;
                return StandardTable.this.containsMapping(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            }
            return false;
        }

        @Override
        public boolean remove(Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell)obj;
                return StandardTable.this.removeMapping(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Column
    extends Maps.ImprovedAbstractMap<R, V> {
        final C columnKey;
        com.google.common.collect.StandardTable$Column.Values columnValues;
        com.google.common.collect.StandardTable$Column.KeySet keySet;

        Column(C columnKey) {
            this.columnKey = Preconditions.checkNotNull(columnKey);
        }

        @Override
        public V put(R key, V value) {
            return StandardTable.this.put(key, this.columnKey, value);
        }

        @Override
        public V get(Object key) {
            return StandardTable.this.get(key, this.columnKey);
        }

        @Override
        public boolean containsKey(Object key) {
            return StandardTable.this.contains(key, this.columnKey);
        }

        @Override
        public V remove(Object key) {
            return StandardTable.this.remove(key, this.columnKey);
        }

        @Override
        public Set<Map.Entry<R, V>> createEntrySet() {
            return new EntrySet();
        }

        @Override
        public Collection<V> values() {
            com.google.common.collect.StandardTable$Column.Values result = this.columnValues;
            return result == null ? (this.columnValues = new Values()) : result;
        }

        boolean removePredicate(Predicate<? super Map.Entry<R, V>> predicate) {
            boolean changed = false;
            Iterator iterator = StandardTable.this.backingMap.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                Map map = entry.getValue();
                Object value = map.get(this.columnKey);
                if (value == null || !predicate.apply(new ImmutableEntry(entry.getKey(), value))) continue;
                map.remove(this.columnKey);
                changed = true;
                if (!map.isEmpty()) continue;
                iterator.remove();
            }
            return changed;
        }

        @Override
        public Set<R> keySet() {
            com.google.common.collect.StandardTable$Column.KeySet result = this.keySet;
            return result == null ? (this.keySet = new KeySet()) : result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class EntrySet
        extends AbstractSet<Map.Entry<R, V>> {
            EntrySet() {
            }

            @Override
            public Iterator<Map.Entry<R, V>> iterator() {
                return new EntrySetIterator();
            }

            @Override
            public int size() {
                int size = 0;
                for (Map map : StandardTable.this.backingMap.values()) {
                    if (!map.containsKey(Column.this.columnKey)) continue;
                    ++size;
                }
                return size;
            }

            @Override
            public boolean isEmpty() {
                return !StandardTable.this.containsColumn(Column.this.columnKey);
            }

            @Override
            public void clear() {
                Predicate predicate = Predicates.alwaysTrue();
                Column.this.removePredicate(predicate);
            }

            @Override
            public boolean contains(Object o) {
                if (o instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry)o;
                    return StandardTable.this.containsMapping(entry.getKey(), Column.this.columnKey, entry.getValue());
                }
                return false;
            }

            @Override
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry)obj;
                    return StandardTable.this.removeMapping(entry.getKey(), Column.this.columnKey, entry.getValue());
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                boolean changed = false;
                for (Object obj : c) {
                    changed |= this.remove(obj);
                }
                return changed;
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                return Column.this.removePredicate(Predicates.not(Predicates.in(c)));
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class EntrySetIterator
        extends AbstractIterator<Map.Entry<R, V>> {
            final Iterator<Map.Entry<R, Map<C, V>>> iterator;

            EntrySetIterator() {
                this.iterator = StandardTable.this.backingMap.entrySet().iterator();
            }

            @Override
            protected Map.Entry<R, V> computeNext() {
                while (this.iterator.hasNext()) {
                    final Map.Entry entry = this.iterator.next();
                    if (!entry.getValue().containsKey(Column.this.columnKey)) continue;
                    return new AbstractMapEntry<R, V>(){

                        @Override
                        public R getKey() {
                            return entry.getKey();
                        }

                        @Override
                        public V getValue() {
                            return ((Map)entry.getValue()).get(Column.this.columnKey);
                        }

                        @Override
                        public V setValue(V value) {
                            return ((Map)entry.getValue()).put(Column.this.columnKey, Preconditions.checkNotNull(value));
                        }
                    };
                }
                return (Map.Entry)this.endOfData();
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class KeySet
        extends AbstractSet<R> {
            KeySet() {
            }

            @Override
            public Iterator<R> iterator() {
                return StandardTable.keyIteratorImpl(Column.this);
            }

            @Override
            public int size() {
                return Column.this.entrySet().size();
            }

            @Override
            public boolean isEmpty() {
                return !StandardTable.this.containsColumn(Column.this.columnKey);
            }

            @Override
            public boolean contains(Object obj) {
                return StandardTable.this.contains(obj, Column.this.columnKey);
            }

            @Override
            public boolean remove(Object obj) {
                return StandardTable.this.remove(obj, Column.this.columnKey) != null;
            }

            @Override
            public void clear() {
                Column.this.entrySet().clear();
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                boolean changed = false;
                for (Object obj : c) {
                    changed |= this.remove(obj);
                }
                return changed;
            }

            @Override
            public boolean retainAll(final Collection<?> c) {
                Preconditions.checkNotNull(c);
                Predicate predicate = new Predicate<Map.Entry<R, V>>(){

                    @Override
                    public boolean apply(Map.Entry<R, V> entry) {
                        return !c.contains(entry.getKey());
                    }
                };
                return Column.this.removePredicate(predicate);
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class Values
        extends AbstractCollection<V> {
            Values() {
            }

            @Override
            public Iterator<V> iterator() {
                return StandardTable.valueIteratorImpl(Column.this);
            }

            @Override
            public int size() {
                return Column.this.entrySet().size();
            }

            @Override
            public boolean isEmpty() {
                return !StandardTable.this.containsColumn(Column.this.columnKey);
            }

            @Override
            public void clear() {
                Column.this.entrySet().clear();
            }

            @Override
            public boolean remove(Object obj) {
                if (obj == null) {
                    return false;
                }
                Iterator iterator = StandardTable.this.backingMap.values().iterator();
                while (iterator.hasNext()) {
                    Map map = iterator.next();
                    if (!map.entrySet().remove(new ImmutableEntry(Column.this.columnKey, obj))) continue;
                    if (map.isEmpty()) {
                        iterator.remove();
                    }
                    return true;
                }
                return false;
            }

            @Override
            public boolean removeAll(final Collection<?> c) {
                Preconditions.checkNotNull(c);
                Predicate predicate = new Predicate<Map.Entry<R, V>>(){

                    @Override
                    public boolean apply(Map.Entry<R, V> entry) {
                        return c.contains(entry.getValue());
                    }
                };
                return Column.this.removePredicate(predicate);
            }

            @Override
            public boolean retainAll(final Collection<?> c) {
                Preconditions.checkNotNull(c);
                Predicate predicate = new Predicate<Map.Entry<R, V>>(){

                    @Override
                    public boolean apply(Map.Entry<R, V> entry) {
                        return !c.contains(entry.getValue());
                    }
                };
                return Column.this.removePredicate(predicate);
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ColumnKeyIterator
    extends AbstractIterator<C> {
        final Map<C, V> seen;
        final Iterator<Map<C, V>> mapIterator;
        Iterator<Map.Entry<C, V>> entryIterator;

        private ColumnKeyIterator() {
            this.seen = StandardTable.this.factory.get();
            this.mapIterator = StandardTable.this.backingMap.values().iterator();
            this.entryIterator = Iterators.emptyIterator();
        }

        @Override
        protected C computeNext() {
            while (true) {
                if (this.entryIterator.hasNext()) {
                    Map.Entry entry = this.entryIterator.next();
                    if (this.seen.containsKey(entry.getKey())) continue;
                    this.seen.put(entry.getKey(), entry.getValue());
                    return entry.getKey();
                }
                if (!this.mapIterator.hasNext()) break;
                this.entryIterator = this.mapIterator.next().entrySet().iterator();
            }
            return this.endOfData();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ColumnKeySet
    extends TableSet<C> {
        private ColumnKeySet() {
        }

        @Override
        public Iterator<C> iterator() {
            return StandardTable.this.createColumnKeyIterator();
        }

        @Override
        public int size() {
            return Iterators.size(this.iterator());
        }

        @Override
        public boolean remove(Object obj) {
            if (obj == null) {
                return false;
            }
            boolean changed = false;
            Iterator iterator = StandardTable.this.backingMap.values().iterator();
            while (iterator.hasNext()) {
                Map map = iterator.next();
                if (!map.keySet().remove(obj)) continue;
                changed = true;
                if (!map.isEmpty()) continue;
                iterator.remove();
            }
            return changed;
        }

        @Override
        public boolean removeAll(Collection<?> c) {
            Preconditions.checkNotNull(c);
            boolean changed = false;
            Iterator iterator = StandardTable.this.backingMap.values().iterator();
            while (iterator.hasNext()) {
                Map map = iterator.next();
                if (!Iterators.removeAll(map.keySet().iterator(), c)) continue;
                changed = true;
                if (!map.isEmpty()) continue;
                iterator.remove();
            }
            return changed;
        }

        @Override
        public boolean retainAll(Collection<?> c) {
            Preconditions.checkNotNull(c);
            boolean changed = false;
            Iterator iterator = StandardTable.this.backingMap.values().iterator();
            while (iterator.hasNext()) {
                Map map = iterator.next();
                if (!map.keySet().retainAll(c)) continue;
                changed = true;
                if (!map.isEmpty()) continue;
                iterator.remove();
            }
            return changed;
        }

        @Override
        public boolean contains(Object obj) {
            if (obj == null) {
                return false;
            }
            for (Map map : StandardTable.this.backingMap.values()) {
                if (!map.containsKey(obj)) continue;
                return true;
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ColumnMap
    extends Maps.ImprovedAbstractMap<C, Map<R, V>> {
        com.google.common.collect.StandardTable$ColumnMap.ColumnMapValues columnMapValues;

        private ColumnMap() {
        }

        @Override
        public Map<R, V> get(Object key) {
            return StandardTable.this.containsColumn(key) ? StandardTable.this.column(key) : null;
        }

        @Override
        public boolean containsKey(Object key) {
            return StandardTable.this.containsColumn(key);
        }

        @Override
        public Map<R, V> remove(Object key) {
            return StandardTable.this.containsColumn(key) ? StandardTable.this.removeColumn(key) : null;
        }

        @Override
        public Set<Map.Entry<C, Map<R, V>>> createEntrySet() {
            return new ColumnMapEntrySet();
        }

        @Override
        public Set<C> keySet() {
            return StandardTable.this.columnKeySet();
        }

        @Override
        public Collection<Map<R, V>> values() {
            com.google.common.collect.StandardTable$ColumnMap.ColumnMapValues result = this.columnMapValues;
            return result == null ? (this.columnMapValues = new ColumnMapValues()) : result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class ColumnMapEntrySet
        extends TableSet<Map.Entry<C, Map<R, V>>> {
            ColumnMapEntrySet() {
            }

            @Override
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                final Iterator columnIterator = StandardTable.this.columnKeySet().iterator();
                return new UnmodifiableIterator<Map.Entry<C, Map<R, V>>>(){

                    @Override
                    public boolean hasNext() {
                        return columnIterator.hasNext();
                    }

                    @Override
                    public Map.Entry<C, Map<R, V>> next() {
                        Object columnKey = columnIterator.next();
                        return new ImmutableEntry(columnKey, StandardTable.this.column(columnKey));
                    }
                };
            }

            @Override
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }

            @Override
            public boolean contains(Object obj) {
                Map.Entry entry;
                if (obj instanceof Map.Entry && StandardTable.this.containsColumn((entry = (Map.Entry)obj).getKey())) {
                    Object columnKey = entry.getKey();
                    return ColumnMap.this.get(columnKey).equals(entry.getValue());
                }
                return false;
            }

            @Override
            public boolean remove(Object obj) {
                if (this.contains(obj)) {
                    Map.Entry entry = (Map.Entry)obj;
                    StandardTable.this.removeColumn(entry.getKey());
                    return true;
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                boolean changed = false;
                for (Object obj : c) {
                    changed |= this.remove(obj);
                }
                return changed;
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                boolean changed = false;
                for (Object columnKey : Lists.newArrayList(StandardTable.this.columnKeySet().iterator())) {
                    if (c.contains(new ImmutableEntry(columnKey, StandardTable.this.column(columnKey)))) continue;
                    StandardTable.this.removeColumn(columnKey);
                    changed = true;
                }
                return changed;
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class ColumnMapValues
        extends TableCollection<Map<R, V>> {
            private ColumnMapValues() {
            }

            @Override
            public Iterator<Map<R, V>> iterator() {
                return StandardTable.valueIteratorImpl(ColumnMap.this);
            }

            @Override
            public boolean remove(Object obj) {
                for (Map.Entry entry : ColumnMap.this.entrySet()) {
                    if (!((Object)((Map)entry.getValue())).equals(obj)) continue;
                    StandardTable.this.removeColumn(entry.getKey());
                    return true;
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                Preconditions.checkNotNull(c);
                boolean changed = false;
                for (Object columnKey : Lists.newArrayList(StandardTable.this.columnKeySet().iterator())) {
                    if (!c.contains(StandardTable.this.column(columnKey))) continue;
                    StandardTable.this.removeColumn(columnKey);
                    changed = true;
                }
                return changed;
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                Preconditions.checkNotNull(c);
                boolean changed = false;
                for (Object columnKey : Lists.newArrayList(StandardTable.this.columnKeySet().iterator())) {
                    if (c.contains(StandardTable.this.column(columnKey))) continue;
                    StandardTable.this.removeColumn(columnKey);
                    changed = true;
                }
                return changed;
            }

            @Override
            public int size() {
                return StandardTable.this.columnKeySet().size();
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class Row
    extends AbstractMap<C, V> {
        final R rowKey;
        Map<C, V> backingRowMap;
        Set<C> keySet;
        Set<Map.Entry<C, V>> entrySet;

        Row(R rowKey) {
            this.rowKey = Preconditions.checkNotNull(rowKey);
        }

        Map<C, V> backingRowMap() {
            Map map;
            if (this.backingRowMap == null || this.backingRowMap.isEmpty() && StandardTable.this.backingMap.containsKey(this.rowKey)) {
                this.backingRowMap = this.computeBackingRowMap();
                map = this.backingRowMap;
            } else {
                map = this.backingRowMap;
            }
            return map;
        }

        Map<C, V> computeBackingRowMap() {
            return StandardTable.this.backingMap.get(this.rowKey);
        }

        void maintainEmptyInvariant() {
            if (this.backingRowMap() != null && this.backingRowMap.isEmpty()) {
                StandardTable.this.backingMap.remove(this.rowKey);
                this.backingRowMap = null;
            }
        }

        @Override
        public boolean containsKey(Object key) {
            Map backingRowMap = this.backingRowMap();
            return key != null && backingRowMap != null && Maps.safeContainsKey(backingRowMap, key);
        }

        @Override
        public V get(Object key) {
            Map backingRowMap = this.backingRowMap();
            return key != null && backingRowMap != null ? (Object)Maps.safeGet(backingRowMap, key) : null;
        }

        @Override
        public V put(C key, V value) {
            Preconditions.checkNotNull(key);
            Preconditions.checkNotNull(value);
            if (this.backingRowMap != null && !this.backingRowMap.isEmpty()) {
                return this.backingRowMap.put(key, value);
            }
            return StandardTable.this.put(this.rowKey, key, value);
        }

        @Override
        public V remove(Object key) {
            try {
                Map backingRowMap = this.backingRowMap();
                if (backingRowMap == null) {
                    return null;
                }
                Object result = backingRowMap.remove(key);
                this.maintainEmptyInvariant();
                return result;
            }
            catch (ClassCastException e) {
                return null;
            }
        }

        @Override
        public void clear() {
            Map backingRowMap = this.backingRowMap();
            if (backingRowMap != null) {
                backingRowMap.clear();
            }
            this.maintainEmptyInvariant();
        }

        @Override
        public Set<C> keySet() {
            Set result = this.keySet;
            if (result == null) {
                this.keySet = new Maps.KeySet<C, V>(){

                    @Override
                    Map<C, V> map() {
                        return Row.this;
                    }
                };
                return this.keySet;
            }
            return result;
        }

        @Override
        public Set<Map.Entry<C, V>> entrySet() {
            Set result = this.entrySet;
            if (result == null) {
                this.entrySet = new RowEntrySet();
                return this.entrySet;
            }
            return result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class RowEntrySet
        extends Maps.EntrySet<C, V> {
            private RowEntrySet() {
            }

            @Override
            Map<C, V> map() {
                return Row.this;
            }

            @Override
            public int size() {
                Map map = Row.this.backingRowMap();
                return map == null ? 0 : map.size();
            }

            @Override
            public Iterator<Map.Entry<C, V>> iterator() {
                Map map = Row.this.backingRowMap();
                if (map == null) {
                    return Iterators.emptyModifiableIterator();
                }
                final Iterator iterator = map.entrySet().iterator();
                return new Iterator<Map.Entry<C, V>>(){

                    @Override
                    public boolean hasNext() {
                        return iterator.hasNext();
                    }

                    @Override
                    public Map.Entry<C, V> next() {
                        final Map.Entry entry = (Map.Entry)iterator.next();
                        return new ForwardingMapEntry<C, V>(){

                            @Override
                            protected Map.Entry<C, V> delegate() {
                                return entry;
                            }

                            @Override
                            public V setValue(V value) {
                                return super.setValue(Preconditions.checkNotNull(value));
                            }

                            @Override
                            public boolean equals(Object object) {
                                return this.standardEquals(object);
                            }
                        };
                    }

                    @Override
                    public void remove() {
                        iterator.remove();
                        Row.this.maintainEmptyInvariant();
                    }
                };
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class RowKeySet
    extends TableSet<R> {
        RowKeySet() {
        }

        @Override
        public Iterator<R> iterator() {
            return StandardTable.keyIteratorImpl(StandardTable.this.rowMap());
        }

        @Override
        public int size() {
            return StandardTable.this.backingMap.size();
        }

        @Override
        public boolean contains(Object obj) {
            return StandardTable.this.containsRow(obj);
        }

        @Override
        public boolean remove(Object obj) {
            return obj != null && StandardTable.this.backingMap.remove(obj) != null;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class RowMap
    extends Maps.ImprovedAbstractMap<R, Map<C, V>> {
        RowMap() {
        }

        @Override
        public boolean containsKey(Object key) {
            return StandardTable.this.containsRow(key);
        }

        @Override
        public Map<C, V> get(Object key) {
            return StandardTable.this.containsRow(key) ? StandardTable.this.row(key) : null;
        }

        @Override
        public Set<R> keySet() {
            return StandardTable.this.rowKeySet();
        }

        @Override
        public Map<C, V> remove(Object key) {
            return key == null ? null : StandardTable.this.backingMap.remove(key);
        }

        @Override
        protected Set<Map.Entry<R, Map<C, V>>> createEntrySet() {
            return new EntrySet();
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class EntryIterator
        implements Iterator<Map.Entry<R, Map<C, V>>> {
            final Iterator<R> delegate;

            EntryIterator() {
                this.delegate = StandardTable.this.backingMap.keySet().iterator();
            }

            @Override
            public boolean hasNext() {
                return this.delegate.hasNext();
            }

            @Override
            public Map.Entry<R, Map<C, V>> next() {
                Object rowKey = this.delegate.next();
                return new ImmutableEntry(rowKey, StandardTable.this.row(rowKey));
            }

            @Override
            public void remove() {
                this.delegate.remove();
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        class EntrySet
        extends TableSet<Map.Entry<R, Map<C, V>>> {
            EntrySet() {
            }

            @Override
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return new EntryIterator();
            }

            @Override
            public int size() {
                return StandardTable.this.backingMap.size();
            }

            @Override
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry)obj;
                    return entry.getKey() != null && entry.getValue() instanceof Map && Collections2.safeContains(StandardTable.this.backingMap.entrySet(), entry);
                }
                return false;
            }

            @Override
            public boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry)obj;
                    return entry.getKey() != null && entry.getValue() instanceof Map && StandardTable.this.backingMap.entrySet().remove(entry);
                }
                return false;
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private abstract class TableCollection<T>
    extends AbstractCollection<T> {
        private TableCollection() {
        }

        @Override
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }

        @Override
        public void clear() {
            StandardTable.this.backingMap.clear();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private abstract class TableSet<T>
    extends AbstractSet<T> {
        private TableSet() {
        }

        @Override
        public boolean isEmpty() {
            return StandardTable.this.backingMap.isEmpty();
        }

        @Override
        public void clear() {
            StandardTable.this.backingMap.clear();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Values
    extends TableCollection<V> {
        private Values() {
        }

        @Override
        public Iterator<V> iterator() {
            final Iterator cellIterator = StandardTable.this.cellSet().iterator();
            return new Iterator<V>(){

                @Override
                public boolean hasNext() {
                    return cellIterator.hasNext();
                }

                @Override
                public V next() {
                    return ((Table.Cell)cellIterator.next()).getValue();
                }

                @Override
                public void remove() {
                    cellIterator.remove();
                }
            };
        }

        @Override
        public int size() {
            return StandardTable.this.size();
        }
    }
}

