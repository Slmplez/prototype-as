/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.AbstractObservableSet
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.ICheckable
 *  org.eclipse.jface.viewers.IElementComparer
 */
package org.eclipse.jface.internal.databinding.viewers;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.AbstractObservableSet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.IElementComparer;

public class CheckableCheckedElementsObservableSet
extends AbstractObservableSet {
    private ICheckable checkable;
    private Set wrappedSet;
    private Object elementType;
    private IElementComparer elementComparer;
    private ICheckStateListener listener;

    public CheckableCheckedElementsObservableSet(Realm realm, final Set wrappedSet, Object elementType, IElementComparer elementComparer, ICheckable checkable) {
        super(realm);
        Assert.isNotNull((Object)checkable, (String)"Checkable cannot be null");
        Assert.isNotNull((Object)wrappedSet, (String)"Wrapped set cannot be null");
        this.checkable = checkable;
        this.wrappedSet = wrappedSet;
        this.elementType = elementType;
        this.elementComparer = elementComparer;
        this.listener = new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                Object element = event.getElement();
                if (event.getChecked()) {
                    if (wrappedSet.add(element)) {
                        CheckableCheckedElementsObservableSet.this.fireSetChange(Diffs.createSetDiff(Collections.singleton(element), (Set)Collections.EMPTY_SET));
                    }
                } else if (wrappedSet.remove(element)) {
                    CheckableCheckedElementsObservableSet.this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(element)));
                }
            }
        };
        checkable.addCheckStateListener(this.listener);
    }

    protected Set getWrappedSet() {
        return this.wrappedSet;
    }

    Set createDiffSet() {
        return ViewerElementSet.withComparer(this.elementComparer);
    }

    public Object getElementType() {
        return this.elementType;
    }

    public boolean add(Object o) {
        this.getterCalled();
        boolean added = this.wrappedSet.add(o);
        if (added) {
            this.checkable.setChecked(o, true);
            this.fireSetChange(Diffs.createSetDiff(Collections.singleton(o), (Set)Collections.EMPTY_SET));
        }
        return added;
    }

    public boolean remove(Object o) {
        this.getterCalled();
        boolean removed = this.wrappedSet.remove(o);
        if (removed) {
            this.checkable.setChecked(o, false);
            this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(o)));
        }
        return removed;
    }

    public boolean addAll(Collection c) {
        boolean changed;
        this.getterCalled();
        Set additions = this.createDiffSet();
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!this.wrappedSet.add(element)) continue;
            this.checkable.setChecked(element, true);
            additions.add(element);
        }
        boolean bl = changed = !additions.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff((Set)additions, (Set)Collections.EMPTY_SET));
        }
        return changed;
    }

    public boolean removeAll(Collection c) {
        boolean changed;
        this.getterCalled();
        Set removals = this.createDiffSet();
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!this.wrappedSet.remove(element)) continue;
            this.checkable.setChecked(element, false);
            removals.add(element);
        }
        boolean bl = changed = !removals.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, (Set)removals));
        }
        return changed;
    }

    public boolean retainAll(Collection c) {
        boolean changed;
        this.getterCalled();
        Set toRetain = this.createDiffSet();
        toRetain.addAll(c);
        Set removals = this.createDiffSet();
        Iterator iterator = this.wrappedSet.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (toRetain.contains(element)) continue;
            iterator.remove();
            this.checkable.setChecked(element, false);
            removals.add(element);
        }
        boolean bl = changed = !removals.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, (Set)removals));
        }
        return changed;
    }

    public void clear() {
        this.getterCalled();
        Set removals = this.createDiffSet();
        removals.addAll(this.wrappedSet);
        this.removeAll(removals);
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator wrappedIterator = this.wrappedSet.iterator();
        return new Iterator(){
            private Object last = null;

            public boolean hasNext() {
                CheckableCheckedElementsObservableSet.this.getterCalled();
                return wrappedIterator.hasNext();
            }

            public Object next() {
                CheckableCheckedElementsObservableSet.this.getterCalled();
                this.last = wrappedIterator.next();
                return this.last;
            }

            public void remove() {
                CheckableCheckedElementsObservableSet.this.getterCalled();
                wrappedIterator.remove();
                CheckableCheckedElementsObservableSet.this.checkable.setChecked(this.last, false);
                CheckableCheckedElementsObservableSet.this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(this.last)));
            }
        };
    }

    public synchronized void dispose() {
        if (this.checkable != null) {
            this.checkable.removeCheckStateListener(this.listener);
            this.checkable = null;
            this.listener = null;
        }
        super.dispose();
    }
}

