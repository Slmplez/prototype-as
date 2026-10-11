/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.core.internal.registry.osgi;

import java.io.File;
import java.util.Map;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.osgi.Activator;
import org.eclipse.core.internal.registry.osgi.EquinoxUtils;
import org.eclipse.core.internal.registry.osgi.ExtensionEventDispatcherJob;
import org.eclipse.core.internal.registry.osgi.OSGIUtils;
import org.eclipse.core.internal.registry.osgi.RegistryStrategyOSGI;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class EquinoxRegistryStrategy
extends RegistryStrategyOSGI {
    public static final String PLUGIN_NAME = "org.eclipse.equinox.registry";
    public static final String OPTION_DEBUG = "org.eclipse.equinox.registry/debug";
    public static final String OPTION_DEBUG_EVENTS = "org.eclipse.equinox.registry/debug/events";
    private static boolean DEBUG_ECLIPSE_REGISTRY = OSGIUtils.getDefault().getBooleanDebugOption("org.eclipse.equinox.registry/debug", false);
    private static boolean DEBUG_ECLIPSE_EVENTS = OSGIUtils.getDefault().getBooleanDebugOption("org.eclipse.equinox.registry/debug/events", false);
    private boolean useJobs = true;

    public EquinoxRegistryStrategy(File[] theStorageDir, boolean[] cacheReadOnly, Object key) {
        super(theStorageDir, cacheReadOnly, key);
    }

    public boolean debug() {
        return DEBUG_ECLIPSE_REGISTRY;
    }

    public boolean debugRegistryEvents() {
        return DEBUG_ECLIPSE_EVENTS;
    }

    public final void log(IStatus status) {
        RuntimeLog.log((IStatus)status);
    }

    public long getContainerTimestamp() {
        BundleContext context = Activator.getContext();
        if (context == null) {
            RuntimeLog.log((IStatus)new Status(4, PLUGIN_NAME, 0, RegistryMessages.bundle_not_activated, null));
            return -1L;
        }
        ServiceReference ref = context.getServiceReference("org.eclipse.osgi.service.resolver.PlatformAdmin");
        if (ref == null) {
            return -1L;
        }
        return EquinoxUtils.getContainerTimestamp(context, ref);
    }

    public final void scheduleChangeEvent(Object[] listeners, Map deltas, Object registry) {
        if (this.useJobs) {
            try {
                new ExtensionEventDispatcherJob(listeners, deltas, registry).schedule();
                return;
            }
            catch (NoClassDefFoundError noClassDefFoundError) {
                this.useJobs = false;
            }
            catch (IllegalStateException illegalStateException) {
                this.useJobs = false;
            }
        }
        super.scheduleChangeEvent(listeners, deltas, registry);
    }
}

