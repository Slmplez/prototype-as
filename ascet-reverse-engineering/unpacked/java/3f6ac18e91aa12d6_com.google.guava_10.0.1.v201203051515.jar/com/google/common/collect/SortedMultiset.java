/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.BoundType;
import com.google.common.collect.Multiset;
import com.google.common.collect.SortedIterable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
interface SortedMultiset<E>
extends Multiset<E>,
SortedIterable<E> {
    @Override
    public Comparator<? super E> comparator();

    public Multiset.Entry<E> firstEntry();

    public Multiset.Entry<E> lastEntry();

    public Multiset.Entry<E> pollFirstEntry();

    public Multiset.Entry<E> pollLastEntry();

    @Override
    public SortedSet<E> elementSet();

    @Override
    public Iterator<E> iterator();

    public SortedMultiset<E> descendingMultiset();

    public SortedMultiset<E> headMultiset(E var1, BoundType var2);

    public SortedMultiset<E> subMultiset(E var1, BoundType var2, E var3, BoundType var4);

    public SortedMultiset<E> tailMultiset(E var1, BoundType var2);
}

