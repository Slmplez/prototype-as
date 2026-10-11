/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public abstract class AbstractService
implements Service {
    private final ReentrantLock lock = new ReentrantLock();
    private final Transition startup = new Transition();
    private final Transition shutdown = new Transition();
    private Service.State state = Service.State.NEW;
    private boolean shutdownWhenStartupFinishes = false;

    protected abstract void doStart();

    protected abstract void doStop();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public final ListenableFuture<Service.State> start() {
        this.lock.lock();
        try {
            if (this.state == Service.State.NEW) {
                this.state = Service.State.STARTING;
                this.doStart();
            }
        }
        catch (Throwable startupFailure) {
            this.notifyFailed(startupFailure);
        }
        finally {
            this.lock.unlock();
        }
        return this.startup;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public final ListenableFuture<Service.State> stop() {
        this.lock.lock();
        try {
            if (this.state == Service.State.NEW) {
                this.state = Service.State.TERMINATED;
                this.startup.set(Service.State.TERMINATED);
                this.shutdown.set(Service.State.TERMINATED);
            } else if (this.state == Service.State.STARTING) {
                this.shutdownWhenStartupFinishes = true;
                this.startup.set(Service.State.STOPPING);
            } else if (this.state == Service.State.RUNNING) {
                this.state = Service.State.STOPPING;
                this.doStop();
            }
        }
        catch (Throwable shutdownFailure) {
            this.notifyFailed(shutdownFailure);
        }
        finally {
            this.lock.unlock();
        }
        return this.shutdown;
    }

    @Override
    public Service.State startAndWait() {
        return Futures.getUnchecked(this.start());
    }

    @Override
    public Service.State stopAndWait() {
        return Futures.getUnchecked(this.stop());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void notifyStarted() {
        this.lock.lock();
        try {
            if (this.state != Service.State.STARTING) {
                IllegalStateException failure = new IllegalStateException("Cannot notifyStarted() when the service is " + (Object)((Object)this.state));
                this.notifyFailed(failure);
                throw failure;
            }
            this.state = Service.State.RUNNING;
            if (this.shutdownWhenStartupFinishes) {
                this.stop();
            } else {
                this.startup.set(Service.State.RUNNING);
            }
        }
        finally {
            this.lock.unlock();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void notifyStopped() {
        this.lock.lock();
        try {
            if (this.state != Service.State.STOPPING && this.state != Service.State.RUNNING) {
                IllegalStateException failure = new IllegalStateException("Cannot notifyStopped() when the service is " + (Object)((Object)this.state));
                this.notifyFailed(failure);
                throw failure;
            }
            this.state = Service.State.TERMINATED;
            this.shutdown.set(Service.State.TERMINATED);
        }
        finally {
            this.lock.unlock();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final void notifyFailed(Throwable cause) {
        Preconditions.checkNotNull(cause);
        this.lock.lock();
        try {
            if (this.state == Service.State.STARTING) {
                this.startup.setException(cause);
                this.shutdown.setException(new Exception("Service failed to start.", cause));
            } else if (this.state == Service.State.STOPPING) {
                this.shutdown.setException(cause);
            }
            this.state = Service.State.FAILED;
        }
        finally {
            this.lock.unlock();
        }
    }

    @Override
    public final boolean isRunning() {
        return this.state() == Service.State.RUNNING;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public final Service.State state() {
        this.lock.lock();
        try {
            if (this.shutdownWhenStartupFinishes && this.state == Service.State.STARTING) {
                Service.State state = Service.State.STOPPING;
                return state;
            }
            Service.State state = this.state;
            return state;
        }
        finally {
            this.lock.unlock();
        }
    }

    public String toString() {
        return this.getClass().getSimpleName() + " [" + (Object)((Object)this.state()) + "]";
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Transition
    extends AbstractFuture<Service.State> {
        private Transition() {
        }

        @Override
        public Service.State get(long timeout, TimeUnit unit) throws InterruptedException, TimeoutException, ExecutionException {
            try {
                return (Service.State)((Object)super.get(timeout, unit));
            }
            catch (TimeoutException e) {
                throw new TimeoutException(AbstractService.this.toString());
            }
        }
    }
}

