/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 */
package org.eclipse.emf.ecore.util;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicInternalEList<E>
extends BasicEList<E>
implements InternalEList<E> {
    private static final long serialVersionUID = 1L;
    protected final Class<? extends E> dataClass;

    public BasicInternalEList(Class<? extends E> dataClass) {
        this.dataClass = dataClass;
    }

    public BasicInternalEList(Class<? extends E> dataClass, int initialCapacity) {
        this.dataClass = dataClass;
        if (initialCapacity < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + initialCapacity);
        }
        this.data = this.newData(initialCapacity);
    }

    public BasicInternalEList(Class<? extends E> dataClass, Collection<? extends E> collection) {
        this.dataClass = dataClass;
        this.size = collection.size();
        if (this.size > 0) {
            this.data = this.newData(this.size + this.size / 8 + 1);
            collection.toArray(this.data);
        }
    }

    public BasicInternalEList(Class<? extends E> dataClass, int size, Object[] data) {
        super(size, data);
        this.dataClass = dataClass;
    }

    protected Object[] newData(int capacity) {
        return (Object[])Array.newInstance(this.dataClass, capacity);
    }

    @Override
    public NotificationChain basicRemove(Object object, NotificationChain notifications) {
        super.remove(object);
        return notifications;
    }

    @Override
    public NotificationChain basicAdd(E object, NotificationChain notifications) {
        super.add(object);
        return notifications;
    }

    @Override
    public Iterator<E> basicIterator() {
        return super.basicIterator();
    }

    @Override
    public List<E> basicList() {
        return super.basicList();
    }

    @Override
    public ListIterator<E> basicListIterator() {
        return super.basicListIterator();
    }

    @Override
    public ListIterator<E> basicListIterator(int index) {
        return super.basicListIterator(index);
    }

    @Override
    public boolean basicContains(Object object) {
        return super.contains(object);
    }

    @Override
    public boolean basicContainsAll(Collection<?> collection) {
        return super.containsAll(collection);
    }

    @Override
    public int basicIndexOf(Object object) {
        return super.indexOf(object);
    }

    @Override
    public int basicLastIndexOf(Object object) {
        return super.lastIndexOf(object);
    }

    @Override
    public Object[] basicToArray() {
        return super.toArray();
    }

    @Override
    public <T> T[] basicToArray(T[] array) {
        return super.toArray((Object[])array);
    }
}

