/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.core.internal.registry.osgi;

import org.eclipse.core.internal.registry.osgi.OSGIUtils;
import org.eclipse.core.internal.registry.osgi.RegistryCommandProvider;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;

public class EquinoxUtils {
    public static String[] getCommandLine(BundleContext context, ServiceReference ref) {
        if (ref == null) {
            return null;
        }
        try {
            EnvironmentInfo environmentInfo = (EnvironmentInfo)context.getService(ref);
            String[] stringArray = environmentInfo == null ? null : environmentInfo.getNonFrameworkArgs();
            return stringArray;
        }
        finally {
            context.ungetService(ref);
        }
    }

    public static long getContainerTimestamp(BundleContext context, ServiceReference ref) {
        if (ref == null) {
            return -1L;
        }
        try {
            PlatformAdmin admin = (PlatformAdmin)context.getService(ref);
            long l = admin == null ? -1L : admin.getState(false).getTimeStamp();
            return l;
        }
        finally {
            context.ungetService(ref);
        }
    }

    public static ServiceRegistration registerCommandProvider(BundleContext context) {
        try {
            return context.registerService("org.eclipse.osgi.framework.console.CommandProvider", (Object)new RegistryCommandProvider(), null);
        }
        catch (NoClassDefFoundError noClassDefFoundError) {
            return null;
        }
    }

    public static boolean isActive(String bundleId) {
        Bundle bundle;
        block3: {
            try {
                bundle = OSGIUtils.getDefault().getBundle(bundleId);
                if (bundle != null) break block3;
                return false;
            }
            catch (NoClassDefFoundError noClassDefFoundError) {
                return true;
            }
        }
        return bundle.getState() == 32;
    }
}

