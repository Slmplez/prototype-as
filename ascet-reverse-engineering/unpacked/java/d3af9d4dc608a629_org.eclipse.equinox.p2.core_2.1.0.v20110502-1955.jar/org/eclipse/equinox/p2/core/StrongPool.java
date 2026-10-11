/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.p2.core.IPool;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StrongPool<T>
implements IPool<T> {
    private Map<T, T> pool = new HashMap<T, T>();

    @Override
    public T add(T newObject) {
        if (newObject == null) {
            return null;
        }
        T reference = this.pool.get(newObject);
        if (reference == null) {
            this.pool.put(newObject, newObject);
            return newObject;
        }
        return reference;
    }
}

