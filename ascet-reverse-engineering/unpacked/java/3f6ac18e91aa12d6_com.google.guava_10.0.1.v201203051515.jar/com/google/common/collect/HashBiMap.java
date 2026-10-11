/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.AbstractBiMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Serialization;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible(emulated=true)
public final class HashBiMap<K, V>
extends AbstractBiMap<K, V> {
    @GwtIncompatible(value="Not needed in emulated source")
    private static final long serialVersionUID = 0L;

    public static <K, V> HashBiMap<K, V> create() {
        return new HashBiMap<K, V>();
    }

    public static <K, V> HashBiMap<K, V> create(int expectedSize) {
        return new HashBiMap<K, V>(expectedSize);
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> bimap = HashBiMap.create(map.size());
        bimap.putAll((Map)map);
        return bimap;
    }

    private HashBiMap() {
        super(new HashMap(), new HashMap());
    }

    private HashBiMap(int expectedSize) {
        super(Maps.newHashMapWithExpectedSize(expectedSize), Maps.newHashMapWithExpectedSize(expectedSize));
    }

    @Override
    public V put(@Nullable K key, @Nullable V value) {
        return super.put(key, value);
    }

    @Override
    public V forcePut(@Nullable K key, @Nullable V value) {
        return super.forcePut(key, value);
    }

    @GwtIncompatible(value="java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream stream) throws IOException {
        stream.defaultWriteObject();
        Serialization.writeMap(this, stream);
    }

    @GwtIncompatible(value="java.io.ObjectInputStream")
    private void readObject(ObjectInputStream stream) throws IOException, ClassNotFoundException {
        stream.defaultReadObject();
        int size = Serialization.readCount(stream);
        this.setDelegates(Maps.newHashMapWithExpectedSize(size), Maps.newHashMapWithExpectedSize(size));
        Serialization.populateMap(this, stream, size);
    }
}

