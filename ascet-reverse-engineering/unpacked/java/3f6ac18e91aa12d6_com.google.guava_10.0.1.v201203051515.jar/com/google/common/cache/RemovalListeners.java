/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.cache.RemovalListener;
import com.google.common.cache.RemovalNotification;
import java.util.concurrent.Executor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public final class RemovalListeners {
    private RemovalListeners() {
    }

    public static <K, V> RemovalListener<K, V> asynchronous(final RemovalListener<K, V> listener, final Executor executor) {
        return new RemovalListener<K, V>(){

            @Override
            public void onRemoval(final RemovalNotification<K, V> notification) {
                executor.execute(new Runnable(){

                    public void run() {
                        listener.onRemoval(notification);
                    }
                });
            }
        };
    }
}

