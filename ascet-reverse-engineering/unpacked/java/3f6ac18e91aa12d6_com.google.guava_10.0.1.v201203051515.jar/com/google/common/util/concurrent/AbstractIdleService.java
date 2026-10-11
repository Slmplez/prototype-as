/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.AbstractService;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public abstract class AbstractIdleService
implements Service {
    private final Service delegate = new AbstractService(){

        protected final void doStart() {
            AbstractIdleService.this.executor(Service.State.STARTING).execute(new Runnable(){

                public void run() {
                    try {
                        AbstractIdleService.this.startUp();
                        this.notifyStarted();
                    }
                    catch (Throwable t) {
                        this.notifyFailed(t);
                        throw Throwables.propagate(t);
                    }
                }
            });
        }

        protected final void doStop() {
            AbstractIdleService.this.executor(Service.State.STOPPING).execute(new Runnable(){

                public void run() {
                    try {
                        AbstractIdleService.this.shutDown();
                        this.notifyStopped();
                    }
                    catch (Throwable t) {
                        this.notifyFailed(t);
                        throw Throwables.propagate(t);
                    }
                }
            });
        }
    };

    protected abstract void startUp() throws Exception;

    protected abstract void shutDown() throws Exception;

    protected Executor executor(final Service.State state) {
        return new Executor(){

            public void execute(Runnable command) {
                new Thread(command, AbstractIdleService.this.getServiceName() + " " + (Object)((Object)state)).start();
            }
        };
    }

    public String toString() {
        return this.getServiceName() + " [" + (Object)((Object)this.state()) + "]";
    }

    @Override
    public final ListenableFuture<Service.State> start() {
        return this.delegate.start();
    }

    @Override
    public final Service.State startAndWait() {
        return this.delegate.startAndWait();
    }

    @Override
    public final boolean isRunning() {
        return this.delegate.isRunning();
    }

    @Override
    public final Service.State state() {
        return this.delegate.state();
    }

    @Override
    public final ListenableFuture<Service.State> stop() {
        return this.delegate.stop();
    }

    @Override
    public final Service.State stopAndWait() {
        return this.delegate.stopAndWait();
    }

    private String getServiceName() {
        return this.getClass().getSimpleName();
    }
}

