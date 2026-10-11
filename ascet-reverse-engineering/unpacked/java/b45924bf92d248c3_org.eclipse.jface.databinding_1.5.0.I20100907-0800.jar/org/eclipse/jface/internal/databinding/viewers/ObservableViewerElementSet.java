/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Diffs
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.set.AbstractObservableSet
 *  org.eclipse.core.databinding.observable.set.IObservableSet
 *  org.eclipse.core.databinding.observable.set.WritableSet
 *  org.eclipse.core.runtime.Assert
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
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.WritableSet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.databinding.viewers.ViewerElementSet;
import org.eclipse.jface.viewers.IElementComparer;

public class ObservableViewerElementSet
extends AbstractObservableSet {
    private Set wrappedSet;
    private Object elementType;
    private IElementComparer comparer;

    public ObservableViewerElementSet(Realm realm, Object elementType, IElementComparer comparer) {
        super(realm);
        Assert.isNotNull((Object)comparer);
        this.wrappedSet = new ViewerElementSet(comparer);
        this.elementType = elementType;
        this.comparer = comparer;
    }

    protected Set getWrappedSet() {
        return this.wrappedSet;
    }

    public Object getElementType() {
        return this.elementType;
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator wrappedIterator = this.wrappedSet.iterator();
        return new Iterator(){
            Object last;

            public boolean hasNext() {
                ObservableViewerElementSet.this.getterCalled();
                return wrappedIterator.hasNext();
            }

            public Object next() {
                ObservableViewerElementSet.this.getterCalled();
                this.last = wrappedIterator.next();
                return this.last;
            }

            public void remove() {
                ObservableViewerElementSet.this.getterCalled();
                wrappedIterator.remove();
                ObservableViewerElementSet.this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(this.last)));
            }
        };
    }

    public boolean add(Object o) {
        this.getterCalled();
        boolean changed = this.wrappedSet.add(o);
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff(Collections.singleton(o), (Set)Collections.EMPTY_SET));
        }
        return changed;
    }

    public boolean addAll(Collection c) {
        boolean changed;
        this.getterCalled();
        ViewerElementSet additions = new ViewerElementSet(this.comparer);
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!this.wrappedSet.add(element)) continue;
            additions.add(element);
        }
        boolean bl = changed = !additions.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff((Set)additions, (Set)Collections.EMPTY_SET));
        }
        return changed;
    }

    public boolean remove(Object o) {
        this.getterCalled();
        boolean changed = this.wrappedSet.remove(o);
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, Collections.singleton(o)));
        }
        return changed;
    }

    public boolean removeAll(Collection c) {
        boolean changed;
        this.getterCalled();
        ViewerElementSet removals = new ViewerElementSet(this.comparer);
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!this.wrappedSet.remove(element)) continue;
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
        ViewerElementSet removals = new ViewerElementSet(this.comparer);
        Object[] toRetain = c.toArray();
        Iterator iterator = this.wrappedSet.iterator();
        block0: while (iterator.hasNext()) {
            Object element = iterator.next();
            int i = 0;
            while (i < toRetain.length) {
                if (this.comparer.equals(element, toRetain[i])) continue block0;
                ++i;
            }
            iterator.remove();
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
        if (!this.wrappedSet.isEmpty()) {
            Set removals = this.wrappedSet;
            this.wrappedSet = new ViewerElementSet(this.comparer);
            this.fireSetChange(Diffs.createSetDiff((Set)Collections.EMPTY_SET, (Set)removals));
        }
    }

    public static IObservableSet withComparer(Realm realm, Object elementType, IElementComparer comparer) {
        if (comparer == null) {
            return new WritableSet(realm, (Collection)Collections.EMPTY_SET, elementType);
        }
        return new ObservableViewerElementSet(realm, elementType, comparer);
    }
}

