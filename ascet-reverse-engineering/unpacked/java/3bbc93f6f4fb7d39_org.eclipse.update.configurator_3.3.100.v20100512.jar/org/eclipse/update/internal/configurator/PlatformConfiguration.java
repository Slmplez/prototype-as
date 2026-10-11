/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.SyncFailedException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.internal.configurator.Configuration;
import org.eclipse.update.internal.configurator.ConfigurationActivator;
import org.eclipse.update.internal.configurator.ConfigurationParser;
import org.eclipse.update.internal.configurator.FeatureEntry;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.Locker;
import org.eclipse.update.internal.configurator.Locker_JavaIo;
import org.eclipse.update.internal.configurator.Locker_JavaNio;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.PluginEntry;
import org.eclipse.update.internal.configurator.SiteEntry;
import org.eclipse.update.internal.configurator.SitePolicy;
import org.eclipse.update.internal.configurator.UpdateURLDecoder;
import org.eclipse.update.internal.configurator.Utils;
import org.eclipse.update.internal.configurator.XMLPrintHandler;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class PlatformConfiguration
implements IPlatformConfiguration,
IConfigurationConstants {
    private static PlatformConfiguration currentPlatformConfiguration = null;
    private static final String XML_ENCODING = "UTF-8";
    private Configuration config;
    private URL configLocation;
    private HashMap externalLinkSites = new HashMap();
    private long changeStamp;
    private long featuresChangeStamp;
    private boolean featuresChangeStampIsValid;
    private long pluginsChangeStamp;
    private boolean pluginsChangeStampIsValid;
    private Locker lock = null;
    private static int defaultPolicy = 1;
    private static boolean checkNio = false;
    private static boolean useNio;
    private static final String ECLIPSE = "eclipse";
    private static final String CONFIG_HISTORY = "history";
    private static final String PLATFORM_XML = "platform.xml";
    private static final String CONFIG_NAME = "org.eclipse.update/platform.xml";
    private static final String CONFIG_INI = "config.ini";
    private static final String CONFIG_FILE_LOCK_SUFFIX = ".lock";
    private static final String CONFIG_FILE_TEMP_SUFFIX = ".tmp";
    private static final String LINKS = "links";
    private static final String[] BOOTSTRAP_PLUGINS;
    private static final String DEFAULT_FEATURE_APPLICATION = "org.eclipse.ui.ide.workbench";
    private static final String LINK_PATH = "path";
    private static final String LINK_READ = "r";
    private static final String LINK_READ_WRITE = "rw";
    private static URL installURL;

    static {
        BOOTSTRAP_PLUGINS = new String[0];
    }

    private PlatformConfiguration(Location platformConfigLocation) throws CoreException, IOException {
        this.config = null;
        this.initializeCurrent(platformConfigLocation);
        if (this.config != null) {
            this.setDefaultPolicy();
        }
        if (ConfigurationActivator.isReconciling()) {
            if (!this.isTransient()) {
                this.configureExternalLinks();
            }
            this.validateSites();
        }
        if (this.isTransient()) {
            return;
        }
        boolean osgiClean = "true".equals(ConfigurationActivator.getBundleContext().getProperty("osgi.clean"));
        boolean osgiCheckConfiguration = "true".equals(ConfigurationActivator.getBundleContext().getProperty("osgi.checkConfiguration"));
        if (osgiClean || osgiCheckConfiguration) {
            this.refresh();
            this.reconcile();
        } else {
            this.changeStamp = this.computeChangeStamp();
            if (this.changeStamp > this.config.getDate().getTime()) {
                this.reconcile();
            }
        }
    }

    PlatformConfiguration(URL url) throws Exception {
        URL installLocation = Utils.getInstallURL();
        try {
            if (url.getProtocol().equals("file") && url.getPath().endsWith("configuration/org.eclipse.update/platform.xml")) {
                installLocation = new Path(url.getPath()).removeLastSegments(3).toFile().toURL();
            }
        }
        catch (Exception exception) {}
        this.initialize(url, installLocation);
    }

    public PlatformConfiguration(URL url, URL installLocation) throws Exception {
        this.initialize(url, installLocation);
    }

    private void setDefaultPolicy() {
        int policyType;
        IPlatformConfiguration.ISiteEntry[] sentries = this.getConfiguredSites();
        if (sentries != null && sentries.length > 0 && (policyType = sentries[0].getSitePolicy().getType()) == 2) {
            defaultPolicy = policyType;
        }
    }

    public static int getDefaultPolicy() {
        return defaultPolicy;
    }

    public IPlatformConfiguration.ISiteEntry createSiteEntry(URL url, IPlatformConfiguration.ISitePolicy policy) {
        return new SiteEntry(url, policy);
    }

    public IPlatformConfiguration.ISitePolicy createSitePolicy(int type, String[] list) {
        return new SitePolicy(type, list);
    }

    public IPlatformConfiguration.IFeatureEntry createFeatureEntry(String id, String version, String pluginVersion, boolean primary, String application, URL[] root) {
        return new FeatureEntry(id, version, pluginVersion, primary, application, root);
    }

    public IPlatformConfiguration.IFeatureEntry createFeatureEntry(String id, String version, String pluginIdentifier, String pluginVersion, boolean primary, String application, URL[] root) {
        return new FeatureEntry(id, version, pluginIdentifier, pluginVersion, primary, application, root);
    }

    public void configureSite(IPlatformConfiguration.ISiteEntry entry) {
        this.configureSite(entry, false);
    }

    public synchronized void configureSite(IPlatformConfiguration.ISiteEntry entry, boolean replace) {
        if (entry == null) {
            return;
        }
        URL url = entry.getURL();
        if (url == null) {
            return;
        }
        String key = url.toExternalForm();
        if (this.config.getSiteEntry(key) != null && !replace) {
            return;
        }
        if (entry instanceof SiteEntry) {
            this.config.addSiteEntry(key, (SiteEntry)entry);
        }
    }

    public synchronized void unconfigureSite(IPlatformConfiguration.ISiteEntry entry) {
        if (entry == null) {
            return;
        }
        URL url = entry.getURL();
        if (url == null) {
            return;
        }
        String key = url.toExternalForm();
        if (entry instanceof SiteEntry) {
            this.config.removeSiteEntry(key);
        }
    }

    public IPlatformConfiguration.ISiteEntry[] getConfiguredSites() {
        if (this.config == null) {
            return new IPlatformConfiguration.ISiteEntry[0];
        }
        SiteEntry[] sites = this.config.getSites();
        ArrayList<SiteEntry> enabledSites = new ArrayList<SiteEntry>(sites.length);
        int i = 0;
        while (i < sites.length) {
            if (sites[i].isEnabled()) {
                enabledSites.add(sites[i]);
            }
            ++i;
        }
        return enabledSites.toArray(new IPlatformConfiguration.ISiteEntry[enabledSites.size()]);
    }

    public IPlatformConfiguration.ISiteEntry findConfiguredSite(URL url) {
        return this.findConfiguredSite(url, true);
    }

    public SiteEntry findConfiguredSite(URL url, boolean checkPlatformURL) {
        if (url == null) {
            return null;
        }
        String key = url.toExternalForm();
        SiteEntry result = this.config.getSiteEntry(key);
        if (result == null) {
            try {
                key = UpdateURLDecoder.decode(key, XML_ENCODING);
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {}
            result = this.config.getSiteEntry(key);
        }
        if (result == null && checkPlatformURL) {
            try {
                result = this.findConfiguredSite(this.config.asPlatformURL(url), false);
            }
            catch (Exception exception) {}
        }
        return result;
    }

    public synchronized void configureFeatureEntry(IPlatformConfiguration.IFeatureEntry entry) {
        if (entry == null) {
            return;
        }
        String key = entry.getFeatureIdentifier();
        if (key == null) {
            return;
        }
        if (this.config == null) {
            this.config = new Configuration();
        }
        SiteEntry[] sites = this.config.getSites();
        int i = 0;
        while (i < sites.length) {
            try {
                URL url = new URL(sites[i].getURL(), "features/" + entry.getFeatureIdentifier() + "_" + entry.getFeatureVersion() + "/");
                try {
                    url = PlatformConfiguration.resolvePlatformURL(url, this.getBasePathLocation(url, this.config.getInstallURL(), this.config.getURL()));
                }
                catch (IOException iOException) {}
                if (new File(url.getFile()).exists()) {
                    sites[i].addFeatureEntry(entry);
                } else {
                    url = new URL(sites[i].getURL(), "features/" + entry.getFeatureIdentifier() + "/");
                    if (new File(url.getFile()).exists()) {
                        sites[i].addFeatureEntry(entry);
                    }
                }
            }
            catch (MalformedURLException malformedURLException) {}
            ++i;
        }
    }

    public synchronized void unconfigureFeatureEntry(IPlatformConfiguration.IFeatureEntry entry) {
        if (entry == null) {
            return;
        }
        String key = entry.getFeatureIdentifier();
        if (key == null) {
            return;
        }
        this.config.unconfigureFeatureEntry(entry);
    }

    public IPlatformConfiguration.IFeatureEntry[] getConfiguredFeatureEntries() {
        ArrayList<FeatureEntry> configFeatures = new ArrayList<FeatureEntry>();
        SiteEntry[] sites = this.config.getSites();
        int i = 0;
        while (i < sites.length) {
            FeatureEntry[] features = sites[i].getFeatureEntries();
            int j = 0;
            while (j < features.length) {
                configFeatures.add(features[j]);
                ++j;
            }
            ++i;
        }
        return configFeatures.toArray(new FeatureEntry[configFeatures.size()]);
    }

    public IPlatformConfiguration.IFeatureEntry findConfiguredFeatureEntry(String id) {
        if (id == null) {
            return null;
        }
        SiteEntry[] sites = this.config.getSites();
        int i = 0;
        while (i < sites.length) {
            FeatureEntry f = sites[i].getFeatureEntry(id);
            if (f != null) {
                return f;
            }
            ++i;
        }
        return null;
    }

    public URL getConfigurationLocation() {
        return this.configLocation;
    }

    public long getChangeStamp() {
        if (this.config.getLinkedConfig() == null) {
            return this.config.getDate().getTime();
        }
        return Math.max(this.config.getDate().getTime(), this.config.getLinkedConfig().getDate().getTime());
    }

    public long getFeaturesChangeStamp() {
        return 0L;
    }

    public long getPluginsChangeStamp() {
        return 0L;
    }

    public String getApplicationIdentifier() {
        IPlatformConfiguration.IFeatureEntry fe;
        String application = ConfigurationActivator.getBundleContext().getProperty("eclipse.application");
        if (application != null) {
            return application;
        }
        String feature = this.getPrimaryFeatureIdentifier();
        if (feature != null && (fe = this.findConfiguredFeatureEntry(feature)) != null && fe.getFeatureApplication() != null) {
            return fe.getFeatureApplication();
        }
        return DEFAULT_FEATURE_APPLICATION;
    }

    public String getPrimaryFeatureIdentifier() {
        IPlatformConfiguration.IFeatureEntry feature;
        String primaryFeatureId = ConfigurationActivator.getBundleContext().getProperty("eclipse.product");
        if (primaryFeatureId != null && (feature = this.findConfiguredFeatureEntry(primaryFeatureId)) != null && feature.canBePrimary()) {
            return primaryFeatureId;
        }
        return null;
    }

    public URL[] getPluginPath() {
        ArrayList<URL> path = new ArrayList<URL>();
        Utils.debug("computed plug-in path:");
        IPlatformConfiguration.ISiteEntry[] sites = this.getConfiguredSites();
        int i = 0;
        while (i < sites.length) {
            String[] plugins = sites[i].getPlugins();
            int j = 0;
            while (j < plugins.length) {
                try {
                    URL pathURL = new URL(((SiteEntry)sites[i]).getResolvedURL(), plugins[j]);
                    path.add(pathURL);
                    Utils.debug("   " + pathURL.toString());
                }
                catch (MalformedURLException e) {
                    Utils.debug("   bad URL: " + e);
                }
                ++j;
            }
            ++i;
        }
        return path.toArray(new URL[0]);
    }

    public Set getPluginPaths() {
        HashSet<String> paths = new HashSet<String>();
        IPlatformConfiguration.ISiteEntry[] sites = this.getConfiguredSites();
        int i = 0;
        while (i < sites.length) {
            String[] plugins = sites[i].getPlugins();
            int j = 0;
            while (j < plugins.length) {
                paths.add(plugins[j]);
                ++j;
            }
            ++i;
        }
        return paths;
    }

    public PluginEntry[] getPlugins() {
        ArrayList<PluginEntry> allPlugins = new ArrayList<PluginEntry>();
        Utils.debug("computed plug-ins:");
        IPlatformConfiguration.ISiteEntry[] sites = this.getConfiguredSites();
        int i = 0;
        while (i < sites.length) {
            if (!(sites[i] instanceof SiteEntry)) {
                Utils.debug("Site " + sites[i].getURL() + " is not a SiteEntry");
            } else {
                PluginEntry[] plugins = ((SiteEntry)sites[i]).getPluginEntries();
                int j = 0;
                while (j < plugins.length) {
                    allPlugins.add(plugins[j]);
                    Utils.debug("   " + plugins[j].getURL());
                    ++j;
                }
            }
            ++i;
        }
        return allPlugins.toArray(new PluginEntry[0]);
    }

    public String[] getBootstrapPluginIdentifiers() {
        return BOOTSTRAP_PLUGINS;
    }

    public void setBootstrapPluginLocation(String id, URL location) {
    }

    public boolean isUpdateable() {
        return true;
    }

    public boolean isTransient() {
        return this.config != null ? this.config.isTransient() : false;
    }

    public void isTransient(boolean value) {
        if (this != PlatformConfiguration.getCurrent() && this.config != null) {
            this.config.setTransient(value);
        }
    }

    public synchronized void refresh() {
        IPlatformConfiguration.ISiteEntry[] sites = this.getConfiguredSites();
        int i = 0;
        while (i < sites.length) {
            if (sites[i].isUpdateable()) {
                ((SiteEntry)sites[i]).refresh();
            }
            ++i;
        }
    }

    public void save() throws IOException {
        if (this.isUpdateable()) {
            this.save(this.configLocation);
        }
    }

    public synchronized void save(URL url) throws IOException {
        block30: {
            boolean ok;
            File workingDir;
            if (url == null) {
                throw new IOException(Messages.cfig_unableToSave_noURL);
            }
            OutputStream os = null;
            if (!url.getProtocol().equals("file")) {
                URLConnection uc = url.openConnection();
                uc.setDoOutput(true);
                os = uc.getOutputStream();
                try {
                    try {
                        this.saveAsXML(os);
                        this.config.setDirty(false);
                        break block30;
                    }
                    catch (CoreException e) {
                        Utils.log(e.getMessage());
                        Utils.log(e.getStatus());
                        throw new IOException(NLS.bind((String)Messages.cfig_unableToSave, (Object[])new String[]{url.toExternalForm()}));
                    }
                }
                finally {
                    os.close();
                }
            }
            File cfigFile = new File(url.getFile().replace('/', File.separatorChar));
            if (!cfigFile.getName().equals(PLATFORM_XML)) {
                if (cfigFile.exists() && cfigFile.isFile()) {
                    Utils.log(String.valueOf(Messages.PlatformConfiguration_expectingPlatformXMLorDirectory) + cfigFile.getName());
                    cfigFile = cfigFile.getParentFile();
                }
                cfigFile = new File(cfigFile, CONFIG_NAME);
            }
            if ((workingDir = cfigFile.getParentFile()) != null && !workingDir.exists()) {
                workingDir.mkdirs();
            }
            File cfigFileOriginal = new File(cfigFile.getAbsolutePath());
            File cfigTmp = new File(String.valueOf(cfigFile.getAbsolutePath()) + CONFIG_FILE_TEMP_SUFFIX);
            if (cfigFile.exists()) {
                File backupDir = new File(workingDir, CONFIG_HISTORY);
                if (!backupDir.exists()) {
                    backupDir.mkdir();
                }
                long timestamp = cfigFile.lastModified();
                File preservedFile = new File(backupDir, String.valueOf(String.valueOf(timestamp)) + ".xml");
                long increment = 1L;
                while (preservedFile.exists() && increment < 100L) {
                    preservedFile = new File(backupDir, String.valueOf(String.valueOf(timestamp + increment++)) + ".xml");
                }
                if (!preservedFile.exists() && !cfigFile.renameTo(preservedFile)) {
                    Utils.log(Messages.PlatformConfiguration_cannotBackupConfig);
                }
            }
            os = new FileOutputStream(cfigTmp);
            try {
                try {
                    this.saveAsXML(os);
                    try {
                        os.flush();
                        ((FileOutputStream)os).getFD().sync();
                    }
                    catch (SyncFailedException e2) {
                        Utils.log(e2.getMessage());
                    }
                    catch (IOException e2) {
                        Utils.log(e2.getMessage());
                    }
                    try {
                        os.close();
                        os = null;
                    }
                    catch (IOException e1) {
                        Utils.log(String.valueOf(Messages.PlatformConfiguration_cannotCloseStream) + cfigTmp);
                        Utils.log(e1.getMessage());
                    }
                    cfigTmp.setLastModified(this.config.getDate().getTime());
                    this.config.setLastModified(cfigTmp.lastModified());
                    this.changeStamp = this.config.getDate().getTime();
                    this.config.setDirty(false);
                }
                catch (CoreException coreException) {
                    throw new IOException(NLS.bind((String)Messages.cfig_unableToSave, (Object[])new String[]{cfigTmp.getAbsolutePath()}));
                }
            }
            catch (Throwable throwable) {
                if (os != null) {
                    try {
                        os.close();
                    }
                    catch (IOException iOException) {
                        Utils.log(String.valueOf(Messages.PlatformConfiguration_cannotCloseTempFile) + cfigTmp);
                    }
                }
                throw throwable;
            }
            if (os != null) {
                try {
                    os.close();
                }
                catch (IOException iOException) {
                    Utils.log(String.valueOf(Messages.PlatformConfiguration_cannotCloseTempFile) + cfigTmp);
                }
            }
            if (!(ok = cfigTmp.renameTo(cfigFileOriginal))) {
                Utils.log(Messages.PlatformConfiguration_cannotRenameTempFile);
                throw new IOException(NLS.bind((String)Messages.cfig_unableToSave, (Object[])new String[]{cfigTmp.getAbsolutePath()}));
            }
        }
    }

    public static PlatformConfiguration getCurrent() {
        return currentPlatformConfiguration;
    }

    public static synchronized void startup(URL installURL, Location platformConfigLocation) throws Exception {
        PlatformConfiguration.installURL = installURL;
        if (currentPlatformConfiguration == null) {
            currentPlatformConfiguration = new PlatformConfiguration(platformConfigLocation);
            if (PlatformConfiguration.currentPlatformConfiguration.config == null) {
                throw new Exception(String.valueOf(Messages.PlatformConfiguration_cannotLoadConfig) + platformConfigLocation.getURL());
            }
            if (PlatformConfiguration.currentPlatformConfiguration.config.isDirty() && !currentPlatformConfiguration.isTransient()) {
                currentPlatformConfiguration.save();
            }
        }
    }

    public static synchronized void shutdown() throws IOException {
        PlatformConfiguration config = PlatformConfiguration.getCurrent();
        if (config != null && config.config.isDirty() && !config.isTransient()) {
            try {
                config.save();
            }
            catch (IOException e) {
                Utils.debug("Unable to save configuration " + e.toString());
            }
        }
    }

    private synchronized void initializeCurrent(Location platformConfigLocation) throws IOException {
        block16: {
            URL configFileURL;
            block18: {
                configFileURL = new URL(platformConfigLocation.getURL(), CONFIG_NAME);
                this.getConfigurationLock(platformConfigLocation.getURL());
                try {
                    try {
                        this.config = this.loadConfig(configFileURL, installURL);
                        Utils.debug("Using configuration " + configFileURL.toString());
                    }
                    catch (Exception exception) {
                        block14: {
                            block15: {
                                try {
                                    Location parentLocation = platformConfigLocation.getParentLocation();
                                    if (parentLocation == null) {
                                        throw new IOException();
                                    }
                                    URL sharedConfigFileURL = new URL(parentLocation.getURL(), CONFIG_NAME);
                                    this.config = this.loadConfig(sharedConfigFileURL, installURL);
                                    if (!sharedConfigFileURL.equals(configFileURL)) {
                                        this.linkInitializedState(this.config, parentLocation, platformConfigLocation);
                                        Utils.debug("Configuration initialized from    " + sharedConfigFileURL.toString());
                                    }
                                    if (this.config == null) break block14;
                                    this.configLocation = configFileURL;
                                    if (this.config.getURL() != null) break block15;
                                    this.config.setURL(configFileURL);
                                }
                                catch (Exception exception2) {
                                    block17: {
                                        Utils.debug("Creating default configuration from " + configFileURL.toExternalForm());
                                        this.createDefaultConfiguration(configFileURL, installURL);
                                        if (this.config == null) break block16;
                                        this.configLocation = configFileURL;
                                        if (this.config.getURL() != null) break block17;
                                        this.config.setURL(configFileURL);
                                    }
                                    PlatformConfiguration.verifyPath(this.configLocation, this.config.getInstallURL());
                                    Utils.debug("Creating configuration " + configFileURL.toString());
                                    break block16;
                                }
                            }
                            PlatformConfiguration.verifyPath(this.configLocation, this.config.getInstallURL());
                            Utils.debug("Creating configuration " + configFileURL.toString());
                        }
                        this.clearConfigurationLock();
                        return;
                    }
                }
                finally {
                    if (this.config == null) break block16;
                }
                this.configLocation = configFileURL;
                if (this.config.getURL() != null) break block18;
                this.config.setURL(configFileURL);
            }
            PlatformConfiguration.verifyPath(this.configLocation, this.config.getInstallURL());
            Utils.debug("Creating configuration " + configFileURL.toString());
            break block16;
            finally {
                this.clearConfigurationLock();
            }
        }
    }

    private synchronized void initialize(URL url, URL installLocation) throws Exception {
        if (url != null) {
            this.config = this.loadConfig(url, installLocation);
            Utils.debug("Using configuration " + url.toString());
        }
        if (this.config == null) {
            this.config = new Configuration();
            Utils.debug("Creating empty configuration object");
        }
        this.config.setURL(url);
        this.config.setInstallLocation(installLocation);
        this.configLocation = url;
    }

    private void createDefaultConfiguration(URL url, URL installLocation) throws IOException {
        this.config = new Configuration();
        this.config.setURL(url);
        this.config.setInstallLocation(installLocation);
        SiteEntry defaultSite = (SiteEntry)this.getRootSite();
        this.configureSite(defaultSite);
        try {
            defaultSite.loadFromDisk(0L);
        }
        catch (CoreException coreException) {
            Utils.log(String.valueOf(Messages.PlatformConfiguration_cannotLoadDefaultSite) + defaultSite.getResolvedURL());
            return;
        }
    }

    private IPlatformConfiguration.ISiteEntry getRootSite() {
        IPlatformConfiguration.ISitePolicy defaultPolicy = this.createSitePolicy(PlatformConfiguration.getDefaultPolicy(), DEFAULT_POLICY_LIST);
        URL siteURL = null;
        try {
            siteURL = new URL("platform:/base/");
        }
        catch (MalformedURLException malformedURLException) {
            siteURL = PlatformConfiguration.getInstallURL();
        }
        IPlatformConfiguration.ISiteEntry defaultSite = this.createSiteEntry(siteURL, defaultPolicy);
        return defaultSite;
    }

    private void getConfigurationLock(URL url) {
        if (!url.getProtocol().equals("file")) {
            return;
        }
        File lockFile = new File(url.getFile(), "org.eclipse.update" + File.separator + CONFIG_FILE_LOCK_SUFFIX);
        PlatformConfiguration.verifyPath(url, this.config == null ? null : this.config.getInstallURL());
        this.lock = PlatformConfiguration.createLocker(lockFile);
        try {
            this.lock.lock();
        }
        catch (IOException iOException) {
            this.lock = null;
        }
    }

    private void clearConfigurationLock() {
        if (this.lock != null) {
            this.lock.release();
        }
    }

    private static Locker createLocker(File lock) {
        if (!checkNio) {
            useNio = true;
            try {
                Class.forName("java.nio.channels.FileLock");
            }
            catch (ClassNotFoundException classNotFoundException) {
                useNio = false;
            }
        }
        if (useNio) {
            return new Locker_JavaNio(lock);
        }
        return new Locker_JavaIo(lock);
    }

    private long computeChangeStamp() {
        this.featuresChangeStamp = this.computeFeaturesChangeStamp();
        this.pluginsChangeStamp = this.computePluginsChangeStamp();
        this.changeStamp = Math.max(this.featuresChangeStamp, this.pluginsChangeStamp);
        this.changeStamp = this.changeStamp / 1000L * 1000L;
        return this.changeStamp;
    }

    private long computeFeaturesChangeStamp() {
        if (this.featuresChangeStampIsValid) {
            return this.featuresChangeStamp;
        }
        long result = 0L;
        SiteEntry[] sites = this.config.getSites();
        int i = 0;
        while (i < sites.length) {
            result = Math.max(result, sites[i].getFeaturesChangeStamp());
            ++i;
        }
        this.featuresChangeStamp = result;
        this.featuresChangeStampIsValid = true;
        return this.featuresChangeStamp;
    }

    private long computePluginsChangeStamp() {
        if (this.pluginsChangeStampIsValid) {
            return this.pluginsChangeStamp;
        }
        long result = 0L;
        SiteEntry[] sites = this.config.getSites();
        int i = 0;
        while (i < sites.length) {
            result = Math.max(result, sites[i].getPluginsChangeStamp());
            ++i;
        }
        this.pluginsChangeStamp = result;
        this.pluginsChangeStampIsValid = true;
        return this.pluginsChangeStamp;
    }

    private void configureExternalLinks() {
        URL linkURL = PlatformConfiguration.getInstallURL();
        if (!PlatformConfiguration.supportsDetection(linkURL, this.config.getInstallURL())) {
            return;
        }
        try {
            linkURL = new URL(linkURL, "links/");
        }
        catch (MalformedURLException malformedURLException) {
            Utils.debug("Unable to obtain link URL");
            return;
        }
        File linkDir = new File(linkURL.getFile());
        File[] links = linkDir.listFiles();
        if (links == null || links.length == 0) {
            Utils.debug("No links detected in " + linkURL.toExternalForm());
            return;
        }
        int i = 0;
        while (i < links.length) {
            block20: {
                if (!links[i].isDirectory()) {
                    Utils.debug("Link file " + links[i].getAbsolutePath());
                    Properties props = new Properties();
                    FileInputStream is = null;
                    try {
                        try {
                            is = new FileInputStream(links[i]);
                            props.load(is);
                            this.configureExternalLinkSite(links[i], props);
                        }
                        catch (IOException e) {
                            Utils.debug("   unable to load link file " + e);
                            if (is != null) {
                                try {
                                    is.close();
                                }
                                catch (IOException iOException) {}
                            }
                            break block20;
                        }
                    }
                    catch (Throwable throwable) {
                        if (is != null) {
                            try {
                                is.close();
                            }
                            catch (IOException iOException) {}
                        }
                        throw throwable;
                    }
                    if (is != null) {
                        try {
                            is.close();
                        }
                        catch (IOException iOException) {}
                    }
                }
            }
            ++i;
        }
    }

    private void configureExternalLinkSite(File linkFile, Properties props) {
        URL siteURL;
        String link;
        String path = props.getProperty(LINK_PATH);
        if (path == null) {
            Utils.debug("   no path definition");
            return;
        }
        boolean updateable = true;
        if (path.startsWith("r ")) {
            updateable = false;
            link = path.substring(2).trim();
        } else {
            link = path.startsWith("rw ") ? path.substring(3).trim() : path.trim();
        }
        try {
            File siteFile = new File(link);
            siteFile = new File(siteFile, ECLIPSE);
            siteURL = siteFile.toURL();
            if (this.findConfiguredSite(siteURL, true) != null) {
                return;
            }
        }
        catch (MalformedURLException e) {
            Utils.debug("  bad URL " + e);
            return;
        }
        SiteEntry linkSite = (SiteEntry)this.externalLinkSites.get(siteURL);
        if (linkSite == null) {
            IPlatformConfiguration.ISitePolicy linkSitePolicy = this.createSitePolicy(PlatformConfiguration.getDefaultPolicy(), DEFAULT_POLICY_LIST);
            linkSite = (SiteEntry)this.createSiteEntry(siteURL, linkSitePolicy);
        }
        linkSite.setUpdateable(updateable);
        linkSite.setLinkFileName(linkFile.getAbsolutePath());
        this.configureSite(linkSite);
        this.config.setDirty(true);
        Utils.debug("   " + (updateable ? "R/W -> " : "R/O -> ") + siteURL.toString());
    }

    private void validateSites() {
        SiteEntry[] list = this.config.getSites();
        int i = 0;
        while (i < list.length) {
            URL siteURL = list[i].getResolvedURL();
            if (PlatformConfiguration.supportsDetection(siteURL, this.config.getInstallURL())) {
                File linkFile;
                String linkName;
                File siteRoot = new File(siteURL.getFile().replace('/', File.separatorChar));
                if (!siteRoot.exists()) {
                    this.unconfigureSite(list[i]);
                    Utils.debug("Site " + siteURL + " does not exist ... removing from configuration");
                }
                if ((linkName = list[i].getLinkFileName()) != null && !(linkFile = new File(linkName)).exists()) {
                    this.unconfigureSite(list[i]);
                    this.config.setDirty(true);
                    Utils.debug("Site " + siteURL + " is no longer linked ... removing from configuration");
                }
            }
            ++i;
        }
    }

    private void linkInitializedState(Configuration sharedConfig, Location sharedConfigLocation, Location newConfigLocation) {
        try {
            URL newConfigIniURL = new URL(newConfigLocation.getURL(), CONFIG_INI);
            if (!newConfigIniURL.getProtocol().equals("file")) {
                return;
            }
            File configIni = new File(newConfigIniURL.getFile());
            Properties props = new Properties();
            String externalForm = Utils.makeRelative(this.config.getInstallURL(), sharedConfigLocation.getURL()).toExternalForm();
            props.put("osgi.sharedConfiguration.area", externalForm);
            props.store(new FileOutputStream(configIni), "Linked configuration");
            this.config = new Configuration(new Date());
            this.config.setURL(new URL(newConfigLocation.getURL(), CONFIG_NAME));
            this.config.setLinkedConfig(sharedConfig);
            this.config.setDirty(true);
        }
        catch (IOException e) {
            System.out.println(e);
        }
    }

    private Configuration loadConfig(URL url, URL installLocation) throws Exception {
        if (url == null) {
            throw new IOException(Messages.cfig_unableToLoad_noURL);
        }
        ConfigurationParser parser = null;
        try {
            parser = new ConfigurationParser();
        }
        catch (InvocationTargetException e) {
            throw (Exception)e.getTargetException();
        }
        this.config = null;
        Exception originalException = null;
        try {
            this.config = parser.parse(url, installLocation);
            if (this.config == null) {
                throw new Exception(Messages.PlatformConfiguration_cannotFindConfigFile);
            }
        }
        catch (Exception e1) {
            originalException = e1;
            try {
                URL tempURL = new URL(String.valueOf(url.toExternalForm()) + CONFIG_FILE_TEMP_SUFFIX);
                this.config = parser.parse(tempURL, installLocation);
                if (this.config == null) {
                    throw new Exception();
                }
                this.config.setDirty(true);
            }
            catch (Exception exception) {
                try {
                    File[] backups;
                    File cfigFile;
                    File workingDir;
                    if ("file".equals(url.getProtocol()) && (workingDir = (cfigFile = new File(url.getFile().replace('/', File.separatorChar))).getParentFile()) != null && workingDir.exists() && (backups = workingDir.listFiles(new FileFilter(){

                        public boolean accept(File pathname) {
                            return pathname.isFile() && pathname.getName().endsWith(".xml");
                        }
                    })) != null && backups.length > 0) {
                        URL backupUrl = backups[backups.length - 1].toURL();
                        this.config = parser.parse(backupUrl, installLocation);
                    }
                    if (this.config == null) {
                        throw originalException;
                    }
                    this.config.setDirty(true);
                }
                catch (IOException iOException) {
                    throw originalException;
                }
            }
        }
        return this.config;
    }

    public static boolean supportsDetection(URL url, URL installLocation) {
        String protocol = url.getProtocol();
        if (protocol.equals("file")) {
            return true;
        }
        if (protocol.equals("platform")) {
            URL resolved = null;
            try {
                resolved = PlatformConfiguration.resolvePlatformURL(url, installLocation);
            }
            catch (IOException iOException) {
                return false;
            }
            return resolved.getProtocol().equals("file");
        }
        return false;
    }

    private static void verifyPath(URL url, URL installLocation) {
        File dir;
        String protocol = url.getProtocol();
        String path = null;
        if (protocol.equals("file")) {
            path = url.getFile();
        } else if (protocol.equals("platform")) {
            URL resolved = null;
            try {
                resolved = PlatformConfiguration.resolvePlatformURL(url, installLocation);
                if (resolved.getProtocol().equals("file")) {
                    path = resolved.getFile();
                }
            }
            catch (IOException iOException) {}
        }
        if (path != null && (dir = new File(path).getParentFile()) != null) {
            dir.mkdirs();
        }
    }

    public static URL resolvePlatformURL(URL url, URL base_path_Location) throws IOException {
        if (url.getProtocol().equals("platform")) {
            if (base_path_Location == null) {
                url = FileLocator.toFileURL((URL)url);
                File f = new File(url.getFile());
                url = f.toURL();
            } else {
                String toResolve = url.toExternalForm();
                url = toResolve.startsWith("platform:/base/") ? new URL(base_path_Location, toResolve.substring("platform:/base/".length())) : (toResolve.startsWith("platform:/config/") ? new URL(base_path_Location, toResolve.substring("platform:/config/".length())) : base_path_Location);
            }
        }
        return url;
    }

    private URL getBasePathLocation(URL url, URL installLocation, URL configLocation) {
        String toResolve = url.toExternalForm();
        if (toResolve.startsWith("platform:/base/")) {
            return installLocation;
        }
        if (toResolve.startsWith("platform:/config/")) {
            URL config_loc;
            try {
                config_loc = new URL(configLocation, "..");
            }
            catch (MalformedURLException malformedURLException) {
                return configLocation;
            }
            return config_loc;
        }
        return url;
    }

    public static URL getInstallURL() {
        return installURL;
    }

    private void saveAsXML(OutputStream stream) throws CoreException, IOException {
        BufferedWriter xmlWriter = new BufferedWriter(new OutputStreamWriter(stream, XML_ENCODING));
        try {
            try {
                DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                factory.setExpandEntityReferences(false);
                factory.setValidating(false);
                factory.setIgnoringComments(true);
                DocumentBuilder docBuilder = factory.newDocumentBuilder();
                Document doc = docBuilder.newDocument();
                if (this.config == null) {
                    throw Utils.newCoreException(Messages.PlatformConfiguration_cannotSaveNonExistingConfig, null);
                }
                this.config.setDate(new Date());
                Element configElement = this.config.toXML(doc);
                doc.appendChild(configElement);
                XMLPrintHandler.printNode(xmlWriter, doc, XML_ENCODING);
            }
            catch (Exception e) {
                throw Utils.newCoreException("", e);
            }
        }
        finally {
            xmlWriter.flush();
        }
    }

    private void reconcile() throws CoreException {
        long lastChange = this.config.getDate().getTime();
        SiteEntry[] sites = this.config.getSites();
        int s = 0;
        while (s < sites.length) {
            long siteTimestamp;
            if (sites[s].isUpdateable() && (siteTimestamp = sites[s].getChangeStamp()) > lastChange) {
                sites[s].loadFromDisk(lastChange);
            }
            ++s;
        }
        this.config.setDirty(true);
    }

    public Configuration getConfiguration() {
        return this.config;
    }
}

