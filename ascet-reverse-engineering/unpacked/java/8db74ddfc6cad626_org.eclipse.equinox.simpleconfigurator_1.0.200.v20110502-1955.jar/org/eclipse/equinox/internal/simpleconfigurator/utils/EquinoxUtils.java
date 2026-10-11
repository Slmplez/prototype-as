/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.simpleconfigurator.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import org.eclipse.equinox.internal.simpleconfigurator.console.ConfiguratorCommandProvider;
import org.eclipse.equinox.internal.simpleconfigurator.utils.URIUtil;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;

public class EquinoxUtils {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static URL[] getConfigAreaURL(BundleContext context) {
        Location configLocation = EquinoxUtils.getConfigLocation(context);
        if (configLocation == null) {
            return null;
        }
        URL baseURL = configLocation.getURL();
        if (configLocation.getParentLocation() != null && configLocation.getURL() != null) {
            if (baseURL == null) {
                return new URL[]{configLocation.getParentLocation().getURL()};
            }
            return new URL[]{baseURL, configLocation.getParentLocation().getURL()};
        }
        if (baseURL != null) {
            return new URL[]{baseURL};
        }
        return null;
    }

    public static Location getConfigLocation(BundleContext context) {
        Filter filter = null;
        try {
            filter = context.createFilter(Location.CONFIGURATION_FILTER);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        ServiceTracker configLocationTracker = new ServiceTracker(context, filter, null);
        configLocationTracker.open();
        try {
            Location location = (Location)configLocationTracker.getService();
            return location;
        }
        finally {
            configLocationTracker.close();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static URI getInstallLocationURI(BundleContext context) {
        try {
            ServiceReference[] references;
            Class<?> clazz = class$0;
            if (clazz == null) {
                Class<?> clazz2;
                try {
                    clazz2 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
                clazz = class$0 = clazz2;
            }
            if ((references = context.getServiceReferences(clazz.getName(), Location.INSTALL_FILTER)) == null) return null;
            if (references.length <= 0) return null;
            ServiceReference reference = references[0];
            Location installLocation = (Location)context.getService(reference);
            if (installLocation == null) return null;
            try {
                if (!installLocation.isSet()) return null;
                URL location = installLocation.getURL();
                URI uRI = URIUtil.toURI(location);
                return uRI;
            }
            catch (URISyntaxException uRISyntaxException) {
                return null;
            }
            finally {
                context.ungetService(reference);
            }
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        return null;
    }

    public static ServiceRegistration registerConsoleCommands(BundleContext context) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.osgi.framework.console.CommandProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return context.registerService(clazz.getName(), (Object)new ConfiguratorCommandProvider(context), null);
    }
}

