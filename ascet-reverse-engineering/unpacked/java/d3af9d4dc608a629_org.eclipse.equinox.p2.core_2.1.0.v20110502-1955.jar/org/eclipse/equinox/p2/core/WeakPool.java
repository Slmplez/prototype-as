/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core;

import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.equinox.p2.core.IPool;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WeakPool<T>
implements IPool<T> {
    private Map<T, WeakReference<T>> pool = new WeakHashMap<T, WeakReference<T>>();

    @Override
    public T add(T newObject) {
        Object reference;
        if (newObject == null) {
            return null;
        }
        WeakReference<T> weakReference = this.pool.get(newObject);
        if (weakReference != null && (reference = weakReference.get()) != null) {
            return reference;
        }
        this.pool.put(newObject, new WeakReference<T>(newObject));
        return newObject;
    }
}

