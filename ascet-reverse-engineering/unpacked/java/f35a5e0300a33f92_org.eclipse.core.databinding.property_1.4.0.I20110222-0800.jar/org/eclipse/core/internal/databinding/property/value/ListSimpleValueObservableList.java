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
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.internal.databinding.identity.IdentityMap
 *  org.eclipse.core.internal.databinding.identity.IdentityObservableSet
 *  org.eclipse.core.internal.databinding.identity.IdentitySet
 */
package org.eclipse.core.internal.databinding.property.value;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
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
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.IPropertyObservable;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.SimplePropertyEvent;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.identity.IdentityObservableSet;
import org.eclipse.core.internal.databinding.identity.IdentitySet;
import org.eclipse.core.internal.databinding.property.Util;

public class ListSimpleValueObservableList
extends AbstractObservableList
implements IPropertyObservable {
    private IObservableList masterList;
    private SimpleValueProperty detailProperty;
    private IObservableSet knownMasterElements;
    private Map cachedValues;
    private Set staleElements;
    private boolean updating;
    private IListChangeListener masterListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            if (!ListSimpleValueObservableList.this.isDisposed()) {
                this.updateKnownElements();
                ListSimpleValueObservableList.this.fireListChange(this.convertDiff(event.diff));
            }
        }

        private void updateKnownElements() {
            IdentitySet identityKnownElements = new IdentitySet((Collection)ListSimpleValueObservableList.this.masterList);
            ListSimpleValueObservableList.this.knownMasterElements.retainAll((Collection)identityKnownElements);
            ListSimpleValueObservableList.this.knownMasterElements.addAll((Collection)identityKnownElements);
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
                Object elementDetailValue = ListSimpleValueObservableList.this.detailProperty.getValue(masterElement);
                detailEntries[i] = Diffs.createListDiffEntry((int)index, (boolean)addition, (Object)elementDetailValue);
                ++i;
            }
            return Diffs.createListDiff((ListDiffEntry[])detailEntries);
        }
    };
    private IStaleListener staleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ListSimpleValueObservableList.this.fireStale();
        }
    };
    private INativePropertyListener detailListener;

    public ListSimpleValueObservableList(IObservableList masterList, SimpleValueProperty valueProperty) {
        super(masterList.getRealm());
        this.masterList = masterList;
        this.detailProperty = valueProperty;
        ISimplePropertyListener listener = new ISimplePropertyListener(){

            public void handleEvent(SimplePropertyEvent event) {
                if (!ListSimpleValueObservableList.this.isDisposed() && !ListSimpleValueObservableList.this.updating) {
                    ListSimpleValueObservableList.this.getRealm().exec(new Runnable(this, event){
                        final /* synthetic */ 3 this$1;
                        private final /* synthetic */ SimplePropertyEvent val$event;
                        {
                            this.this$1 = var1_1;
                            this.val$event = simplePropertyEvent;
                        }

                        public void run() {
                            if (this.val$event.type == SimplePropertyEvent.CHANGE) {
                                ListSimpleValueObservableList.access$6(3.access$0(this.this$1), this.val$event.getSource());
                            } else if (this.val$event.type == SimplePropertyEvent.STALE) {
                                boolean wasStale = !ListSimpleValueObservableList.access$7(3.access$0(this.this$1)).isEmpty();
                                ListSimpleValueObservableList.access$7(3.access$0(this.this$1)).add(this.val$event.getSource());
                                if (!wasStale) {
                                    ListSimpleValueObservableList.access$4(3.access$0(this.this$1));
                                }
                            }
                        }
                    });
                }
            }

            static /* synthetic */ ListSimpleValueObservableList access$0(3 var0) {
                return var0.ListSimpleValueObservableList.this;
            }
        };
        this.detailListener = this.detailProperty.adaptListener(listener);
    }

    protected void firstListenerAdded() {
        ObservableTracker.setIgnore((boolean)true);
        try {
            this.knownMasterElements = new IdentityObservableSet(this.getRealm(), null);
        }
        finally {
            ObservableTracker.setIgnore((boolean)false);
        }
        this.cachedValues = new IdentityMap();
        this.staleElements = new IdentitySet();
        this.knownMasterElements.addSetChangeListener(new ISetChangeListener(){

            public void handleSetChange(SetChangeEvent event) {
                Object key;
                Iterator it = event.diff.getRemovals().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    if (ListSimpleValueObservableList.this.detailListener != null) {
                        ListSimpleValueObservableList.this.detailListener.removeFrom(key);
                    }
                    ListSimpleValueObservableList.this.cachedValues.remove(key);
                    ListSimpleValueObservableList.this.staleElements.remove(key);
                }
                it = event.diff.getAdditions().iterator();
                while (it.hasNext()) {
                    key = it.next();
                    ListSimpleValueObservableList.this.cachedValues.put(key, ListSimpleValueObservableList.this.detailProperty.getValue(key));
                    if (ListSimpleValueObservableList.this.detailListener == null) continue;
                    ListSimpleValueObservableList.this.detailListener.addTo(key);
                }
            }
        });
        this.getRealm().exec(new Runnable(){

            public void run() {
                ListSimpleValueObservableList.this.knownMasterElements.addAll((Collection)ListSimpleValueObservableList.this.masterList);
                ListSimpleValueObservableList.this.masterList.addListChangeListener(ListSimpleValueObservableList.this.masterListener);
                ListSimpleValueObservableList.this.masterList.addStaleListener(ListSimpleValueObservableList.this.staleListener);
            }
        });
    }

    protected void lastListenerRemoved() {
        if (this.masterList != null) {
            this.masterList.removeListChangeListener(this.masterListener);
            this.masterList.removeStaleListener(this.staleListener);
        }
        if (this.knownMasterElements != null) {
            this.knownMasterElements.dispose();
            this.knownMasterElements = null;
        }
        if (this.cachedValues != null) {
            this.cachedValues.clear();
            this.cachedValues = null;
        }
        if (this.staleElements != null) {
            this.staleElements.clear();
            this.staleElements = null;
        }
    }

    protected int doGetSize() {
        this.getterCalled();
        return this.masterList.size();
    }

    private void getterCalled() {
        ObservableTracker.getterCalled((IObservable)this);
    }

    public Object getElementType() {
        return this.detailProperty.getValueType();
    }

    public Object get(int index) {
        this.getterCalled();
        Object masterElement = this.masterList.get(index);
        return this.detailProperty.getValue(masterElement);
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
        Iterator it = this.masterList.iterator();
        while (it.hasNext()) {
            if (!Util.equals(this.detailProperty.getValue(it.next()), o)) continue;
            return true;
        }
        return false;
    }

    public boolean isEmpty() {
        this.getterCalled();
        return this.masterList.isEmpty();
    }

    public boolean isStale() {
        this.getterCalled();
        return this.masterList.isStale() || this.staleElements != null && !this.staleElements.isEmpty();
    }

    public Iterator iterator() {
        this.getterCalled();
        return new Iterator(){
            Iterator it;
            {
                this.it = ListSimpleValueObservableList.this.masterList.iterator();
            }

            public boolean hasNext() {
                ListSimpleValueObservableList.this.getterCalled();
                return this.it.hasNext();
            }

            public Object next() {
                ListSimpleValueObservableList.this.getterCalled();
                Object masterElement = this.it.next();
                return ListSimpleValueObservableList.this.detailProperty.getValue(masterElement);
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
            result[i] = this.detailProperty.getValue(masterElements[i]);
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
            a[i] = this.detailProperty.getValue(masterElements[i]);
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
                this.it = ListSimpleValueObservableList.this.masterList.listIterator(n);
                this.haveIterated = false;
            }

            public void add(Object arg0) {
                throw new UnsupportedOperationException();
            }

            public boolean hasNext() {
                ListSimpleValueObservableList.this.getterCalled();
                return this.it.hasNext();
            }

            public boolean hasPrevious() {
                ListSimpleValueObservableList.this.getterCalled();
                return this.it.hasPrevious();
            }

            public Object next() {
                ListSimpleValueObservableList.this.getterCalled();
                this.lastMasterElement = this.it.next();
                this.lastElement = ListSimpleValueObservableList.this.detailProperty.getValue(this.lastMasterElement);
                this.haveIterated = true;
                return this.lastElement;
            }

            public int nextIndex() {
                ListSimpleValueObservableList.this.getterCalled();
                return this.it.nextIndex();
            }

            public Object previous() {
                ListSimpleValueObservableList.this.getterCalled();
                this.lastMasterElement = this.it.previous();
                this.lastElement = ListSimpleValueObservableList.this.detailProperty.getValue(this.lastMasterElement);
                this.haveIterated = true;
                return this.lastElement;
            }

            public int previousIndex() {
                ListSimpleValueObservableList.this.getterCalled();
                return this.it.previousIndex();
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }

            public void set(Object o) {
                ListSimpleValueObservableList.this.checkRealm();
                if (!this.haveIterated) {
                    throw new IllegalStateException();
                }
                boolean wasUpdating = ListSimpleValueObservableList.this.updating;
                ListSimpleValueObservableList.this.updating = true;
                try {
                    ListSimpleValueObservableList.this.detailProperty.setValue(this.lastElement, o);
                }
                finally {
                    ListSimpleValueObservableList.this.updating = wasUpdating;
                }
                ListSimpleValueObservableList.this.notifyIfChanged(this.lastMasterElement);
                this.lastElement = o;
            }
        };
    }

    private void notifyIfChanged(Object masterElement) {
        Object newValue;
        Object oldValue;
        if (this.cachedValues != null && (!Util.equals(oldValue = this.cachedValues.get(masterElement), newValue = this.detailProperty.getValue(masterElement)) || this.staleElements.contains(masterElement))) {
            this.cachedValues.put(masterElement, newValue);
            this.staleElements.remove(masterElement);
            this.fireListChange(this.indicesOf(masterElement), oldValue, newValue);
        }
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
        Object oldValue = this.detailProperty.getValue(masterElement);
        boolean wasUpdating = this.updating;
        this.updating = true;
        try {
            this.detailProperty.setValue(masterElement, o);
        }
        finally {
            this.updating = wasUpdating;
        }
        this.notifyIfChanged(masterElement);
        return oldValue;
    }

    public Object getObserved() {
        return this.masterList;
    }

    public IProperty getProperty() {
        return this.detailProperty;
    }

    public synchronized void dispose() {
        if (this.knownMasterElements != null) {
            this.knownMasterElements.clear();
            this.knownMasterElements.dispose();
            this.knownMasterElements = null;
        }
        if (this.masterList != null) {
            this.masterList.removeListChangeListener(this.masterListener);
            this.masterList = null;
        }
        this.masterListener = null;
        this.detailListener = null;
        this.detailProperty = null;
        this.cachedValues = null;
        this.staleElements = null;
        super.dispose();
    }
}

