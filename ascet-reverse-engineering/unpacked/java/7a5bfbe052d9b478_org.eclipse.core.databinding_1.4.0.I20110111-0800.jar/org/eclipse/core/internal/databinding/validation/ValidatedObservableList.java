/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.ObservableTracker
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.list.IListChangeListener
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.list.ListChangeEvent
 *  org.eclipse.core.databinding.observable.list.ListDiff
 *  org.eclipse.core.databinding.observable.list.ListDiffEntry
 *  org.eclipse.core.databinding.observable.list.ListDiffVisitor
 *  org.eclipse.core.databinding.observable.list.ObservableList
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding.validation;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.databinding.observable.list.ListDiffEntry;
import org.eclipse.core.databinding.observable.list.ListDiffVisitor;
import org.eclipse.core.databinding.observable.list.ObservableList;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

public class ValidatedObservableList
extends ObservableList {
    private IObservableList target;
    private IObservableValue validationStatus;
    private boolean stale;
    private boolean computeNextDiff = false;
    private boolean updatingTarget = false;
    private IListChangeListener targetChangeListener = new IListChangeListener(){

        public void handleListChange(ListChangeEvent event) {
            if (ValidatedObservableList.this.updatingTarget) {
                return;
            }
            IStatus status = (IStatus)ValidatedObservableList.this.validationStatus.getValue();
            if (ValidatedObservableList.isValid(status)) {
                if (ValidatedObservableList.this.stale) {
                    ValidatedObservableList.this.stale = false;
                    ValidatedObservableList.this.updateWrappedList(new ArrayList(ValidatedObservableList.this.target));
                } else {
                    ListDiff diff = event.diff;
                    if (ValidatedObservableList.this.computeNextDiff) {
                        diff = Diffs.computeListDiff((List)ValidatedObservableList.this.wrappedList, (List)ValidatedObservableList.this.target);
                        ValidatedObservableList.this.computeNextDiff = false;
                    }
                    ValidatedObservableList.this.applyDiff(diff, ValidatedObservableList.this.wrappedList);
                    ValidatedObservableList.this.fireListChange(diff);
                }
            } else {
                ValidatedObservableList.this.makeStale();
            }
        }
    };
    private IStaleListener targetStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ValidatedObservableList.this.fireStale();
        }
    };
    private IValueChangeListener validationStatusChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            IStatus oldStatus = (IStatus)event.diff.getOldValue();
            IStatus newStatus = (IStatus)event.diff.getNewValue();
            if (ValidatedObservableList.this.stale && !ValidatedObservableList.isValid(oldStatus) && ValidatedObservableList.isValid(newStatus)) {
                ValidatedObservableList.this.stale = false;
                ValidatedObservableList.this.updateWrappedList(new ArrayList(ValidatedObservableList.this.target));
                ValidatedObservableList.this.computeNextDiff = true;
            }
        }
    };

    private static boolean isValid(IStatus status) {
        return status.isOK() || status.matches(3);
    }

    public ValidatedObservableList(IObservableList target, IObservableValue validationStatus) {
        super(target.getRealm(), new ArrayList(target), target.getElementType());
        Assert.isNotNull((Object)validationStatus, (String)"Validation status observable cannot be null");
        Assert.isTrue((boolean)target.getRealm().equals(validationStatus.getRealm()), (String)"Target and validation status observables must be on the same realm");
        this.target = target;
        this.validationStatus = validationStatus;
        target.addListChangeListener(this.targetChangeListener);
        target.addStaleListener(this.targetStaleListener);
        validationStatus.addValueChangeListener(this.validationStatusChangeListener);
    }

    private void makeStale() {
        if (!this.stale) {
            this.stale = true;
            this.fireStale();
        }
    }

    private void updateTargetList(ListDiff diff) {
        this.updatingTarget = true;
        try {
            if (this.stale) {
                this.stale = false;
                this.applyDiff(Diffs.computeListDiff((List)this.target, (List)this.wrappedList), (List)this.target);
            } else {
                this.applyDiff(diff, (List)this.target);
            }
        }
        finally {
            this.updatingTarget = false;
        }
    }

    private void applyDiff(ListDiff diff, final List list) {
        diff.accept(new ListDiffVisitor(){

            public void handleAdd(int index, Object element) {
                list.add(index, element);
            }

            public void handleRemove(int index, Object element) {
                list.remove(index);
            }

            public void handleReplace(int index, Object oldElement, Object newElement) {
                list.set(index, newElement);
            }
        });
    }

    public boolean isStale() {
        ObservableTracker.getterCalled((IObservable)this);
        return this.stale || this.target.isStale();
    }

    public void add(int index, Object element) {
        this.checkRealm();
        this.wrappedList.add(index, element);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)true, (Object)element));
        this.updateTargetList(diff);
        this.fireListChange(diff);
    }

    public boolean add(Object o) {
        this.checkRealm();
        this.add(this.wrappedList.size(), o);
        return true;
    }

    public boolean addAll(Collection c) {
        this.checkRealm();
        return this.addAll(this.wrappedList.size(), c);
    }

    public boolean addAll(int index, Collection c) {
        this.checkRealm();
        Object[] elements = c.toArray();
        ListDiffEntry[] entries = new ListDiffEntry[elements.length];
        int i = 0;
        while (i < elements.length) {
            this.wrappedList.add(index + i, elements[i]);
            entries[i] = Diffs.createListDiffEntry((int)(index + i), (boolean)true, (Object)elements[i]);
            ++i;
        }
        ListDiff diff = Diffs.createListDiff((ListDiffEntry[])entries);
        this.updateTargetList(diff);
        this.fireListChange(diff);
        return true;
    }

    public void clear() {
        this.checkRealm();
        if (this.isEmpty()) {
            return;
        }
        ListDiff diff = Diffs.computeListDiff((List)this.wrappedList, (List)Collections.EMPTY_LIST);
        this.wrappedList.clear();
        this.updateTargetList(diff);
        this.fireListChange(diff);
    }

    public Iterator iterator() {
        this.getterCalled();
        final ListIterator wrappedIterator = this.wrappedList.listIterator();
        return new Iterator(){
            Object last = null;

            public boolean hasNext() {
                return wrappedIterator.hasNext();
            }

            public Object next() {
                this.last = wrappedIterator.next();
                return this.last;
            }

            public void remove() {
                int index = wrappedIterator.previousIndex();
                wrappedIterator.remove();
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)false, (Object)this.last));
                ValidatedObservableList.this.updateTargetList(diff);
                ValidatedObservableList.this.fireListChange(diff);
            }
        };
    }

    public ListIterator listIterator() {
        return this.listIterator(0);
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        final ListIterator wrappedIterator = this.wrappedList.listIterator(index);
        return new ListIterator(){
            int lastIndex = -1;
            Object last = null;

            public void add(Object o) {
                wrappedIterator.add(o);
                this.lastIndex = this.previousIndex();
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)true, (Object)o));
                ValidatedObservableList.this.updateTargetList(diff);
                ValidatedObservableList.this.fireListChange(diff);
            }

            public boolean hasNext() {
                return wrappedIterator.hasNext();
            }

            public boolean hasPrevious() {
                return wrappedIterator.hasPrevious();
            }

            public Object next() {
                this.last = wrappedIterator.next();
                this.lastIndex = this.previousIndex();
                return this.last;
            }

            public int nextIndex() {
                return wrappedIterator.nextIndex();
            }

            public Object previous() {
                this.last = wrappedIterator.previous();
                this.lastIndex = this.nextIndex();
                return this.last;
            }

            public int previousIndex() {
                return wrappedIterator.previousIndex();
            }

            public void remove() {
                wrappedIterator.remove();
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)false, (Object)this.last));
                this.lastIndex = -1;
                ValidatedObservableList.this.updateTargetList(diff);
                ValidatedObservableList.this.fireListChange(diff);
            }

            public void set(Object o) {
                wrappedIterator.set(o);
                ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)false, (Object)this.last), (ListDiffEntry)Diffs.createListDiffEntry((int)this.lastIndex, (boolean)true, (Object)o));
                this.last = o;
                ValidatedObservableList.this.updateTargetList(diff);
                ValidatedObservableList.this.fireListChange(diff);
            }
        };
    }

    public Object move(int oldIndex, int newIndex) {
        this.checkRealm();
        int size = this.wrappedList.size();
        if (oldIndex >= size) {
            throw new IndexOutOfBoundsException("oldIndex: " + oldIndex + ", size:" + size);
        }
        if (newIndex >= size) {
            throw new IndexOutOfBoundsException("newIndex: " + newIndex + ", size:" + size);
        }
        if (oldIndex == newIndex) {
            return this.wrappedList.get(oldIndex);
        }
        Object element = this.wrappedList.remove(oldIndex);
        this.wrappedList.add(newIndex, element);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)oldIndex, (boolean)false, element), (ListDiffEntry)Diffs.createListDiffEntry((int)newIndex, (boolean)true, element));
        this.updateTargetList(diff);
        this.fireListChange(diff);
        return element;
    }

    public Object remove(int index) {
        this.checkRealm();
        Object element = this.wrappedList.remove(index);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)false, element));
        this.updateTargetList(diff);
        this.fireListChange(diff);
        return element;
    }

    public boolean remove(Object o) {
        this.checkRealm();
        int index = this.wrappedList.indexOf(o);
        if (index == -1) {
            return false;
        }
        this.remove(index);
        return true;
    }

    public boolean removeAll(Collection c) {
        this.checkRealm();
        ArrayList list = new ArrayList(this.wrappedList);
        boolean changed = list.removeAll(c);
        if (changed) {
            ListDiff diff = Diffs.computeListDiff((List)this.wrappedList, list);
            this.wrappedList = list;
            this.updateTargetList(diff);
            this.fireListChange(diff);
        }
        return changed;
    }

    public boolean retainAll(Collection c) {
        this.checkRealm();
        ArrayList list = new ArrayList(this.wrappedList);
        boolean changed = list.retainAll(c);
        if (changed) {
            ListDiff diff = Diffs.computeListDiff((List)this.wrappedList, list);
            this.wrappedList = list;
            this.updateTargetList(diff);
            this.fireListChange(diff);
        }
        return changed;
    }

    public Object set(int index, Object element) {
        this.checkRealm();
        Object oldElement = this.wrappedList.set(index, element);
        ListDiff diff = Diffs.createListDiff((ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)false, (Object)oldElement), (ListDiffEntry)Diffs.createListDiffEntry((int)index, (boolean)true, (Object)element));
        this.updateTargetList(diff);
        this.fireListChange(diff);
        return oldElement;
    }

    public synchronized void dispose() {
        this.target.removeListChangeListener(this.targetChangeListener);
        this.target.removeStaleListener(this.targetStaleListener);
        this.validationStatus.removeValueChangeListener(this.validationStatusChangeListener);
        super.dispose();
    }
}

