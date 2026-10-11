/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.bundle;

import java.util.Collection;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EventHook {
    public void event(BundleEvent var1, Collection<BundleContext> var2);
}

