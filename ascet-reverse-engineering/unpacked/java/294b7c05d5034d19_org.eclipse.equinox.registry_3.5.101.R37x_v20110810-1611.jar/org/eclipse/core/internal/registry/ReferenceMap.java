/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

public class ReferenceMap {
    public static final int HARD = 0;
    public static final int SOFT = 1;
    private float loadFactor;
    private transient ReferenceQueue queue = new ReferenceQueue();
    private transient int size;
    private transient IEntry[] table;
    private transient int threshold;
    int valueType;

    public ReferenceMap(int referenceType, int capacity, float loadFactor) {
        if (referenceType != 0 && referenceType != 1) {
            throw new IllegalArgumentException(" must be HARD or SOFT.");
        }
        if (capacity <= 0) {
            throw new IllegalArgumentException("capacity must be positive");
        }
        if (loadFactor <= 0.0f || loadFactor >= 1.0f) {
            throw new IllegalArgumentException("Load factor must be greater than 0 and less than 1.");
        }
        this.valueType = referenceType;
        int initialSize = 1;
        while (initialSize < capacity) {
            initialSize *= 2;
        }
        this.table = new IEntry[initialSize];
        this.loadFactor = loadFactor;
        this.threshold = (int)((float)initialSize * loadFactor);
    }

    private Object doRemove(int key, boolean cleanup) {
        int index = this.indexFor(key);
        IEntry previous = null;
        IEntry entry = this.table[index];
        while (entry != null) {
            if (!(key != entry.getKey() || cleanup && entry.getValue() != null)) {
                if (previous == null) {
                    this.table[index] = entry.getNext();
                } else {
                    previous.setNext(entry.getNext());
                }
                --this.size;
                return entry.getValue();
            }
            previous = entry;
            entry = entry.getNext();
        }
        return null;
    }

    public Object get(int key) {
        this.purge();
        IEntry entry = this.table[this.indexFor(key)];
        while (entry != null) {
            if (entry.getKey() == key) {
                return entry.getValue();
            }
            entry = entry.getNext();
        }
        return null;
    }

    private int indexFor(int hash) {
        hash += ~(hash << 15);
        hash ^= hash >>> 10;
        hash += hash << 3;
        hash ^= hash >>> 6;
        hash += ~(hash << 11);
        hash ^= hash >>> 16;
        return hash & this.table.length - 1;
    }

    private IEntry newEntry(int key, Object value, IEntry next) {
        switch (this.valueType) {
            case 0: {
                return new HardRef(key, value, next);
            }
            case 1: {
                return new SoftRef(key, value, next, this.queue);
            }
        }
        throw new Error();
    }

    private void purge() {
        Reference ref = this.queue.poll();
        while (ref != null) {
            this.doRemove(((IEntry)((Object)ref)).getKey(), true);
            ref.clear();
            ref = this.queue.poll();
        }
    }

    public void put(int key, Object value) {
        if (value == null) {
            throw new NullPointerException("null values not allowed");
        }
        this.purge();
        if (this.size + 1 > this.threshold) {
            this.resize();
        }
        int index = this.indexFor(key);
        IEntry previous = null;
        IEntry entry = this.table[index];
        while (entry != null) {
            if (key == entry.getKey()) {
                if (previous == null) {
                    this.table[index] = this.newEntry(key, value, entry.getNext());
                } else {
                    previous.setNext(this.newEntry(key, value, entry.getNext()));
                }
                return;
            }
            previous = entry;
            entry = entry.getNext();
        }
        ++this.size;
        this.table[index] = this.newEntry(key, value, this.table[index]);
    }

    public Object remove(int key) {
        this.purge();
        return this.doRemove(key, false);
    }

    private void resize() {
        IEntry[] old = this.table;
        this.table = new IEntry[old.length * 2];
        int i = 0;
        while (i < old.length) {
            IEntry next = old[i];
            while (next != null) {
                IEntry entry = next;
                next = next.getNext();
                int index = this.indexFor(entry.getKey());
                entry.setNext(this.table[index]);
                this.table[index] = entry;
            }
            old[i] = null;
            ++i;
        }
        this.threshold = (int)((float)this.table.length * this.loadFactor);
    }

    private static class HardRef
    implements IEntry {
        private int key;
        private IEntry next;
        private Object value;

        public HardRef(int key, Object value, IEntry next) {
            this.key = key;
            this.value = value;
            this.next = next;
        }

        public int getKey() {
            return this.key;
        }

        public IEntry getNext() {
            return this.next;
        }

        public Object getValue() {
            return this.value;
        }

        public void setNext(IEntry next) {
            this.next = next;
        }

        public String toString() {
            return "HardRef(" + this.key + ',' + this.value + ')';
        }
    }

    private static interface IEntry {
        public int getKey();

        public IEntry getNext();

        public Object getValue();

        public void setNext(IEntry var1);
    }

    private static class SoftRef
    extends SoftReference
    implements IEntry {
        private int key;
        private IEntry next;

        public SoftRef(int key, Object value, IEntry next, ReferenceQueue q) {
            super(value, q);
            this.key = key;
            this.next = next;
        }

        public int getKey() {
            return this.key;
        }

        public IEntry getNext() {
            return this.next;
        }

        public Object getValue() {
            return super.get();
        }

        public void setNext(IEntry next) {
            this.next = next;
        }
    }
}

