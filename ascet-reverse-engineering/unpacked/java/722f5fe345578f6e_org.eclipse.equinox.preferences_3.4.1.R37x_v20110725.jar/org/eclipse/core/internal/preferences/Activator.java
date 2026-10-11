/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.core.internal.preferences;

import java.util.Hashtable;
import org.eclipse.core.internal.preferences.DefaultPreferences;
import org.eclipse.core.internal.preferences.OSGiPreferencesServiceManager;
import org.eclipse.core.internal.preferences.PreferenceServiceRegistryHelper;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

public class Activator
implements BundleActivator,
ServiceTrackerCustomizer {
    public static final String PI_PREFERENCES = "org.eclipse.equinox.preferences";
    private static final String PROP_REGISTER_PERF_SERVICE = "eclipse.service.pref";
    private static final String PROP_CUSTOMIZATION = "eclipse.pluginCustomization";
    private ServiceTracker registryServiceTracker;
    private static BundleContext bundleContext;
    private ServiceRegistration preferencesService = null;
    private ServiceRegistration osgiPreferencesService = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public void start(BundleContext context) throws Exception {
        boolean shouldRegister;
        bundleContext = context;
        PreferencesOSGiUtils.getDefault().openServices();
        this.processCommandLine();
        boolean bl = shouldRegister = !"false".equalsIgnoreCase(context.getProperty(PROP_REGISTER_PERF_SERVICE));
        if (shouldRegister) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.preferences.IPreferencesService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.preferencesService = bundleContext.registerService(clazz.getName(), (Object)PreferencesService.getDefault(), new Hashtable());
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.osgi.service.prefs.PreferencesService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.osgiPreferencesService = bundleContext.registerService(clazz2.getName(), (Object)new OSGiPreferencesServiceManager(bundleContext), null);
        }
        this.registryServiceTracker = new ServiceTracker(bundleContext, "org.eclipse.core.runtime.IExtensionRegistry", (ServiceTrackerCustomizer)this);
        this.registryServiceTracker.open();
    }

    public void stop(BundleContext context) throws Exception {
        PreferencesOSGiUtils.getDefault().closeServices();
        if (this.registryServiceTracker != null) {
            this.registryServiceTracker.close();
            this.registryServiceTracker = null;
        }
        if (this.preferencesService != null) {
            this.preferencesService.unregister();
            this.preferencesService = null;
        }
        if (this.osgiPreferencesService != null) {
            this.osgiPreferencesService.unregister();
            this.osgiPreferencesService = null;
        }
        bundleContext = null;
    }

    static BundleContext getContext() {
        return bundleContext;
    }

    public synchronized Object addingService(ServiceReference reference) {
        Object service = bundleContext.getService(reference);
        if (service != null) {
            try {
                PreferenceServiceRegistryHelper helper = new PreferenceServiceRegistryHelper(PreferencesService.getDefault(), service);
                PreferencesService.getDefault().setRegistryHelper(helper);
            }
            catch (Exception e) {
                RuntimeLog.log((IStatus)new Status(4, PI_PREFERENCES, 0, PrefsMessages.noRegistry, (Throwable)e));
            }
            catch (NoClassDefFoundError noClassDefFoundError) {
                return null;
            }
        }
        return service;
    }

    public void modifiedService(ServiceReference reference, Object service) {
    }

    public synchronized void removedService(ServiceReference reference, Object service) {
        PreferencesService.getDefault().setRegistryHelper(null);
        bundleContext.ungetService(reference);
    }

    private void processCommandLine() {
        String value = bundleContext.getProperty(PROP_CUSTOMIZATION);
        if (value != null) {
            DefaultPreferences.pluginCustomizationFile = value;
            return;
        }
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceTracker environmentTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
        environmentTracker.open();
        EnvironmentInfo environmentInfo = (EnvironmentInfo)environmentTracker.getService();
        environmentTracker.close();
        if (environmentInfo == null) {
            return;
        }
        String[] args = environmentInfo.getNonFrameworkArgs();
        if (args == null || args.length == 0) {
            return;
        }
        int i = 0;
        while (i < args.length) {
            if (args[i].equalsIgnoreCase("-plugincustomization")) {
                if (args.length <= i + 1) break;
                DefaultPreferences.pluginCustomizationFile = args[i + 1];
                break;
            }
            ++i;
        }
    }
}

