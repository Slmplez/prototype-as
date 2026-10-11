/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.adaptor;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Properties;
import org.eclipse.core.runtime.internal.adaptor.BasicLocation;
import org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo;
import org.eclipse.core.runtime.internal.adaptor.LocationHelper;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.service.datalocation.Location;

public class LocationManager {
    private static Location installLocation = null;
    private static Location configurationLocation = null;
    private static Location userLocation = null;
    private static Location instanceLocation = null;
    private static Location eclipseHomeLocation = null;
    public static final String READ_ONLY_AREA_SUFFIX = ".readOnly";
    public static final String PROP_INSTALL_AREA = "osgi.install.area";
    public static final String PROP_CONFIG_AREA = "osgi.configuration.area";
    public static final String PROP_CONFIG_AREA_DEFAULT = "osgi.configuration.area.default";
    public static final String PROP_SHARED_CONFIG_AREA = "osgi.sharedConfiguration.area";
    public static final String PROP_INSTANCE_AREA = "osgi.instance.area";
    public static final String PROP_INSTANCE_AREA_DEFAULT = "osgi.instance.area.default";
    public static final String PROP_USER_AREA = "osgi.user.area";
    public static final String PROP_USER_AREA_DEFAULT = "osgi.user.area.default";
    public static final String PROP_MANIFEST_CACHE = "osgi.manifest.cache";
    public static final String PROP_USER_HOME = "user.home";
    public static final String PROP_USER_DIR = "user.dir";
    public static final String PROP_HOME_LOCATION_AREA = "eclipse.home.location";
    static final String PROP_LAUNCHER = "eclipse.launcher";
    public static final String BUNDLES_DIR = "bundles";
    public static final String STATE_FILE = ".state";
    public static final String LAZY_FILE = ".lazy";
    public static final String BUNDLE_DATA_FILE = ".bundledata";
    public static final String MANIFESTS_DIR = "manifests";
    public static final String CONFIG_FILE = "config.ini";
    public static final String ECLIPSE_PROPERTIES = "eclipse.properties";
    private static final String ECLIPSE = "eclipse";
    private static final String PRODUCT_SITE_MARKER = ".eclipseproduct";
    private static final String PRODUCT_SITE_ID = "id";
    private static final String PRODUCT_SITE_VERSION = "version";
    private static final String CONFIG_DIR = "configuration";
    private static final String NONE = "@none";
    private static final String NO_DEFAULT = "@noDefault";
    private static final String USER_HOME = "@user.home";
    private static final String USER_DIR = "@user.dir";
    private static final String INSTANCE_DATA_AREA_PREFIX = ".metadata/.plugins/";

    public static URL buildURL(String spec, boolean trailingSlash) {
        return LocationHelper.buildURL(spec, trailingSlash);
    }

    private static void mungeConfigurationLocation() {
        String location = FrameworkProperties.getProperty(PROP_CONFIG_AREA);
        if (location != null && location.endsWith(".cfg")) {
            int index = location.lastIndexOf(47);
            if (index < 0) {
                index = location.lastIndexOf(92);
            }
            location = location.substring(0, index + 1);
            FrameworkProperties.setProperty(PROP_CONFIG_AREA, location);
        }
    }

    public static void initializeLocations() {
        String eclipseLauncher;
        String eclipseHomeLocationPath;
        URL defaultLocation;
        String osgiStorage = FrameworkProperties.getProperty("org.osgi.framework.storage");
        if (osgiStorage != null) {
            FrameworkProperties.setProperty(PROP_CONFIG_AREA, osgiStorage);
        }
        installLocation = LocationManager.buildLocation(PROP_INSTALL_AREA, null, "", true, false, null);
        Location temp = LocationManager.buildLocation(PROP_USER_AREA_DEFAULT, null, "", false, false, null);
        URL uRL = defaultLocation = temp == null ? null : temp.getURL();
        if (defaultLocation == null) {
            defaultLocation = LocationManager.buildURL(new File(FrameworkProperties.getProperty(PROP_USER_HOME), "user").getAbsolutePath(), true);
        }
        userLocation = LocationManager.buildLocation(PROP_USER_AREA, defaultLocation, "", false, false, null);
        temp = LocationManager.buildLocation(PROP_INSTANCE_AREA_DEFAULT, null, "", false, false, INSTANCE_DATA_AREA_PREFIX);
        URL uRL2 = defaultLocation = temp == null ? null : temp.getURL();
        if (defaultLocation == null) {
            defaultLocation = LocationManager.buildURL(new File(FrameworkProperties.getProperty(PROP_USER_DIR), "workspace").getAbsolutePath(), true);
        }
        instanceLocation = LocationManager.buildLocation(PROP_INSTANCE_AREA, defaultLocation, "", false, false, INSTANCE_DATA_AREA_PREFIX);
        LocationManager.mungeConfigurationLocation();
        temp = LocationManager.buildLocation(PROP_CONFIG_AREA_DEFAULT, null, "", false, false, null);
        URL uRL3 = defaultLocation = temp == null ? null : temp.getURL();
        if (defaultLocation == null && FrameworkProperties.getProperty(PROP_CONFIG_AREA) == null) {
            defaultLocation = LocationManager.buildURL(LocationManager.computeDefaultConfigurationLocation(), true);
        }
        configurationLocation = LocationManager.buildLocation(PROP_CONFIG_AREA, defaultLocation, "", false, false, null);
        URL parentLocation = LocationManager.computeSharedConfigurationLocation();
        if (parentLocation != null && !parentLocation.equals(configurationLocation.getURL())) {
            BasicLocation parent = new BasicLocation(null, parentLocation, true, null);
            ((BasicLocation)configurationLocation).setParent(parent);
        }
        LocationManager.initializeDerivedConfigurationLocations();
        if (FrameworkProperties.getProperty(PROP_HOME_LOCATION_AREA) == null && (eclipseHomeLocationPath = LocationManager.getEclipseHomeLocation(eclipseLauncher = FrameworkProperties.getProperty(PROP_LAUNCHER))) != null) {
            FrameworkProperties.setProperty(PROP_HOME_LOCATION_AREA, eclipseHomeLocationPath);
        }
        if (FrameworkProperties.getProperty(PROP_HOME_LOCATION_AREA) == null && FrameworkProperties.getProperty(PROP_INSTALL_AREA) != null) {
            FrameworkProperties.setProperty(PROP_HOME_LOCATION_AREA, FrameworkProperties.getProperty(PROP_INSTALL_AREA));
        }
        eclipseHomeLocation = LocationManager.buildLocation(PROP_HOME_LOCATION_AREA, null, "", true, true, null);
    }

