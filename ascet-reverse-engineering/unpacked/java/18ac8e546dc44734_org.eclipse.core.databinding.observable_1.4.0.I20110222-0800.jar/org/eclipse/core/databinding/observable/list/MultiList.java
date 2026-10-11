/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable.list;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.AbstractObservableList;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.runtime.Assert;

public class MultiList
extends AbstractObservableList {
    private IObservableList[] lists;
    private Object elementType;
    private IListChangeListener listChangeListener;
    private IStaleListener staleListener;
    private Boolean stale;

    public MultiList(IObservableList[] lists) {
        this(Realm.getDefault(), lists, null);
    }

    public MultiList(IObservableList[] lists, Object elementType) {
        this(Realm.getDefault(), lists, elementType);
    }

    public MultiList(Realm realm, IObservableList[] lists) {
        this(realm, lists, null);
    }

    public MultiList(Realm realm, IObservableList[] lists, Object elementType) {
        super(realm);
        this.lists = lists;
        this.elementType = elementType;
        int i = 0;
        while (i < lists.length) {
            Assert.isTrue((boolean)realm.equals(lists[i].getRealm()), (String)"All source lists in a MultiList must belong to the same realm");
            ++i;
        }
    }

    protected void firstListenerAdded() {
        if (this.listChangeListener == null) {
            this.listChangeListener = new IListChangeListener(){

                public void handleListChange(ListChangeEvent event) {
                    MultiList.this.getRealm().exec(new Runnable(this, event){
                        final /* synthetic */ 1 this$1;
                        private final /* synthetic */ ListChangeEvent val$event;
                        {
                            this.this$1 = var1_1;
                            this.val$event = listChangeEvent;
                        }

                        public void run() {
                            MultiList.access$1(1.access$0(this.this$1), null);
                            MultiList.access$2(1.access$0(this.this$1), this.val$event);
                            if (1.access$0(this.this$1).isStale()) {
                                1.access$0(this.this$1).fireStale();
                            }
                        }
                    });
                }

                static /* synthetic */ MultiList access$0(1 var0) {
                    return var0.MultiList.this;
                }
            };
        }
        if (this.staleListener == null) {
            this.staleListener = new IStaleListener(){

                public void handleStale(StaleEvent staleEvent) {
                    MultiList.this.getRealm().exec(new Runnable(this){
                        final /* synthetic */ 3 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            MultiList.access$3(3.access$0(this.this$1));
                        }
                    });
                }

                static /* synthetic */ MultiList access$0(3 var0) {
                    return var0.MultiList.this;
                }
            };
        }
        int i = 0;
        while (i < this.lists.length) {
            this.lists[i].addListChangeListener(this.listChangeListener);
            this.lists[i].addStaleListener(this.staleListener);
            this.stale = this.computeStaleness() ? Boolean.TRUE : Boolean.FALSE;
            ++i;
        }
    }

    protected void lastListenerRemoved() {
        int i;
        if (this.listChangeListener != null) {
            i = 0;
            while (i < this.lists.length) {
                this.lists[i].removeListChangeListener(this.listChangeListener);
                ++i;
            }
            this.listChangeListener = null;
        }
        if (this.staleListener != null) {
            i = 0;
            while (i < this.lists.length) {
                this.lists[i].removeStaleListener(this.staleListener);
                ++i;
            }
            this.staleListener = null;
        }
        this.stale = null;
    }

    private void makeStale() {
        if (this.stale == null || !this.stale.booleanValue()) {
            this.stale = Boolean.TRUE;
            this.fireStale();
        }
    }

    private void listChanged(ListChangeEvent event) {
        IObservableList source = event.getObservableList();
        int offset = 0;
        int i = 0;
        while (i < this.lists.length) {
            if (source == this.lists[i]) {
                this.fireListChange(this.offsetListDiff(offset, event.diff));
                return;
            }
            offset += this.lists[i].size();
            ++i;
        }
        Assert.isLegal((boolean)false, (String)"MultiList received a ListChangeEvent from an observable list that is not one of its sources.");
    }

    private ListDiff offsetListDiff(int offset, ListDiff diff) {
        return Diffs.createListDiff(this.offsetListDiffEntries(offset, diff.getDifferences()));
    }

    private ListDiffEntry[] offsetListDiffEntries(int offset, ListDiffEntry[] entries) {
        ListDiffEntry[] offsetEntries = new ListDiffEntry[entries.length];
        int i = 0;
        while (i < entries.length) {
            offsetEntries[i] = this.offsetListDiffEntry(offset, entries[i]);
            ++i;
        }
        return offsetEntries;
    }

    private ListDiffEntry offsetListDiffEntry(int offset, ListDiffEntry entry) {
        return Diffs.createListDiffEntry(offset + entry.getPosition(), entry.isAddition(), entry.getElement());
    }

    protected int doGetSize() {
        int size = 0;
        int i = 0;
        while (i < this.lists.length) {
            size += this.lists[i].size();
            ++i;
        }
        return size;
    }

    public Object getElementType() {
        return this.elementType;
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public void add(int index, Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(int index, Collection c) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        this.checkRealm();
        int i = 0;
        while (i < this.lists.length) {
            this.lists[i].clear();
            ++i;
        }
    }

    public Object get(int index) {
        this.getterCalled();
        int offset = 0;
        int i = 0;
        while (i < this.lists.length) {
            if (index - offset < this.lists[i].size()) {
                return this.lists[i].get(index - offset);
            }
            offset += this.lists[i].size();
            ++i;
        }
        throw new IndexOutOfBoundsException("index: " + index + ", size: " + offset);
    }

    public boolean contains(Object o) {
        this.getterCalled();
        int i = 0;
        while (i < this.lists.length) {
            if (this.lists[i].contains(o)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean equals(Object o) {
        this.getterCalled();
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (!(o instanceof List)) {
            return false;
        }
        List that = (List)o;
        if (this.doGetSize() != that.size()) {
            return false;
        }
        int subListIndex = 0;
        int i = 0;
        while (i < this.lists.length) {
            List subList = that.subList(subListIndex, subListIndex + this.lists[i].size());
            if (!this.lists[i].equals(subList)) {
                return false;
            }
            subListIndex += this.lists[i].size();
            ++i;
        }
        return true;
    }

    public int hashCode() {
        this.getterCalled();
        int result = 1;
        int i = 0;
        while (i < this.lists.length) {
            result = result * 31 + this.lists[i].hashCode();
            ++i;
        }
        return result;
    }

    public int indexOf(Object o) {
        this.getterCalled();
        int offset = 0;
        int i = 0;
        while (i < this.lists.length) {
            int index = this.lists[i].indexOf(o);
            if (index != -1) {
                return offset + index;
            }
            offset += this.lists[i].size();
            ++i;
        }
        return -1;
    }

    public boolean isEmpty() {
        this.getterCalled();
        int i = 0;
        while (i < this.lists.length) {
            if (!this.lists[i].isEmpty()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public Iterator iterator() {
        this.getterCalled();
        return new MultiListItr();
    }

    public int lastIndexOf(Object o) {
        this.getterCalled();
        int offset = this.size();
        int i = 0;
        while (i < this.lists.length) {
            offset -= this.lists[i].size();
            int index = this.lists[i].indexOf(o);
            if (index != -1) {
                return offset + index;
            }
            ++i;
        }
        return -1;
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        return new MultiListListItr(index);
    }

    public Object move(int oldIndex, int newIndex) {
        throw new UnsupportedOperationException();
    }

    public boolean remove(Object o) {
        this.checkRealm();
        int i = this.indexOf(o);
        if (i != -1) {
            this.remove(i);
            return true;
        }
        return false;
    }

    public Object remove(int index) {
        int offset = 0;
        int i = 0;
        while (i < this.lists.length) {
            if (index - offset < this.lists[i].size()) {
                return this.lists[i].remove(index - offset);
            }
            offset += this.lists[i].size();
            ++i;
        }
        throw new IndexOutOfBoundsException("index: " + index + ", size: " + offset);
    }

    public boolean removeAll(Collection c) {
        boolean changed = false;
        int i = 0;
        while (i < this.lists.length) {
            changed |= this.lists[i].removeAll(c);
            ++i;
        }
        return changed;
    }

    public boolean retainAll(Collection c) {
        boolean changed = false;
        int i = 0;
        while (i < this.lists.length) {
            changed |= this.lists[i].retainAll(c);
            ++i;
        }
        return changed;
    }

    public Object set(int index, Object o) {
        int offset = 0;
        int i = 0;
        while (i < this.lists.length) {
            if (index - offset < this.lists[i].size()) {
                return this.lists[i].set(index - offset, o);
            }
            offset += this.lists[i].size();
            ++i;
        }
        throw new IndexOutOfBoundsException("index: " + index + ", size: " + offset);
    }

    public Object[] toArray() {
        this.getterCalled();
        return this.toArray(new Object[this.doGetSize()]);
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        Object[] result = a;
        if (result.length < this.doGetSize()) {
            result = (Object[])Array.newInstance(a.getClass().getComponentType(), this.doGetSize());
        }
        int offset = 0;
        int i = 0;
        while (i < this.lists.length) {
            Object[] oa = this.lists[i].toArray();
            System.arraycopy(oa, 0, result, offset, oa.length);
            offset += this.lists[i].size();
            ++i;
        }
        return result;
    }

    public boolean isStale() {
        this.getterCalled();
        if (this.staleListener == null || this.listChangeListener == null) {
            return this.computeStaleness();
        }
        if (this.stale == null) {
            this.stale = this.computeStaleness() ? Boolean.TRUE : Boolean.FALSE;
        }
        return this.stale;
    }

    private boolean computeStaleness() {
        boolean stale = false;
        int i = 0;
        while (i < this.lists.length) {
            if (this.lists[i].isStale()) {
                stale = true;
                break;
            }
            ++i;
        }
        return stale;
    }

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    public synchronized void dispose() {
        if (this.lists != null) {
            int i;
            if (this.listChangeListener != null) {
                i = 0;
                while (i < this.lists.length) {
                    this.lists[i].removeListChangeListener(this.listChangeListener);
                    ++i;
                }
            }
            if (this.staleListener != null) {
                i = 0;
                while (i < this.lists.length) {
                    this.lists[i].removeStaleListener(this.staleListener);
                    ++i;
                }
            }
        }
        this.listChangeListener = null;
        this.staleListener = null;
        this.lists = null;
        this.elementType = null;
        this.stale = null;
        super.dispose();
    }

    static /* synthetic */ void access$1(MultiList multiList, Boolean bl) {
        multiList.stale = bl;
    }

    static /* synthetic */ void access$2(MultiList multiList, ListChangeEvent listChangeEvent) {
        multiList.listChanged(listChangeEvent);
    }

    static /* synthetic */ void access$3(MultiList multiList) {
        multiList.makeStale();
    }

    private final class MultiListItr
    implements Iterator {
        Iterator[] iters;
        int iterIndex = 0;

        MultiListItr() {
            this.iters = new Iterator[MultiList.this.lists.length];
            int i = 0;
            while (i < MultiList.this.lists.length) {
                this.iters[i] = MultiList.this.lists[i].iterator();
                ++i;
            }
        }

        public boolean hasNext() {
            int i = this.iterIndex;
            while (i < this.iters.length) {
                if (this.iters[i].hasNext()) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        public Object next() {
            while (this.iterIndex < this.iters.length && !this.iters[this.iterIndex].hasNext()) {
                ++this.iterIndex;
            }
            return this.iters[this.iterIndex].next();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private class MultiListListItr
    implements ListIterator {
        ListIterator[] iters;
        int iterIndex;

        private MultiListListItr(int initialIndex) {
            this.iters = new ListIterator[MultiList.this.lists.length];
            int offset = 0;
            int i = 0;
            while (i < MultiList.this.lists.length) {
                if (offset <= initialIndex) {
                    if (offset + MultiList.this.lists[i].size() > initialIndex) {
                        this.iters[i] = MultiList.this.lists[i].listIterator(initialIndex - offset);
                        this.iterIndex = i;
                    } else {
                        this.iters[i] = MultiList.this.lists[i].listIterator(MultiList.this.lists[i].size());
                    }
                } else {
                    this.iters[i] = MultiList.this.lists[i].listIterator();
                }
                offset += MultiList.this.lists[i].size();
                ++i;
            }
        }

        public void add(Object o) {
            throw new UnsupportedOperationException();
        }

        public boolean hasNext() {
            int i = this.iterIndex;
            while (i < this.iters.length) {
                if (this.iters[i].hasNext()) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        public boolean hasPrevious() {
            int i = this.iterIndex;
            while (i >= 0) {
                if (this.iters[i].hasPrevious()) {
                    return true;
                }
                --i;
            }
            return false;
        }

        public Object next() {
            while (this.iterIndex < this.iters.length && !this.iters[this.iterIndex].hasNext()) {
                ++this.iterIndex;
            }
            return this.iters[this.iterIndex].next();
        }

        public int nextIndex() {
            int offset = 0;
            int i = 0;
            while (i < this.iterIndex) {
                offset += this.iters[i].nextIndex();
                ++i;
            }
            return offset + this.iters[this.iterIndex].nextIndex();
        }

        public Object previous() {
            while (this.iterIndex >= 0 && !this.iters[this.iterIndex].hasPrevious()) {
                --this.iterIndex;
            }
            return this.iters[this.iterIndex].previous();
        }

        public int previousIndex() {
            int offset = 0;
            int i = 0;
            while (i < this.iterIndex) {
                offset += this.iters[i].nextIndex();
                ++i;
            }
            return offset + this.iters[this.iterIndex].previousIndex();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        public void set(Object o) {
            this.iters[this.iterIndex].set(o);
        }
    }
}

