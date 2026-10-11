/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ExecutionList;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractFuture<V>
implements ListenableFuture<V> {
    private final Sync<V> sync = new Sync();
    private final ExecutionList executionList = new ExecutionList();

    @Override
    public V get(long timeout, TimeUnit unit) throws InterruptedException, TimeoutException, ExecutionException {
        return this.sync.get(unit.toNanos(timeout));
    }

    @Override
    public V get() throws InterruptedException, ExecutionException {
        return this.sync.get();
    }

    @Override
    public boolean isDone() {
        return this.sync.isDone();
    }

    @Override
    public boolean isCancelled() {
        return this.sync.isCancelled();
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        if (!this.sync.cancel()) {
            return false;
        }
        this.done();
        if (mayInterruptIfRunning) {
            this.interruptTask();
        }
        return true;
    }

    protected void interruptTask() {
    }

    @Override
    public void addListener(Runnable listener, Executor exec) {
        this.executionList.add(listener, exec);
    }

    protected boolean set(@Nullable V value) {
        boolean result = this.sync.set(value);
        if (result) {
            this.done();
        }
        return result;
    }

    protected boolean setException(Throwable throwable) {
        boolean result = this.sync.setException(Preconditions.checkNotNull(throwable));
        if (result) {
            this.done();
        }
        if (throwable instanceof Error) {
            throw (Error)throwable;
        }
        return result;
    }

    @Deprecated
    @Beta
    protected final boolean cancel() {
        boolean result = this.sync.cancel();
        if (result) {
            this.done();
        }
        return result;
    }

    @Deprecated
    @Beta
    protected void done() {
        this.executionList.execute();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class Sync<V>
    extends AbstractQueuedSynchronizer {
        private static final long serialVersionUID = 0L;
        static final int RUNNING = 0;
        static final int COMPLETING = 1;
        static final int COMPLETED = 2;
        static final int CANCELLED = 4;
        private V value;
        private Throwable exception;

        Sync() {
        }

        @Override
        protected int tryAcquireShared(int ignored) {
            if (this.isDone()) {
                return 1;
            }
            return -1;
        }

        @Override
        protected boolean tryReleaseShared(int finalState) {
            this.setState(finalState);
            return true;
        }

        V get(long nanos) throws TimeoutException, CancellationException, ExecutionException, InterruptedException {
            if (!this.tryAcquireSharedNanos(-1, nanos)) {
                throw new TimeoutException("Timeout waiting for task.");
            }
            return this.getValue();
        }

        V get() throws CancellationException, ExecutionException, InterruptedException {
            this.acquireSharedInterruptibly(-1);
            return this.getValue();
        }

        private V getValue() throws CancellationException, ExecutionException {
            int state = this.getState();
            switch (state) {
                case 2: {
                    if (this.exception != null) {
                        throw new ExecutionException(this.exception);
                    }
                    return this.value;
                }
                case 4: {
                    throw new CancellationException("Task was cancelled.");
                }
            }
            throw new IllegalStateException("Error, synchronizer in invalid state: " + state);
        }

        boolean isDone() {
            return (this.getState() & 6) != 0;
        }

        boolean isCancelled() {
            return this.getState() == 4;
        }

        boolean set(@Nullable V v) {
            return this.complete(v, null, 2);
        }

        boolean setException(Throwable t) {
            return this.complete(null, t, 2);
        }

        boolean cancel() {
            return this.complete(null, null, 4);
        }

        private boolean complete(@Nullable V v, Throwable t, int finalState) {
            if (this.compareAndSetState(0, 1)) {
                this.value = v;
                this.exception = t;
                this.releaseShared(finalState);
                return true;
            }
            return false;
        }
    }
}

