/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.service;

import java.util.Collection;
import java.util.Map;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.hooks.service.ListenerHook;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EventListenerHook {
    public void event(ServiceEvent var1, Map<BundleContext, Collection<ListenerHook.ListenerInfo>> var2);
}

