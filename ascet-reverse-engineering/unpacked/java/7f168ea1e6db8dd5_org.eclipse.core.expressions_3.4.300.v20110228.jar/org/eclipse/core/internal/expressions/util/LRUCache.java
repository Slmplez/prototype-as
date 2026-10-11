/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.expressions.util;

import java.util.Enumeration;
import java.util.Hashtable;
import org.eclipse.core.internal.expressions.util.ToStringSorter;

public class LRUCache
implements Cloneable {
    protected int fCurrentSpace = 0;
    protected int fSpaceLimit;
    protected int fTimestampCounter = 0;
    protected Hashtable fEntryTable;
    protected LRUCacheEntry fEntryQueue = null;
    protected LRUCacheEntry fEntryQueueTail = null;
    protected static final int DEFAULT_SPACELIMIT = 100;

    public LRUCache() {
        this(100);
    }

    public LRUCache(int size) {
        this.fEntryTable = new Hashtable(size);
        this.fSpaceLimit = size;
    }

    public Object clone() {
        LRUCache newCache = this.newInstance(this.fSpaceLimit);
        LRUCacheEntry qEntry = this.fEntryQueueTail;
        while (qEntry != null) {
            newCache.privateAdd(qEntry._fKey, qEntry._fValue, qEntry._fSpace);
            qEntry = qEntry._fPrevious;
        }
        return newCache;
    }

    public double fillingRatio() {
        return (double)this.fCurrentSpace * 100.0 / (double)this.fSpaceLimit;
    }

    public void flush() {
        this.fCurrentSpace = 0;
        LRUCacheEntry entry = this.fEntryQueueTail;
        this.fEntryTable = new Hashtable();
        this.fEntryQueueTail = null;
        this.fEntryQueue = null;
        while (entry != null) {
            this.privateNotifyDeletionFromCache(entry);
            entry = entry._fPrevious;
        }
    }

    public void flush(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.fEntryTable.get(key);
        if (entry == null) {
            return;
        }
        this.privateRemoveEntry(entry, false);
    }

    public Object get(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.fEntryTable.get(key);
        if (entry == null) {
            return null;
        }
        this.updateTimestamp(entry);
        return entry._fValue;
    }

    public int getCurrentSpace() {
        return this.fCurrentSpace;
    }

    public int getSpaceLimit() {
        return this.fSpaceLimit;
    }

    public Enumeration keys() {
        return this.fEntryTable.keys();
    }

    /*
     * Unable to fully structure code
     */
    protected boolean makeSpace(int space) {
        limit = this.getSpaceLimit();
        if (this.fCurrentSpace + space <= limit) {
            return true;
        }
        if (space <= limit) ** GOTO lbl7
        return false;
lbl-1000:
        // 1 sources

        {
            this.privateRemoveEntry(this.fEntryQueueTail, false);
lbl7:
            // 2 sources

            ** while (this.fCurrentSpace + space > limit && this.fEntryQueueTail != null)
        }
lbl8:
        // 1 sources

        return true;
    }

    protected LRUCache newInstance(int size) {
        return new LRUCache(size);
    }

    public Object peek(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.fEntryTable.get(key);
        if (entry == null) {
            return null;
        }
        return entry._fValue;
    }

    protected void privateAdd(Object key, Object value, int space) {
        LRUCacheEntry entry = new LRUCacheEntry(key, value, space);
        this.privateAddEntry(entry, false);
    }

    protected void privateAddEntry(LRUCacheEntry entry, boolean shuffle) {
        if (!shuffle) {
            this.fEntryTable.put(entry._fKey, entry);
            this.fCurrentSpace += entry._fSpace;
        }
        entry._fTimestamp = this.fTimestampCounter++;
        entry._fNext = this.fEntryQueue;
        entry._fPrevious = null;
        if (this.fEntryQueue == null) {
            this.fEntryQueueTail = entry;
        } else {
            this.fEntryQueue._fPrevious = entry;
        }
        this.fEntryQueue = entry;
    }

    protected void privateNotifyDeletionFromCache(LRUCacheEntry entry) {
    }

    protected void privateRemoveEntry(LRUCacheEntry entry, boolean shuffle) {
        LRUCacheEntry previous = entry._fPrevious;
        LRUCacheEntry next = entry._fNext;
        if (!shuffle) {
            this.fEntryTable.remove(entry._fKey);
            this.fCurrentSpace -= entry._fSpace;
            this.privateNotifyDeletionFromCache(entry);
        }
        if (previous == null) {
            this.fEntryQueue = next;
        } else {
            previous._fNext = next;
        }
        if (next == null) {
            this.fEntryQueueTail = previous;
        } else {
            next._fPrevious = previous;
        }
    }

    public Object put(Object key, Object value) {
        int newSpace = this.spaceFor(value);
        LRUCacheEntry entry = (LRUCacheEntry)this.fEntryTable.get(key);
        if (entry != null) {
            int oldSpace = entry._fSpace;
            int newTotal = this.getCurrentSpace() - oldSpace + newSpace;
            if (newTotal <= this.getSpaceLimit()) {
                this.updateTimestamp(entry);
                entry._fValue = value;
                entry._fSpace = newSpace;
                this.fCurrentSpace = newTotal;
                return value;
            }
            this.privateRemoveEntry(entry, false);
        }
        if (this.makeSpace(newSpace)) {
            this.privateAdd(key, value, newSpace);
        }
        return value;
    }

    public Object removeKey(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.fEntryTable.get(key);
        if (entry == null) {
            return null;
        }
        Object value = entry._fValue;
        this.privateRemoveEntry(entry, false);
        return value;
    }

    public void setSpaceLimit(int limit) {
        if (limit < this.fSpaceLimit) {
            this.makeSpace(this.fSpaceLimit - limit);
        }
        this.fSpaceLimit = limit;
    }

    protected int spaceFor(Object value) {
        return 1;
    }

    public String toString() {
        return String.valueOf(this.toStringFillingRation("LRUCache")) + this.toStringContents();
    }

    protected String toStringContents() {
        StringBuffer result = new StringBuffer();
        int length = this.fEntryTable.size();
        Object[] unsortedKeys = new Object[length];
        String[] unsortedToStrings = new String[length];
        Enumeration e = this.keys();
        int i = 0;
        while (i < length) {
            Object key = e.nextElement();
            unsortedKeys[i] = key;
            unsortedToStrings[i] = key.toString();
            ++i;
        }
        ToStringSorter sorter = new ToStringSorter();
        sorter.sort(unsortedKeys, unsortedToStrings);
        int i2 = 0;
        while (i2 < length) {
            String toString = sorter.sortedStrings[i2];
            Object value = this.get(sorter.sortedObjects[i2]);
            result.append(toString);
            result.append(" -> ");
            result.append(value);
            result.append("\n");
            ++i2;
        }
        return result.toString();
    }

    public String toStringFillingRation(String cacheName) {
        StringBuffer buffer = new StringBuffer(cacheName);
        buffer.append('[');
        buffer.append(this.getSpaceLimit());
        buffer.append("]: ");
        buffer.append(this.fillingRatio());
        buffer.append("% full");
        return buffer.toString();
    }

    protected void updateTimestamp(LRUCacheEntry entry) {
        entry._fTimestamp = this.fTimestampCounter++;
        if (this.fEntryQueue != entry) {
            this.privateRemoveEntry(entry, true);
            this.privateAddEntry(entry, true);
        }
    }

    protected static class LRUCacheEntry {
        public Object _fKey;
        public Object _fValue;
        public int _fTimestamp;
        public int _fSpace;
        public LRUCacheEntry _fPrevious;
        public LRUCacheEntry _fNext;

        public LRUCacheEntry(Object key, Object value, int space) {
            this._fKey = key;
            this._fValue = value;
            this._fSpace = space;
        }

        public String toString() {
            return "LRUCacheEntry [" + this._fKey + "-->" + this._fValue + "]";
        }
    }
}

