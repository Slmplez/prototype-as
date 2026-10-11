/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.list.AbstractObservableList
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffEntry
 */
package org.eclipse.core.internal.databinding.property.value;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.AbstractObservableList;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.value.DelegatingValueProperty;
import org.eclipse.core.internal.databinding.property.value.DelegatingCache;

public class ListDelegatingValueObservableList
extends AbstractObservableList
implements IPropertyObservable {
    private IObservableList masterList;
    private DelegatingValueProperty detailProperty;
    private DelegatingCache cache;
    private IListChangeListener masterListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            if (ListDelegatingValueObservableList.this.isDisposed()) {
                return;
            }
            ListDelegatingValueObservableList.this.cache.addAll((Collection)ListDelegatingValueObservableList.this.masterList);
            ListDiff diff = this.convertDiff(event.diff);
            ListDelegatingValueObservableList.this.cache.retainAll((Collection)ListDelegatingValueObservableList.this.masterList);
            ListDelegatingValueObservableList.this.fireListChange(diff);
        }

        private ListDiff convertDiff(ListDiff diff) {
            ListDiffEntry[] masterEntries = diff.getDifferences();
            ListDiffEntry[] detailEntries = new ListDiffEntry[masterEntries.length];
            int i = 0;
            while (i < masterEntries.length) {
                ListDiffEntry masterDifference = masterEntries[i];
                int index = masterDifference.getPosition();
                boolean addition = masterDifference.isAddition();
                Object masterElement = masterDifference.getElement();
                Object detailValue = ListDelegatingValueObservableList.this.cache.get(masterElement);
                detailEntries[i] = Diffs.createListDiffEntry((int)index, (boolean)addition, (Object)detailValue);
                ++i;
            }
            return Diffs.createListDiff((ListDiffEntry[])detailEntries);
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ListDelegatingValueObservableList.this.fireStale();
        }
    };

    public ListDelegatingValueObservableList(IObservableList masterList, DelegatingValueProperty valueProperty) {
        super(masterList.getRealm());
        this.masterList = masterList;
        this.detailProperty = valueProperty;
        this.cache = new DelegatingCache(this.getRealm(), valueProperty){

            void handleValueChange(Object masterElement, Object oldValue, Object newValue) {
                ListDelegatingValueObservableList.this.fireListChange(ListDelegatingValueObservableList.this.indicesOf(masterElement), oldValue, newValue);
            }
        };
        this.cache.addAll((Collection)masterList);
        masterList.addListChangeListener(this.masterListener);
        masterList.addStaleListener(this.staleListener);
    }

    protected int doGetSize() {
        this.getterCalled();
        return this.masterList.size();
    }

    private void getterCalled() {
        ObservableTracker.getterCalled((IObservable)this);
    }

    public Object get(int index) {
        this.getterCalled();
        Object masterElement = this.masterList.get(index);
        return this.cache.get(masterElement);
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(int index, Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return this.cache.containsValue(o);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.masterList.isEmpty();
    }

    public boolean isStale() {
        this.getterCalled();
        return this.masterList.isStale();
    }

    public Iterator iterator() {
        this.getterCalled();
        return new Iterator(){
            Iterator it;
            {
                this.it = ListDelegatingValueObservableList.this.masterList.iterator();
            }

            public boolean hasNext() {
                ListDelegatingValueObservableList.this.getterCalled();
                return this.it.hasNext();
            }

            public Object next() {
                ListDelegatingValueObservableList.this.getterCalled();
                Object masterElement = this.it.next();
                return ListDelegatingValueObservableList.this.cache.get(masterElement);
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    public Object move(int oldIndex, int newIndex) {
        throw new UnsupportedOperationException();
    }

    public boolean remove(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public Object[] toArray() {
        this.getterCalled();
        Object[] masterElements = this.masterList.toArray();
        Object[] result = new Object[masterElements.length];
        int i = 0;
        while (i < result.length) {
            result[i] = this.cache.get(masterElements[i]);
            ++i;
        }
        return result;
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        Object[] masterElements = this.masterList.toArray();
        if (a.length < masterElements.length) {
            a = (Object[])Array.newInstance(a.getClass().getComponentType(), masterElements.length);
        }
        int i = 0;
        while (i < masterElements.length) {
            a[i] = this.cache.get(masterElements[i]);
            ++i;
        }
        return a;
    }

    public void add(int index, Object o) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public ListIterator listIterator() {
        return this.listIterator(0);
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        return new ListIterator(index){
            ListIterator it;
            Object lastMasterElement;
            Object lastElement;
            boolean haveIterated;
            {
                this.it = ListDelegatingValueObservableList.this.masterList.listIterator(n);
                this.haveIterated = false;
            }

            public void add(Object arg0) {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext() {
                ListDelegatingValueObservableList.this.getterCalled();
                return this.it.hasNext();
            }

            public boolean hasPrevious() {
                ListDelegatingValueObservableList.this.getterCalled();
                return this.it.hasPrevious();
            }

            public Object next() {
                ListDelegatingValueObservableList.this.getterCalled();
                this.lastMasterElement = this.it.next();
                this.lastElement = ListDelegatingValueObservableList.this.cache.get(this.lastMasterElement);
                this.haveIterated = true;
                return this.lastElement;
            }

            public int nextIndex() {
                ListDelegatingValueObservableList.this.getterCalled();
                return this.it.nextIndex();
            }

            public Object previous() {
                ListDelegatingValueObservableList.this.getterCalled();
                this.lastMasterElement = this.it.previous();
                this.lastElement = ListDelegatingValueObservableList.this.cache.get(this.lastMasterElement);
                this.haveIterated = true;
                return this.lastElement;
            }

            public int previousIndex() {
                ListDelegatingValueObservableList.this.getterCalled();
                return this.it.previousIndex();
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public void set(Object o) {
                ListDelegatingValueObservableList.this.checkRealm();
                if (!this.haveIterated) {
                    throw new IllegalStateException();
                }
                ListDelegatingValueObservableList.this.cache.put(this.lastMasterElement, o);
                this.lastElement = o;
            }
        };
    }

    private int[] indicesOf(Object masterElement) {
        ArrayList<Integer> indices = new ArrayList<Integer>();
        ListIterator it = this.masterList.listIterator();
        while (it.hasNext()) {
            if (masterElement != it.next()) continue;
            indices.add(new Integer(it.previousIndex()));
        }
        int[] result = new int[indices.size()];
        int i = 0;
        while (i < result.length) {
            result[i] = (Integer)indices.get(i);
            ++i;
        }
        return result;
    }

    private void fireListChange(int[] indices, Object oldValue, Object newValue) {
        ListDiffEntry[] differences = new ListDiffEntry[indices.length * 2];
        int i = 0;
        while (i < indices.length) {
            int index = indices[i];
            differences[i * 2] = Diffs.createListDiffEntry((int)index, (boolean)false, (Object)oldValue);
            differences[i * 2 + 1] = Diffs.createListDiffEntry((int)index, (boolean)true, (Object)newValue);
            ++i;
        }
        this.fireListChange(Diffs.createListDiff((ListDiffEntry[])differences));
    }

    public Object remove(int index) {
        throw new UnsupportedOperationException();
    }

    public Object set(int index, Object o) {
        this.checkRealm();
        Object masterElement = this.masterList.get(index);
        return this.cache.put(masterElement, o);
    }

    public Object getObserved() {
        return this.masterList;
    }

    public IProperty getProperty() {
        return this.detailProperty;
    }

    public Object getElementType() {
        return this.detailProperty.getValueType();
    }

    public synchronized void dispose() {
        if (this.masterList != null) {
            this.masterList.removeListChangeListener(this.masterListener);
            this.masterList.removeStaleListener(this.staleListener);
            this.masterList = null;
        }
        if (this.cache != null) {
            this.cache.dispose();
            this.cache = null;
        }
        this.masterListener = null;
        this.detailProperty = null;
        super.dispose();
    }
}

