/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.databinding.observable;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.set.IObservableSet;
import org.eclipse.core.databinding.observable.set.ISetChangeListener;
import org.eclipse.core.runtime.Assert;

public class EmptyObservableSet
implements IObservableSet {
    private static final Set emptySet = Collections.EMPTY_SET;
    private final Realm realm;
    private Object elementType;

    public EmptyObservableSet(Realm realm) {
        this(realm, null);
    }

    public EmptyObservableSet(Realm realm, Object elementType) {
        this.realm = realm;
        this.elementType = elementType;
        ObservableTracker.observableCreated(this);
    }

    public void addSetChangeListener(ISetChangeListener listener) {
    }

    public void removeSetChangeListener(ISetChangeListener listener) {
    }

    public Object getElementType() {
        return this.elementType;
    }

    public int size() {
        this.checkRealm();
        return 0;
    }

    private void checkRealm() {
        Assert.isTrue((boolean)this.realm.isCurrent(), (String)"Observable cannot be accessed outside its realm");
    }

    public boolean isEmpty() {
        this.checkRealm();
        return true;
    }

    public boolean contains(Object o) {
        this.checkRealm();
        return false;
    }

    public Iterator iterator() {
        this.checkRealm();
        return emptySet.iterator();
    }

    public Object[] toArray() {
        this.checkRealm();
        return emptySet.toArray();
    }

    public Object[] toArray(Object[] a) {
        return emptySet.toArray(a);
    }

    public boolean add(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean remove(Object o) {
        throw new UnsupportedOperationException();
    }

    public boolean containsAll(Collection c) {
        this.checkRealm();
        return c.isEmpty();
    }

    public boolean addAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection c) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnsupportedOperationException();
    }

    public void addChangeListener(IChangeListener listener) {
    }

    public void removeChangeListener(IChangeListener listener) {
    }

    public void addStaleListener(IStaleListener listener) {
    }

    public void removeStaleListener(IStaleListener listener) {
    }

    public void addDisposeListener(IDisposeListener listener) {
    }

    public void removeDisposeListener(IDisposeListener listener) {
    }

    public boolean isStale() {
        this.checkRealm();
        return false;
    }

    public boolean isDisposed() {
        return false;
    }

    public void dispose() {
    }

    public Realm getRealm() {
        return this.realm;
    }

    public boolean equals(Object obj) {
        this.checkRealm();
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        return ((Set)obj).isEmpty();
    }

    public int hashCode() {
        this.checkRealm();
        return 0;
    }
}

