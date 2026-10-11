/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 */
package org.eclipse.jface.viewers.deferred;

import java.util.Comparator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.AcceptAllFilter;
import org.eclipse.jface.viewers.IFilter;
import org.eclipse.jface.viewers.deferred.AbstractVirtualTable;
import org.eclipse.jface.viewers.deferred.ChangeQueue;
import org.eclipse.jface.viewers.deferred.ConcurrentTableUpdator;
import org.eclipse.jface.viewers.deferred.FastProgressReporter;
import org.eclipse.jface.viewers.deferred.IConcurrentModel;
import org.eclipse.jface.viewers.deferred.IConcurrentModelListener;
import org.eclipse.jface.viewers.deferred.LazySortedCollection;

final class BackgroundContentProvider {
    private static final String SORTING = JFaceResources.getString("Sorting");
    private int limit = -1;
    private IConcurrentModel model;
    private volatile Comparator sortOrder;
    private volatile IFilter filter = AcceptAllFilter.getInstance();
    private ChangeQueue changeQueue = new ChangeQueue();
    private IConcurrentModelListener listener = new IConcurrentModelListener(){

        public void add(Object[] added) {
            BackgroundContentProvider.this.add(added);
        }

        public void remove(Object[] removed) {
            BackgroundContentProvider.this.remove(removed);
        }

        public void setContents(Object[] newContents) {
            BackgroundContentProvider.this.setContents(newContents);
        }

        public void update(Object[] changed) {
            BackgroundContentProvider.this.update(changed);
        }
    };
    private ConcurrentTableUpdator updator;
    private IProgressMonitor sortingProgressMonitor = new NullProgressMonitor();
    private Thread sortThread = null;
    private volatile FastProgressReporter sortMon = new FastProgressReporter();
    private volatile ConcurrentTableUpdator.Range range = new ConcurrentTableUpdator.Range(0, 0);
    private Object lock = new Object();
    private boolean sortThreadStarted = false;
    private boolean sortScheduled = false;

    public BackgroundContentProvider(AbstractVirtualTable table, IConcurrentModel model, Comparator sortOrder) {
        this.updator = new ConcurrentTableUpdator(table);
        this.model = model;
        this.sortOrder = sortOrder;
        model.addListener(this.listener);
    }

    public void dispose() {
        this.cancelSortJob();
        this.updator.dispose();
        this.model.removeListener(this.listener);
    }

    public void refresh() {
        if (this.updator.isDisposed()) {
            return;
        }
        this.model.requestUpdate(this.listener);
    }

    private void doSort(IProgressMonitor mon) {
        mon.setCanceled(false);
        mon.beginTask(SORTING, 100);
        Comparator order = this.sortOrder;
        IFilter f = this.filter;
        LazySortedCollection collection = new LazySortedCollection(order);
        Object[] knownObjects = this.updator.getKnownObjects();
        int i = 0;
        while (i < knownObjects.length) {
            Object object = knownObjects[i];
            if (object != null) {
                collection.add(object);
            }
            ++i;
        }
        boolean dirty = false;
        int prevSize = knownObjects.length;
        this.updator.setTotalItems(prevSize);
        block9: while (true) {
            Object[] items;
            if (order != this.sortOrder) {
                dirty = true;
                order = this.sortOrder;
                LazySortedCollection newCollection = new LazySortedCollection(order);
                items = collection.getItems(false);
                int j = 0;
                while (j < items.length && order == this.sortOrder) {
                    Object item = items[j];
                    newCollection.add(item);
                    ++j;
                }
                if (order != this.sortOrder) continue;
                collection = newCollection;
                continue;
            }
            if (f != this.filter) {
                dirty = true;
                f = this.filter;
                Object[] items2 = collection.getItems(false);
                int j = 0;
                while (true) {
                    if (j >= items2.length || f != this.filter) continue block9;
                    Object toTest = items2[j];
                    if (!f.select(toTest)) {
                        collection.remove(toTest);
                    }
                    ++j;
                }
            }
            if (!this.changeQueue.isEmpty()) {
                dirty = true;
                ChangeQueue.Change next = this.changeQueue.dequeue();
                switch (next.getType()) {
                    case 0: {
                        BackgroundContentProvider.filteredAdd(collection, next.getElements(), f);
                        break;
                    }
                    case 1: {
                        Object[] toRemove = next.getElements();
                        this.flush(toRemove, collection);
                        collection.removeAll(toRemove);
                        break;
                    }
                    case 3: {
                        items = next.getElements();
                        int i2 = 0;
                        while (i2 < items.length) {
                            Object item = items[i2];
                            if (collection.contains(item)) {
                                collection.remove(item);
                                collection.add(item);
                                this.updator.clear(item);
                            }
                            ++i2;
                        }
                        break;
                    }
                    case 2: {
                        items = next.getElements();
                        collection.clear();
                        BackgroundContentProvider.filteredAdd(collection, items, f);
                    }
                }
                continue;
            }
            int totalElements = collection.size();
            if (this.limit != -1 && totalElements > this.limit) {
                totalElements = this.limit;
            }
            if (totalElements != prevSize) {
                prevSize = totalElements;
                this.updator.setTotalItems(totalElements);
                dirty = true;
            }
            if (!dirty) break;
            try {
                Object object;
                ConcurrentTableUpdator.Range updateRange = this.updator.getVisibleRange();
                this.sortMon = new FastProgressReporter();
                this.range = updateRange;
                int sortStart = updateRange.start;
                int sortLength = updateRange.length;
                if (this.limit != -1) {
                    collection.retainFirst(this.limit, this.sortMon);
                }
                sortLength = Math.min(sortLength, totalElements - sortStart);
                sortLength = Math.max(sortLength, 0);
                Object[] objectsOfInterest = new Object[sortLength];
                collection.getRange(objectsOfInterest, sortStart, true, this.sortMon);
                int i3 = 0;
                while (i3 < sortLength) {
                    object = objectsOfInterest[i3];
                    this.updator.replace(object, sortStart + i3);
                    ++i3;
                }
                objectsOfInterest = new Object[collection.size()];
                collection.getFirst(objectsOfInterest, true, this.sortMon);
                i3 = 0;
                while (i3 < totalElements) {
                    object = objectsOfInterest[i3];
                    this.updator.replace(object, i3);
                    ++i3;
                }
            }
            catch (InterruptedException interruptedException) {
                continue;
            }
            dirty = false;
        }
        mon.done();
    }

