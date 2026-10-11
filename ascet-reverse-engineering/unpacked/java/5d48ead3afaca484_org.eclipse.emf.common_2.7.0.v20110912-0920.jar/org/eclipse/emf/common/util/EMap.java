/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EMap<K, V>
extends EList<Map.Entry<K, V>> {
    public V get(Object var1);

    public V put(K var1, V var2);

    public void putAll(Map<? extends K, ? extends V> var1);

    public void putAll(EMap<? extends K, ? extends V> var1);

    public int indexOfKey(Object var1);

    public boolean containsKey(Object var1);

    public boolean containsValue(Object var1);

    public V removeKey(Object var1);

    public Map<K, V> map();

    public Set<Map.Entry<K, V>> entrySet();

    public Set<K> keySet();

    public Collection<V> values();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface InternalMapView<K, V>
    extends Map<K, V> {
        public EMap<K, V> eMap();
    }
}

