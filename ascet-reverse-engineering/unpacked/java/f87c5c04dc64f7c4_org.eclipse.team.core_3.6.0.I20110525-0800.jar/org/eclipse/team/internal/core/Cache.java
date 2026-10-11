/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.team.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.team.core.ICache;
import org.eclipse.team.core.ICacheListener;

public class Cache
implements ICache {
    Map properties;
    ListenerList listeners;

    public synchronized void put(String name, Object value) {
        if (this.properties == null) {
            this.properties = new HashMap();
        }
        this.properties.put(name, value);
    }

    public synchronized Object get(String name) {
        if (this.properties == null) {
            return null;
        }
        return this.properties.get(name);
    }

    public synchronized void remove(String name) {
        if (this.properties != null) {
            this.properties.remove(name);
        }
        if (this.properties.isEmpty()) {
            this.properties = null;
        }
    }

    public synchronized void addCacheListener(ICacheListener listener) {
        if (this.listeners == null) {
            this.listeners = new ListenerList(1);
        }
        this.listeners.add((Object)listener);
    }

    public synchronized void removeDisposeListener(ICacheListener listener) {
        this.removeCacheListener(listener);
    }

    public synchronized void removeCacheListener(ICacheListener listener) {
        if (this.listeners != null) {
            this.listeners.remove((Object)listener);
        }
    }

    public void dispose() {
        if (this.listeners != null) {
            Object[] allListeners = this.listeners.getListeners();
            int i = 0;
            while (i < allListeners.length) {
                final Object listener = allListeners[i];
                SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                    public void run() throws Exception {
                        ((ICacheListener)listener).cacheDisposed(Cache.this);
                    }

                    public void handleException(Throwable exception) {
                    }
                });
                ++i;
            }
        }
        this.properties = null;
    }
}

