/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.eclipse.jface.viewers.IElementComparer;

final class CustomHashtable {
    transient int elementCount;
    transient HashMapEntry[] elementData;
    private float loadFactor;
    private int threshold;
    transient int firstSlot = 0;
    transient int lastSlot = -1;
    private transient IElementComparer comparer;
    private static final EmptyEnumerator emptyEnumerator = new EmptyEnumerator();
    public static final int DEFAULT_CAPACITY = 13;

    public CustomHashtable() {
        this(13);
    }

    public CustomHashtable(int capacity) {
        this(capacity, null);
    }

    public CustomHashtable(IElementComparer comparer) {
        this(13, comparer);
    }

    public CustomHashtable(int capacity, IElementComparer comparer) {
        if (capacity < 0) {
            throw new IllegalArgumentException();
        }
        this.elementCount = 0;
        this.elementData = new HashMapEntry[capacity == 0 ? 1 : capacity];
        this.firstSlot = this.elementData.length;
        this.loadFactor = 0.75f;
        this.computeMaxSize();
        this.comparer = comparer;
    }

    public CustomHashtable(CustomHashtable table, IElementComparer comparer) {
        this(table.size() * 2, comparer);
        int i = table.elementData.length;
        while (--i >= 0) {
            HashMapEntry entry = table.elementData[i];
            while (entry != null) {
                this.put(entry.key, entry.value);
                entry = entry.next;
            }
        }
    }

    public IElementComparer getComparer() {
        return this.comparer;
    }

    private void computeMaxSize() {
        this.threshold = (int)((float)this.elementData.length * this.loadFactor);
    }

    public boolean containsKey(Object key) {
        return this.getEntry(key) != null;
    }

    public Enumeration elements() {
        if (this.elementCount == 0) {
            return emptyEnumerator;
        }
        return new HashEnumerator(false);
    }

    public Object get(Object key) {
        int index = (this.hashCode(key) & Integer.MAX_VALUE) % this.elementData.length;
        HashMapEntry entry = this.elementData[index];
        while (entry != null) {
            if (this.keyEquals(key, entry.key)) {
                return entry.value;
            }
            entry = entry.next;
        }
        return null;
    }

    private HashMapEntry getEntry(Object key) {
        int index = (this.hashCode(key) & Integer.MAX_VALUE) % this.elementData.length;
        HashMapEntry entry = this.elementData[index];
        while (entry != null) {
            if (this.keyEquals(key, entry.key)) {
                return entry;
            }
            entry = entry.next;
        }
        return null;
    }

    private int hashCode(Object key) {
        if (this.comparer == null) {
            return key.hashCode();
        }
        return this.comparer.hashCode(key);
    }

    private boolean keyEquals(Object a, Object b) {
        if (this.comparer == null) {
            return a.equals(b);
        }
        return this.comparer.equals(a, b);
    }

    public Enumeration keys() {
        if (this.elementCount == 0) {
            return emptyEnumerator;
        }
        return new HashEnumerator(true);
    }

    public Object put(Object key, Object value) {
        if (key != null && value != null) {
            int index = (this.hashCode(key) & Integer.MAX_VALUE) % this.elementData.length;
            HashMapEntry entry = this.elementData[index];
            while (entry != null && !this.keyEquals(key, entry.key)) {
                entry = entry.next;
            }
            if (entry == null) {
                if (++this.elementCount > this.threshold) {
                    this.rehash();
                    index = (this.hashCode(key) & Integer.MAX_VALUE) % this.elementData.length;
                }
                if (index < this.firstSlot) {
                    this.firstSlot = index;
                }
                if (index > this.lastSlot) {
                    this.lastSlot = index;
                }
                entry = new HashMapEntry(key, value);
                entry.next = this.elementData[index];
                this.elementData[index] = entry;
                return null;
            }
            Object result = entry.value;
            entry.key = key;
            entry.value = value;
            return result;
        }
        throw new NullPointerException();
    }

    private void rehash() {
        int length = this.elementData.length << 1;
        if (length == 0) {
            length = 1;
        }
        this.firstSlot = length;
        this.lastSlot = -1;
        HashMapEntry[] newData = new HashMapEntry[length];
        int i = this.elementData.length;
        while (--i >= 0) {
            HashMapEntry entry = this.elementData[i];
            while (entry != null) {
                int index = (this.hashCode(entry.key) & Integer.MAX_VALUE) % length;
                if (index < this.firstSlot) {
                    this.firstSlot = index;
                }
                if (index > this.lastSlot) {
                    this.lastSlot = index;
                }
                HashMapEntry next = entry.next;
                entry.next = newData[index];
                newData[index] = entry;
                entry = next;
            }
        }
        this.elementData = newData;
        this.computeMaxSize();
    }

    public Object remove(Object key) {
        HashMapEntry last = null;
        int index = (this.hashCode(key) & Integer.MAX_VALUE) % this.elementData.length;
        HashMapEntry entry = this.elementData[index];
        while (entry != null && !this.keyEquals(key, entry.key)) {
            last = entry;
            entry = entry.next;
        }
        if (entry != null) {
            if (last == null) {
                this.elementData[index] = entry.next;
            } else {
                last.next = entry.next;
            }
            --this.elementCount;
            return entry.value;
        }
        return null;
    }

    public int size() {
        return this.elementCount;
    }

    public String toString() {
        if (this.size() == 0) {
            return "{}";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append('{');
        int i = this.elementData.length;
        while (--i >= 0) {
            HashMapEntry entry = this.elementData[i];
            while (entry != null) {
                buffer.append(entry.key);
                buffer.append('=');
                buffer.append(entry.value);
                buffer.append(", ");
                entry = entry.next;
            }
        }
        if (this.elementCount > 0) {
            buffer.setLength(buffer.length() - 2);
        }
        buffer.append('}');
        return buffer.toString();
    }

    private static final class EmptyEnumerator
    implements Enumeration {
        private EmptyEnumerator() {
        }

        public boolean hasMoreElements() {
            return false;
        }

        public Object nextElement() {
            throw new NoSuchElementException();
        }
    }

    private class HashEnumerator
    implements Enumeration {
        boolean key;
        int start;
        HashMapEntry entry;

        HashEnumerator(boolean isKey) {
            this.key = isKey;
            this.start = CustomHashtable.this.firstSlot;
        }

        /*
         * Unable to fully structure code
         */
        public boolean hasMoreElements() {
            if (this.entry == null) ** GOTO lbl6
            return true;
lbl-1000:
            // 1 sources

            {
                if (CustomHashtable.this.elementData[this.start++] == null) continue;
                this.entry = CustomHashtable.this.elementData[this.start - 1];
                return true;
lbl6:
                // 2 sources

                ** while (this.start <= CustomHashtable.this.lastSlot)
            }
lbl7:
            // 1 sources

            return false;
        }

        public Object nextElement() {
            if (this.hasMoreElements()) {
                Object result = this.key ? this.entry.key : this.entry.value;
                this.entry = this.entry.next;
                return result;
            }
            throw new NoSuchElementException();
        }
    }

    private static class HashMapEntry {
        Object key;
        Object value;
        HashMapEntry next;

        HashMapEntry(Object theKey, Object theValue) {
            this.key = theKey;
            this.value = theValue;
        }
    }
}

