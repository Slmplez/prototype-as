/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.impl.DelegatingNotifyingListImpl
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.impl.DelegatingNotifyingListImpl;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DelegatingNotifyingInternalEListImpl<E>
extends DelegatingNotifyingListImpl<E>
implements InternalEList<E> {
    private static final long serialVersionUID = 1L;

    public DelegatingNotifyingInternalEListImpl() {
    }

    public DelegatingNotifyingInternalEListImpl(Collection<? extends E> collection) {
        super(collection);
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

    @Override
    public E basicGet(int index) {
        return (E)super.basicGet(index);
    }

    @Override
    public List<E> basicList() {
        return super.basicList();
    }

    @Override
    public Iterator<E> basicIterator() {
        return super.basicIterator();
    }

    @Override
    public ListIterator<E> basicListIterator() {
        return super.basicListIterator();
    }

    @Override
    public ListIterator<E> basicListIterator(int index) {
        return super.basicListIterator(index);
    }
}

