/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.cache.RemovalNotification;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public interface RemovalListener<K, V> {
    public void onRemoval(RemovalNotification<K, V> var1);
}

