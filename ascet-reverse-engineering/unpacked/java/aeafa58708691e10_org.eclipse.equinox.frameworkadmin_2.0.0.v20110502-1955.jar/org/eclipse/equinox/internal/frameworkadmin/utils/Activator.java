/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.pluginconversion.PluginConverter
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.frameworkadmin.utils;

import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class Activator
implements BundleActivator {
    private static BundleContext bundleContext;
    static /* synthetic */ Class class$0;

    public void start(BundleContext context) throws Exception {
        bundleContext = context;
    }

    public void stop(BundleContext context) throws Exception {
        bundleContext = null;
    }

    public static PluginConverter acquirePluginConverter() {
        ServiceReference reference;
        if (bundleContext == null) {
            return null;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.pluginconversion.PluginConverter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((reference = bundleContext.getServiceReference(clazz.getName())) == null) {
            return null;
        }
        PluginConverter result = (PluginConverter)bundleContext.getService(reference);
        bundleContext.ungetService(reference);
        return result;
    }
}