    private static void filteredAdd(LazySortedCollection collection, Object[] toAdd, IFilter filter) {
        if (filter != AcceptAllFilter.getInstance()) {
            int i = 0;
            while (i < toAdd.length) {
                Object object = toAdd[i];
                if (filter.select(object)) {
                    collection.add(object);
                }
                ++i;
            }
        } else {
            collection.addAll(toAdd);
        }
    }

    public void setSortOrder(Comparator sorter) {
        Assert.isNotNull((Object)sorter);
        this.sortOrder = sorter;
        this.sortMon.cancel();
        this.refresh();
    }

    public void setFilter(IFilter toSet) {
        Assert.isNotNull((Object)toSet);
        this.filter = toSet;
        this.sortMon.cancel();
        this.refresh();
    }

    public void setLimit(int limit) {
        this.limit = limit;
        this.refresh();
    }

    public int getLimit() {
        return this.limit;
    }

    public void checkVisibleRange(int includeIndex) {
        this.updator.checkVisibleRange(includeIndex);
        ConcurrentTableUpdator.Range newRange = this.updator.getVisibleRange();
        ConcurrentTableUpdator.Range oldRange = this.range;
        if (newRange.start != oldRange.start || newRange.length != oldRange.length) {
            this.sortMon.cancel();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void makeDirty() {
        Object object = this.lock;
        synchronized (object) {
            this.sortMon.cancel();
            this.sortScheduled = true;
            if (!this.sortThreadStarted) {
                this.sortThreadStarted = true;
                this.sortThread = new SortThread(SORTING);
                this.sortThread.setDaemon(true);
                this.sortThread.setPriority(4);
                this.sortThread.start();
            }
        }
    }

    private void cancelSortJob() {
        this.sortMon.cancel();
        this.sortingProgressMonitor.setCanceled(true);
    }

    private void add(Object[] toAdd) {
        this.changeQueue.enqueue(0, toAdd);
        this.makeDirty();
    }

    private void setContents(Object[] contents) {
        this.changeQueue.enqueue(2, contents);
        this.makeDirty();
    }

    private void remove(Object[] toRemove) {
        this.changeQueue.enqueue(1, toRemove);
        this.makeDirty();
        this.refresh();
    }

    private void flush(Object[] toFlush, LazySortedCollection collection) {
        int i = 0;
        while (i < toFlush.length) {
            Object item = toFlush[i];
            if (collection.contains(item)) {
                this.updator.clear(item);
            }
            ++i;
        }
    }

    private void update(Object[] items) {
        this.changeQueue.enqueue(3, items);
        this.makeDirty();
    }

    private final class SortThread
    extends Thread {
        private SortThread(String name) {
            super(name);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public void run() {
            while (true) {
                Object object = BackgroundContentProvider.this.lock;
                synchronized (object) {
                    BackgroundContentProvider.this.sortScheduled = false;
                }
                try {
                    BackgroundContentProvider.this.doSort(BackgroundContentProvider.this.sortingProgressMonitor);
                }
                catch (Exception exception) {}
                object = BackgroundContentProvider.this.lock;
                synchronized (object) {
                    if (!BackgroundContentProvider.this.sortScheduled) {
                        BackgroundContentProvider.this.sortThreadStarted = false;
                        return;
                    }
                }
            }
        }
    }
}

