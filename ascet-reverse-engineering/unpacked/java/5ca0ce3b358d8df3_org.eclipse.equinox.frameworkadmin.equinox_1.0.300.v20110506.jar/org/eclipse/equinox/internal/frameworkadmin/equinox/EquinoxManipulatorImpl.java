/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.frameworkadmin.utils.SimpleBundlesState
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.service.startlevel.StartLevel
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EclipseLauncherParser;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxBundlesState;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwAdminImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwConfigFileParser;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxLauncherData;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.utils.SimpleBundlesState;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator;
import org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.service.startlevel.StartLevel;
import org.osgi.util.tracker.ServiceTracker;

public class EquinoxManipulatorImpl
implements Manipulator {
    private static final long DEFAULT_LASTMODIFIED = 0L;
    private static final boolean LOG_ILLEGALSTATEEXCEPTION = false;
    private static final String COMMA = ",";
    private static final String FILE_PROTOCOL = "file:";
    private static final String IGNORED = "ignored";
    ConfigData configData = new ConfigData("Equinox", "3.3", "Eclipse.exe", "3.2");
    EquinoxLauncherData launcherData = new EquinoxLauncherData("Equinox", "3.3", "Eclipse.exe", "3.2");
    BundleContext context = null;
    private Properties platformProperties = new Properties();
    ServiceTracker cmTracker;
    int trackingCount = -1;
    private final PlatformAdmin platformAdmin;
    private final StartLevel startLevelService;
    ConfiguratorManipulator configuratorManipulator;
    EquinoxFwAdminImpl fwAdmin = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static void checkConsistencyOfFwConfigLocAndFwPersistentDataLoc(LauncherData launcherData) {
        File fwConfigLocation = launcherData.getFwConfigLocation();
        File fwPersistentDataLocation = launcherData.getFwPersistentDataLocation();
        if (fwConfigLocation != null) {
            if (fwConfigLocation.isFile()) {
                if (!fwConfigLocation.getName().equals("config.ini")) {
                    throw new IllegalStateException(NLS.bind((String)Messages.exception_unexpectedfwConfigLocation, (Object)fwConfigLocation.getAbsolutePath(), (Object)"config.ini"));
                }
                fwConfigLocation = fwConfigLocation.getParentFile();
                launcherData.setFwConfigLocation(fwConfigLocation);
            }
            if (fwPersistentDataLocation != null) {
                if (!fwConfigLocation.equals(fwPersistentDataLocation)) {
                    throw new IllegalStateException(NLS.bind((String)Messages.exception_persistantLocationNotEqualConfigLocation, (Object)fwPersistentDataLocation.getAbsolutePath(), (Object)fwConfigLocation.getAbsolutePath()));
                }
            } else {
                launcherData.setFwPersistentDataLocation(fwConfigLocation, launcherData.isClean());
            }
        } else if (fwPersistentDataLocation != null) {
            launcherData.setFwConfigLocation(fwPersistentDataLocation);
        } else {
            File home = launcherData.getHome();
            if (home == null) {
                throw new IllegalStateException(Messages.exception_noLocations);
            }
            fwConfigLocation = new File(home, "configuration");
            launcherData.setFwPersistentDataLocation(fwConfigLocation, launcherData.isClean());
            launcherData.setFwConfigLocation(fwConfigLocation);
        }
    }

    static File getLauncherConfigLocation(LauncherData launcherData) {
        File launcherIni = launcherData.getLauncherConfigLocation();
        if (launcherIni != null) {
            return launcherIni;
        }
        File launcher = launcherData.getLauncher();
        if (launcher == null) {
            return null;
        }
        String launcherName = launcher.getName();
        int dotLocation = launcherName.lastIndexOf(46);
        if (dotLocation != -1) {
            launcherName = launcherName.substring(0, dotLocation);
        }
        File result = new File(launcher.getParentFile(), String.valueOf(launcherName) + ".ini");
        return result;
    }

    EquinoxManipulatorImpl(BundleContext context, EquinoxFwAdminImpl fwAdmin, PlatformAdmin admin, StartLevel slService, boolean runtime) {
        this.context = context;
        this.fwAdmin = fwAdmin;
        this.platformAdmin = admin;
        this.startLevelService = slService;
        if (context != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.cmTracker = new ServiceTracker(context, clazz.getName(), null);
            this.cmTracker.open();
        }
        if (runtime) {
            this.initializeRuntime();
        }
        this.configData.setInitialBundleStartLevel(4);
    }

    public BundlesState getBundlesState() throws FrameworkAdminRuntimeException {
        if (this.context == null) {
            return new SimpleBundlesState((FrameworkAdmin)this.fwAdmin, (Manipulator)this, "org.eclipse.osgi");
        }
        if (!EquinoxBundlesState.checkFullySupported()) {
            return new SimpleBundlesState((FrameworkAdmin)this.fwAdmin, (Manipulator)this, "org.eclipse.osgi");
        }
        if (this.platformProperties.isEmpty()) {
            return new EquinoxBundlesState(this.context, this.fwAdmin, (Manipulator)this, this.platformAdmin, false);
        }
        return new EquinoxBundlesState(this.context, this.fwAdmin, (Manipulator)this, this.platformAdmin, this.platformProperties);
    }

    public ConfigData getConfigData() throws FrameworkAdminRuntimeException {
        return this.configData;
    }

    public BundleInfo[] getExpectedState() throws IllegalArgumentException, FrameworkAdminRuntimeException {
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        BundlesState bundleState = this.getBundlesState();
        if (bundleState instanceof SimpleBundlesState) {
            return new BundleInfo[0];
        }
        bundleState.resolve(true);
        return bundleState.getExpectedState();
    }

    public LauncherData getLauncherData() throws FrameworkAdminRuntimeException {
        return this.launcherData;
    }

    private File getRunningConfigurationLocation() {
        ServiceTracker tracker = null;
        Filter filter = null;
        try {
            filter = this.context.createFilter(Location.CONFIGURATION_FILTER);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        tracker = new ServiceTracker(this.context, filter, null);
        tracker.open();
        Location location = (Location)tracker.getService();
        URL url = location.getURL();
        if (!url.getProtocol().equals("file")) {
            return null;
        }
        return new File(url.getFile());
    }

    private File getRunningLauncherFile() {
        File launcherFile = null;
        String eclipseCommandsSt = this.context.getProperty("eclipse.commands");
        if (eclipseCommandsSt == null) {
            return null;
        }
        StringTokenizer tokenizer = new StringTokenizer(eclipseCommandsSt, "\n");
        boolean found = false;
        String launcherSt = null;
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            if (found) {
                launcherSt = token;
                break;
            }
            if (!token.equals("-launcher")) continue;
            found = true;
        }
        if (launcherSt != null) {
            launcherFile = new File(launcherSt);
        }
        return launcherFile;
    }

    private Properties getRunningPlatformProperties() {
        Properties props = new Properties();
        int i = 0;
        while (i < EquinoxBundlesState.PROPS.length) {
            String value = this.context.getProperty(EquinoxBundlesState.PROPS[i]);
            if (value != null) {
                props.setProperty(EquinoxBundlesState.PROPS[i], value);
            }
            ++i;
        }
        return props;
    }

    public long getTimeStamp() {
        long ret = this.getTimeStampWithoutFwPersistentData();
        if (this.launcherData.isClean()) {
            return ret;
        }
        long lastModifiedFwPersistent = EquinoxBundlesState.getTimeStamp(this.launcherData.getFwPersistentDataLocation());
        return Math.max(ret, lastModifiedFwPersistent);
    }

    private long getTimeStampWithoutFwPersistentData() {
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        File launcherConfigFile = EquinoxManipulatorImpl.getLauncherConfigLocation(this.launcherData);
        long lastModifiedLauncherConfigFile = 0L;
        long lastModifiedFwConfigFile = 0L;
        if (launcherConfigFile != null) {
            lastModifiedLauncherConfigFile = launcherConfigFile.lastModified();
        }
        EquinoxManipulatorImpl.checkConsistencyOfFwConfigLocAndFwPersistentDataLoc(this.launcherData);
        if (this.launcherData.getFwConfigLocation() != null) {
            File fwConfigFile = new File(this.launcherData.getFwConfigLocation(), "config.ini");
            lastModifiedFwConfigFile = fwConfigFile.lastModified();
        }
        long ret = Math.max(lastModifiedLauncherConfigFile, lastModifiedFwConfigFile);
        return ret;
    }

    public void initialize() {
        Log.log(4, (Object)this, "initialize()", "BEGIN");
        this.configData.initialize();
        this.launcherData.initialize();
    }

    private void initializeRuntime() {
        Class<?> clazz;
        String fwJarLocation = this.context.getProperty("osgi.framework");
        if (!fwJarLocation.startsWith(FILE_PROTOCOL)) {
            throw new IllegalStateException(NLS.bind((String)Messages.exception_fileURLExpected, (Object)"osgi.framework", (Object)fwJarLocation));
        }
        File fwJar = new File(fwJarLocation.substring(FILE_PROTOCOL.length()));
        File fwConfigLocation = this.getRunningConfigurationLocation();
        File launcherFile = this.getRunningLauncherFile();
        this.launcherData.setFwJar(fwJar);
        this.launcherData.setFwPersistentDataLocation(fwConfigLocation, false);
        this.launcherData.setLauncher(launcherFile);
        this.launcherData.setOS(this.context.getProperty("osgi.os"));
        try {
            this.loadWithoutFwPersistentData();
        }
        catch (IOException e1) {
            e1.printStackTrace();
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.osgi.service.startlevel.StartLevel");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference reference = this.context.getServiceReference(clazz.getName());
        StartLevel startLevel = (StartLevel)this.context.getService(reference);
        Bundle[] bundles = this.context.getBundles();
        BundleInfo[] bInfos = new BundleInfo[bundles.length];
        int i = 0;
        while (i < bundles.length) {
            try {
                bInfos[i] = bundles[i].getBundleId() == 0L ? new BundleInfo(bundles[i].getSymbolicName(), (String)bundles[i].getHeaders().get("Bundle-Version"), FileLocator.getBundleFile((Bundle)bundles[i]).getAbsoluteFile().toURI(), -1, true) : new BundleInfo(bundles[i].getSymbolicName(), (String)bundles[i].getHeaders().get("Bundle-Version"), FileLocator.getBundleFile((Bundle)bundles[i]).getAbsoluteFile().toURI(), startLevel.getBundleStartLevel(bundles[i]), startLevel.isBundlePersistentlyStarted(bundles[i]));
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            ++i;
        }
        this.configData.setBundles(bInfos);
        this.platformProperties = this.getRunningPlatformProperties();
        Properties props = System.getProperties();
        Enumeration enumeration = props.keys();
        while (enumeration.hasMoreElements()) {
            String key = (String)enumeration.nextElement();
            String value = props.getProperty(key);
            if (this.toBeEliminated(key)) continue;
            this.configData.setProperty(key, value);
        }
        int initialBSL = this.configData.getInitialBundleStartLevel();
        if (initialBSL != this.startLevelService.getInitialBundleStartLevel()) {
            this.configData.setInitialBundleStartLevel(this.startLevelService.getInitialBundleStartLevel());
        }
    }

    public void load() throws IllegalStateException, IOException, FrameworkAdminRuntimeException {
        Log.log(4, (Object)this, "load()", "BEGIN");
        this.loadWithoutFwPersistentData();
        Object bundlesState = null;
        if (EquinoxBundlesState.checkFullySupported()) {
            bundlesState = new EquinoxBundlesState(this.context, this.fwAdmin, (Manipulator)this, this.platformAdmin, !this.launcherData.isClean());
            this.platformProperties = ((EquinoxBundlesState)bundlesState).getPlatformProperties();
        } else {
            bundlesState = new SimpleBundlesState((FrameworkAdmin)this.fwAdmin, (Manipulator)this, "org.eclipse.osgi");
            this.platformProperties.clear();
        }
        this.updateAccordingToExpectedState((BundlesState)bundlesState);
        this.setConfiguratorManipulator();
        if (this.configuratorManipulator == null) {
            return;
        }
        this.configuratorManipulator.updateBundles((Manipulator)this);
    }

    private void loadWithoutFwPersistentData() throws IOException {
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        File launcherConfigFile = EquinoxManipulatorImpl.getLauncherConfigLocation(this.launcherData);
        if (launcherConfigFile != null && !launcherConfigFile.getName().endsWith(IGNORED)) {
            EclipseLauncherParser parser = new EclipseLauncherParser();
            parser.read(launcherConfigFile, this.launcherData);
        }
        EquinoxManipulatorImpl.checkConsistencyOfFwConfigLocAndFwPersistentDataLoc(this.launcherData);
        File fwConfigFile = new File(this.launcherData.getFwConfigLocation(), "config.ini");
        EquinoxFwConfigFileParser parser = new EquinoxFwConfigFileParser(this.context);
        if (fwConfigFile.exists()) {
            try {
                parser.readFwConfig(this, fwConfigFile);
            }
            catch (URISyntaxException e) {
                throw new FrameworkAdminRuntimeException((Throwable)e, NLS.bind((String)Messages.exception_errorReadingFile, (Object)fwConfigFile.getAbsolutePath()));
            }
        }
    }

    public void save(boolean backup) throws IOException, FrameworkAdminRuntimeException {
        Log.log(4, (Object)this, "save()", "BEGIN");
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        try {
            this.updateAccordingToExpectedState(this.getBundlesState());
        }
        catch (IllegalStateException illegalStateException) {}
        boolean stateIsEmpty = this.configData.getBundles().length == 0;
        File launcherConfigFile = EquinoxManipulatorImpl.getLauncherConfigLocation(this.launcherData);
        if (launcherConfigFile != null) {
            if (!stateIsEmpty) {
                EclipseLauncherParser launcherParser = new EclipseLauncherParser();
                launcherParser.save(this.launcherData, backup);
            } else {
                launcherConfigFile.delete();
            }
        }
        EquinoxManipulatorImpl.checkConsistencyOfFwConfigLocAndFwPersistentDataLoc(this.launcherData);
        ConfiguratorManipulator previousConfigurator = this.setConfiguratorManipulator();
        if (previousConfigurator != null) {
            previousConfigurator.cleanup((Manipulator)this);
        }
        BundleInfo[] newBInfos = null;
        if (this.configuratorManipulator != null) {
            try {
                newBInfos = this.configuratorManipulator.save((Manipulator)this, backup);
            }
            catch (IllegalStateException e) {
                newBInfos = this.configData.getBundles();
            }
        } else {
            newBInfos = this.configData.getBundles();
        }
        if (!stateIsEmpty) {
            EquinoxFwConfigFileParser parser = new EquinoxFwConfigFileParser(this.context);
            parser.saveFwConfig(newBInfos.length != 0 ? newBInfos : this.getConfigData().getBundles(), this, backup, false);
        } else {
            File configDir = this.launcherData.getFwConfigLocation();
            File outputFile = new File(configDir, "config.ini");
            if (outputFile != null && outputFile.exists()) {
                outputFile.delete();
            }
            if (configDir != null && configDir.exists()) {
                configDir.delete();
            }
        }
    }

    public void setConfigData(ConfigData configData) {
        this.configData.initialize();
        this.configData.setInitialBundleStartLevel(configData.getInitialBundleStartLevel());
        this.configData.setBeginningFwStartLevel(configData.getBeginingFwStartLevel());
        BundleInfo[] bInfos = configData.getBundles();
        int i = 0;
        while (i < bInfos.length) {
            this.configData.addBundle(bInfos[i]);
            ++i;
        }
        this.configData.setProperties(configData.getProperties());
        if (this.configData.getFwName().equals(configData.getFwName()) && this.configData.getFwVersion().equals(configData.getFwVersion())) {
            this.configData.setProperties(configData.getProperties());
        }
    }

    private ConfiguratorManipulator setConfiguratorManipulator() {
        if (this.context == null) {
            this.configuratorManipulator = this.fwAdmin.getConfiguratorManipulator();
            return null;
        }
        ServiceReference[] references = this.cmTracker.getServiceReferences();
        if (references == null) {
            return null;
        }
        BundleInfo[] bInfos = this.configData.getBundles();
        int initialBSL = this.configData.getInitialBundleStartLevel();
        bInfos = Utils.sortBundleInfos((BundleInfo[])bInfos, (int)initialBSL);
        ConfiguratorManipulator previousConfiguratorManipulator = this.configuratorManipulator;
        this.configuratorManipulator = null;
        int i = 0;
        while (i < bInfos.length) {
            URI location = bInfos[i].getLocation();
            if (bInfos[i].isMarkedAsStarted()) {
                int j = 0;
                while (j < references.length) {
                    if (references[j].getProperty("org.eclipse.equinox.configurator.BundleSymbolicName").equals(Utils.getPathFromClause((String)Utils.getManifestMainAttributes((URI)location, (String)"Bundle-SymbolicName")))) {
                        this.configuratorManipulator = (ConfiguratorManipulator)this.cmTracker.getService(references[j]);
                        break;
                    }
                    ++j;
                }
                if (this.configuratorManipulator != null) break;
            }
            ++i;
        }
        if (this.configuratorManipulator != previousConfiguratorManipulator) {
            return previousConfiguratorManipulator;
        }
        return null;
    }

    public void setLauncherData(LauncherData value) {
        this.launcherData.initialize();
        this.launcherData.setFwConfigLocation(value.getFwConfigLocation());
        this.launcherData.setFwPersistentDataLocation(value.getFwPersistentDataLocation(), value.isClean());
        this.launcherData.setJvm(value.getJvm());
        this.launcherData.setJvmArgs(value.getJvmArgs());
        this.launcherData.setOS(value.getOS());
        if (this.launcherData.getFwName().equals(value.getFwName()) && this.launcherData.getFwVersion().equals(value.getFwVersion())) {
            this.launcherData.setFwJar(value.getFwJar());
            this.launcherData.setHome(value.getHome());
            this.launcherData.setLauncher(value.getLauncher());
            this.launcherData.setLauncherConfigLocation(value.getLauncherConfigLocation());
        }
    }

    private boolean toBeEliminated(String key) {
        return key.startsWith("java.");
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("++++++++++++++++++++++++++++++++++++++++++\nClass:" + this.getClass().getName() + "\n");
        sb.append("------------- LauncherData -----------\n");
        sb.append(this.launcherData.toString());
        sb.append("------------- ConfigData -----------\n");
        sb.append(this.configData.toString());
        sb.append("\n" + Utils.toStringProperties((String)"platformProperties", (Properties)this.platformProperties));
        sb.append("++++++++++++++++++++++++++++++++++++++++++\n");
        return sb.toString();
    }

    private void updateAccordingToExpectedState(BundlesState bundlesState) {
        BundleInfo[] newBundleInfos = bundlesState.getExpectedState();
        this.configData.setBundles(newBundleInfos);
    }

    public static String makeRelative(String original, String rootPath) {
        Path path = new Path(original);
        if (!path.isAbsolute()) {
            return original;
        }
        IPath result = path.makeRelativeTo((IPath)new Path(rootPath));
        return path.equals((Object)result) ? original : result.toString();
    }

    public static String makeRelative(String urlString, URL rootURL) {
        String deviceTwo;
        int index = urlString.indexOf(FILE_PROTOCOL);
        if (index == -1) {
            return urlString;
        }
        index += 5;
        boolean done = false;
        URL url = null;
        String file = urlString;
        while (!done) {
            try {
                url = new URL(file);
                file = url.getFile();
            }
            catch (MalformedURLException malformedURLException) {
                done = true;
            }
        }
        if (url == null || !new File(url.getFile()).isAbsolute()) {
            return urlString;
        }
        String rootString = rootURL.toExternalForm();
        Path one = new Path(urlString.substring(index));
        Path two = new Path(rootString.substring(rootString.indexOf(FILE_PROTOCOL) + 5));
        String deviceOne = one.getDevice();
        if (!(deviceOne == (deviceTwo = two.getDevice()) || deviceOne != null && deviceOne.equalsIgnoreCase(two.getDevice()))) {
            return urlString;
        }
        return String.valueOf(urlString.substring(0, index)) + one.makeRelativeTo((IPath)two);
    }

    public static String makeArrayRelative(String array, URL rootURL) {
        StringBuffer buffer = new StringBuffer();
        StringTokenizer tokenizer = new StringTokenizer(array, COMMA);
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            String absolute = EquinoxManipulatorImpl.makeRelative(token, rootURL);
            buffer.append(absolute);
            if (!tokenizer.hasMoreTokens()) continue;
            buffer.append(',');
        }
        return buffer.toString();
    }

    public static String makeArrayAbsolute(String array, URL rootURL) {
        StringBuffer buffer = new StringBuffer();
        StringTokenizer tokenizer = new StringTokenizer(array, COMMA);
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            String absolute = EquinoxManipulatorImpl.makeAbsolute(token, rootURL);
            buffer.append(absolute);
            if (!tokenizer.hasMoreTokens()) continue;
            buffer.append(',');
        }
        return buffer.toString();
    }

    public static String makeAbsolute(String original, String rootPath) {
        Path path = new Path(original);
        if (path.isAbsolute()) {
            return original;
        }
        Path root = new Path(rootPath);
        return root.addTrailingSeparator().append(original.replace(':', '}')).toOSString().replace('}', ':');
    }

    public static String makeAbsolute(String urlString, URL rootURL) {
        int index = urlString.indexOf(FILE_PROTOCOL);
        if (index == -1) {
            return urlString;
        }
        index += 5;
        boolean done = false;
        URL url = null;
        String file = urlString;
        while (!done) {
            try {
                url = new URL(file);
                file = url.getFile();
            }
            catch (MalformedURLException malformedURLException) {
                done = true;
            }
        }
        if (url == null || new File(url.getFile()).isAbsolute()) {
            return urlString;
        }
        return String.valueOf(urlString.substring(0, index - 5)) + EquinoxManipulatorImpl.makeAbsolute(urlString.substring(index), rootURL.toExternalForm());
    }
}

