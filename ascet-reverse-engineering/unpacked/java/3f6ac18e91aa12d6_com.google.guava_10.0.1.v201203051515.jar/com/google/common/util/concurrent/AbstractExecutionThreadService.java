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
public abstract class AbstractExecutionThreadService
implements Service {
    private final Service delegate = new AbstractService(){

        protected final void doStart() {
            AbstractExecutionThreadService.this.executor().execute(new Runnable(){

                public void run() {
                    try {
                        AbstractExecutionThreadService.this.startUp();
                        this.notifyStarted();
                        if (this.isRunning()) {
                            try {
                                AbstractExecutionThreadService.this.run();
                            }
                            catch (Throwable t) {
                                try {
                                    AbstractExecutionThreadService.this.shutDown();
                                }
                                catch (Exception exception) {
                                    // empty catch block
                                }
                                throw t;
                            }
                        }
                        AbstractExecutionThreadService.this.shutDown();
                        this.notifyStopped();
                    }
                    catch (Throwable t) {
                        this.notifyFailed(t);
                        throw Throwables.propagate(t);
                    }
                }
            });
        }

        protected void doStop() {
            AbstractExecutionThreadService.this.triggerShutdown();
        }
    };

    protected void startUp() throws Exception {
    }

    protected abstract void run() throws Exception;

    protected void shutDown() throws Exception {
    }

    protected void triggerShutdown() {
    }

    protected Executor executor() {
        return new Executor(){

            public void execute(Runnable command) {
                new Thread(command, AbstractExecutionThreadService.this.getServiceName()).start();
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

    protected String getServiceName() {
        return this.getClass().getSimpleName();
    }
}

