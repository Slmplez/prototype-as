/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.eventbus;

import com.google.common.collect.Multimap;
import com.google.common.eventbus.EventHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
interface HandlerFindingStrategy {
    public Multimap<Class<?>, EventHandler> findAllHandlers(Object var1);
}

