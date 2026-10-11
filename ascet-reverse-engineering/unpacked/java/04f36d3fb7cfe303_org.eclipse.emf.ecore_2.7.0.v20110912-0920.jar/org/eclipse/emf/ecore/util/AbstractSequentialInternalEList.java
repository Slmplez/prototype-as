/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore.util;

import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractSequentialInternalEList<E>
extends AbstractSequentialList<E>
implements InternalEList<E> {
    private static final long serialVersionUID = 1L;

    protected AbstractSequentialInternalEList() {
    }

    @Override
    public boolean addAllUnique(Collection<? extends E> collection) {
        return this.addAllUnique(this.size(), collection);
    }

    @Override
    public boolean addAllUnique(int index, Collection<? extends E> collection) {
        return this.addAll(index, collection);
    }

    @Override
    public void addUnique(E object) {
        this.addUnique(this.size(), object);
    }

    @Override
    public void addUnique(int index, E object) {
        this.add(index, object);
    }

    @Override
    public NotificationChain basicAdd(E object, NotificationChain notifications) {
        this.addUnique(object);
        return notifications;
    }

    @Override
    public E basicGet(int index) {
        return this.basicList().get(index);
    }

    @Override
    public Iterator<E> basicIterator() {
        return this.basicListIterator();
    }

    @Override
    public List<E> basicList() {
        return new AbstractSequentialList<E>(){
            private static final long serialVersionUID = 1L;

            @Override
            public ListIterator<E> listIterator(int index) {
                return AbstractSequentialInternalEList.this.basicListIterator(index);
            }

            @Override
            public int size() {
                return AbstractSequentialInternalEList.this.size();
            }
        };
    }

    @Override
    public ListIterator<E> basicListIterator() {
        return this.basicListIterator(0);
    }

    @Override
    public ListIterator<E> basicListIterator(int index) {
        return this.basicList().listIterator(index);
    }

    @Override
    public NotificationChain basicRemove(Object object, NotificationChain notifications) {
        this.remove(object);
        return notifications;
    }

    @Override
    public boolean basicContains(Object object) {
        return this.basicList().contains(object);
    }

    @Override
    public boolean basicContainsAll(Collection<?> collection) {
        return this.basicList().containsAll(collection);
    }

    @Override
    public int basicIndexOf(Object object) {
        return this.basicList().indexOf(object);
    }

    @Override
    public int basicLastIndexOf(Object object) {
        return this.basicList().lastIndexOf(object);
    }

    @Override
    public Object[] basicToArray() {
        return this.basicList().toArray();
    }

    @Override
    public <T> T[] basicToArray(T[] array) {
        return this.basicList().toArray(array);
    }

    @Override
    public E setUnique(int index, E object) {
        return this.set(index, object);
    }

    public void move(int newPosition, E object) {
        this.remove(object);
        this.add(newPosition, object);
    }

    public E move(int newPosition, int oldPosition) {
        Object movedObject = this.remove(oldPosition);
        this.add(newPosition, movedObject);
        return movedObject;
    }
}

