/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.LRUCacheEnumerator;
import org.eclipse.jdt.internal.core.OverflowingLRUCache;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Messages;

public abstract class OverflowingLRUCache
extends LRUCache {
    protected int overflow = 0;
    protected boolean timestampsOn = true;
    protected double loadFactor = 0.333;

    public OverflowingLRUCache(int size) {
        this(size, 0);
    }

    public OverflowingLRUCache(int size, int overflow) {
        super(size);
        this.overflow = overflow;
    }

    public Object clone() {
        OverflowingLRUCache newCache = (OverflowingLRUCache)this.newInstance(this.spaceLimit, this.overflow);
        LRUCache.LRUCacheEntry qEntry = this.entryQueueTail;
        while (qEntry != null) {
            newCache.privateAdd(qEntry.key, qEntry.value, qEntry.space);
            qEntry = qEntry.previous;
        }
        return newCache;
    }

    protected abstract boolean close(LRUCache.LRUCacheEntry var1);

    public Enumeration elements() {
        if (this.entryQueue == null) {
            return new LRUCacheEnumerator(null);
        }
        LRUCacheEnumerator.LRUEnumeratorElement head = new LRUCacheEnumerator.LRUEnumeratorElement(this.entryQueue.value);
        LRUCache.LRUCacheEntry currentEntry = this.entryQueue.next;
        LRUCacheEnumerator.LRUEnumeratorElement currentElement = head;
        while (currentEntry != null) {
            currentElement = currentElement.next = new LRUCacheEnumerator.LRUEnumeratorElement(currentEntry.value);
            currentEntry = currentEntry.next;
        }
        return new LRUCacheEnumerator(head);
    }

    public double fillingRatio() {
        return (double)(this.currentSpace + this.overflow) * 100.0 / (double)this.spaceLimit;
    }

    public Hashtable getEntryTable() {
        return this.entryTable;
    }

    public double getLoadFactor() {
        return this.loadFactor;
    }

    public int getOverflow() {
        return this.overflow;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected boolean makeSpace(int space) {
        int limit = this.spaceLimit;
        if (this.overflow == 0 && this.currentSpace + space <= limit) {
            return true;
        }
        int spaceNeeded = (int)((1.0 - this.loadFactor) * (double)limit);
        spaceNeeded = spaceNeeded > space ? spaceNeeded : space;
        LRUCache.LRUCacheEntry entry = this.entryQueueTail;
        try {
            this.timestampsOn = false;
            while (this.currentSpace + spaceNeeded > limit && entry != null) {
                this.privateRemoveEntry(entry, false, false);
                entry = entry.previous;
            }
        }
        finally {
            this.timestampsOn = true;
        }
        if (this.currentSpace + space <= limit) {
            this.overflow = 0;
            return true;
        }
        this.overflow = this.currentSpace + space - limit;
        return false;
    }

    protected abstract LRUCache newInstance(int var1, int var2);

    public void printStats() {
        int forwardListLength = 0;
        LRUCache.LRUCacheEntry entry = this.entryQueue;
        while (entry != null) {
            ++forwardListLength;
            entry = entry.next;
        }
        System.out.println("Forward length: " + forwardListLength);
        int backwardListLength = 0;
        entry = this.entryQueueTail;
        while (entry != null) {
            ++backwardListLength;
            entry = entry.previous;
        }
        System.out.println("Backward length: " + backwardListLength);
        Enumeration keys = this.entryTable.keys();
        class Temp {
            public Class clazz;
            public int count;
            final /* synthetic */ OverflowingLRUCache this$0;

            public Temp(OverflowingLRUCache overflowingLRUCache, Class aClass) {
                this.this$0 = overflowingLRUCache;
                this.clazz = aClass;
                this.count = 1;
            }

            public String toString() {
                return "Class: " + this.clazz + " has " + this.count + " entries.";
            }
        }
        HashMap h = new HashMap();
        while (keys.hasMoreElements()) {
            entry = (LRUCache.LRUCacheEntry)this.entryTable.get(keys.nextElement());
            Class<?> key = entry.value.getClass();
            Temp t = (Temp)h.get(key);
            if (t == null) {
                h.put(key, new Temp(this, key));
                continue;
            }
            ++t.count;
        }
        Iterator iter = h.values().iterator();
        while (iter.hasNext()) {
            System.out.println(iter.next());
        }
    }

    protected void privateRemoveEntry(LRUCache.LRUCacheEntry entry, boolean shuffle) {
        this.privateRemoveEntry(entry, shuffle, true);
    }

    protected void privateRemoveEntry(LRUCache.LRUCacheEntry entry, boolean shuffle, boolean external) {
        if (!shuffle) {
            if (external) {
                this.entryTable.remove(entry.key);
                this.currentSpace -= entry.space;
            } else {
                if (!this.close(entry)) {
                    return;
                }
                if (this.entryTable.get(entry.key) == null) {
                    return;
                }
                this.entryTable.remove(entry.key);
                this.currentSpace -= entry.space;
            }
        }
        LRUCache.LRUCacheEntry previous = entry.previous;
        LRUCache.LRUCacheEntry next = entry.next;
        if (previous == null) {
            this.entryQueue = next;
        } else {
            previous.next = next;
        }
        if (next == null) {
            this.entryQueueTail = previous;
        } else {
            next.previous = previous;
        }
    }

    public Object put(Object key, Object value) {
        if (this.overflow > 0) {
            this.shrink();
        }
        int newSpace = this.spaceFor(value);
        LRUCache.LRUCacheEntry entry = (LRUCache.LRUCacheEntry)this.entryTable.get(key);
        if (entry != null) {
            int oldSpace = entry.space;
            int newTotal = this.currentSpace - oldSpace + newSpace;
            if (newTotal <= this.spaceLimit) {
                this.updateTimestamp(entry);
                entry.value = value;
                entry.space = newSpace;
                this.currentSpace = newTotal;
                this.overflow = 0;
                return value;
            }
            this.privateRemoveEntry(entry, false, false);
        }
        this.makeSpace(newSpace);
        this.privateAdd(key, value, newSpace);
        return value;
    }

    public Object remove(Object key) {
        return this.removeKey(key);
    }

    public void setLoadFactor(double newLoadFactor) throws IllegalArgumentException {
        if (!(newLoadFactor <= 1.0) || !(newLoadFactor > 0.0)) {
            throw new IllegalArgumentException(Messages.cache_invalidLoadFactor);
        }
        this.loadFactor = newLoadFactor;
    }

    public void setSpaceLimit(int limit) {
        if (limit < this.spaceLimit) {
            this.makeSpace(this.spaceLimit - limit);
        }
        this.spaceLimit = limit;
    }

    public boolean shrink() {
        if (this.overflow > 0) {
            return this.makeSpace(0);
        }
        return true;
    }

    public String toString() {
        return String.valueOf(this.toStringFillingRation("OverflowingLRUCache ")) + this.toStringContents();
    }

    protected void updateTimestamp(LRUCache.LRUCacheEntry entry) {
        if (this.timestampsOn) {
            entry.timestamp = this.timestampCounter++;
            if (this.entryQueue != entry) {
                this.privateRemoveEntry(entry, true);
                this.privateAddEntry(entry, true);
            }
        }
    }
}

