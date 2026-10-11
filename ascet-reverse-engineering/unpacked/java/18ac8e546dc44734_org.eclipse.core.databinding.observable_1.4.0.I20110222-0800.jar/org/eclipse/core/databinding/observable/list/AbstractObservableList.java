/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.databinding.observable.list;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.databinding.observable.ChangeEvent;
import org.eclipse.core.databinding.observable.ChangeSupport;
import org.eclipse.core.databinding.observable.DisposeEvent;
import org.eclipse.core.databinding.observable.IChangeListener;
import org.eclipse.core.databinding.observable.IDisposeListener;
import org.eclipse.core.databinding.observable.IStaleListener;
import org.eclipse.core.databinding.observable.ObservableTracker;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.StaleEvent;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;
import org.eclipse.core.runtime.Assert;

public abstract class AbstractObservableList
extends AbstractList
implements IObservableList {
    private final Realm realm;
    private PrivateChangeSupport changeSupport;
    private boolean disposed = false;

    public AbstractObservableList(Realm realm) {
        Assert.isNotNull((Object)realm, (String)"Realm cannot be null");
        ObservableTracker.observableCreated(this);
        this.realm = realm;
        this.changeSupport = new PrivateChangeSupport(realm);
    }

    public AbstractObservableList() {
        this(Realm.getDefault());
    }

    protected boolean hasListeners() {
        return this.changeSupport.hasListeners();
    }

    public boolean isStale() {
        this.getterCalled();
        return false;
    }

    public synchronized void addListChangeListener(IListChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.addListener(ListChangeEvent.TYPE, listener);
        }
    }

    public synchronized void removeListChangeListener(IListChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.removeListener(ListChangeEvent.TYPE, listener);
        }
    }

    protected void fireListChange(ListDiff diff) {
        this.fireChange();
        this.changeSupport.fireEvent(new ListChangeEvent(this, diff));
    }

    public synchronized void addChangeListener(IChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.addChangeListener(listener);
        }
    }

    public synchronized void removeChangeListener(IChangeListener listener) {
        if (!this.disposed) {
            this.changeSupport.removeChangeListener(listener);
        }
    }

    public synchronized void addStaleListener(IStaleListener listener) {
        if (!this.disposed) {
            this.changeSupport.addStaleListener(listener);
        }
    }

    public synchronized void removeStaleListener(IStaleListener listener) {
        if (!this.disposed) {
            this.changeSupport.removeStaleListener(listener);
        }
    }

    public synchronized void addDisposeListener(IDisposeListener listener) {
        if (this.changeSupport != null) {
            this.changeSupport.addDisposeListener(listener);
        }
    }

    public synchronized void removeDisposeListener(IDisposeListener listener) {
        if (this.changeSupport != null) {
            this.changeSupport.removeDisposeListener(listener);
        }
    }

    protected void fireChange() {
        this.checkRealm();
        this.changeSupport.fireEvent(new ChangeEvent(this));
    }

    protected void fireStale() {
        this.checkRealm();
        this.changeSupport.fireEvent(new StaleEvent(this));
    }

    protected void firstListenerAdded() {
    }

    protected void lastListenerRemoved() {
    }

    public synchronized boolean isDisposed() {
        return this.disposed;
    }

    public synchronized void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.changeSupport.fireEvent(new DisposeEvent(this));
            this.changeSupport.dispose();
            this.changeSupport = null;
            this.lastListenerRemoved();
        }
    }

    public final int size() {
        this.getterCalled();
        return this.doGetSize();
    }

    protected abstract int doGetSize();

    private void getterCalled() {
        ObservableTracker.getterCalled(this);
    }

    public boolean isEmpty() {
        this.getterCalled();
        return super.isEmpty();
    }

    public boolean contains(Object o) {
        this.getterCalled();
        return super.contains(o);
    }

    public Iterator iterator() {
        this.getterCalled();
        final Iterator wrappedIterator = super.iterator();
        return new Iterator(){

            public void remove() {
                wrappedIterator.remove();
            }

            public boolean hasNext() {
                return wrappedIterator.hasNext();
            }

            public Object next() {
                return wrappedIterator.next();
            }
        };
    }

    public Object[] toArray() {
        this.getterCalled();
        return super.toArray();
    }

    public Object[] toArray(Object[] a) {
        this.getterCalled();
        return super.toArray(a);
    }

    public boolean add(Object o) {
        this.getterCalled();
        return super.add(o);
    }

    public Object move(int oldIndex, int newIndex) {
        this.checkRealm();
        int size = this.doGetSize();
        if (oldIndex < 0 || oldIndex >= size) {
            throw new IndexOutOfBoundsException("oldIndex: " + oldIndex + ", size:" + size);
        }
        if (newIndex < 0 || newIndex >= size) {
            throw new IndexOutOfBoundsException("newIndex: " + newIndex + ", size:" + size);
        }
        Object element = this.remove(oldIndex);
        this.add(newIndex, element);
        return element;
    }

    public boolean remove(Object o) {
        this.getterCalled();
        return super.remove(o);
    }

    public boolean containsAll(Collection c) {
        this.getterCalled();
        return super.containsAll(c);
    }

    public boolean addAll(Collection c) {
        this.getterCalled();
        return super.addAll(c);
    }

    public boolean addAll(int index, Collection c) {
        this.getterCalled();
        return super.addAll(c);
    }

    public boolean removeAll(Collection c) {
        this.getterCalled();
        return super.removeAll(c);
    }

    public boolean retainAll(Collection c) {
        this.getterCalled();
        return super.retainAll(c);
    }

    public boolean equals(Object o) {
        this.getterCalled();
        return super.equals(o);
    }

    public int hashCode() {
        this.getterCalled();
        return super.hashCode();
    }

    public int indexOf(Object o) {
        this.getterCalled();
        return super.indexOf(o);
    }

    public int lastIndexOf(Object o) {
        this.getterCalled();
        return super.lastIndexOf(o);
    }

    public Realm getRealm() {
        return this.realm;
    }

    protected void checkRealm() {
        Assert.isTrue((boolean)this.getRealm().isCurrent(), (String)"This operation must be run within the observable's realm");
    }

    private final class PrivateChangeSupport
    extends ChangeSupport {
        private PrivateChangeSupport(Realm realm) {
            super(realm);
        }

        protected void firstListenerAdded() {
            AbstractObservableList.this.firstListenerAdded();
        }

        protected void lastListenerRemoved() {
            AbstractObservableList.this.lastListenerRemoved();
        }

        protected boolean hasListeners() {
            return super.hasListeners();
        }
    }
}

