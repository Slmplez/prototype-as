/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.BundleContext
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.registry.osgi;

import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.osgi.Activator;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.IRegistryProvider;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;

public final class RegistryProviderOSGI
implements IRegistryProvider {
    private ServiceTracker registryTracker = null;
    static /* synthetic */ Class class$0;

    public IExtensionRegistry getRegistry() {
        if (this.registryTracker == null) {
            BundleContext context = Activator.getContext();
            if (context == null) {
                RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.bundle_not_activated, null));
                return null;
            }
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.IExtensionRegistry");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.registryTracker = new ServiceTracker(context, clazz.getName(), null);
            this.registryTracker.open();
        }
        return (IExtensionRegistry)this.registryTracker.getService();
    }

    public void release() {
        if (this.registryTracker != null) {
            this.registryTracker.close();
            this.registryTracker = null;
        }
    }
}

