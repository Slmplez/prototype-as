/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.p2.garbagecollector;

import org.eclipse.equinox.internal.p2.garbagecollector.CoreGarbageCollector;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GCActivator
implements BundleActivator {
    public static final String ID = "org.eclipse.equinox.p2.garbagecollector";
    public static final String GC_ENABLED = "gc_enabled";
    private static final String DEBUG_STRING = "org.eclipse.equinox.p2.garbagecollector/debug";
    private static final boolean DEFAULT_DEBUG = false;
    static BundleContext context;
    static /* synthetic */ Class class$0;

    static <T> T getService(Class<T> clazz) {
        ServiceReference reference = context.getServiceReference(clazz);
        if (reference == null) {
            return null;
        }
        Object result = context.getService(reference);
        context.ungetService(reference);
        return (T)result;
    }

    public void start(BundleContext inContext) throws Exception {
        DebugOptions debug;
        context = inContext;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((debug = (DebugOptions)GCActivator.getService(clazz)) != null) {
            CoreGarbageCollector.setDebugMode(debug.getBooleanOption(DEBUG_STRING, false));
        }
    }

    public void stop(BundleContext inContext) throws Exception {
        context = null;
    }
}

