/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.registry.osgi.Activator
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.osgi.Activator;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class BundleHelper {
    private ServiceTracker bundleTracker = null;
    private static final BundleHelper singleton = new BundleHelper();
    static /* synthetic */ Class class$0;

    public static BundleHelper getDefault() {
        return singleton;
    }

    private BundleHelper() {
    }

    private PackageAdmin getPackageAdmin() {
        if (this.bundleTracker == null) {
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.bundleTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.bundleTracker.open();
        }
        return (PackageAdmin)this.bundleTracker.getService();
    }

    public Bundle getBundle(String symbolicName) {
        PackageAdmin packageAdmin = this.getPackageAdmin();
        if (packageAdmin == null) {
            return null;
        }
        Bundle[] bundles = packageAdmin.getBundles(symbolicName, null);
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

    public Bundle[] getHosts(Bundle bundle) {
        PackageAdmin packageAdmin = this.getPackageAdmin();
        if (packageAdmin == null) {
            return null;
        }
        return packageAdmin.getHosts(bundle);
    }
}

