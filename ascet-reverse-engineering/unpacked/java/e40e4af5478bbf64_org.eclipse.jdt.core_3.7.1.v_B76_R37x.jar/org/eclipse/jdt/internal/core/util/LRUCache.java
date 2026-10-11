/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import java.text.NumberFormat;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.util.ICacheEnumeration;
import org.eclipse.jdt.internal.core.util.ILRUCacheable;
import org.eclipse.jdt.internal.core.util.ToStringSorter;

public class LRUCache
implements Cloneable {
    protected int currentSpace = 0;
    protected int spaceLimit;
    protected int timestampCounter = 0;
    protected Hashtable entryTable;
    protected LRUCacheEntry entryQueue = null;
    protected LRUCacheEntry entryQueueTail = null;
    protected static final int DEFAULT_SPACELIMIT = 100;

    public LRUCache() {
        this(100);
    }

    public LRUCache(int size) {
        this.entryTable = new Hashtable(size);
        this.spaceLimit = size;
    }

    public Object clone() {
        LRUCache newCache = this.newInstance(this.spaceLimit);
        LRUCacheEntry qEntry = this.entryQueueTail;
        while (qEntry != null) {
            newCache.privateAdd(qEntry.key, qEntry.value, qEntry.space);
            qEntry = qEntry.previous;
        }
        return newCache;
    }

    public double fillingRatio() {
        return (double)this.currentSpace * 100.0 / (double)this.spaceLimit;
    }

    public void flush() {
        this.currentSpace = 0;
        LRUCacheEntry entry = this.entryQueueTail;
        this.entryTable = new Hashtable();
        this.entryQueueTail = null;
        this.entryQueue = null;
        while (entry != null) {
            entry = entry.previous;
        }
    }

    public void flush(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.entryTable.get(key);
        if (entry == null) {
            return;
        }
        this.privateRemoveEntry(entry, false);
    }

    public Object getKey(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.entryTable.get(key);
        if (entry == null) {
            return key;
        }
        return entry.key;
    }

    public Object get(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.entryTable.get(key);
        if (entry == null) {
            return null;
        }
        this.updateTimestamp(entry);
        return entry.value;
    }

    public int getCurrentSpace() {
        return this.currentSpace;
    }

    public int getNewestTimestampCounter() {
        return this.entryQueue == null ? 0 : this.entryQueue.timestamp;
    }

    public int getOldestTimestampCounter() {
        return this.entryQueueTail == null ? 0 : this.entryQueueTail.timestamp;
    }

    public Object getOldestElement() {
        return this.entryQueueTail == null ? null : this.entryQueueTail.key;
    }

    public int getSpaceLimit() {
        return this.spaceLimit;
    }

    public Enumeration keys() {
        return this.entryTable.keys();
    }

    public ICacheEnumeration keysAndValues() {
        return new ICacheEnumeration(){
            Enumeration values;
            LRUCacheEntry entry;
            {
                this.values = LRUCache.this.entryTable.elements();
            }

            public boolean hasMoreElements() {
                return this.values.hasMoreElements();
            }

            public Object nextElement() {
                this.entry = (LRUCacheEntry)this.values.nextElement();
                return this.entry.key;
            }

            public Object getValue() {
                if (this.entry == null) {
                    throw new NoSuchElementException();
                }
                return this.entry.value;
            }
        };
    }

    /*
     * Unable to fully structure code
     */
    protected boolean makeSpace(int space) {
        limit = this.getSpaceLimit();
        if (this.currentSpace + space <= limit) {
            return true;
        }
        if (space <= limit) ** GOTO lbl7
        return false;
lbl-1000:
        // 1 sources

        {
            this.privateRemoveEntry(this.entryQueueTail, false);
lbl7:
            // 2 sources

            ** while (this.currentSpace + space > limit && this.entryQueueTail != null)
        }
lbl8:
        // 1 sources

        return true;
    }

    protected LRUCache newInstance(int size) {
        return new LRUCache(size);
    }

    public Object peek(Object key) {
        LRUCacheEntry entry = (LRUCacheEntry)this.entryTable.get(key);
        if (entry == null) {
            return null;
        }
        return entry.value;
    }

    protected void privateAdd(Object key, Object value, int space) {
        LRUCacheEntry entry = new LRUCacheEntry(key, value, space);
        this.privateAddEntry(entry, false);
    }

    protected void privateAddEntry(LRUCacheEntry entry, boolean shuffle) {
        if (!shuffle) {
            this.entryTable.put(entry.key, entry);
            this.currentSpace += entry.space;
        }
        entry.timestamp = this.timestampCounter++;
        entry.next = this.entryQueue;
        entry.previous = null;
        if (this.entryQueue == null) {
            this.entryQueueTail = entry;
        } else {
            this.entryQueue.previous = entry;
        }
        this.entryQueue = entry;
    }

    protected void privateRemoveEntry(LRUCacheEntry entry, boolean shuffle) {
        LRUCacheEntry previous = entry.previous;
        LRUCacheEntry next = entry.next;
        if (!shuffle) {
            this.entryTable.remove(entry.key);
            this.currentSpace -= entry.space;
        }
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
        int newSpace = this.spaceFor(value);
        LRUCacheEntry entry = (LRUCacheEntry)this.entryTable.get(key);
        if (entry != null) {
            int oldSpace = entry.space;
            int newTotal = this.getCurrentSpace() - oldSpace + newSpace;
            if (newTotal <= this.getSpaceLimit()) {
                this.updateTimestamp(entry);
                entry.value = value;
                entry.space = newSpace;
                this.currentSpace = newTotal;
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
        LRUCacheEntry entry = (LRUCacheEntry)this.entryTable.get(key);
        if (entry == null) {
            return null;
        }
        Object value = entry.value;
        this.privateRemoveEntry(entry, false);
        return value;
    }

    public void setSpaceLimit(int limit) {
        if (limit < this.spaceLimit) {
            this.makeSpace(this.spaceLimit - limit);
        }
        this.spaceLimit = limit;
    }

    protected int spaceFor(Object value) {
        if (value instanceof ILRUCacheable) {
            return ((ILRUCacheable)value).getCacheFootprint();
        }
        return 1;
    }

    public String toString() {
        return String.valueOf(this.toStringFillingRation("LRUCache")) + this.toStringContents();
    }

    protected String toStringContents() {
        StringBuffer result = new StringBuffer();
        int length = this.entryTable.size();
        Object[] unsortedKeys = new Object[length];
        String[] unsortedToStrings = new String[length];
        Enumeration e = this.keys();
        int i = 0;
        while (i < length) {
            Object key = e.nextElement();
            unsortedKeys[i] = key;
            unsortedToStrings[i] = key instanceof JavaElement ? ((JavaElement)key).getElementName() : key.toString();
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
        buffer.append(NumberFormat.getInstance().format(this.fillingRatio()));
        buffer.append("% full");
        return buffer.toString();
    }

    protected void updateTimestamp(LRUCacheEntry entry) {
        entry.timestamp = this.timestampCounter++;
        if (this.entryQueue != entry) {
            this.privateRemoveEntry(entry, true);
            this.privateAddEntry(entry, true);
        }
    }

    protected static class LRUCacheEntry {
        public Object key;
        public Object value;
        public int timestamp;
        public int space;
        public LRUCacheEntry previous;
        public LRUCacheEntry next;

        public LRUCacheEntry(Object key, Object value, int space) {
            this.key = key;
            this.value = value;
            this.space = space;
        }

        public String toString() {
            return "LRUCacheEntry [" + this.key + "-->" + this.value + "]";
        }
    }

    public class Stats {
        private int[] counters = new int[20];
        private long[] timestamps = new long[20];
        private int counterIndex = -1;

        private void add(int counter) {
            int i = 0;
            while (i <= this.counterIndex) {
                if (this.counters[i] == counter) {
                    return;
                }
                ++i;
            }
            int length = this.counters.length;
            if (++this.counterIndex == length) {
                int newLength = this.counters.length * 2;
                this.counters = new int[newLength];
                System.arraycopy(this.counters, 0, this.counters, 0, length);
                this.timestamps = new long[newLength];
                System.arraycopy(this.timestamps, 0, this.timestamps, 0, length);
            }
            this.counters[this.counterIndex] = counter;
            this.timestamps[this.counterIndex] = System.currentTimeMillis();
        }

        private String getAverageAge(long totalTime, int numberOfElements, long currentTime) {
            if (numberOfElements == 0) {
                return "N/A";
            }
            long time = totalTime / (long)numberOfElements;
            long age = currentTime - time;
            long ageInSeconds = age / 1000L;
            int seconds = 0;
            int minutes = 0;
            int hours = 0;
            int days = 0;
            if (ageInSeconds > 60L) {
                long ageInMin = ageInSeconds / 60L;
                seconds = (int)(ageInSeconds - 60L * ageInMin);
                if (ageInMin > 60L) {
                    long ageInHours = ageInMin / 60L;
                    minutes = (int)(ageInMin - 60L * ageInHours);
                    if (ageInHours > 24L) {
                        long ageInDays = ageInHours / 24L;
                        hours = (int)(ageInHours - 24L * ageInDays);
                        days = (int)ageInDays;
                    } else {
                        hours = (int)ageInHours;
                    }
                } else {
                    minutes = (int)ageInMin;
                }
            } else {
                seconds = (int)ageInSeconds;
            }
            StringBuffer buffer = new StringBuffer();
            if (days > 0) {
                buffer.append(days);
                buffer.append(" days ");
            }
            if (hours > 0) {
                buffer.append(hours);
                buffer.append(" hours ");
            }
            if (minutes > 0) {
                buffer.append(minutes);
                buffer.append(" minutes ");
            }
            buffer.append(seconds);
            buffer.append(" seconds");
            return buffer.toString();
        }

        private long getTimestamps(int counter) {
            int i = 0;
            while (i <= this.counterIndex) {
                if (this.counters[i] >= counter) {
                    return this.timestamps[i];
                }
                ++i;
            }
            return -1L;
        }

        public synchronized String printStats() {
            int numberOfElements = LRUCache.this.currentSpace;
            if (numberOfElements == 0) {
                return "No elements in cache";
            }
            StringBuffer buffer = new StringBuffer();
            buffer.append("Number of elements in cache: ");
            buffer.append(numberOfElements);
            int numberOfElementsPerGroup = numberOfElements / 5;
            buffer.append("\n(");
            buffer.append(5);
            buffer.append(" groups of ");
            buffer.append(numberOfElementsPerGroup);
            buffer.append(" elements)");
            buffer.append("\n\nAverage age:");
            int groupNumber = 1;
            int elementCounter = 0;
            LRUCacheEntry entry = LRUCache.this.entryQueueTail;
            long currentTime = System.currentTimeMillis();
            long accumulatedTime = 0L;
            while (entry != null) {
                long timeStamps = this.getTimestamps(entry.timestamp);
                if (timeStamps > 0L) {
                    accumulatedTime += timeStamps;
                    ++elementCounter;
                }
                if (elementCounter >= numberOfElementsPerGroup && groupNumber < 5) {
                    buffer.append("\nGroup ");
                    buffer.append(groupNumber);
                    if (groupNumber == 1) {
                        buffer.append(" (oldest)\t: ");
                    } else {
                        buffer.append("\t\t: ");
                    }
                    ++groupNumber;
                    buffer.append(this.getAverageAge(accumulatedTime, elementCounter, currentTime));
                    elementCounter = 0;
                    accumulatedTime = 0L;
                }
                entry = entry.previous;
            }
            buffer.append("\nGroup ");
            buffer.append(5);
            buffer.append(" (youngest)\t: ");
            buffer.append(this.getAverageAge(accumulatedTime, elementCounter, currentTime));
            return buffer.toString();
        }

        private void removeCountersOlderThan(int counter) {
            int i = 0;
            while (i <= this.counterIndex) {
                if (this.counters[i] >= counter) {
                    if (i > 0) {
                        int length = this.counterIndex - i + 1;
                        System.arraycopy(this.counters, i, this.counters, 0, length);
                        System.arraycopy(this.timestamps, i, this.timestamps, 0, length);
                        this.counterIndex = length;
                    }
                    return;
                }
                ++i;
            }
        }

        public Object getOldestElement() {
            return LRUCache.this.getOldestElement();
        }

        public long getOldestTimestamps() {
            return this.getTimestamps(LRUCache.this.getOldestTimestampCounter());
        }

        public synchronized void snapshot() {
            this.removeCountersOlderThan(LRUCache.this.getOldestTimestampCounter());
            this.add(LRUCache.this.getNewestTimestampCounter());
        }
    }
}

