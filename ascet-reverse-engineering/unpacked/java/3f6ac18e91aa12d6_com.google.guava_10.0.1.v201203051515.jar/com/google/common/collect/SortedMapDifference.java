/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.MapDifference;
import java.util.SortedMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
@GwtCompatible
public interface SortedMapDifference<K, V>
extends MapDifference<K, V> {
    @Override
    public SortedMap<K, V> entriesOnlyOnLeft();

    @Override
    public SortedMap<K, V> entriesOnlyOnRight();

    @Override
    public SortedMap<K, V> entriesInCommon();

    @Override
    public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering();
}

