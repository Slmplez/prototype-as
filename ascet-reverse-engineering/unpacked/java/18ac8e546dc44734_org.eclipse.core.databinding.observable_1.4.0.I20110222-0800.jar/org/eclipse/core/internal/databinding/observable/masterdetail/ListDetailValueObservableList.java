/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable.masterdetail;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.RandomAccess;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IObserving;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.AbstractObservableList;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.masterdetail.IObservableFactory;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.internal.databinding.identity.IdentityMap;
import org.eclipse.core.internal.databinding.identity.IdentitySet;

public class ListDetailValueObservableList
extends AbstractObservableList
implements IObserving,
RandomAccess {
    private IObservableList masterList;
    private IObservableFactory detailFactory;
    private Object detailType;
    private ArrayList detailList;
    private IdentityMap masterDetailMap = new IdentityMap();
    private IdentitySet staleDetailObservables = new IdentitySet();
    private IListChangeListener masterListListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            ListDetailValueObservableList.this.handleMasterListChange(event.diff);
        }
    };
    private IValueChangeListener detailValueListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            if (!event.getObservable().isStale()) {
                ListDetailValueObservableList.this.staleDetailObservables.remove(event.getObservable());
            }
            ListDetailValueObservableList.this.handleDetailValueChange(event);
        }
    };
    private IStaleListener masterStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ListDetailValueObservableList.this.fireStale();
        }
    };
    private IStaleListener detailStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            boolean wasStale = ListDetailValueObservableList.this.isStale();
            ListDetailValueObservableList.this.staleDetailObservables.add(staleEvent.getObservable());
            if (!wasStale) {
                ListDetailValueObservableList.this.fireStale();
            }
        }
    };

    public ListDetailValueObservableList(IObservableList masterList, IObservableFactory detailFactory, Object detailType) {
        super(masterList.getRealm());
        this.masterList = masterList;
        this.detailFactory = detailFactory;
        this.detailType = detailType;
        this.detailList = new ArrayList();
        masterList.addListChangeListener(this.masterListListener);
        masterList.addStaleListener(this.masterStaleListener);
        masterList.addDisposeListener(new IDisposeListener(){

            public void handleDispose(DisposeEvent event) {
                ListDetailValueObservableList.this.dispose();
            }
        });
        ListDiff initMasterDiff = Diffs.computeListDiff(Collections.EMPTY_LIST, masterList);
        this.handleMasterListChange(initMasterDiff);
    }

    protected synchronized void firstListenerAdded() {
        int i = 0;
        while (i < this.detailList.size()) {
            IObservableValue detail = (IObservableValue)this.detailList.get(i);
            detail.addValueChangeListener(this.detailValueListener);
            detail.addStaleListener(this.detailStaleListener);
            if (detail.isStale()) {
                this.staleDetailObservables.add(detail);
            }
            ++i;
        }
    }

    protected synchronized void lastListenerRemoved() {
        if (this.isDisposed()) {
            return;
        }
        int i = 0;
        while (i < this.detailList.size()) {
            IObservableValue detail = (IObservableValue)this.detailList.get(i);
            detail.removeValueChangeListener(this.detailValueListener);
            detail.removeStaleListener(this.detailStaleListener);
            ++i;
        }
        this.staleDetailObservables.clear();
    }

    private void handleMasterListChange(ListDiff masterListDiff) {
        boolean wasStale = this.isStale();
        boolean hasListeners = this.hasListeners();
        ListDiffEntry[] masterEntries = masterListDiff.getDifferences();
        ListDiffEntry[] detailEntries = new ListDiffEntry[masterEntries.length];
        int i = 0;
        while (i < masterEntries.length) {
            ListDiffEntry masterEntry = masterEntries[i];
            int index = masterEntry.getPosition();
            Object masterElement = masterEntry.getElement();
            Object detailValue = masterEntry.isAddition() ? this.addDetailObservable(masterElement, index) : this.removeDetailObservable(masterElement, index);
            if (hasListeners) {
                detailEntries[i] = Diffs.createListDiffEntry(index, masterEntry.isAddition(), detailValue);
            }
            ++i;
        }
        if (hasListeners) {
            if (!wasStale && this.isStale()) {
                this.fireStale();
            }
            this.fireListChange(Diffs.createListDiff(detailEntries));
        }
    }

    private Object addDetailObservable(Object masterElement, int index) {
        DetailEntry detailEntry = (DetailEntry)this.masterDetailMap.get(masterElement);
        if (detailEntry != null) {
            DetailEntry detailEntry2 = detailEntry;
            detailEntry2.masterReferenceCount = detailEntry2.masterReferenceCount + 1;
            this.detailList.add(index, detailEntry.detailObservable);
            return detailEntry.detailObservable.getValue();
        }
        IObservableValue detail = this.createDetailObservable(masterElement);
        this.masterDetailMap.put(masterElement, new DetailEntry(detail));
        this.detailList.add(index, detail);
        if (this.hasListeners()) {
            detail.addValueChangeListener(this.detailValueListener);
            detail.addStaleListener(this.detailStaleListener);
            if (detail.isStale()) {
                this.staleDetailObservables.add(detail);
            }
        }
        return detail.getValue();
    }

    private Object removeDetailObservable(Object masterElement, int index) {
        DetailEntry detailEntry;
        IObservableValue detail = (IObservableValue)this.detailList.remove(index);
        Object detailValue = detail.getValue();
        DetailEntry detailEntry2 = detailEntry = (DetailEntry)this.masterDetailMap.get(masterElement);
        detailEntry2.masterReferenceCount = detailEntry2.masterReferenceCount - 1;
        if (detailEntry.masterReferenceCount == 0) {
            this.masterDetailMap.remove(masterElement);
            this.staleDetailObservables.remove(detail);
            detail.dispose();
        }
        return detailValue;
    }

    private void handleDetailValueChange(ValueChangeEvent event) {
        IObservableValue detail = event.getObservableValue();
        BitSet detailIndexes = new BitSet();
        int i = 0;
        while (i < this.detailList.size()) {
            if (this.detailList.get(i) == detail) {
                detailIndexes.set(i);
            }
            ++i;
        }
        Object oldValue = event.diff.getOldValue();
        Object newValue = event.diff.getNewValue();
        ListDiffEntry[] diffEntries = new ListDiffEntry[2 * detailIndexes.cardinality()];
        int diffIndex = 0;
        int b = detailIndexes.nextSetBit(0);
        while (b != -1) {
            diffEntries[diffIndex++] = Diffs.createListDiffEntry(b, false, oldValue);
            diffEntries[diffIndex++] = Diffs.createListDiffEntry(b, true, newValue);
            b = detailIndexes.nextSetBit(b + 1);
        }
        this.fireListChange(Diffs.createListDiff(diffEntries));
    }

    private IObservableValue createDetailObservable(Object masterElement) {
        ObservableTracker.setIgnore(true);
        try {
            IObservableValue iObservableValue = (IObservableValue)this.detailFactory.createObservable(masterElement);
            return iObservableValue;
        }
        finally {
            ObservableTracker.setIgnore(false);
        }
    }

    protected int doGetSize() {
        return this.detailList.size();
    }

    public Object get(int index) {
        ObservableTracker.getterCalled(this);
        return ((IObservableValue)this.detailList.get(index)).getValue();
    }

    public Object set(int index, Object element) {
        IObservableValue detail = (IObservableValue)this.detailList.get(index);
        Object oldElement = detail.getValue();
        detail.setValue(element);
        return oldElement;
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

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Object getElementType() {
        return this.detailType;
    }

    public boolean isStale() {
        return super.isStale() || this.masterList != null && this.masterList.isStale() || this.staleDetailObservables != null && !this.staleDetailObservables.isEmpty();
    }

    public Object getObserved() {
        return this.masterList;
    }

    public synchronized void dispose() {
        if (this.masterList != null) {
            this.masterList.removeListChangeListener(this.masterListListener);
            this.masterList.removeStaleListener(this.masterStaleListener);
        }
        if (this.detailList != null) {
            Iterator iter = this.detailList.iterator();
            while (iter.hasNext()) {
                IObservableValue detailValue = (IObservableValue)iter.next();
                detailValue.dispose();
            }
            this.detailList.clear();
        }
        this.masterList = null;
        this.detailFactory = null;
        this.detailType = null;
        this.masterListListener = null;
        this.detailValueListener = null;
        this.masterDetailMap = null;
        this.staleDetailObservables = null;
        super.dispose();
    }

    private static final class DetailEntry {
        private final IObservableValue detailObservable;
        private int masterReferenceCount = 1;

        public DetailEntry(IObservableValue detailObservable) {
            this.detailObservable = detailObservable;
        }
    }
}

