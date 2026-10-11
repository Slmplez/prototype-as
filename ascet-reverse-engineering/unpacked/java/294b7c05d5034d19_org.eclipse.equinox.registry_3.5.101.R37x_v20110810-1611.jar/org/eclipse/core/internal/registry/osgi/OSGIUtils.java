/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.registry.osgi;

import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.osgi.Activator;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class OSGIUtils {
    private ServiceTracker debugTracker = null;
    private ServiceTracker bundleTracker = null;
    private ServiceTracker configurationLocationTracker = null;
    public static final String PROP_CONFIG_AREA = "osgi.configuration.area";
    public static final String PROP_INSTANCE_AREA = "osgi.instance.area";
    private static final OSGIUtils singleton = new OSGIUtils();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static OSGIUtils getDefault() {
        return singleton;
    }

    private OSGIUtils() {
        this.initServices();
    }

    private void initServices() {
        BundleContext context = Activator.getContext();
        if (context == null) {
            RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.bundle_not_activated, null));
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.debugTracker = new ServiceTracker(context, clazz.getName(), null);
        this.debugTracker.open();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bundleTracker = new ServiceTracker(context, clazz2.getName(), null);
        this.bundleTracker.open();
        Filter filter = null;
        try {
            filter = context.createFilter("(&(objectClass=org.eclipse.osgi.service.datalocation.Location)(type=osgi.configuration.area))");
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        this.configurationLocationTracker = new ServiceTracker(context, filter, null);
        this.configurationLocationTracker.open();
    }

    void closeServices() {
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
        if (this.bundleTracker != null) {
            this.bundleTracker.close();
            this.bundleTracker = null;
        }
        if (this.configurationLocationTracker != null) {
            this.configurationLocationTracker.close();
            this.configurationLocationTracker = null;
        }
    }

    public boolean getBooleanDebugOption(String option, boolean defaultValue) {
        String value;
        if (this.debugTracker == null) {
            RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.bundle_not_activated, null));
            return defaultValue;
        }
        DebugOptions options = (DebugOptions)this.debugTracker.getService();
        if (options != null && (value = options.getOption(option)) != null) {
            return value.equalsIgnoreCase("true");
        }
        return defaultValue;
    }

    public PackageAdmin getPackageAdmin() {
        if (this.bundleTracker == null) {
            RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, RegistryMessages.bundle_not_activated, null));
            return null;
        }
        return (PackageAdmin)this.bundleTracker.getService();
    }

    public Bundle getBundle(String bundleName) {
        PackageAdmin packageAdmin = this.getPackageAdmin();
        if (packageAdmin == null) {
            return null;
        }
        Bundle[] bundles = packageAdmin.getBundles(bundleName, null);
        if (bundles == null) {
            return null;
        }
        int i = 0;
        while (i < bundles.length) {
            if ((bundles[i].getState() & 3) == 0) {
                return bundles[i];
            }
            ++i;
        }
        return null;
    }

    public Bundle[] getFragments(Bundle bundle) {
        PackageAdmin packageAdmin = this.getPackageAdmin();
        if (packageAdmin == null) {
            return null;
        }
        return packageAdmin.getFragments(bundle);
    }

    public boolean isFragment(Bundle bundle) {
        PackageAdmin packageAdmin = this.getPackageAdmin();
        if (packageAdmin == null) {
            return false;
        }
        return (packageAdmin.getBundleType(bundle) & 1) > 0;
    }

    public Bundle[] getHosts(Bundle bundle) {
        PackageAdmin packageAdmin = this.getPackageAdmin();
        if (packageAdmin == null) {
            return null;
        }
        return packageAdmin.getHosts(bundle);
    }

    public Location getConfigurationLocation() {
        if (this.configurationLocationTracker == null) {
            return null;
        }
        return (Location)this.configurationLocationTracker.getService();
    }
}

