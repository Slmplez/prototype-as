/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.IStaleListener
 *  org.eclipse.core.databinding.observable.StaleEvent
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.ISetChangeListener
 *  org.eclipse.core.databinding.observable.set.ObservableSet
 *  org.eclipse.core.databinding.observable.set.SetChangeEvent
 *  org.eclipse.core.databinding.observable.set.SetDiff
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.core.databinding.observable.value.IValueChangeListener
 *  org.eclipse.core.databinding.observable.value.ValueChangeEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.databinding.validation;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.databinding.observable.set.ObservableSet;
import org.eclipse.core.databinding.observable.set.SetChangeEvent;
import org.eclipse.core.databinding.observable.set.SetDiff;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.core.databinding.observable.value.IValueChangeListener;
import org.eclipse.core.databinding.observable.value.ValueChangeEvent;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;

public class ValidatedObservableSet
extends ObservableSet {
    private IObservableSet target;
    private IObservableValue validationStatus;
    private boolean stale;
    private boolean computeNextDiff = false;
    private boolean updatingTarget = false;
    private ISetChangeListener targetChangeListener = new ISetChangeListener(){

        public void handleSetChange(SetChangeEvent event) {
            if (ValidatedObservableSet.this.updatingTarget) {
                return;
            }
            IStatus status = (IStatus)ValidatedObservableSet.this.validationStatus.getValue();
            if (ValidatedObservableSet.isValid(status)) {
                if (ValidatedObservableSet.this.stale) {
                    ValidatedObservableSet.this.stale = false;
                    ValidatedObservableSet.this.updateWrappedSet(new HashSet(ValidatedObservableSet.this.target));
                } else {
                    SetDiff diff = event.diff;
                    if (ValidatedObservableSet.this.computeNextDiff) {
                        diff = Diffs.computeSetDiff((Set)ValidatedObservableSet.this.wrappedSet, (Set)ValidatedObservableSet.this.target);
                        ValidatedObservableSet.this.computeNextDiff = false;
                    }
                    ValidatedObservableSet.this.applyDiff(diff, ValidatedObservableSet.this.wrappedSet);
                    ValidatedObservableSet.this.fireSetChange(diff);
                }
            } else {
                ValidatedObservableSet.this.makeStale();
            }
        }
    };
    private IStaleListener targetStaleListener = new IStaleListener(){

        public void handleStale(StaleEvent staleEvent) {
            ValidatedObservableSet.this.fireStale();
        }
    };
    private IValueChangeListener validationStatusChangeListener = new IValueChangeListener(){

        public void handleValueChange(ValueChangeEvent event) {
            IStatus oldStatus = (IStatus)event.diff.getOldValue();
            IStatus newStatus = (IStatus)event.diff.getNewValue();
            if (ValidatedObservableSet.this.stale && !ValidatedObservableSet.isValid(oldStatus) && ValidatedObservableSet.isValid(newStatus)) {
                ValidatedObservableSet.this.stale = false;
                ValidatedObservableSet.this.updateWrappedSet(new HashSet(ValidatedObservableSet.this.target));
                ValidatedObservableSet.this.computeNextDiff = true;
            }
        }
    };

    public ValidatedObservableSet(IObservableSet target, IObservableValue validationStatus) {
        super(target.getRealm(), new HashSet(target), target.getElementType());
        Assert.isNotNull((Object)validationStatus, (String)"Validation status observable cannot be null");
        Assert.isTrue((boolean)target.getRealm().equals(validationStatus.getRealm()), (String)"Target and validation status observables must be on the same realm");
        this.target = target;
        this.validationStatus = validationStatus;
        target.addSetChangeListener(this.targetChangeListener);
        target.addStaleListener(this.targetStaleListener);
        validationStatus.addValueChangeListener(this.validationStatusChangeListener);
    }

    private void updateWrappedSet(Set newSet) {
        Set oldSet = this.wrappedSet;
        SetDiff diff = Diffs.computeSetDiff((Set)oldSet, (Set)newSet);
        this.wrappedSet = newSet;
        this.fireSetChange(diff);
    }

    private static boolean isValid(IStatus status) {
        return status.isOK() || status.matches(3);
    }

    private void applyDiff(SetDiff diff, Set set) {
        Iterator iterator = diff.getRemovals().iterator();
        while (iterator.hasNext()) {
            set.remove(iterator.next());
        }
        iterator = diff.getAdditions().iterator();
        while (iterator.hasNext()) {
            set.add(iterator.next());
        }
    }

    private void makeStale() {
        if (!this.stale) {
            this.stale = true;
            this.fireStale();
        }
    }

    private void updateTargetSet(SetDiff diff) {
        this.updatingTarget = true;
        try {
            if (this.stale) {
                this.stale = false;
                this.applyDiff(Diffs.computeSetDiff((Set)this.target, (Set)this.wrappedSet), (Set)this.target);
            } else {
                this.applyDiff(diff, (Set)this.target);
            }
        }
        finally {
            this.updatingTarget = false;
        }
    }

    public boolean isStale() {
        this.getterCalled();
        return this.stale || this.target.isStale();
    }

    public boolean add(Object o) {
        this.getterCalled();
        boolean changed = this.wrappedSet.add(o);
        if (changed) {
            SetDiff diff = Diffs.createSetDiff(Collections.singleton(o), (Set)Collections.EMPTY_SET);
            this.updateTargetSet(diff);
            this.fireSetChange(diff);
        }
        return changed;
    }

    public boolean addAll(Collection c) {
        this.getterCalled();
        HashSet set = new HashSet(this.wrappedSet);
        boolean changed = set.addAll(c);
        if (changed) {
            SetDiff diff = Diffs.computeSetDiff((Set)this.wrappedSet, set);
            this.wrappedSet = set;
            this.updateTargetSet(diff);
            this.fireSetChange(diff);
        }
        return changed;
    }

    public void clear() {
        this.getterCalled();
        if (this.isEmpty()) {
            return;
        }
        SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, (Set)this.wrappedSet);
        this.wrappedSet = new HashSet();
        this.updateTargetSet(diff);
        this.fireSetChange(diff);
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator wrappedIterator = this.wrappedSet.iterator();
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
                wrappedIterator.remove();
                SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(this.last));
                ValidatedObservableSet.this.updateTargetSet(diff);
                ValidatedObservableSet.this.fireSetChange(diff);
            }
        };
    }

    public boolean remove(Object o) {
        this.getterCalled();
        boolean changed = this.wrappedSet.remove(o);
        if (changed) {
            SetDiff diff = Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(o));
            this.updateTargetSet(diff);
            this.fireSetChange(diff);
        }
        return changed;
    }

    public boolean removeAll(Collection c) {
        this.getterCalled();
        HashSet set = new HashSet(this.wrappedSet);
        boolean changed = set.removeAll(c);
        if (changed) {
            SetDiff diff = Diffs.computeSetDiff((Set)this.wrappedSet, set);
            this.wrappedSet = set;
            this.updateTargetSet(diff);
            this.fireSetChange(diff);
        }
        return changed;
    }

    public boolean retainAll(Collection c) {
        this.getterCalled();
        HashSet set = new HashSet(this.wrappedSet);
        boolean changed = set.retainAll(c);
        if (changed) {
            SetDiff diff = Diffs.computeSetDiff((Set)this.wrappedSet, set);
            this.wrappedSet = set;
            this.updateTargetSet(diff);
            this.fireSetChange(diff);
        }
        return changed;
    }

    public synchronized void dispose() {
        this.target.removeSetChangeListener(this.targetChangeListener);
        this.target.removeStaleListener(this.targetStaleListener);
        this.validationStatus.removeValueChangeListener(this.validationStatusChangeListener);
        super.dispose();
    }
}

