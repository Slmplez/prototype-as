/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.util;

import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;

public class ObjectPool {
    private static String OPTION_DEBUG_OBJECTPOOL_ADDS = "org.eclipse.osgi/debug/objectPool/adds";
    private static String OPTION_DEBUG_OBJECTPOOL_DUPS = "org.eclipse.osgi/debug/objectPool/dups";
    private static final boolean DEBUG_OBJECTPOOL_ADDS;
    private static final boolean DEBUG_OBJECTPOOL_DUPS;
    private static Map<Object, WeakReference<Object>> objectCache;

    static {
        objectCache = new WeakHashMap<Object, WeakReference<Object>>();
        FrameworkDebugOptions dbgOptions = FrameworkDebugOptions.getDefault();
        if (dbgOptions != null) {
            DEBUG_OBJECTPOOL_ADDS = dbgOptions.getBooleanOption(OPTION_DEBUG_OBJECTPOOL_ADDS, false);
            DEBUG_OBJECTPOOL_DUPS = dbgOptions.getBooleanOption(OPTION_DEBUG_OBJECTPOOL_DUPS, false);
        } else {
            DEBUG_OBJECTPOOL_ADDS = false;
            DEBUG_OBJECTPOOL_DUPS = false;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static Object intern(Object obj) {
        Map<Object, WeakReference<Object>> map = objectCache;
        synchronized (map) {
            WeakReference<Object> ref = objectCache.get(obj);
            if (ref != null) {
                Object refValue = ref.get();
                if (refValue != null) {
                    obj = refValue;
                    if (DEBUG_OBJECTPOOL_DUPS) {
                        Debug.println("[ObjectPool] Found duplicate object: " + ObjectPool.getObjectString(obj));
                    }
                }
            } else {
                objectCache.put(obj, new WeakReference<Object>(obj));
                if (DEBUG_OBJECTPOOL_ADDS) {
                    Debug.println("[ObjectPool] Added unique object to pool: " + ObjectPool.getObjectString(obj) + " Pool size: " + objectCache.size());
                }
            }
        }
        return obj;
    }

    private static String getObjectString(Object obj) {
        return "[(" + obj.getClass().getName() + ") " + obj.toString() + "]";
    }
}