    private static String getEclipseHomeLocation(String launcher) {
        if (launcher == null) {
            return null;
        }
        File launcherFile = new File(launcher);
        if (launcherFile.getParent() == null) {
            return null;
        }
        File launcherDir = new File(launcherFile.getParent());
        String macosx = "macosx";
        if (macosx.equals(EclipseEnvironmentInfo.getDefault().getOS())) {
            launcherDir = LocationManager.getMacOSEclipsoeHomeLocation(launcherDir);
        }
        return launcherDir.exists() && launcherDir.isDirectory() ? launcherDir.getAbsolutePath() : null;
    }

    private static File getMacOSEclipsoeHomeLocation(File launcherDir) {
        if (!launcherDir.getName().equalsIgnoreCase("macos")) {
            return launcherDir;
        }
        String launcherParent = launcherDir.getParent();
        if (launcherParent != null) {
            launcherParent = new File(launcherParent).getParent();
        }
        if (launcherParent != null) {
            launcherParent = new File(launcherParent).getParent();
        }
        return launcherParent == null ? null : new File(launcherParent);
    }

    private static Location buildLocation(String property, URL defaultLocation, String userDefaultAppendage, boolean readOnlyDefault, boolean computeReadOnly, String dataAreaPrefix) {
        String base;
        boolean readOnly;
        String location = FrameworkProperties.clearProperty(property);
        String userReadOnlySetting = FrameworkProperties.getProperty(String.valueOf(property) + READ_ONLY_AREA_SUFFIX);
        boolean bl = readOnly = userReadOnlySetting == null ? readOnlyDefault : Boolean.valueOf(userReadOnlySetting);
        if (location == null) {
            return new BasicLocation(property, defaultLocation, userReadOnlySetting != null || !computeReadOnly ? readOnly : !LocationManager.canWrite(defaultLocation), dataAreaPrefix);
        }
        String trimmedLocation = location.trim();
        if (trimmedLocation.equalsIgnoreCase(NONE)) {
            return null;
        }
        if (trimmedLocation.equalsIgnoreCase(NO_DEFAULT)) {
            return new BasicLocation(property, null, readOnly, dataAreaPrefix);
        }
        if (trimmedLocation.startsWith(USER_HOME)) {
            base = LocationManager.substituteVar(location, USER_HOME, PROP_USER_HOME);
            location = new File(base, userDefaultAppendage).getAbsolutePath();
        } else if (trimmedLocation.startsWith(USER_DIR)) {
            base = LocationManager.substituteVar(location, USER_DIR, PROP_USER_DIR);
            location = new File(base, userDefaultAppendage).getAbsolutePath();
        }
        URL url = LocationManager.buildURL(location, true);
        BasicLocation result = null;
        if (url != null) {
            result = new BasicLocation(property, null, userReadOnlySetting != null || !computeReadOnly ? readOnly : !LocationManager.canWrite(url), dataAreaPrefix);
            result.setURL(url, false);
        }
        return result;
    }

    private static String substituteVar(String source, String var, String prop) {
        String value = FrameworkProperties.getProperty(prop, "");
        return String.valueOf(value) + source.substring(var.length());
    }

