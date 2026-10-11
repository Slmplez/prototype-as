/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.utils;

import org.eclipse.core.internal.utils.KeyedHashSet;
import org.eclipse.core.runtime.Assert;

public class Cache {
    KeyedHashSet entries;
    Entry head;
    private int maximumCapacity;
    Entry tail;
    private double threshold;

    public Cache(int maximumCapacity) {
        this(Math.min(7, maximumCapacity), maximumCapacity, 0.25);
    }

    public Cache(int initialCapacity, int maximumCapacity, double threshold) {
        Assert.isTrue((maximumCapacity >= initialCapacity ? 1 : 0) != 0, (String)"maximum capacity < initial capacity");
        Assert.isTrue((threshold >= 0.0 && threshold <= 1.0 ? 1 : 0) != 0, (String)"threshold should be between 0 and 1");
        Assert.isTrue((initialCapacity > 0 ? 1 : 0) != 0, (String)"initial capacity must be greater than zero");
        this.entries = new KeyedHashSet(initialCapacity);
        this.maximumCapacity = maximumCapacity;
        this.threshold = threshold;
    }

    public void addEntry(Object key, Object toCache) {
        this.addEntry(key, toCache, 0L);
    }

    public Entry addEntry(Object key, Object toCache, long timestamp) {
        Entry newHead = (Entry)this.entries.getByKey(key);
        if (newHead == null) {
            newHead = new Entry(key, toCache, timestamp);
            this.entries.add(newHead);
        }
        newHead.cached = toCache;
        newHead.timestamp = timestamp;
        newHead.makeHead();
        int extraEntries = this.entries.size() - this.maximumCapacity;
        if ((double)extraEntries > (double)this.maximumCapacity * this.threshold) {
            this.packEntries(extraEntries);
        }
        return newHead;
    }

    public Entry getEntry(Object key) {
        return this.getEntry(key, true);
    }

    public Entry getEntry(Object key, boolean update) {
        Entry existing = (Entry)this.entries.getByKey(key);
        if (existing == null) {
            return null;
        }
        if (!update) {
            return existing;
        }
        existing.unchain();
        existing.makeHead();
        return existing;
    }

    public Entry getHead() {
        return this.head;
    }

    public Entry getTail() {
        return this.tail;
    }

    private void packEntries(int extraEntries) {
        Entry current = this.tail;
        while (current != null && extraEntries > 0) {
            current.discard();
            current = current.previous;
            --extraEntries;
        }
    }

    public long size() {
        return this.entries.size();
    }

    public void discardAll() {
        this.entries.clear();
    }

    public void dispose() {
        this.discardAll();
        this.entries = null;
    }

    public class Entry
    implements KeyedHashSet.KeyedElement {
        Object cached;
        Object key;
        Entry next;
        Entry previous;
        long timestamp;

        public Entry(Object key, Object cached, long timestamp) {
            this.key = key;
            this.cached = cached;
            this.timestamp = timestamp;
        }

        public boolean compare(KeyedHashSet.KeyedElement other) {
            if (!(other instanceof Entry)) {
                return false;
            }
            Entry otherEntry = (Entry)other;
            return this.key.equals(otherEntry.key);
        }

        public void discard() {
            this.unchain();
            this.cached = null;
            Cache.this.entries.remove(this);
        }

        public Object getCached() {
            return this.cached;
        }

        public Object getKey() {
            return this.key;
        }

        public int getKeyHashCode() {
            return this.key.hashCode();
        }

        public Entry getNext() {
            return this.next;
        }

        public Entry getPrevious() {
            return this.previous;
        }

        public long getTimestamp() {
            return this.timestamp;
        }

        public boolean isHead() {
            return this.previous == null;
        }

        public boolean isTail() {
            return this.next == null;
        }

        void makeHead() {
            Entry oldHead = Cache.this.head;
            Cache.this.head = this;
            this.next = oldHead;
            this.previous = null;
            if (oldHead == null) {
                Cache.this.tail = this;
            } else {
                oldHead.previous = this;
            }
        }

        public void setCached(Object cached) {
            this.cached = cached;
        }

        public void setTimestamp(long timestamp) {
            this.timestamp = timestamp;
        }

        public String toString() {
            return this.key + " -> " + this.cached + " [" + this.timestamp + ']';
        }

        void unchain() {
            if (Cache.this.tail == this) {
                Cache.this.tail = this.previous;
            } else {
                this.next.previous = this.previous;
            }
            if (Cache.this.head == this) {
                Cache.this.head = this.next;
            } else {
                this.previous.next = this.next;
            }
        }
    }
}

