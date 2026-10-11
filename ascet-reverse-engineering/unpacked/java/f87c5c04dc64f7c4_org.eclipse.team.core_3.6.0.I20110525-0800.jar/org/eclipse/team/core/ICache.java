/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.core;

import org.eclipse.team.core.ICacheListener;

public interface ICache {
    public void put(String var1, Object var2);

    public Object get(String var1);

    public void remove(String var1);

    public void addCacheListener(ICacheListener var1);

    public void removeCacheListener(ICacheListener var1);

    public void removeDisposeListener(ICacheListener var1);
}

