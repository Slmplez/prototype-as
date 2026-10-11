/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIndexedListIterator;
import com.google.common.collect.AbstractMapEntry;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public final class ArrayTable<R, C, V>
implements Table<R, C, V>,
Serializable {
    private final ImmutableList<R> rowList;
    private final ImmutableList<C> columnList;
    private final ImmutableMap<R, Integer> rowKeyToIndex;
    private final ImmutableMap<C, Integer> columnKeyToIndex;
    private final V[][] array;
    private transient CellSet cellSet;
    private transient ColumnMap columnMap;
    private transient RowMap rowMap;
    private transient Collection<V> values;
    private static final long serialVersionUID = 0L;

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> rowKeys, Iterable<? extends C> columnKeys) {
        return new ArrayTable<R, C, V>(rowKeys, columnKeys);
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Table<R, C, V> table) {
        return new ArrayTable<R, C, V>(table);
    }

    public static <R, C, V> ArrayTable<R, C, V> create(ArrayTable<R, C, V> table) {
        return new ArrayTable<R, C, V>(table);
    }

    private ArrayTable(Iterable<? extends R> rowKeys, Iterable<? extends C> columnKeys) {
        this.rowList = ImmutableList.copyOf(rowKeys);
        this.columnList = ImmutableList.copyOf(columnKeys);
        Preconditions.checkArgument(!this.rowList.isEmpty());
        Preconditions.checkArgument(!this.columnList.isEmpty());
        ImmutableMap.Builder rowBuilder = ImmutableMap.builder();
        for (int i = 0; i < this.rowList.size(); ++i) {
            rowBuilder.put(this.rowList.get(i), i);
        }
        this.rowKeyToIndex = rowBuilder.build();
        ImmutableMap.Builder columnBuilder = ImmutableMap.builder();
        for (int i = 0; i < this.columnList.size(); ++i) {
            columnBuilder.put(this.columnList.get(i), i);
        }
        this.columnKeyToIndex = columnBuilder.build();
        Object[][] tmpArray = new Object[this.rowList.size()][this.columnList.size()];
        this.array = tmpArray;
    }

    private ArrayTable(Table<R, C, V> table) {
        this(table.rowKeySet(), table.columnKeySet());
        this.putAll(table);
    }

    private ArrayTable(ArrayTable<R, C, V> table) {
        this.rowList = table.rowList;
        this.columnList = table.columnList;
        this.rowKeyToIndex = table.rowKeyToIndex;
        this.columnKeyToIndex = table.columnKeyToIndex;
        Object[][] copy = new Object[this.rowList.size()][this.columnList.size()];
        this.array = copy;
        for (int i = 0; i < this.rowList.size(); ++i) {
            System.arraycopy(table.array[i], 0, copy[i], 0, table.array[i].length);
        }
    }

    public ImmutableList<R> rowKeyList() {
        return this.rowList;
    }

    public ImmutableList<C> columnKeyList() {
        return this.columnList;
    }

    public V at(int rowIndex, int columnIndex) {
        return this.array[rowIndex][columnIndex];
    }

    public V set(int rowIndex, int columnIndex, @Nullable V value) {
        V oldValue = this.array[rowIndex][columnIndex];
        this.array[rowIndex][columnIndex] = value;
        return oldValue;
    }

    public V[][] toArray(Class<V> valueClass) {
        Object[][] copy = (Object[][])Array.newInstance(valueClass, this.rowList.size(), this.columnList.size());
        for (int i = 0; i < this.rowList.size(); ++i) {
            System.arraycopy(this.array[i], 0, copy[i], 0, this.array[i].length);
        }
        return copy;
    }

    @Override
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public void eraseAll() {
        for (Object[] objectArray : this.array) {
            Arrays.fill(objectArray, null);
        }
    }

    @Override
    public boolean contains(@Nullable Object rowKey, @Nullable Object columnKey) {
        return this.containsRow(rowKey) && this.containsColumn(columnKey);
    }

    @Override
    public boolean containsColumn(@Nullable Object columnKey) {
        return this.columnKeyToIndex.containsKey(columnKey);
    }

    @Override
    public boolean containsRow(@Nullable Object rowKey) {
        return this.rowKeyToIndex.containsKey(rowKey);
    }

    @Override
    public boolean containsValue(@Nullable Object value) {
        V[][] arr$ = this.array;
        int len$ = arr$.length;
        for (int i$ = 0; i$ < len$; ++i$) {
            V[] row;
            for (V element : row = arr$[i$]) {
                if (!Objects.equal(value, element)) continue;
                return true;
            }
        }
        return false;
    }

    @Override
    public V get(@Nullable Object rowKey, @Nullable Object columnKey) {
        Integer rowIndex = this.rowKeyToIndex.get(rowKey);
        Integer columnIndex = this.columnKeyToIndex.get(columnKey);
        return this.getIndexed(rowIndex, columnIndex);
    }

    private V getIndexed(Integer rowIndex, Integer columnIndex) {
        return rowIndex == null || columnIndex == null ? null : (V)this.array[rowIndex][columnIndex];
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public V put(R rowKey, C columnKey, @Nullable V value) {
        Preconditions.checkNotNull(rowKey);
        Preconditions.checkNotNull(columnKey);
        Integer rowIndex = this.rowKeyToIndex.get(rowKey);
        Preconditions.checkArgument(rowIndex != null, "Row %s not in %s", rowKey, this.rowList);
        Integer columnIndex = this.columnKeyToIndex.get(columnKey);
        Preconditions.checkArgument(columnIndex != null, "Column %s not in %s", columnKey, this.columnList);
        return this.set(rowIndex, columnIndex, value);
    }

    @Override
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        for (Table.Cell<R, C, V> cell : table.cellSet()) {
            this.put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
        }
    }

    @Override
    @Deprecated
    public V remove(Object rowKey, Object columnKey) {
        throw new UnsupportedOperationException();
    }

    public V erase(@Nullable Object rowKey, @Nullable Object columnKey) {
        Integer rowIndex = this.rowKeyToIndex.get(rowKey);
        Integer columnIndex = this.columnKeyToIndex.get(columnKey);
        if (rowIndex == null || columnIndex == null) {
            return null;
        }
        return this.set(rowIndex, columnIndex, null);
    }

    @Override
    public int size() {
        return this.rowList.size() * this.columnList.size();
    }

    @Override
    public boolean equals(@Nullable Object obj) {
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
    public Set<Table.Cell<R, C, V>> cellSet() {
        CellSet set = this.cellSet;
        return set == null ? (this.cellSet = new CellSet()) : set;
    }

    @Override
    public Map<R, V> column(C columnKey) {
        Preconditions.checkNotNull(columnKey);
        Integer columnIndex = this.columnKeyToIndex.get(columnKey);
        return columnIndex == null ? ImmutableMap.of() : new Column(columnIndex);
    }

    @Override
    public ImmutableSet<C> columnKeySet() {
        return this.columnKeyToIndex.keySet();
    }

    @Override
    public Map<C, Map<R, V>> columnMap() {
        ColumnMap map = this.columnMap;
        return map == null ? (this.columnMap = new ColumnMap()) : map;
    }

    @Override
    public Map<C, V> row(R rowKey) {
        Preconditions.checkNotNull(rowKey);
        Integer rowIndex = this.rowKeyToIndex.get(rowKey);
        return rowIndex == null ? ImmutableMap.of() : new Row(rowIndex);
    }

    @Override
    public ImmutableSet<R> rowKeySet() {
        return this.rowKeyToIndex.keySet();
    }

    @Override
    public Map<R, Map<C, V>> rowMap() {
        RowMap map = this.rowMap;
        return map == null ? (this.rowMap = new RowMap()) : map;
    }

    @Override
    public Collection<V> values() {
        Values v = this.values;
        return v == null ? (this.values = new Values()) : v;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class CellSet
    extends AbstractSet<Table.Cell<R, C, V>> {
        private CellSet() {
        }

        @Override
        public Iterator<Table.Cell<R, C, V>> iterator() {
            return new AbstractIndexedListIterator<Table.Cell<R, C, V>>(this.size()){

                @Override
                protected Table.Cell<R, C, V> get(final int index) {
                    return new Tables.AbstractCell<R, C, V>(){
                        final int rowIndex;
                        final int columnIndex;
                        {
                            this.rowIndex = index / ArrayTable.this.columnList.size();
                            this.columnIndex = index % ArrayTable.this.columnList.size();
                        }

                        @Override
                        public R getRowKey() {
                            return ArrayTable.this.rowList.get(this.rowIndex);
                        }

                        @Override
                        public C getColumnKey() {
                            return ArrayTable.this.columnList.get(this.columnIndex);
                        }

                        @Override
                        public V getValue() {
                            return ArrayTable.this.array[this.rowIndex][this.columnIndex];
                        }
                    };
                }
            };
        }

        @Override
        public int size() {
            return ArrayTable.this.size();
        }

        @Override
        public boolean contains(Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell)obj;
                Integer rowIndex = (Integer)ArrayTable.this.rowKeyToIndex.get(cell.getRowKey());
                Integer columnIndex = (Integer)ArrayTable.this.columnKeyToIndex.get(cell.getColumnKey());
                return rowIndex != null && columnIndex != null && Objects.equal(ArrayTable.this.array[rowIndex][columnIndex], cell.getValue());
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Column
    extends AbstractMap<R, V> {
        final int columnIndex;
        ColumnEntrySet entrySet;

        Column(int columnIndex) {
            this.columnIndex = columnIndex;
        }

        @Override
        public Set<Map.Entry<R, V>> entrySet() {
            ColumnEntrySet set = this.entrySet;
            return set == null ? (this.entrySet = new ColumnEntrySet(this.columnIndex)) : set;
        }

        @Override
        public V get(Object rowKey) {
            Integer rowIndex = (Integer)ArrayTable.this.rowKeyToIndex.get(rowKey);
            return ArrayTable.this.getIndexed(rowIndex, this.columnIndex);
        }

        @Override
        public boolean containsKey(Object rowKey) {
            return ArrayTable.this.rowKeyToIndex.containsKey(rowKey);
        }

        @Override
        public V put(R rowKey, V value) {
            Preconditions.checkNotNull(rowKey);
            Integer rowIndex = (Integer)ArrayTable.this.rowKeyToIndex.get(rowKey);
            Preconditions.checkArgument(rowIndex != null, "Row %s not in %s", rowKey, ArrayTable.this.rowList);
            return ArrayTable.this.set(rowIndex, this.columnIndex, value);
        }

        @Override
        public Set<R> keySet() {
            return ArrayTable.this.rowKeySet();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ColumnEntrySet
    extends AbstractSet<Map.Entry<R, V>> {
        final int columnIndex;

        ColumnEntrySet(int columnIndex) {
            this.columnIndex = columnIndex;
        }

        @Override
        public Iterator<Map.Entry<R, V>> iterator() {
            return new AbstractIndexedListIterator<Map.Entry<R, V>>(this.size()){

                @Override
                protected Map.Entry<R, V> get(final int rowIndex) {
                    return new AbstractMapEntry<R, V>(){

                        @Override
                        public R getKey() {
                            return ArrayTable.this.rowList.get(rowIndex);
                        }

                        @Override
                        public V getValue() {
                            return ArrayTable.this.array[rowIndex][ColumnEntrySet.this.columnIndex];
                        }

                        @Override
                        public V setValue(V value) {
                            return ArrayTable.this.set(rowIndex, ColumnEntrySet.this.columnIndex, value);
                        }
                    };
                }
            };
        }

        @Override
        public int size() {
            return ArrayTable.this.rowList.size();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ColumnMap
    extends AbstractMap<C, Map<R, V>> {
        transient ColumnMapEntrySet entrySet;

        private ColumnMap() {
        }

        @Override
        public Set<Map.Entry<C, Map<R, V>>> entrySet() {
            ColumnMapEntrySet set = this.entrySet;
            return set == null ? (this.entrySet = new ColumnMapEntrySet()) : set;
        }

        @Override
        public Map<R, V> get(Object columnKey) {
            Integer columnIndex = (Integer)ArrayTable.this.columnKeyToIndex.get(columnKey);
            return columnIndex == null ? null : new Column(columnIndex);
        }

        @Override
        public boolean containsKey(Object columnKey) {
            return ArrayTable.this.containsColumn(columnKey);
        }

        @Override
        public Set<C> keySet() {
            return ArrayTable.this.columnKeySet();
        }

        @Override
        public Map<R, V> remove(Object columnKey) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ColumnMapEntrySet
    extends AbstractSet<Map.Entry<C, Map<R, V>>> {
        private ColumnMapEntrySet() {
        }

        @Override
        public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
            return new AbstractIndexedListIterator<Map.Entry<C, Map<R, V>>>(this.size()){

                @Override
                protected Map.Entry<C, Map<R, V>> get(int index) {
                    return Maps.immutableEntry(ArrayTable.this.columnList.get(index), new Column(index));
                }
            };
        }

        @Override
        public int size() {
            return ArrayTable.this.columnList.size();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Row
    extends AbstractMap<C, V> {
        final int rowIndex;
        RowEntrySet entrySet;

        Row(int rowIndex) {
            this.rowIndex = rowIndex;
        }

        @Override
        public Set<Map.Entry<C, V>> entrySet() {
            RowEntrySet set = this.entrySet;
            return set == null ? (this.entrySet = new RowEntrySet(this.rowIndex)) : set;
        }

        @Override
        public V get(Object columnKey) {
            Integer columnIndex = (Integer)ArrayTable.this.columnKeyToIndex.get(columnKey);
            return ArrayTable.this.getIndexed(this.rowIndex, columnIndex);
        }

        @Override
        public boolean containsKey(Object columnKey) {
            return ArrayTable.this.containsColumn(columnKey);
        }

        @Override
        public V put(C columnKey, V value) {
            Preconditions.checkNotNull(columnKey);
            Integer columnIndex = (Integer)ArrayTable.this.columnKeyToIndex.get(columnKey);
            Preconditions.checkArgument(columnIndex != null, "Column %s not in %s", columnKey, ArrayTable.this.columnList);
            return ArrayTable.this.set(this.rowIndex, columnIndex, value);
        }

        @Override
        public Set<C> keySet() {
            return ArrayTable.this.columnKeySet();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class RowEntrySet
    extends AbstractSet<Map.Entry<C, V>> {
        final int rowIndex;

        RowEntrySet(int rowIndex) {
            this.rowIndex = rowIndex;
        }

        @Override
        public Iterator<Map.Entry<C, V>> iterator() {
            return new AbstractIndexedListIterator<Map.Entry<C, V>>(this.size()){

                @Override
                protected Map.Entry<C, V> get(final int columnIndex) {
                    return new AbstractMapEntry<C, V>(){

                        @Override
                        public C getKey() {
                            return ArrayTable.this.columnList.get(columnIndex);
                        }

                        @Override
                        public V getValue() {
                            return ArrayTable.this.array[RowEntrySet.this.rowIndex][columnIndex];
                        }

                        @Override
                        public V setValue(V value) {
                            return ArrayTable.this.set(RowEntrySet.this.rowIndex, columnIndex, value);
                        }
                    };
                }
            };
        }

        @Override
        public int size() {
            return ArrayTable.this.columnList.size();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class RowMap
    extends AbstractMap<R, Map<C, V>> {
        transient RowMapEntrySet entrySet;

        private RowMap() {
        }

        @Override
        public Set<Map.Entry<R, Map<C, V>>> entrySet() {
            RowMapEntrySet set = this.entrySet;
            return set == null ? (this.entrySet = new RowMapEntrySet()) : set;
        }

        @Override
        public Map<C, V> get(Object rowKey) {
            Integer rowIndex = (Integer)ArrayTable.this.rowKeyToIndex.get(rowKey);
            return rowIndex == null ? null : new Row(rowIndex);
        }

        @Override
        public boolean containsKey(Object rowKey) {
            return ArrayTable.this.containsRow(rowKey);
        }

        @Override
        public Set<R> keySet() {
            return ArrayTable.this.rowKeySet();
        }

        @Override
        public Map<C, V> remove(Object rowKey) {
            throw new UnsupportedOperationException();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class RowMapEntrySet
    extends AbstractSet<Map.Entry<R, Map<C, V>>> {
        private RowMapEntrySet() {
        }

        @Override
        public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
            return new AbstractIndexedListIterator<Map.Entry<R, Map<C, V>>>(this.size()){

                @Override
                protected Map.Entry<R, Map<C, V>> get(int index) {
                    return Maps.immutableEntry(ArrayTable.this.rowList.get(index), new Row(index));
                }
            };
        }

        @Override
        public int size() {
            return ArrayTable.this.rowList.size();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Values
    extends AbstractCollection<V> {
        private Values() {
        }

        @Override
        public Iterator<V> iterator() {
            return new AbstractIndexedListIterator<V>(this.size()){

                @Override
                protected V get(int index) {
                    int rowIndex = index / ArrayTable.this.columnList.size();
                    int columnIndex = index % ArrayTable.this.columnList.size();
                    return ArrayTable.this.array[rowIndex][columnIndex];
                }
            };
        }

        @Override
        public int size() {
            return ArrayTable.this.size();
        }

        @Override
        public boolean contains(Object value) {
            return ArrayTable.this.containsValue(value);
        }
    }
}

