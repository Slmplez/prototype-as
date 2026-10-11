/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.collect.MapEvictionListener;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Deprecated
@Beta
public final class EvictionListeners {
    private EvictionListeners() {
    }

    @Deprecated
    public static <K, V> MapEvictionListener<K, V> asynchronous(final MapEvictionListener<K, V> listener, final Executor executor) {
        return new MapEvictionListener<K, V>(){

            @Override
            public void onEviction(final @Nullable K key, final @Nullable V value) {
                executor.execute(new Runnable(){

                    public void run() {
                        listener.onEviction(key, value);
                    }
                });
            }
        };
    }
}

