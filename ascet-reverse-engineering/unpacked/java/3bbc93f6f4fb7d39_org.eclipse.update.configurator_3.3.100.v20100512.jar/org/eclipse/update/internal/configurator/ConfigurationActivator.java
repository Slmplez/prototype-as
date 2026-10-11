/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.core.runtime.IBundleGroupProvider
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.FrameworkEvent
 *  org.osgi.framework.FrameworkListener
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.service.startlevel.StartLevel
 */
package org.eclipse.update.internal.configurator;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.internal.configurator.FeatureEntry;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PlatformConfiguration;
import org.eclipse.update.internal.configurator.PlatformConfigurationFactory;
import org.eclipse.update.internal.configurator.Utils;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.framework.FrameworkListener;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.service.startlevel.StartLevel;

public class ConfigurationActivator
implements BundleActivator,
IBundleGroupProvider,
IConfigurationConstants {
    public static String PI_CONFIGURATOR = "org.eclipse.update.configurator";
    public static final String LAST_CONFIG_STAMP = "last.config.stamp";
    public static final String NAME_SPACE = "org.eclipse.update";
    public static final String UPDATE_PREFIX = "update@";
    private static final String INITIAL_PREFIX = "initial@";
    public static String OPTION_DEBUG = String.valueOf(PI_CONFIGURATOR) + "/debug";
    public static boolean DEBUG = false;
    private static BundleContext context;
    private ServiceRegistration configurationFactorySR;
    ServiceRegistration bundleGroupProviderSR;
    private PlatformConfiguration configuration;
    private Location configLocation;
    private long lastTimeStamp;
    private long lastStateTimeStamp;
    private static ConfigurationActivator configurator;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public ConfigurationActivator() {
        configurator = this;
    }

    public void start(BundleContext ctx) throws Exception {
        context = ctx;
        this.loadOptions();
        this.acquireFrameworkLogService();
        try {
            this.initialize();
        }
        catch (Exception e) {
            Utils.shutdown();
            throw e;
        }
        if (this.canRunWithCachedData()) {
            Utils.debug("Running with cached data");
            this.registerBundleGroupProvider();
            return;
        }
        Utils.debug("Starting update configurator...");
        if (ConfigurationActivator.isReconciling()) {
            this.installBundles();
        }
        this.registerBundleGroupProvider();
    }

    public static boolean isReconciling() {
        String reconcile = context.getProperty("org.eclipse.update.reconcile");
        return reconcile == null || reconcile.equalsIgnoreCase("true");
    }

    private void registerBundleGroupProvider() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IBundleGroupProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        String serviceName = clazz.getName();
        try {
            ServiceReference[] refs = ConfigurationActivator.getBundleContext().getServiceReferences(serviceName, null);
            if (refs != null) {
                int i = 0;
                while (i < refs.length) {
                    if (PI_CONFIGURATOR.equals(refs[i].getBundle().getSymbolicName())) {
                        return;
                    }
                    ++i;
                }
            }
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        this.bundleGroupProviderSR = ConfigurationActivator.getBundleContext().registerService(serviceName, (Object)this, null);
    }

    private void initialize() throws Exception {
        block22: {
            Class<?> clazz;
            if (!Utils.isRunning()) {
                throw new Exception(Messages.ConfigurationActivator_initialize);
            }
            this.configLocation = Utils.getConfigurationLocation();
            if (!this.configLocation.isReadOnly()) {
                try {
                    URL privateURL = new URL(this.configLocation.getURL(), NAME_SPACE);
                    File f = new File(privateURL.getFile());
                    if (!f.exists()) {
                        f.mkdirs();
                    }
                }
                catch (MalformedURLException malformedURLException) {}
            }
            if ((clazz = class$1) == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.update.configurator.IPlatformConfigurationFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.configurationFactorySR = context.registerService(clazz.getName(), (Object)new PlatformConfigurationFactory(), null);
            this.configuration = this.getPlatformConfiguration(Utils.getInstallURL(), this.configLocation);
            if (this.configuration == null) {
                throw Utils.newCoreException(NLS.bind((String)Messages.ConfigurationActivator_createConfig, (Object[])new String[]{this.configLocation.getURL().toExternalForm()}), null);
            }
            FilterInputStream stream = null;
            try {
                try {
                    stream = new DataInputStream(new URL(this.configLocation.getURL(), "org.eclipse.update/last.config.stamp").openStream());
                    this.lastTimeStamp = ((DataInputStream)stream).readLong();
                    this.lastStateTimeStamp = ((DataInputStream)stream).readLong();
                }
                catch (Exception exception) {
                    this.lastTimeStamp = this.configuration.getChangeStamp() - 1L;
                    this.lastStateTimeStamp = -1L;
                    if (stream == null) break block22;
                    try {
                        stream.close();
                    }
                    catch (IOException e1) {
                        Utils.log(e1.getLocalizedMessage());
                    }
                }
            }
            finally {
                if (stream != null) {
                    try {
                        stream.close();
                    }
                    catch (IOException e1) {
                        Utils.log(e1.getLocalizedMessage());
                    }
                }
            }
        }
    }

    public void stop(BundleContext ctx) throws Exception {
        try {
            PlatformConfiguration.shutdown();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        this.configurationFactorySR.unregister();
        if (this.bundleGroupProviderSR != null) {
            this.bundleGroupProviderSR.unregister();
        }
        Utils.shutdown();
    }

    public boolean installBundles() {
        Utils.debug("Installing bundles...");
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.osgi.service.startlevel.StartLevel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference reference = context.getServiceReference(clazz.getName());
        int startLevel = 4;
        String defaultStartLevel = context.getProperty("osgi.bundles.defaultStartLevel");
        if (defaultStartLevel != null) {
            try {
                startLevel = Integer.parseInt(defaultStartLevel);
            }
            catch (NumberFormatException numberFormatException) {
                startLevel = 4;
            }
        }
        if (startLevel < 1) {
            startLevel = 4;
        }
        StartLevel start = null;
        if (reference != null) {
            start = (StartLevel)context.getService(reference);
        }
        try {
            Bundle[] cachedBundles = context.getBundles();
            URL[] plugins = this.configuration.getPluginPath();
            List toRefresh = this.getUnresolvedBundles();
            Bundle[] bundlesToUninstall = this.getBundlesToUninstall(cachedBundles, plugins);
            int i = 0;
            while (i < bundlesToUninstall.length) {
                try {
                    if (DEBUG) {
                        Utils.debug("Uninstalling " + bundlesToUninstall[i].getLocation());
                    }
                    toRefresh.add(bundlesToUninstall[i]);
                    bundlesToUninstall[i].uninstall();
                }
                catch (Exception exception) {
                    Utils.log(NLS.bind((String)Messages.ConfigurationActivator_uninstallBundle, (Object[])new String[]{bundlesToUninstall[i].getLocation()}));
                }
                ++i;
            }
            String[] bundlesToInstall = this.getBundlesToInstall(cachedBundles, plugins);
            ArrayList<Bundle> lazyActivationBundles = new ArrayList<Bundle>(bundlesToInstall.length);
            int i2 = 0;
            while (i2 < bundlesToInstall.length) {
                block24: {
                    try {
                        if (DEBUG) {
                            Utils.debug("Installing " + bundlesToInstall[i2]);
                        }
                        URL bundleURL = new URL("reference:file:" + bundlesToInstall[i2]);
                        Bundle target = context.installBundle(UPDATE_PREFIX + bundlesToInstall[i2], bundleURL.openStream());
                        toRefresh.add(target);
                        if (start != null) {
                            start.setBundleStartLevel(target, startLevel);
                        }
                        if (ConfigurationActivator.hasLazyActivationPolicy(target)) {
                            lazyActivationBundles.add(target);
                        }
                    }
                    catch (Exception e) {
                        if (Utils.isAutomaticallyStartedBundle(bundlesToInstall[i2])) break block24;
                        Utils.log(String.valueOf(NLS.bind((String)Messages.ConfigurationActivator_installBundle, (Object[])new String[]{bundlesToInstall[i2]})) + "   " + e.getMessage());
                    }
                }
                ++i2;
            }
            context.ungetService(reference);
            this.removeInitialBundles(toRefresh, cachedBundles);
            this.refreshPackages(toRefresh.toArray(new Bundle[toRefresh.size()]));
            Iterator activateBundles = lazyActivationBundles.iterator();
            while (activateBundles.hasNext()) {
                Bundle toActivate = (Bundle)activateBundles.next();
                try {
                    toActivate.start(2);
                }
                catch (BundleException e) {
                    if ((toActivate.getState() & 4) == 0) continue;
                    Utils.log(String.valueOf(NLS.bind((String)Messages.ConfigurationActivator_installBundle, (Object[])new String[]{toActivate.getLocation()})) + "   " + e.getMessage());
                }
            }
            this.writePlatformConfigurationTimeStamp();
            return true;
        }
        catch (Exception exception) {
            return false;
        }
    }

    private static boolean hasLazyActivationPolicy(Bundle target) {
        block9: {
            ManifestElement[] elements;
            block10: {
                Dictionary headers;
                block8: {
                    headers = target.getHeaders("");
                    String fragmentHost = (String)headers.get("Fragment-Host");
                    if (fragmentHost != null) {
                        return false;
                    }
                    String activationPolicy = (String)headers.get("Bundle-ActivationPolicy");
                    try {
                        if (activationPolicy == null) break block8;
                        ManifestElement[] elements2 = ManifestElement.parseHeader((String)"Bundle-ActivationPolicy", (String)activationPolicy);
                        if (elements2 != null && elements2.length > 0 && "lazy".equals(elements2[0].getValue())) {
                            return true;
                        }
                        break block9;
                    }
                    catch (BundleException bundleException) {}
                }
                String eclipseLazyStart = (String)headers.get("Eclipse-LazyStart");
                if (eclipseLazyStart == null) {
                    eclipseLazyStart = (String)headers.get("Eclipse-AutoStart");
                }
                if ((elements = ManifestElement.parseHeader((String)"Eclipse-LazyStart", (String)eclipseLazyStart)) == null || elements.length <= 0) break block9;
                if (!"true".equals(elements[0].getValue())) break block10;
                return true;
            }
            if (elements[0].getDirective("exceptions") != null) {
                return true;
            }
        }
        return false;
    }

    private void removeInitialBundles(List bundles, Bundle[] cachedBundles) {
        String[] initialSymbolicNames = this.getInitialSymbolicNames(cachedBundles);
        Iterator iter = bundles.iterator();
        block0: while (iter.hasNext()) {
            Bundle bundle = (Bundle)iter.next();
            String symbolicName = bundle.getSymbolicName();
            int i = 0;
            while (i < initialSymbolicNames.length) {
                if (initialSymbolicNames[i].equals(symbolicName)) {
                    iter.remove();
                    continue block0;
                }
                ++i;
            }
        }
    }

    private String[] getInitialSymbolicNames(Bundle[] cachedBundles) {
        ArrayList<String> initial = new ArrayList<String>();
        int i = 0;
        while (i < cachedBundles.length) {
            String symbolicName;
            Bundle bundle = cachedBundles[i];
            if (bundle.getLocation().startsWith(INITIAL_PREFIX) && (symbolicName = bundle.getSymbolicName()) != null) {
                initial.add(symbolicName);
            }
            ++i;
        }
        return initial.toArray(new String[initial.size()]);
    }

    private List getUnresolvedBundles() {
        Bundle[] allBundles = context.getBundles();
        ArrayList<Bundle> unresolved = new ArrayList<Bundle>();
        int i = 0;
        while (i < allBundles.length) {
            if (allBundles[i].getState() == 2) {
                unresolved.add(allBundles[i]);
            }
            ++i;
        }
        return unresolved;
    }

    private String[] getBundlesToInstall(Bundle[] cachedBundles, URL[] newPlugins) {
        HashSet<String> cachedBundlesSet = new HashSet<String>(cachedBundles.length);
        int offset = UPDATE_PREFIX.length();
        int i = 0;
        while (i < cachedBundles.length) {
            String bundleLocation;
            if (cachedBundles[i].getBundleId() != 0L && (bundleLocation = cachedBundles[i].getLocation()).startsWith(UPDATE_PREFIX)) {
                bundleLocation = bundleLocation.substring(offset);
                cachedBundlesSet.add(bundleLocation);
                if (Utils.isWindows) {
                    cachedBundlesSet.add(bundleLocation.toLowerCase());
                }
            }
            ++i;
        }
        ArrayList<String> bundlesToInstall = new ArrayList<String>(newPlugins.length);
        int i2 = 0;
        while (i2 < newPlugins.length) {
            String location = Utils.makeRelative(Utils.getInstallURL(), newPlugins[i2]).getFile();
            if (!(cachedBundlesSet.contains(location) || Utils.isWindows && cachedBundlesSet.contains(location.toLowerCase()))) {
                bundlesToInstall.add(location);
            }
            ++i2;
        }
        return bundlesToInstall.toArray(new String[bundlesToInstall.size()]);
    }

    private Bundle[] getBundlesToUninstall(Bundle[] cachedBundles, URL[] newPlugins) {
        HashSet<String> newPluginsSet = new HashSet<String>(newPlugins.length);
        int i = 0;
        while (i < newPlugins.length) {
            String pluginLocation = Utils.makeRelative(Utils.getInstallURL(), newPlugins[i]).getFile();
            newPluginsSet.add(pluginLocation);
            if (Utils.isWindows) {
                newPluginsSet.add(pluginLocation.toLowerCase());
            }
            ++i;
        }
        ArrayList<Bundle> bundlesToUninstall = new ArrayList<Bundle>();
        int offset = UPDATE_PREFIX.length();
        int i2 = 0;
        while (i2 < cachedBundles.length) {
            String cachedBundleLocation;
            if (!(cachedBundles[i2].getBundleId() == 0L || !(cachedBundleLocation = cachedBundles[i2].getLocation()).startsWith(UPDATE_PREFIX) || newPluginsSet.contains(cachedBundleLocation = cachedBundleLocation.substring(offset)) || Utils.isWindows && newPluginsSet.contains(cachedBundleLocation.toLowerCase()))) {
                bundlesToUninstall.add(cachedBundles[i2]);
            }
            ++i2;
        }
        return bundlesToUninstall.toArray(new Bundle[bundlesToUninstall.size()]);
    }

    private PlatformConfiguration getPlatformConfiguration(URL installURL, Location configLocation) {
        try {
            PlatformConfiguration.startup(installURL, configLocation);
        }
        catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            Utils.log(Utils.newStatus(message, e));
        }
        return PlatformConfiguration.getCurrent();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void refreshPackages(Bundle[] bundles) {
        if (bundles.length == 0) {
            return;
        }
        Class<?> clazz = class$3;
        if (clazz == null) {
            Class<?> clazz2;
            try {
                clazz2 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
            clazz = class$3 = clazz2;
        }
        ServiceReference packageAdminRef = context.getServiceReference(clazz.getName());
        PackageAdmin packageAdmin = null;
        if (packageAdminRef != null && (packageAdmin = (PackageAdmin)context.getService(packageAdminRef)) == null) {
            return;
        }
        final boolean[] flag = new boolean[1];
        FrameworkListener listener = new FrameworkListener(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            public void frameworkEvent(FrameworkEvent event) {
                if (event.getType() != 4) return;
                boolean[] blArray = flag;
                synchronized (flag) {
                    flag[0] = true;
                    flag.notifyAll();
                    // ** MonitorExit[var2_2] (shouldn't be in output)
                    return;
                }
            }
        };
        context.addFrameworkListener(listener);
        packageAdmin.refreshPackages(bundles);
        boolean[] blArray = flag;
        synchronized (flag) {
            while (true) {
                if (flag[0]) {
                    // ** MonitorExit[var6_6] (shouldn't be in output)
                    break;
                }
                try {
                    flag.wait();
                }
                catch (InterruptedException interruptedException) {}
            }
            context.removeFrameworkListener(listener);
            context.ungetService(packageAdminRef);
            return;
        }
    }

    private void writePlatformConfigurationTimeStamp() {
        FilterOutputStream stream = null;
        try {
            if (this.configLocation.isReadOnly()) {
                return;
            }
            try {
                String configArea = this.configLocation.getURL().getFile();
                this.lastTimeStamp = this.configuration.getChangeStamp();
                this.lastStateTimeStamp = Utils.getStateStamp();
                stream = new DataOutputStream(new FileOutputStream(String.valueOf(configArea) + File.separator + NAME_SPACE + File.separator + LAST_CONFIG_STAMP));
                ((DataOutputStream)stream).writeLong(this.lastTimeStamp);
                ((DataOutputStream)stream).writeLong(this.lastStateTimeStamp);
            }
            catch (Exception e) {
                Utils.log(e.getLocalizedMessage());
            }
        }
        finally {
            if (stream != null) {
                try {
                    stream.close();
                }
                catch (IOException e1) {
                    Utils.log(e1.getLocalizedMessage());
                }
            }
        }
    }

    private void loadOptions() {
        ServiceReference reference;
        DebugOptions service = null;
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((reference = context.getServiceReference(clazz.getName())) != null) {
            service = (DebugOptions)context.getService(reference);
        }
        if (service == null) {
            return;
        }
        try {
            DEBUG = service.getBooleanOption(OPTION_DEBUG, false);
        }
        finally {
            context.ungetService(reference);
        }
    }

    private boolean canRunWithCachedData() {
        return !"true".equals(context.getProperty("osgi.checkConfiguration")) && this.lastTimeStamp == this.configuration.getChangeStamp() && this.lastStateTimeStamp == Utils.getStateStamp();
    }

    public static BundleContext getBundleContext() {
        return context;
    }

    public String getName() {
        return Messages.BundleGroupProvider;
    }

    public IBundleGroup[] getBundleGroups() {
        if (this.configuration == null) {
            return new IBundleGroup[0];
        }
        IPlatformConfiguration.IFeatureEntry[] features = this.configuration.getConfiguredFeatureEntries();
        ArrayList<IPlatformConfiguration.IFeatureEntry> bundleGroups = new ArrayList<IPlatformConfiguration.IFeatureEntry>(features.length);
        int i = 0;
        while (i < features.length) {
            if (features[i] instanceof FeatureEntry && ((FeatureEntry)features[i]).hasBranding()) {
                bundleGroups.add(features[i]);
            }
            ++i;
        }
        return bundleGroups.toArray(new IBundleGroup[bundleGroups.size()]);
    }

    public static ConfigurationActivator getConfigurator() {
        return configurator;
    }

    private void acquireFrameworkLogService() {
        ServiceReference logServiceReference;
        Class<?> clazz = class$5;
        if (clazz == null) {
            try {
                clazz = class$5 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((logServiceReference = context.getServiceReference(clazz.getName())) == null) {
            return;
        }
        Utils.log = (FrameworkLog)context.getService(logServiceReference);
    }
}

