/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Deprecated
@Beta
public interface UninterruptibleFuture<V>
extends Future<V> {
    @Override
    public V get() throws ExecutionException;

    @Override
    public V get(long var1, TimeUnit var3) throws ExecutionException, TimeoutException;
}

