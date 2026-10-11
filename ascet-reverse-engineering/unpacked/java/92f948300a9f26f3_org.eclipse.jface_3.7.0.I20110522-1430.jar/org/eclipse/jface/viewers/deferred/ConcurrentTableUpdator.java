/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers.deferred;

import org.eclipse.jface.viewers.deferred.AbstractVirtualTable;
import org.eclipse.jface.viewers.deferred.IntHashMap;

final class ConcurrentTableUpdator {
    private AbstractVirtualTable table;
    private Object[] sentObjects = new Object[0];
    private IntHashMap knownIndices = new IntHashMap();
    private Object[] knownObjects = new Object[0];
    private static final int MIN_FLUSHLENGTH = 64;
    private int[] pendingClears = new int[64];
    private int lastClear = 0;
    private volatile Range lastRange = new Range(0, 0);
    private volatile boolean updateScheduled;
    private volatile boolean disposed = false;
    Runnable uiRunnable = new Runnable(){

        public void run() {
            ConcurrentTableUpdator.this.updateScheduled = false;
            if (!ConcurrentTableUpdator.this.table.getControl().isDisposed()) {
                ConcurrentTableUpdator.this.updateTable();
            }
        }
    };

    public ConcurrentTableUpdator(AbstractVirtualTable table) {
        this.table = table;
    }

    public void dispose() {
        this.disposed = true;
    }

    public boolean isDisposed() {
        return this.disposed;
    }

    public Range getVisibleRange() {
        return this.lastRange;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clear(Object toFlush) {
        ConcurrentTableUpdator concurrentTableUpdator = this;
        synchronized (concurrentTableUpdator) {
            int currentIdx = this.knownIndices.get(toFlush, -1);
            if (currentIdx == -1) {
                return;
            }
            this.pushClear(currentIdx);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setTotalItems(int newTotal) {
        ConcurrentTableUpdator concurrentTableUpdator = this;
        synchronized (concurrentTableUpdator) {
            if (newTotal != this.knownObjects.length) {
                if (newTotal < this.knownObjects.length) {
                    int i = newTotal;
                    while (i < this.knownObjects.length) {
                        Object toFlush = this.knownObjects[i];
                        if (toFlush != null) {
                            this.knownIndices.remove(toFlush);
                        }
                        ++i;
                    }
                }
                int minSize = Math.min(this.knownObjects.length, newTotal);
                Object[] newKnownObjects = new Object[newTotal];
                System.arraycopy(this.knownObjects, 0, newKnownObjects, 0, minSize);
                this.knownObjects = newKnownObjects;
                this.scheduleUIUpdate();
            }
        }
    }

    private void pushClear(int toClear) {
        if (toClear >= this.sentObjects.length) {
            return;
        }
        if (this.sentObjects[toClear] == null) {
            return;
        }
        this.sentObjects[toClear] = null;
        if (this.lastClear >= this.pendingClears.length) {
            int newCapacity = Math.min(64, this.lastClear * 2);
            int[] newPendingClears = new int[newCapacity];
            System.arraycopy(this.pendingClears, 0, newPendingClears, 0, this.lastClear);
            this.pendingClears = newPendingClears;
        }
        this.pendingClears[this.lastClear++] = toClear;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void replace(Object value, int idx) {
        ConcurrentTableUpdator concurrentTableUpdator = this;
        synchronized (concurrentTableUpdator) {
            Object oldObject = this.knownObjects[idx];
            if (oldObject != value) {
                if (oldObject != null) {
                    this.knownIndices.remove(oldObject);
                }
                this.knownObjects[idx] = value;
                if (value != null) {
                    int oldIndex = this.knownIndices.get(value, -1);
                    if (oldIndex != -1) {
                        this.knownObjects[oldIndex] = null;
                        this.pushClear(oldIndex);
                    }
                    this.knownIndices.put(value, idx);
                }
                this.pushClear(idx);
                this.scheduleUIUpdate();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void scheduleUIUpdate() {
        ConcurrentTableUpdator concurrentTableUpdator = this;
        synchronized (concurrentTableUpdator) {
            if (!this.updateScheduled) {
                this.updateScheduled = true;
                if (!this.table.getControl().isDisposed()) {
                    this.table.getControl().getDisplay().asyncExec(this.uiRunnable);
                }
            }
        }
    }

    public void checkVisibleRange(int includeIndex) {
        int start = Math.min(this.table.getTopIndex() - 1, includeIndex);
        int length = Math.max(this.table.getVisibleItemCount(), includeIndex - start);
        Range r = this.lastRange;
        if (start != r.start || length != r.length) {
            this.updateTable();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void updateTable() {
        ConcurrentTableUpdator concurrentTableUpdator = this;
        synchronized (concurrentTableUpdator) {
            int row;
            if (this.sentObjects.length != this.knownObjects.length) {
                Object[] newSentObjects = new Object[this.knownObjects.length];
                System.arraycopy(newSentObjects, 0, this.sentObjects, 0, Math.min(newSentObjects.length, this.sentObjects.length));
                this.sentObjects = newSentObjects;
                this.table.setItemCount(newSentObjects.length);
            }
            int start = Math.min(this.table.getTopIndex(), this.knownObjects.length);
            int length = Math.min(this.table.getVisibleItemCount(), this.knownObjects.length - start);
            int itemCount = this.table.getItemCount();
            int oldStart = this.lastRange.start;
            int oldLen = this.lastRange.length;
            this.lastRange = new Range(start, length);
            int idx = 0;
            while (idx < oldLen) {
                row = idx + oldStart;
                if (row < itemCount && (row < start || row >= start + length) && this.sentObjects[row] == null) {
                    this.table.clear(row);
                }
                ++idx;
            }
            if (this.lastClear > 0) {
                int i = 0;
                while (i < this.lastClear) {
                    row = this.pendingClears[i];
                    if (row < this.sentObjects.length) {
                        this.table.clear(row);
                    }
                    ++i;
                }
                if (this.pendingClears.length > 64) {
                    this.pendingClears = new int[64];
                }
                this.lastClear = 0;
            }
            idx = 0;
            while (idx < length) {
                row = idx + start;
                Object obj = this.knownObjects[row];
                if (obj != null && obj != this.sentObjects[idx]) {
                    this.table.replace(obj, row);
                    this.sentObjects[idx] = obj;
                }
                ++idx;
            }
        }
    }

    public Object[] getKnownObjects() {
        return this.knownObjects;
    }

    public static final class Range {
        int start = 0;
        int length = 0;

        public Range(int s, int l) {
            this.start = s;
            this.length = l;
        }
    }
}

