/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.databinding.observable;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.set.DecoratingObservableSet;
import org.eclipse.core.databinding.observable.set.IObservableSet;

public class UnmodifiableObservableSet
extends DecoratingObservableSet {
    private Set unmodifiableSet;

    public UnmodifiableObservableSet(IObservableSet decorated) {
        super(decorated, false);
        this.unmodifiableSet = Collections.unmodifiableSet(decorated);
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public Iterator iterator() {
        this.getterCalled();
        return this.unmodifiableSet.iterator();
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

    public synchronized void dispose() {
        this.unmodifiableSet = null;
        super.dispose();
    }
}

