/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.preferences;

import org.eclipse.core.internal.preferences.Activator;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.preferences.exchange.ILegacyPreferences;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class PreferencesOSGiUtils {
    private ServiceTracker initTracker = null;
    private ServiceTracker debugTracker = null;
    private ServiceTracker bundleTracker = null;
    private ServiceTracker configurationLocationTracker = null;
    private ServiceTracker instanceLocationTracker = null;
    private static final PreferencesOSGiUtils singleton = new PreferencesOSGiUtils();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public static PreferencesOSGiUtils getDefault() {
        return singleton;
    }

    private PreferencesOSGiUtils() {
    }

    void openServices() {
        BundleContext context = Activator.getContext();
        if (context == null) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("PreferencesOSGiUtils called before plugin started");
            }
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.preferences.exchange.ILegacyPreferences");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.initTracker = new ServiceTracker(context, clazz.getName(), null);
        this.initTracker.open(true);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.debugTracker = new ServiceTracker(context, clazz2.getName(), null);
        this.debugTracker.open();
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bundleTracker = new ServiceTracker(context, clazz3.getName(), null);
        this.bundleTracker.open();
        Filter filter = null;
        try {
            filter = context.createFilter(Location.CONFIGURATION_FILTER);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        this.configurationLocationTracker = new ServiceTracker(context, filter, null);
        this.configurationLocationTracker.open();
        try {
            filter = context.createFilter(Location.INSTANCE_FILTER);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        this.instanceLocationTracker = new ServiceTracker(context, filter, null);
        this.instanceLocationTracker.open();
    }

    void closeServices() {
        if (this.initTracker != null) {
            this.initTracker.close();
            this.initTracker = null;
        }
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
        if (this.instanceLocationTracker != null) {
            this.instanceLocationTracker.close();
            this.instanceLocationTracker = null;
        }
    }

    public ILegacyPreferences getLegacyPreferences() {
        if (this.initTracker != null) {
            return (ILegacyPreferences)this.initTracker.getService();
        }
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Legacy preference tracker is not set");
        }
        return null;
    }

    public boolean getBooleanDebugOption(String option, boolean defaultValue) {
        String value;
        if (this.debugTracker == null) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Debug tracker is not set");
            }
            return defaultValue;
        }
        DebugOptions options = (DebugOptions)this.debugTracker.getService();
        if (options != null && (value = options.getOption(option)) != null) {
            return value.equalsIgnoreCase("true");
        }
        return defaultValue;
    }

    public Bundle getBundle(String bundleName) {
        if (this.bundleTracker == null) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Bundle tracker is not set");
            }
            return null;
        }
        PackageAdmin packageAdmin = (PackageAdmin)this.bundleTracker.getService();
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

    public Location getConfigurationLocation() {
        if (this.configurationLocationTracker != null) {
            return (Location)this.configurationLocationTracker.getService();
        }
        return null;
    }

    public Location getInstanceLocation() {
        if (this.instanceLocationTracker != null) {
            return (Location)this.instanceLocationTracker.getService();
        }
        return null;
    }
}

