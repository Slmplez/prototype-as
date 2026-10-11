/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.Platform;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public abstract class ForwardingList<E>
extends ForwardingCollection<E>
implements List<E> {
    @Override
    protected abstract List<E> delegate();

    @Override
    public void add(int index, E element) {
        this.delegate().add(index, element);
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> elements) {
        return this.delegate().addAll(index, elements);
    }

    @Override
    public E get(int index) {
        return this.delegate().get(index);
    }

    @Override
    public int indexOf(Object element) {
        return this.delegate().indexOf(element);
    }

    @Override
    public int lastIndexOf(Object element) {
        return this.delegate().lastIndexOf(element);
    }

    @Override
    public ListIterator<E> listIterator() {
        return this.delegate().listIterator();
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        return this.delegate().listIterator(index);
    }

    @Override
    public E remove(int index) {
        return this.delegate().remove(index);
    }

    @Override
    public E set(int index, E element) {
        return this.delegate().set(index, element);
    }

    @Override
    @GwtIncompatible(value="List.subList")
    public List<E> subList(int fromIndex, int toIndex) {
        return Platform.subList(this.delegate(), fromIndex, toIndex);
    }

    @Override
    public boolean equals(@Nullable Object object) {
        return object == this || ((Object)this.delegate()).equals(object);
    }

    @Override
    public int hashCode() {
        return ((Object)this.delegate()).hashCode();
    }
}

