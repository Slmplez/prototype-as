/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MappedList<K, V> {
    protected final HashMap<K, List<V>> internal = new HashMap();
    protected final List<V> empty = Collections.EMPTY_LIST;

    public void put(K key, V value) {
        List<V> existing = this.internal.get(key);
        if (existing == null) {
            existing = new ArrayList<V>(1);
            existing.add(value);
            this.internal.put(key, existing);
            return;
        }
        int index = this.insertionIndex(existing, value);
        existing.add(index, value);
    }

    protected int insertionIndex(List<V> existing, V value) {
        return existing.size();
    }

    public List<V> remove(K key) {
        return this.get(key, true);
    }

    public List<V> get(K key) {
        return this.get(key, false);
    }

    private List<V> get(K key, boolean remove) {
        List<V> result = remove ? this.internal.remove(key) : this.internal.get(key);
        return result == null ? this.empty : result;
    }

    public int getSize() {
        return this.internal.size();
    }

    public List<V> getAllValues() {
        if (this.getSize() == 0) {
            return this.empty;
        }
        ArrayList results = new ArrayList(this.getSize());
        Iterator<List<V>> iter = this.internal.values().iterator();
        while (iter.hasNext()) {
            results.addAll(iter.next());
        }
        return results;
    }

    public void clear() {
        this.internal.clear();
    }
}

