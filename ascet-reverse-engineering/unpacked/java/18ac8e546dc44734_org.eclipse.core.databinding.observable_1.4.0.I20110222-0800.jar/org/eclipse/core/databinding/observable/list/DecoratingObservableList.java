/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.databinding.observable.DecoratingObservableCollection;
import org.eclipse.core.databinding.observable.list.IListChangeListener;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.list.ListChangeEvent;
import org.eclipse.core.databinding.observable.list.ListDiff;

public class DecoratingObservableList
extends DecoratingObservableCollection
implements IObservableList {
    private IObservableList decorated;
    private IListChangeListener listChangeListener;

    public DecoratingObservableList(IObservableList decorated, boolean disposeDecoratedOnDispose) {
        super(decorated, disposeDecoratedOnDispose);
        this.decorated = decorated;
    }

    public synchronized void addListChangeListener(IListChangeListener listener) {
        this.addListener(ListChangeEvent.TYPE, listener);
    }

    public synchronized void removeListChangeListener(IListChangeListener listener) {
        this.removeListener(ListChangeEvent.TYPE, listener);
    }

    protected void fireListChange(ListDiff diff) {
        super.fireChange();
        this.fireEvent(new ListChangeEvent(this, diff));
    }

    protected void fireChange() {
        throw new RuntimeException("fireChange should not be called, use fireListChange() instead");
    }

    protected void firstListenerAdded() {
        if (this.listChangeListener == null) {
            this.listChangeListener = new IListChangeListener(){

                public void handleListChange(ListChangeEvent event) {
                    DecoratingObservableList.this.handleListChange(event);
                }
            };
        }
        this.decorated.addListChangeListener(this.listChangeListener);
        super.firstListenerAdded();
    }

    protected void lastListenerRemoved() {
        super.lastListenerRemoved();
        if (this.listChangeListener != null) {
            this.decorated.removeListChangeListener(this.listChangeListener);
            this.listChangeListener = null;
        }
    }

    protected void handleListChange(ListChangeEvent event) {
        this.fireListChange(event.diff);
    }

    public void add(int index, Object o) {
        this.checkRealm();
        this.decorated.add(index, o);
    }

    public boolean addAll(int index, Collection c) {
        this.checkRealm();
        return this.decorated.addAll(index, c);
    }

    public Object get(int index) {
        this.getterCalled();
        return this.decorated.get(index);
    }

    public int indexOf(Object o) {
        this.getterCalled();
        return this.decorated.indexOf(o);
    }

    public int lastIndexOf(Object o) {
        this.getterCalled();
        return this.decorated.lastIndexOf(o);
    }

    public ListIterator listIterator() {
        return this.listIterator(0);
    }

    public ListIterator listIterator(int index) {
        this.getterCalled();
        final ListIterator iterator = this.decorated.listIterator(index);
        return new ListIterator(){

            public void add(Object o) {
                iterator.add(o);
            }

            public boolean hasNext() {
                DecoratingObservableList.this.getterCalled();
                return iterator.hasNext();
            }

            public boolean hasPrevious() {
                DecoratingObservableList.this.getterCalled();
                return iterator.hasPrevious();
            }

            public Object next() {
                DecoratingObservableList.this.getterCalled();
                return iterator.next();
            }

            public int nextIndex() {
                DecoratingObservableList.this.getterCalled();
                return iterator.nextIndex();
            }

            public Object previous() {
                DecoratingObservableList.this.getterCalled();
                return iterator.previous();
            }

            public int previousIndex() {
                DecoratingObservableList.this.getterCalled();
                return iterator.previousIndex();
            }

            public void remove() {
                DecoratingObservableList.this.checkRealm();
                iterator.remove();
            }

            public void set(Object o) {
                DecoratingObservableList.this.checkRealm();
                iterator.set(o);
            }
        };
    }

    public Object move(int oldIndex, int newIndex) {
        this.checkRealm();
        return this.decorated.move(oldIndex, newIndex);
    }

    public Object remove(int index) {
        this.checkRealm();
        return this.decorated.remove(index);
    }

    public Object set(int index, Object element) {
        this.checkRealm();
        return this.decorated.set(index, element);
    }

    public List subList(int fromIndex, int toIndex) {
        this.getterCalled();
        return this.decorated.subList(fromIndex, toIndex);
    }

    public synchronized void dispose() {
        if (this.decorated != null && this.listChangeListener != null) {
            this.decorated.removeListChangeListener(this.listChangeListener);
        }
        this.decorated = null;
        this.listChangeListener = null;
        super.dispose();
    }
}

