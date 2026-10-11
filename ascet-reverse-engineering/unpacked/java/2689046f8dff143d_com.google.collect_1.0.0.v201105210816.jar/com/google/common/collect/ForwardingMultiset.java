/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.Multiset;
import java.util.Set;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
public abstract class ForwardingMultiset<E>
extends ForwardingCollection<E>
implements Multiset<E> {
    @Override
    protected abstract Multiset<E> delegate();

    @Override
    public int count(Object element) {
        return this.delegate().count(element);
    }

    @Override
    public int add(E element, int occurrences) {
        return this.delegate().add(element, occurrences);
    }

    @Override
    public int remove(Object element, int occurrences) {
        return this.delegate().remove(element, occurrences);
    }

    @Override
    public Set<E> elementSet() {
        return this.delegate().elementSet();
    }

    @Override
    public Set<Multiset.Entry<E>> entrySet() {
        return this.delegate().entrySet();
    }

    @Override
    public boolean equals(@Nullable Object object) {
        return object == this || ((Object)this.delegate()).equals(object);
    }

    @Override
    public int hashCode() {
        return ((Object)this.delegate()).hashCode();
    }

    @Override
    public int setCount(E element, int count) {
        return this.delegate().setCount(element, count);
    }

    @Override
    public boolean setCount(E element, int oldCount, int newCount) {
        return this.delegate().setCount(element, oldCount, newCount);
    }
}

