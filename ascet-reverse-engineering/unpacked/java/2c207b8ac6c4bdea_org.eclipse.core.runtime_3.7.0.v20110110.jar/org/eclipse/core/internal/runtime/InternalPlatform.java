/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.AdapterManager
 *  org.eclipse.core.internal.runtime.DataArea
 *  org.eclipse.core.internal.runtime.MetaDataKeeper
 *  org.eclipse.core.internal.runtime.ResourceTranslator
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.internal.runtime.auth.AuthorizationHandler
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IBundleGroupProvider
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.equinox.internal.app.Activator
 *  org.eclipse.equinox.internal.app.CommandLineArgs
 *  org.eclipse.equinox.internal.app.EclipseAppContainer
 *  org.eclipse.equinox.internal.app.IBranding
 *  org.eclipse.equinox.log.ExtendedLogReaderService
 *  org.eclipse.equinox.log.ExtendedLogService
 *  org.eclipse.equinox.log.LogFilter
 *  org.eclipse.equinox.log.Logger
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.service.log.LogListener
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.core.internal.runtime;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import java.util.Vector;
import org.eclipse.core.internal.preferences.legacy.InitLegacyPreferences;
import org.eclipse.core.internal.preferences.legacy.ProductPreferencesService;
import org.eclipse.core.internal.runtime.AdapterManager;
import org.eclipse.core.internal.runtime.DataArea;
import org.eclipse.core.internal.runtime.Log;
import org.eclipse.core.internal.runtime.Messages;
import org.eclipse.core.internal.runtime.MetaDataKeeper;
import org.eclipse.core.internal.runtime.PlatformActivator;
import org.eclipse.core.internal.runtime.Product;
import org.eclipse.core.internal.runtime.ResourceTranslator;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.internal.runtime.auth.AuthorizationHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.CommandLineArgs;
import org.eclipse.equinox.internal.app.EclipseAppContainer;
import org.eclipse.equinox.internal.app.IBranding;
import org.eclipse.equinox.log.ExtendedLogReaderService;
import org.eclipse.equinox.log.ExtendedLogService;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.Logger;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.log.LogListener;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public final class InternalPlatform {
    private static final String[] ARCH_LIST = new String[]{"PA_RISC", "ppc", "sparc", "x86", "x86_64", "ia64", "ia64_32"};
    public static boolean DEBUG = false;
    public static boolean DEBUG_PLUGIN_PREFERENCES = false;
    static boolean splashEnded = false;
    private static boolean initialized;
    private static final String KEYRING = "-keyring";
    private static String keyringFile;
    private static Map logs;
    private static final String[] OS_LIST;
    private static String password;
    private static final String PASSWORD = "-password";
    private static final String PLUGIN_PATH = ".plugin-path";
    public static final String PROP_APPLICATION = "eclipse.application";
    public static final String PROP_ARCH = "osgi.arch";
    public static final String PROP_CONFIG_AREA = "osgi.configuration.area";
    public static final String PROP_CONSOLE_LOG = "eclipse.consoleLog";
    public static final String PROP_DEBUG = "osgi.debug";
    public static final String PROP_DEV = "osgi.dev";
    public static final String PROP_INSTALL_AREA = "osgi.install.area";
    public static final String PROP_NL = "osgi.nl";
    public static final String PROP_OS = "osgi.os";
    public static final String PROP_PRODUCT = "eclipse.product";
    public static final String PROP_WS = "osgi.ws";
    public static final String PROP_ACTIVATE_PLUGINS = "eclipse.activateRuntimePlugins";
    private static final InternalPlatform singleton;
    private static final String[] WS_LIST;
    private Path cachedInstanceLocation;
    private ServiceTracker configurationLocation = null;
    private BundleContext context;
    private Map groupProviders = new HashMap(3);
    private ServiceTracker installLocation = null;
    private ServiceTracker instanceLocation = null;
    private Plugin runtimeInstance;
    private ServiceRegistration legacyPreferencesService = null;
    private ServiceRegistration customPreferencesService = null;
    private ServiceTracker environmentTracker = null;
    private ServiceTracker logTracker = null;
    private ServiceTracker bundleTracker = null;
    private ServiceTracker debugTracker = null;
    private ServiceTracker contentTracker = null;
    private ServiceTracker preferencesTracker = null;
    private ServiceTracker userLocation = null;
    private ServiceTracker groupProviderTracker = null;
    private ServiceTracker logReaderTracker = null;
    private ServiceTracker extendedLogTracker = null;
    private IProduct product;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;

    static {
        logs = new HashMap(5);
        OS_LIST = new String[]{"aix", "hpux", "linux", "macosx", "qnx", "solaris", "win32"};
        password = "";
        singleton = new InternalPlatform();
        WS_LIST = new String[]{"carbon", "cocoa", "gtk", "motif", "photon", "win32", "wpf"};
    }

    public static InternalPlatform getDefault() {
        return singleton;
    }

    private InternalPlatform() {
    }

    public void addLogListener(ILogListener listener) {
        this.assertInitialized();
        RuntimeLog.addLogListener((ILogListener)listener);
    }

    private void assertInitialized() {
        if (!initialized) {
            Assert.isTrue((boolean)false, (String)Messages.meta_appNotInit);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void endSplash() {
        InternalPlatform internalPlatform = this;
        synchronized (internalPlatform) {
            if (splashEnded) {
                return;
            }
            splashEnded = true;
        }
        IApplicationContext applicationContext = this.getApplicationContext();
        if (applicationContext != null) {
            applicationContext.applicationRunning();
        }
    }

    public IAdapterManager getAdapterManager() {
        this.assertInitialized();
        return AdapterManager.getDefault();
    }

    public String[] getApplicationArgs() {
        return CommandLineArgs.getApplicationArgs();
    }

    public boolean getBooleanOption(String option, boolean defaultValue) {
        String value = this.getOption(option);
        if (value == null) {
            return defaultValue;
        }
        return value.equalsIgnoreCase("true");
    }

    public Bundle getBundle(String symbolicName) {
        PackageAdmin packageAdmin = this.getBundleAdmin();
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

    public BundleContext getBundleContext() {
        return this.context;
    }

    public String getBundleId(Object object) {
        if (object == null) {
            return null;
        }
        PackageAdmin packageAdmin = this.getBundleAdmin();
        if (packageAdmin == null) {
            return null;
        }
        Bundle source = packageAdmin.getBundle(object.getClass());
        if (source != null && source.getSymbolicName() != null) {
            return source.getSymbolicName();
        }
        return null;
    }

    public IBundleGroupProvider[] getBundleGroupProviders() {
        Object[] objectArray;
        if (this.groupProviderTracker == null) {
            Filter filter = null;
            try {
                BundleContext bundleContext = this.getBundleContext();
                StringBuffer stringBuffer = new StringBuffer("(objectClass=");
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.IBundleGroupProvider");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                filter = bundleContext.createFilter(stringBuffer.append(clazz.getName()).append(")").toString());
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.groupProviderTracker = new ServiceTracker(this.getBundleContext(), filter, null);
            this.groupProviderTracker.open();
        }
        if ((objectArray = this.groupProviderTracker.getServices()) == null) {
            return new IBundleGroupProvider[0];
        }
        IBundleGroupProvider[] result = new IBundleGroupProvider[objectArray.length];
        System.arraycopy(objectArray, 0, result, 0, objectArray.length);
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void registerBundleGroupProvider(IBundleGroupProvider provider) {
        BundleContext bundleContext = this.getBundleContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IBundleGroupProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceRegistration registration = bundleContext.registerService(clazz.getName(), (Object)provider, null);
        Map map = this.groupProviders;
        synchronized (map) {
            this.groupProviders.put(provider, registration);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void unregisterBundleGroupProvider(IBundleGroupProvider provider) {
        ServiceRegistration registration;
        Map map = this.groupProviders;
        synchronized (map) {
            registration = (ServiceRegistration)this.groupProviders.remove(provider);
        }
        if (registration == null) {
            return;
        }
        registration.unregister();
    }

    public Bundle[] getBundles(String symbolicName, String version) {
        PackageAdmin packageAdmin = this.getBundleAdmin();
        if (packageAdmin == null) {
            return null;
        }
        Bundle[] bundles = packageAdmin.getBundles(symbolicName, version);
        if (bundles == null) {
            return null;
        }
        if (bundles.length == 1 && (bundles[0].getState() & 3) == 0) {
            return bundles;
        }
        Bundle[] selectedBundles = new Bundle[bundles.length];
        int added = 0;
        int i = 0;
        while (i < bundles.length) {
            if ((bundles[i].getState() & 3) == 0) {
                selectedBundles[added++] = bundles[i];
            }
            ++i;
        }
        if (added == 0) {
            return null;
        }
        Bundle[] results = new Bundle[added];
        System.arraycopy(selectedBundles, 0, results, 0, added);
        return results;
    }

    public String[] getCommandLineArgs() {
        return CommandLineArgs.getAllArgs();
    }

    public Location getConfigurationLocation() {
        this.assertInitialized();
        if (this.configurationLocation == null) {
            Filter filter = null;
            try {
                filter = this.context.createFilter(Location.CONFIGURATION_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.configurationLocation = new ServiceTracker(this.context, filter, null);
            this.configurationLocation.open();
        }
        return (Location)this.configurationLocation.getService();
    }

    public IContentTypeManager getContentTypeManager() {
        if (this.contentTracker == null) {
            if (this.context == null) {
                return null;
            }
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.core.runtime.content.IContentTypeManager");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.contentTracker = new ServiceTracker(this.context, clazz.getName(), null);
            this.contentTracker.open();
        }
        return (IContentTypeManager)this.contentTracker.getService();
    }

    public EnvironmentInfo getEnvironmentInfoService() {
        if (this.environmentTracker == null) {
            if (this.context == null) {
                return null;
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
            this.environmentTracker = new ServiceTracker(this.context, clazz.getName(), null);
            this.environmentTracker.open();
        }
        return (EnvironmentInfo)this.environmentTracker.getService();
    }

    public Bundle[] getFragments(Bundle bundle) {
        PackageAdmin packageAdmin = this.getBundleAdmin();
        if (packageAdmin == null) {
            return null;
        }
        return packageAdmin.getFragments(bundle);
    }

    public FrameworkLog getFrameworkLog() {
        if (this.logTracker == null) {
            if (this.context == null) {
                return null;
            }
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.logTracker = new ServiceTracker(this.context, clazz.getName(), null);
            this.logTracker.open();
        }
        return (FrameworkLog)this.logTracker.getService();
    }

    public Bundle[] getHosts(Bundle bundle) {
        PackageAdmin packageAdmin = this.getBundleAdmin();
        if (packageAdmin == null) {
            return null;
        }
        return packageAdmin.getHosts(bundle);
    }

    public Location getInstallLocation() {
        this.assertInitialized();
        Filter filter = null;
        if (this.installLocation == null) {
            try {
                filter = this.context.createFilter(Location.INSTALL_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.installLocation = new ServiceTracker(this.context, filter, null);
            this.installLocation.open();
        }
        return (Location)this.installLocation.getService();
    }

    public URL getInstallURL() {
        Location location = this.getInstallLocation();
        if (location == null) {
            throw new IllegalStateException("The installation location must not be null");
        }
        return location.getURL();
    }

    public Location getInstanceLocation() {
        this.assertInitialized();
        if (this.instanceLocation == null) {
            Filter filter = null;
            try {
                filter = this.context.createFilter(Location.INSTANCE_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.instanceLocation = new ServiceTracker(this.context, filter, null);
            this.instanceLocation.open();
        }
        return (Location)this.instanceLocation.getService();
    }

    public IPath getLocation() throws IllegalStateException {
        if (this.cachedInstanceLocation == null) {
            Location location = this.getInstanceLocation();
            if (location == null) {
                return null;
            }
            File file = new File(location.getURL().getFile());
            this.cachedInstanceLocation = new Path(file.toString());
        }
        return this.cachedInstanceLocation;
    }

    public ILog getLog(Bundle bundle) {
        Log result = (Log)logs.get(bundle);
        if (result != null) {
            return result;
        }
        ExtendedLogService logService = (ExtendedLogService)this.extendedLogTracker.getService();
        Logger logger = logService == null ? null : logService.getLogger(bundle, "org.eclipse.equinox.logger");
        result = new Log(bundle, logger);
        ExtendedLogReaderService logReader = (ExtendedLogReaderService)this.logReaderTracker.getService();
        logReader.addLogListener((LogListener)result, (LogFilter)result);
        logs.put(bundle, result);
        return result;
    }

    public DataArea getMetaArea() {
        return MetaDataKeeper.getMetaArea();
    }

    public String getNL() {
        return this.getBundleContext().getProperty(PROP_NL);
    }

    public String getNLExtensions() {
        String nlExtensions = PlatformActivator.getContext().getProperty("osgi.nl.extensions");
        if (nlExtensions == null) {
            return "";
        }
        if (!nlExtensions.startsWith("@")) {
            nlExtensions = String.valueOf('@') + nlExtensions;
        }
        return nlExtensions;
    }

    public String getOption(String option) {
        DebugOptions options = this.getDebugOptions();
        if (options != null) {
            return options.getOption(option);
        }
        return null;
    }

    public String getOS() {
        return this.getBundleContext().getProperty(PROP_OS);
    }

    public String getOSArch() {
        return this.getBundleContext().getProperty(PROP_ARCH);
    }

    public PlatformAdmin getPlatformAdmin() {
        ServiceReference platformAdminReference;
        if (this.context == null) {
            return null;
        }
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((platformAdminReference = this.context.getServiceReference(clazz.getName())) == null) {
            return null;
        }
        return (PlatformAdmin)this.context.getService(platformAdminReference);
    }

    public URL[] getPluginPath(URL pluginPathLocation) {
        InputStream input = null;
        if (pluginPathLocation == null) {
            return null;
        }
        try {
            input = pluginPathLocation.openStream();
        }
        catch (IOException iOException) {}
        if (input == null) {
            try {
                URL url = new URL("platform:/base/.plugin-path");
                input = url.openStream();
            }
            catch (MalformedURLException malformedURLException) {
            }
            catch (IOException iOException) {}
        }
        if (input == null) {
            return null;
        }
        URL[] result = null;
        try {
            try {
                result = this.readPluginPath(input);
            }
            finally {
                input.close();
            }
        }
        catch (IOException iOException) {}
        return result;
    }

    public IPreferencesService getPreferencesService() {
        if (this.preferencesTracker == null) {
            if (this.context == null) {
                return null;
            }
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.core.runtime.preferences.IPreferencesService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.preferencesTracker = new ServiceTracker(this.context, clazz.getName(), null);
            this.preferencesTracker.open();
        }
        return (IPreferencesService)this.preferencesTracker.getService();
    }

    public IProduct getProduct() {
        IBranding branding;
        if (this.product != null) {
            return this.product;
        }
        EclipseAppContainer container = Activator.getContainer();
        IBranding iBranding = branding = container == null ? null : container.getBranding();
        if (branding == null) {
            return null;
        }
        Object brandingProduct = branding.getProduct();
        if (!(brandingProduct instanceof IProduct)) {
            brandingProduct = new Product(branding);
        }
        this.product = (IProduct)brandingProduct;
        return this.product;
    }

    public IExtensionRegistry getRegistry() {
        return RegistryFactory.getRegistry();
    }

    public ResourceBundle getResourceBundle(Bundle bundle) {
        return ResourceTranslator.getResourceBundle((Bundle)bundle);
    }

    public String getResourceString(Bundle bundle, String value) {
        return ResourceTranslator.getResourceString((Bundle)bundle, (String)value);
    }

    public String getResourceString(Bundle bundle, String value, ResourceBundle resourceBundle) {
        return ResourceTranslator.getResourceString((Bundle)bundle, (String)value, (ResourceBundle)resourceBundle);
    }

    public Plugin getRuntimeInstance() {
        return this.runtimeInstance;
    }

    private IApplicationContext getApplicationContext() {
        ServiceReference[] ref;
        try {
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("org.eclipse.equinox.app.IApplicationContext");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ref = this.context.getServiceReferences(clazz.getName(), "(eclipse.application.type=main.thread)");
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
        if (ref == null || ref.length == 0) {
            return null;
        }
        IApplicationContext result = (IApplicationContext)this.context.getService(ref[0]);
        if (result != null) {
            this.context.ungetService(ref[0]);
            return result;
        }
        return null;
    }

    public IPath getStateLocation(Bundle bundle) {
        return this.getStateLocation(bundle, true);
    }

    public IPath getStateLocation(Bundle bundle, boolean create) throws IllegalStateException {
        this.assertInitialized();
        IPath result = this.getMetaArea().getStateLocation(bundle);
        if (create) {
            result.toFile().mkdirs();
        }
        return result;
    }

    public long getStateTimeStamp() {
        PlatformAdmin admin = this.getPlatformAdmin();
        return admin == null ? -1L : admin.getState(false).getTimeStamp();
    }

    public Location getUserLocation() {
        this.assertInitialized();
        if (this.userLocation == null) {
            Filter filter = null;
            try {
                filter = this.context.createFilter(Location.USER_FILTER);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
            this.userLocation = new ServiceTracker(this.context, filter, null);
            this.userLocation.open();
        }
        return (Location)this.userLocation.getService();
    }

    public String getWS() {
        return this.getBundleContext().getProperty(PROP_WS);
    }

    private void initializeAuthorizationHandler() {
        try {
            AuthorizationHandler.setKeyringFile((String)keyringFile);
            AuthorizationHandler.setPassword((String)password);
        }
        catch (NoClassDefFoundError noClassDefFoundError) {}
    }

    void initializeDebugFlags() {
        DEBUG = this.getBooleanOption("org.eclipse.core.runtime/debug", false);
        if (DEBUG) {
            DEBUG_PLUGIN_PREFERENCES = this.getBooleanOption("org.eclipse.core.runtime/preferences/plugin", false);
        }
    }

    public boolean isFragment(Bundle bundle) {
        PackageAdmin packageAdmin = this.getBundleAdmin();
        if (packageAdmin == null) {
            return false;
        }
        return (packageAdmin.getBundleType(bundle) & 1) > 0;
    }

    public boolean isRunning() {
        try {
            return initialized && this.context != null && this.context.getBundle().getState() == 32;
        }
        catch (IllegalStateException illegalStateException) {
            return false;
        }
    }

    public String[] knownOSArchValues() {
        return ARCH_LIST;
    }

    public String[] knownOSValues() {
        return OS_LIST;
    }

    public String[] knownWSValues() {
        return WS_LIST;
    }

    public void log(IStatus status) {
        RuntimeLog.log((IStatus)status);
    }

    private void processCommandLine(String[] args) {
        if (args == null || args.length == 0) {
            return;
        }
        int i = 0;
        while (i < args.length) {
            if (i != args.length - 1 && !args[i + 1].startsWith("-")) {
                String arg = args[++i];
                if (args[i - 1].equalsIgnoreCase(KEYRING)) {
                    keyringFile = arg;
                }
                if (args[i - 1].equalsIgnoreCase(PASSWORD)) {
                    password = arg;
                }
            }
            ++i;
        }
    }

    private URL[] readPluginPath(InputStream input) {
        Properties ini = new Properties();
        try {
            ini.load(input);
        }
        catch (IOException iOException) {
            return null;
        }
        Vector<URL> result = new Vector<URL>(5);
        Enumeration<?> groups = ini.propertyNames();
        while (groups.hasMoreElements()) {
            String group = (String)groups.nextElement();
            StringTokenizer entries = new StringTokenizer(ini.getProperty(group), ";");
            while (entries.hasMoreElements()) {
                String entry = (String)entries.nextElement();
                if (entry.equals("")) continue;
                try {
                    result.addElement(new URL(entry));
                }
                catch (MalformedURLException malformedURLException) {
                    System.err.println("Ignoring plugin: " + entry);
                }
            }
        }
        return result.toArray(new URL[result.size()]);
    }

    public void removeLogListener(ILogListener listener) {
        this.assertInitialized();
        RuntimeLog.removeLogListener((ILogListener)listener);
    }

    public void setRuntimeInstance(Plugin runtime) {
        this.runtimeInstance = runtime;
    }

    public void start(BundleContext runtimeContext) {
        boolean shouldActivate;
        this.context = runtimeContext;
        Class<?> clazz = class$7;
        if (clazz == null) {
            try {
                clazz = class$7 = Class.forName("org.eclipse.equinox.log.ExtendedLogReaderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.logReaderTracker = new ServiceTracker(this.context, clazz.getName(), null);
        this.logReaderTracker.open();
        Class<?> clazz2 = class$8;
        if (clazz2 == null) {
            try {
                clazz2 = class$8 = Class.forName("org.eclipse.equinox.log.ExtendedLogService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.extendedLogTracker = new ServiceTracker(this.context, clazz2.getName(), null);
        this.extendedLogTracker.open();
        splashEnded = false;
        this.processCommandLine(this.getEnvironmentInfoService().getNonFrameworkArgs());
        this.initializeDebugFlags();
        initialized = true;
        this.getMetaArea();
        this.initializeAuthorizationHandler();
        this.startServices();
        boolean bl = shouldActivate = !"false".equalsIgnoreCase(this.context.getProperty(PROP_ACTIVATE_PLUGINS));
        if (shouldActivate) {
            new DefaultScope();
            Job.getJobManager();
        }
    }

    public void stop(BundleContext bundleContext) {
        this.assertInitialized();
        this.stopServices();
        initialized = false;
        this.closeOSGITrackers();
        this.context = null;
    }

    private void startServices() {
        BundleContext bundleContext = this.getBundleContext();
        Class<?> clazz = class$9;
        if (clazz == null) {
            try {
                clazz = class$9 = Class.forName("org.eclipse.core.internal.preferences.exchange.IProductPreferencesService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.customPreferencesService = bundleContext.registerService(clazz.getName(), (Object)new ProductPreferencesService(), new Hashtable());
        if (this.getBundle("org.eclipse.core.runtime.compatibility") != null) {
            BundleContext bundleContext2 = this.getBundleContext();
            Class<?> clazz2 = class$10;
            if (clazz2 == null) {
                try {
                    clazz2 = class$10 = Class.forName("org.eclipse.core.internal.preferences.exchange.ILegacyPreferences");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.legacyPreferencesService = bundleContext2.registerService(clazz2.getName(), (Object)new InitLegacyPreferences(), new Hashtable());
        }
    }

    private void stopServices() {
        if (this.legacyPreferencesService != null) {
            this.legacyPreferencesService.unregister();
            this.legacyPreferencesService = null;
        }
        if (this.customPreferencesService != null) {
            this.customPreferencesService.unregister();
            this.customPreferencesService = null;
        }
    }

    private PackageAdmin getBundleAdmin() {
        if (this.bundleTracker == null) {
            if (this.context == null) {
                return null;
            }
            Class<?> clazz = class$11;
            if (clazz == null) {
                try {
                    clazz = class$11 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.bundleTracker = new ServiceTracker(this.context, clazz.getName(), null);
            this.bundleTracker.open();
        }
        return (PackageAdmin)this.bundleTracker.getService();
    }

    private DebugOptions getDebugOptions() {
        if (this.debugTracker == null) {
            if (this.context == null) {
                return null;
            }
            Class<?> clazz = class$12;
            if (clazz == null) {
                try {
                    clazz = class$12 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.debugTracker = new ServiceTracker(this.context, clazz.getName(), null);
            this.debugTracker.open();
        }
        return (DebugOptions)this.debugTracker.getService();
    }

    private void closeOSGITrackers() {
        if (this.preferencesTracker != null) {
            this.preferencesTracker.close();
            this.preferencesTracker = null;
        }
        if (this.contentTracker != null) {
            this.contentTracker.close();
            this.contentTracker = null;
        }
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
        if (this.bundleTracker != null) {
            this.bundleTracker.close();
            this.bundleTracker = null;
        }
        if (this.logTracker != null) {
            this.logTracker.close();
            this.logTracker = null;
        }
        if (this.groupProviderTracker != null) {
            this.groupProviderTracker.close();
            this.groupProviderTracker = null;
        }
        if (this.environmentTracker != null) {
            this.environmentTracker.close();
            this.environmentTracker = null;
        }
        if (this.logReaderTracker != null) {
            this.logReaderTracker.close();
            this.logReaderTracker = null;
        }
        if (this.extendedLogTracker != null) {
            this.extendedLogTracker.close();
            this.extendedLogTracker = null;
        }
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

    public static void start(Bundle bundle) throws BundleException {
        int originalState = bundle.getState();
        if ((originalState & 0x20) != 0) {
            return;
        }
        try {
            bundle.start(1);
        }
        catch (BundleException e) {
            if ((originalState & 8) != 0 && (bundle.getState() & 8) != 0) {
                return;
            }
            throw e;
        }
    }
}

