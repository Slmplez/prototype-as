/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.eventbus;

import com.google.common.collect.HashMultimap;
import com.google.common.collect.Multimap;
import com.google.common.eventbus.AllowConcurrentEvents;
import com.google.common.eventbus.EventHandler;
import com.google.common.eventbus.HandlerFindingStrategy;
import com.google.common.eventbus.Subscribe;
import com.google.common.eventbus.SynchronizedEventHandler;
import java.lang.reflect.Method;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class AnnotatedHandlerFinder
implements HandlerFindingStrategy {
    AnnotatedHandlerFinder() {
    }

    @Override
    public Multimap<Class<?>, EventHandler> findAllHandlers(Object listener) {
        HashMultimap<Class<?>, EventHandler> methodsInListener = HashMultimap.create();
        for (Class<?> clazz = listener.getClass(); clazz != null; clazz = clazz.getSuperclass()) {
            for (Method method : clazz.getMethods()) {
                Subscribe annotation = method.getAnnotation(Subscribe.class);
                if (annotation == null) continue;
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length != 1) {
                    throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation, but requires " + parameterTypes.length + " arguments.  Event handler methods " + "must require a single argument.");
                }
                Class<?> eventType = parameterTypes[0];
                EventHandler handler = AnnotatedHandlerFinder.makeHandler(listener, method);
                methodsInListener.put(eventType, handler);
            }
        }
        return methodsInListener;
    }

    private static EventHandler makeHandler(Object listener, Method method) {
        EventHandler wrapper = AnnotatedHandlerFinder.methodIsDeclaredThreadSafe(method) ? new EventHandler(listener, method) : new SynchronizedEventHandler(listener, method);
        return wrapper;
    }

    private static boolean methodIsDeclaredThreadSafe(Method method) {
        return method.getAnnotation(AllowConcurrentEvents.class) != null;
    }
}

