/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.EventHandler;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

@Beta
public class AsyncEventBus
extends EventBus {
    private final Executor executor;
    private final ConcurrentLinkedQueue<EventBus.EventWithHandler> eventsToDispatch = new ConcurrentLinkedQueue();

    public AsyncEventBus(String identifier, Executor executor) {
        super(identifier);
        this.executor = executor;
    }

    public AsyncEventBus(Executor executor) {
        this.executor = executor;
    }

    protected void enqueueEvent(Object event, EventHandler handler) {
        this.eventsToDispatch.offer(new EventBus.EventWithHandler(event, handler));
    }

    protected void dispatchQueuedEvents() {
        EventBus.EventWithHandler eventWithHandler;
        while ((eventWithHandler = this.eventsToDispatch.poll()) != null) {
            this.dispatch(eventWithHandler.event, eventWithHandler.handler);
        }
    }

    protected void dispatch(final Object event, final EventHandler handler) {
        this.executor.execute(new Runnable(){

            public void run() {
                AsyncEventBus.super.dispatch(event, handler);
            }
        });
    }
}

