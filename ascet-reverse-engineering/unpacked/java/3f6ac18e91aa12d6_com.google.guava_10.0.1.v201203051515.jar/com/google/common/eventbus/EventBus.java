/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.eventbus;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.Lists;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import com.google.common.eventbus.AnnotatedHandlerFinder;
import com.google.common.eventbus.DeadEvent;
import com.google.common.eventbus.EventHandler;
import com.google.common.eventbus.HandlerFindingStrategy;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public class EventBus {
    private final SetMultimap<Class<?>, EventHandler> handlersByType = Multimaps.newSetMultimap(new ConcurrentHashMap(), new Supplier<Set<EventHandler>>(){

        @Override
        public Set<EventHandler> get() {
            return new CopyOnWriteArraySet<EventHandler>();
        }
    });
    private final Logger logger;
    private final HandlerFindingStrategy finder = new AnnotatedHandlerFinder();
    private final ThreadLocal<ConcurrentLinkedQueue<EventWithHandler>> eventsToDispatch = new ThreadLocal<ConcurrentLinkedQueue<EventWithHandler>>(){

        @Override
        protected ConcurrentLinkedQueue<EventWithHandler> initialValue() {
            return new ConcurrentLinkedQueue<EventWithHandler>();
        }
    };
    private final ThreadLocal<Boolean> isDispatching = new ThreadLocal<Boolean>(){

        @Override
        protected Boolean initialValue() {
            return false;
        }
    };
    private Cache<Class<?>, Set<Class<?>>> flattenHierarchyCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, Set<Class<?>>>(){

        @Override
        public Set<Class<?>> load(Class<?> concreteClass) throws Exception {
            LinkedList<Class<?>> parents = Lists.newLinkedList();
            HashSet<Class<?>> classes = Sets.newHashSet();
            parents.add(concreteClass);
            while (!parents.isEmpty()) {
                Class clazz = (Class)parents.remove(0);
                classes.add(clazz);
                Class parent = clazz.getSuperclass();
                if (parent != null) {
                    parents.add(parent);
                }
                for (Class<?> iface : clazz.getInterfaces()) {
                    parents.add(iface);
                }
            }
            return classes;
        }
    });

    public EventBus() {
        this("default");
    }

    public EventBus(String identifier) {
        this.logger = Logger.getLogger(EventBus.class.getName() + "." + identifier);
    }

    public void register(Object object) {
        this.handlersByType.putAll(this.finder.findAllHandlers(object));
    }

    public void unregister(Object object) {
        Multimap<Class<?>, EventHandler> methodsInListener = this.finder.findAllHandlers(object);
        for (Map.Entry<Class<?>, Collection<EventHandler>> entry : methodsInListener.asMap().entrySet()) {
            Set<EventHandler> currentHandlers = this.getHandlersForEventType(entry.getKey());
            Collection<EventHandler> eventMethodsInListener = entry.getValue();
            if (currentHandlers == null || !currentHandlers.containsAll(entry.getValue())) {
                throw new IllegalArgumentException("missing event handler for an annotated method. Is " + object + " registered?");
            }
            currentHandlers.removeAll(eventMethodsInListener);
        }
    }

    public void post(Object event) {
        Set<Class<?>> dispatchTypes = this.flattenHierarchy(event.getClass());
        boolean dispatched = false;
        for (Class<?> eventType : dispatchTypes) {
            Set<EventHandler> wrappers = this.getHandlersForEventType(eventType);
            if (wrappers == null || wrappers.isEmpty()) continue;
            dispatched = true;
            for (EventHandler wrapper : wrappers) {
                this.enqueueEvent(event, wrapper);
            }
        }
        if (!dispatched && !(event instanceof DeadEvent)) {
            this.post(new DeadEvent(this, event));
        }
        this.dispatchQueuedEvents();
    }

    protected void enqueueEvent(Object event, EventHandler handler) {
        this.eventsToDispatch.get().offer(new EventWithHandler(event, handler));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void dispatchQueuedEvents() {
        if (this.isDispatching.get().booleanValue()) {
            return;
        }
        this.isDispatching.set(true);
        try {
            EventWithHandler eventWithHandler;
            while ((eventWithHandler = this.eventsToDispatch.get().poll()) != null) {
                this.dispatch(eventWithHandler.event, eventWithHandler.handler);
            }
        }
        finally {
            this.isDispatching.set(false);
        }
    }

    protected void dispatch(Object event, EventHandler wrapper) {
        try {
            wrapper.handleEvent(event);
        }
        catch (InvocationTargetException e) {
            this.logger.log(Level.SEVERE, "Could not dispatch event: " + event + " to handler " + wrapper, e);
        }
    }

    Set<EventHandler> getHandlersForEventType(Class<?> type) {
        return this.handlersByType.get(type);
    }

    protected Set<EventHandler> newHandlerSet() {
        return new CopyOnWriteArraySet<EventHandler>();
    }

    @VisibleForTesting
    Set<Class<?>> flattenHierarchy(Class<?> concreteClass) {
        try {
            return this.flattenHierarchyCache.get(concreteClass);
        }
        catch (ExecutionException e) {
            throw Throwables.propagate(e.getCause());
        }
    }

    static class EventWithHandler {
        final Object event;
        final EventHandler handler;

        public EventWithHandler(Object event, EventHandler handler) {
            this.event = event;
            this.handler = handler;
        }
    }
}

