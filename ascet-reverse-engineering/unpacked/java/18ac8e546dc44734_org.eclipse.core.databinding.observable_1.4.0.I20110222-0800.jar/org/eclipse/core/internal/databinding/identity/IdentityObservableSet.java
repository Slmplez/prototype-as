/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.identity;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.Diffs;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.AbstractObservableSet;
import org.eclipse.core.internal.databinding.identity.IdentitySet;

public class IdentityObservableSet
extends AbstractObservableSet {
    private Set wrappedSet = new IdentitySet();
    private Object elementType;

    public IdentityObservableSet(Realm realm, Object elementType) {
        super(realm);
        this.elementType = elementType;
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
                IdentityObservableSet.this.getterCalled();
                return wrappedIterator.hasNext();
            }

            public Object next() {
                IdentityObservableSet.this.getterCalled();
                this.last = wrappedIterator.next();
                return this.last;
            }

            public void remove() {
                IdentityObservableSet.this.getterCalled();
                wrappedIterator.remove();
                IdentityObservableSet.this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, Collections.singleton(this.last)));
            }
        };
    }

    public boolean add(Object o) {
        this.getterCalled();
        boolean changed = this.wrappedSet.add(o);
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff(Collections.singleton(o), Collections.EMPTY_SET));
        }
        return changed;
    }

    public boolean addAll(Collection c) {
        boolean changed;
        this.getterCalled();
        IdentitySet additions = new IdentitySet();
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!this.wrappedSet.add(element)) continue;
            additions.add(element);
        }
        boolean bl = changed = !additions.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff(additions, Collections.EMPTY_SET));
        }
        return changed;
    }

    public boolean remove(Object o) {
        this.getterCalled();
        boolean changed = this.wrappedSet.remove(o);
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, Collections.singleton(o)));
        }
        return changed;
    }

    public boolean removeAll(Collection c) {
        boolean changed;
        this.getterCalled();
        IdentitySet removals = new IdentitySet();
        Iterator iterator = c.iterator();
        while (iterator.hasNext()) {
            Object element = iterator.next();
            if (!this.wrappedSet.remove(element)) continue;
            removals.add(element);
        }
        boolean bl = changed = !removals.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, removals));
        }
        return changed;
    }

    public boolean retainAll(Collection c) {
        boolean changed;
        this.getterCalled();
        IdentitySet removals = new IdentitySet();
        Object[] toRetain = c.toArray();
        Iterator iterator = this.wrappedSet.iterator();
        block0: while (iterator.hasNext()) {
            Object element = iterator.next();
            int i = 0;
            while (i < toRetain.length) {
                if (element == toRetain[i]) continue block0;
                ++i;
            }
            iterator.remove();
            removals.add(element);
        }
        boolean bl = changed = !removals.isEmpty();
        if (changed) {
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, removals));
        }
        return changed;
    }

    public void clear() {
        this.getterCalled();
        if (!this.wrappedSet.isEmpty()) {
            Set removals = this.wrappedSet;
            this.wrappedSet = new IdentitySet();
            this.fireSetChange(Diffs.createSetDiff(Collections.EMPTY_SET, removals));
        }
    }
}