    private static void initializeDerivedConfigurationLocations() {
        if (FrameworkProperties.getProperty(PROP_MANIFEST_CACHE) == null) {
            FrameworkProperties.setProperty(PROP_MANIFEST_CACHE, LocationManager.getConfigurationFile(MANIFESTS_DIR).getAbsolutePath());
        }
    }

    private static URL computeInstallConfigurationLocation() {
        String property = FrameworkProperties.getProperty(PROP_INSTALL_AREA);
        if (property != null) {
            return LocationHelper.buildURL(property, true);
        }
        return null;
    }

    private static URL computeSharedConfigurationLocation() {
        URL sharedConfigurationURL;
        block6: {
            String property = FrameworkProperties.getProperty(PROP_SHARED_CONFIG_AREA);
            if (property == null) {
                return null;
            }
            try {
                sharedConfigurationURL = LocationHelper.buildURL(property, true);
                if (sharedConfigurationURL != null) break block6;
                return null;
            }
            catch (MalformedURLException malformedURLException) {}
        }
        if (sharedConfigurationURL.getPath().startsWith("/")) {
            return sharedConfigurationURL;
        }
        URL installURL = installLocation.getURL();
        if (!sharedConfigurationURL.getProtocol().equals(installURL.getProtocol())) {
            return sharedConfigurationURL;
        }
        sharedConfigurationURL = new URL(installURL, sharedConfigurationURL.getPath());
        FrameworkProperties.setProperty(PROP_SHARED_CONFIG_AREA, sharedConfigurationURL.toExternalForm());
        return null;
    }

    private static String computeDefaultConfigurationLocation() {
        URL installURL = LocationManager.computeInstallConfigurationLocation();
        if (installURL != null && "file".equals(installURL.getProtocol())) {
            File installDir = new File(installURL.getFile());
            File defaultConfigDir = new File(installDir, CONFIG_DIR);
            if (!defaultConfigDir.exists()) {
                defaultConfigDir.mkdirs();
            }
            if (defaultConfigDir.exists() && AdaptorUtil.canWrite(defaultConfigDir)) {
                return defaultConfigDir.getAbsolutePath();
            }
        }
        return LocationManager.computeDefaultUserAreaLocation(CONFIG_DIR);
    }

    private static boolean canWrite(URL location) {
        if (location != null && "file".equals(location.getProtocol())) {
            File locationDir = new File(location.getFile());
            if (!locationDir.exists()) {
                locationDir.mkdirs();
            }
            if (locationDir.exists() && AdaptorUtil.canWrite(locationDir)) {
                return true;
            }
        }
        return false;
    }

    private static String computeDefaultUserAreaLocation(String pathAppendage) {
        int hashCode;
        String installProperty = FrameworkProperties.getProperty(PROP_INSTALL_AREA);
        URL installURL = LocationManager.buildURL(installProperty, true);
        if (installURL == null) {
            return null;
        }
        File installDir = new File(installURL.getFile());
        try {
            hashCode = installDir.getCanonicalPath().hashCode();
        }
        catch (IOException iOException) {
            hashCode = installDir.getAbsolutePath().hashCode();
        }
        if (hashCode < 0) {
            hashCode = -hashCode;
        }
        String installDirHash = String.valueOf(hashCode);
        String appName = ".eclipse";
        File eclipseProduct = new File(installDir, PRODUCT_SITE_MARKER);
        if (eclipseProduct.exists()) {
            Properties props = new Properties();
            try {
                String appVersion;
                props.load(new FileInputStream(eclipseProduct));
                String appId = props.getProperty(PRODUCT_SITE_ID);
                if (appId == null || appId.trim().length() == 0) {
                    appId = ECLIPSE;
                }
                if ((appVersion = props.getProperty(PRODUCT_SITE_VERSION)) == null || appVersion.trim().length() == 0) {
                    appVersion = "";
                }
                appName = String.valueOf(appName) + File.separator + appId + "_" + appVersion + "_" + installDirHash;
            }
            catch (IOException iOException) {
                appName = String.valueOf(appName) + File.separator + installDirHash;
            }
        } else {
            appName = String.valueOf(appName) + File.separator + installDirHash;
        }
        String userHome = FrameworkProperties.getProperty(PROP_USER_HOME);
        return new File(userHome, String.valueOf(appName) + "/" + pathAppendage).getAbsolutePath();
    }

    public static Location getUserLocation() {
        return userLocation;
    }

    public static Location getConfigurationLocation() {
        return configurationLocation;
    }

    public static Location getInstallLocation() {
        return installLocation;
    }

    public static Location getInstanceLocation() {
        return instanceLocation;
    }

    public static Location getEclipseHomeLocation() {
        return eclipseHomeLocation;
    }

    public static File getOSGiConfigurationDir() {
        return new File(configurationLocation.getURL().getFile(), "org.eclipse.osgi");
    }

    public static File getConfigurationFile(String filename) {
        File dir = LocationManager.getOSGiConfigurationDir();
        if (!dir.exists()) {
            dir.mkdirs();
        }
        return new File(dir, filename);
    }
}

