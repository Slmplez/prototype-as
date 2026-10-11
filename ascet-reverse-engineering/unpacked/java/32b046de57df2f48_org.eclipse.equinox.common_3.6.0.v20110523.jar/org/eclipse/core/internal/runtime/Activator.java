/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.log.ExtendedLogReaderService
 *  org.eclipse.equinox.log.ExtendedLogService
 *  org.eclipse.equinox.log.LogFilter
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.service.localization.BundleLocalization
 *  org.eclipse.osgi.service.urlconversion.URLConverter
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.service.log.LogListener
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.runtime;

import java.net.URL;
import java.util.Date;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;
import org.eclipse.core.internal.boot.PlatformURLBaseConnection;
import org.eclipse.core.internal.boot.PlatformURLHandler;
import org.eclipse.core.internal.runtime.AdapterManager;
import org.eclipse.core.internal.runtime.PlatformLogWriter;
import org.eclipse.core.internal.runtime.PlatformURLConfigConnection;
import org.eclipse.core.internal.runtime.PlatformURLConverter;
import org.eclipse.core.internal.runtime.PlatformURLFragmentConnection;
import org.eclipse.core.internal.runtime.PlatformURLMetaConnection;
import org.eclipse.core.internal.runtime.PlatformURLPluginConnection;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.equinox.log.ExtendedLogReaderService;
import org.eclipse.equinox.log.ExtendedLogService;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.localization.BundleLocalization;
import org.eclipse.osgi.service.urlconversion.URLConverter;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.log.LogListener;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class Activator
implements BundleActivator {
    private static Map urlTrackers = new HashMap();
    private static BundleContext bundleContext;
    private static Activator singleton;
    private ServiceRegistration platformURLConverterService = null;
    private ServiceRegistration adapterManagerService = null;
    private ServiceTracker installLocationTracker = null;
    private ServiceTracker instanceLocationTracker = null;
    private ServiceTracker configLocationTracker = null;
    private ServiceTracker bundleTracker = null;
    private ServiceTracker debugTracker = null;
    private ServiceTracker logTracker = null;
    private ServiceTracker localizationTracker = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;

    public static Activator getDefault() {
        return singleton;
    }

    public static void message(String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append("] ");
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    public void start(BundleContext context) throws Exception {
        RuntimeLog.setLogWriter(this.getPlatformWriter(context));
        bundleContext = context;
        singleton = this;
        Hashtable<String, String> urlProperties = new Hashtable<String, String>();
        ((Dictionary)urlProperties).put("protocol", "platform");
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.urlconversion.URLConverter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.platformURLConverterService = context.registerService(clazz.getName(), (Object)new PlatformURLConverter(), urlProperties);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.core.runtime.IAdapterManager");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.adapterManagerService = context.registerService(clazz2.getName(), (Object)AdapterManager.getDefault(), null);
        this.installPlatformURLSupport();
    }

    private PlatformLogWriter getPlatformWriter(BundleContext context) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.log.ExtendedLogService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference logRef = context.getServiceReference(clazz.getName());
        Class<?> clazz2 = class$3;
        if (clazz2 == null) {
            try {
                clazz2 = class$3 = Class.forName("org.eclipse.equinox.log.ExtendedLogReaderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference readerRef = context.getServiceReference(clazz2.getName());
        Class<?> clazz3 = class$4;
        if (clazz3 == null) {
            try {
                clazz3 = class$4 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference packageAdminRef = context.getServiceReference(clazz3.getName());
        if (logRef == null || readerRef == null || packageAdminRef == null) {
            return null;
        }
        ExtendedLogService logService = (ExtendedLogService)context.getService(logRef);
        ExtendedLogReaderService readerService = (ExtendedLogReaderService)context.getService(readerRef);
        PackageAdmin packageAdmin = (PackageAdmin)context.getService(packageAdminRef);
        if (logService == null || readerService == null || packageAdmin == null) {
            return null;
        }
        PlatformLogWriter writer = new PlatformLogWriter(logService, packageAdmin, context.getBundle());
        readerService.addLogListener((LogListener)writer, (LogFilter)writer);
        return writer;
    }

    public Location getConfigurationLocation() {
        if (this.configLocationTracker == null) {
            Filter filter = null;
            try {
                filter = bundleContext.createFilter(Location.CONFIGURATION_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.configLocationTracker = new ServiceTracker(bundleContext, filter, null);
            this.configLocationTracker.open();
        }
        return (Location)this.configLocationTracker.getService();
    }

    public DebugOptions getDebugOptions() {
        if (this.debugTracker == null) {
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.debugTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.debugTracker.open();
        }
        return (DebugOptions)this.debugTracker.getService();
    }

    public FrameworkLog getFrameworkLog() {
        if (this.logTracker == null) {
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.logTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.logTracker.open();
        }
        return (FrameworkLog)this.logTracker.getService();
    }

    public Location getInstanceLocation() {
        if (this.instanceLocationTracker == null) {
            Filter filter = null;
            try {
                filter = bundleContext.createFilter(Location.INSTANCE_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.instanceLocationTracker = new ServiceTracker(bundleContext, filter, null);
            this.instanceLocationTracker.open();
        }
        return (Location)this.instanceLocationTracker.getService();
    }

    public Bundle getBundle(String symbolicName) {
        PackageAdmin admin = this.getBundleAdmin();
        if (admin == null) {
            return null;
        }
        Bundle[] bundles = admin.getBundles(symbolicName, null);
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

    private PackageAdmin getBundleAdmin() {
        if (this.bundleTracker == null) {
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
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

    public Bundle[] getFragments(Bundle host) {
        PackageAdmin admin = this.getBundleAdmin();
        if (admin == null) {
            return new Bundle[0];
        }
        return admin.getFragments(host);
    }

    public Location getInstallLocation() {
        if (this.installLocationTracker == null) {
            Filter filter = null;
            try {
                filter = bundleContext.createFilter(Location.INSTALL_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.installLocationTracker = new ServiceTracker(bundleContext, filter, null);
            this.installLocationTracker.open();
        }
        return (Location)this.installLocationTracker.getService();
    }

    public String getBundleId(Object object) {
        if (object == null) {
            return null;
        }
        if (this.bundleTracker == null) {
            Activator.message("Bundle tracker is not set");
            return null;
        }
        PackageAdmin packageAdmin = (PackageAdmin)this.bundleTracker.getService();
        if (packageAdmin == null) {
            return null;
        }
        Bundle source = packageAdmin.getBundle(object.getClass());
        if (source != null && source.getSymbolicName() != null) {
            return source.getSymbolicName();
        }
        return null;
    }

    public ResourceBundle getLocalization(Bundle bundle, String locale) {
        BundleLocalization location;
        if (this.localizationTracker == null) {
            BundleContext context = Activator.getContext();
            if (context == null) {
                Activator.message("ResourceTranslator called before plugin is started");
                return null;
            }
            Class<?> clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = class$7 = Class.forName("org.eclipse.osgi.service.localization.BundleLocalization");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.localizationTracker = new ServiceTracker(context, clazz.getName(), null);
            this.localizationTracker.open();
        }
        if ((location = (BundleLocalization)this.localizationTracker.getService()) != null) {
            return location.getLocalization(bundle, locale);
        }
        return null;
    }

    public void stop(BundleContext context) throws Exception {
        Activator.closeURLTrackerServices();
        if (this.platformURLConverterService != null) {
            this.platformURLConverterService.unregister();
            this.platformURLConverterService = null;
        }
        if (this.adapterManagerService != null) {
            this.adapterManagerService.unregister();
            this.adapterManagerService = null;
        }
        if (this.installLocationTracker != null) {
            this.installLocationTracker.close();
            this.installLocationTracker = null;
        }
        if (this.configLocationTracker != null) {
            this.configLocationTracker.close();
            this.configLocationTracker = null;
        }
        if (this.bundleTracker != null) {
            this.bundleTracker.close();
            this.bundleTracker = null;
        }
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
        if (this.logTracker != null) {
            this.logTracker.close();
            this.logTracker = null;
        }
        if (this.instanceLocationTracker != null) {
            this.instanceLocationTracker.close();
            this.instanceLocationTracker = null;
        }
        if (this.localizationTracker != null) {
            this.localizationTracker.close();
            this.localizationTracker = null;
        }
        bundleContext = null;
        singleton = null;
        RuntimeLog.setLogWriter(null);
    }

    static BundleContext getContext() {
        return bundleContext;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void closeURLTrackerServices() {
        Map map = urlTrackers;
        synchronized (map) {
            if (!urlTrackers.isEmpty()) {
                Iterator iter = urlTrackers.keySet().iterator();
                while (iter.hasNext()) {
                    String key = (String)iter.next();
                    ServiceTracker tracker = (ServiceTracker)urlTrackers.get(key);
                    tracker.close();
                }
                urlTrackers = new HashMap();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static URLConverter getURLConverter(URL url) {
        String protocol = url.getProtocol();
        Map map = urlTrackers;
        synchronized (map) {
            ServiceTracker tracker = (ServiceTracker)urlTrackers.get(protocol);
            if (tracker == null) {
                StringBuffer stringBuffer = new StringBuffer("(&(objectClass=");
                Class<?> clazz = class$0;
                if (clazz == null) {
                    Class<?> clazz2;
                    try {
                        clazz2 = Class.forName("org.eclipse.osgi.service.urlconversion.URLConverter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                    clazz = class$0 = clazz2;
                }
                String FILTER_PREFIX = stringBuffer.append(clazz.getName()).append(")(protocol=").toString();
                String FILTER_POSTFIX = "))";
                Filter filter = null;
                try {
                    filter = Activator.getContext().createFilter(String.valueOf(FILTER_PREFIX) + protocol + FILTER_POSTFIX);
                }
                catch (InvalidSyntaxException invalidSyntaxException) {
                    return null;
                }
                tracker = new ServiceTracker(Activator.getContext(), filter, null);
                tracker.open();
                urlTrackers.put(protocol, tracker);
            }
            return (URLConverter)tracker.getService();
        }
    }

    private void installPlatformURLSupport() {
        PlatformURLPluginConnection.startup();
        PlatformURLFragmentConnection.startup();
        PlatformURLMetaConnection.startup();
        PlatformURLConfigConnection.startup();
        Location service = this.getInstallLocation();
        if (service != null) {
            PlatformURLBaseConnection.startup(service.getURL());
        }
        Hashtable<String, String[]> properties = new Hashtable<String, String[]>(1);
        properties.put("url.handler.protocol", new String[]{"platform"});
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$8;
        if (clazz == null) {
            try {
                clazz = class$8 = Class.forName("org.osgi.service.url.URLStreamHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        bundleContext.registerService(clazz.getName(), (Object)new PlatformURLHandler(), properties);
    }
}

