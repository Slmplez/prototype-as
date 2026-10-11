/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxBundlesState;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.equinox.ParserUtils;
import org.eclipse.equinox.internal.frameworkadmin.equinox.utils.FileUtils;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;

public class EquinoxFwConfigFileParser {
    private static final Set KNOWN_PROPERTIES = new HashSet<String>(Arrays.asList("osgi.bundles", "osgi.framework.extensions", "osgi.startLevel", "osgi.bundles.defaultStartLevel"));
    private static final String CONFIG_DIR = "@config.dir/";
    private static final String KEY_ECLIPSE_PROV_DATA_AREA = "eclipse.p2.data.area";
    private static final String KEY_ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL = "org.eclipse.equinox.simpleconfigurator.configUrl";
    private static final String REFERENCE_SCHEME = "reference:";
    private static final String FILE_PROTOCOL = "file:";
    private static boolean DEBUG = false;

    public EquinoxFwConfigFileParser(BundleContext context) {
    }

    private static StringBuffer toOSGiBundleListForm(BundleInfo bundleInfo, URI location) {
        StringBuffer locationString = new StringBuffer(REFERENCE_SCHEME);
        if (URIUtil.isFileURI((URI)location)) {
            locationString.append(URIUtil.toUnencodedString((URI)location));
        } else if (location.getScheme() == null) {
            locationString.append(FILE_PROTOCOL).append(URIUtil.toUnencodedString((URI)location));
        } else {
            locationString = new StringBuffer(URIUtil.toUnencodedString((URI)location));
        }
        int startLevel = bundleInfo.getStartLevel();
        boolean toBeStarted = bundleInfo.isMarkedAsStarted();
        StringBuffer sb = new StringBuffer();
        sb.append(locationString);
        if (startLevel == -1 && !toBeStarted) {
            return sb;
        }
        sb.append('@');
        if (startLevel != -1) {
            sb.append(startLevel);
        }
        if (toBeStarted) {
            sb.append(":start");
        }
        return sb;
    }

    private static boolean getMarkedAsStartedFormat(String startInfo) {
        if (startInfo == null) {
            return false;
        }
        int colon = (startInfo = startInfo.trim()).indexOf(58);
        if (colon > -1) {
            return startInfo.substring(colon + 1).equals("start");
        }
        return startInfo.equals("start");
    }

    private static int getStartLevel(String startInfo) {
        if (startInfo == null) {
            return -1;
        }
        int colon = (startInfo = startInfo.trim()).indexOf(":");
        if (colon > 0) {
            try {
                return Integer.parseInt(startInfo.substring(0, colon));
            }
            catch (NumberFormatException numberFormatException) {
                return -1;
            }
        }
        return -1;
    }

    private void readBundlesList(Manipulator manipulator, URI osgiInstallArea, Properties props) throws NumberFormatException {
        BundleInfo[] bundles;
        ConfigData configData = manipulator.getConfigData();
        BundleInfo[] fwExtensions = this.parseBundleList(manipulator, props.getProperty("osgi.framework.extensions"));
        if (fwExtensions != null) {
            int i = 0;
            while (i < fwExtensions.length) {
                fwExtensions[i].setFragmentHost("system.bundle");
                configData.addBundle(fwExtensions[i]);
                ++i;
            }
        }
        if ((bundles = this.parseBundleList(manipulator, props.getProperty("osgi.bundles"))) != null) {
            int i = 0;
            while (i < bundles.length) {
                configData.addBundle(bundles[i]);
                ++i;
            }
        }
    }

    private BundleInfo[] parseBundleList(Manipulator manipulator, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        ArrayList<BundleInfo> bundles = new ArrayList<BundleInfo>();
        String[] bInfoStrings = Utils.getTokens((String)value, (String)",");
        int i = 0;
        while (i < bInfoStrings.length) {
            block10: {
                String entry = bInfoStrings[i].trim();
                int indexStartInfo = (entry = FileUtils.removeEquinoxSpecificProtocols(entry)).indexOf(64);
                String location = indexStartInfo == -1 ? entry : entry.substring(0, indexStartInfo);
                URI realLocation = null;
                if (manipulator.getLauncherData().getFwJar() != null) {
                    File parentFile = manipulator.getLauncherData().getFwJar().getParentFile();
                    try {
                        realLocation = URIUtil.makeAbsolute((URI)FileUtils.fromFileURL(location), (URI)parentFile.toURI());
                    }
                    catch (URISyntaxException uRISyntaxException) {
                        realLocation = FileUtils.getEclipsePluginFullLocation(location, parentFile);
                    }
                }
                String slAndFlag = indexStartInfo > -1 ? entry.substring(indexStartInfo + 1) : null;
                boolean markedAsStarted = EquinoxFwConfigFileParser.getMarkedAsStartedFormat(slAndFlag);
                int startLevel = EquinoxFwConfigFileParser.getStartLevel(slAndFlag);
                if (realLocation != null) {
                    bundles.add(new BundleInfo(realLocation, startLevel, markedAsStarted));
                } else {
                    if (location != null && location.startsWith(FILE_PROTOCOL)) {
                        try {
                            bundles.add(new BundleInfo(FileUtils.fromFileURL(location), startLevel, markedAsStarted));
                            break block10;
                        }
                        catch (URISyntaxException uRISyntaxException) {}
                    }
                    bundles.add(new BundleInfo(location, null, null, startLevel, markedAsStarted));
                }
            }
            ++i;
        }
        return bundles.toArray(new BundleInfo[bundles.size()]);
    }

    private void writeBundlesList(File fwJar, Properties props, BundleInfo[] bundles) {
        StringBuffer osgiBundlesList = new StringBuffer();
        StringBuffer osgiFrameworkExtensionsList = new StringBuffer();
        int j = 0;
        while (j < bundles.length) {
            BundleInfo bundle = bundles[j];
            if (!(fwJar == null ? "org.eclipse.osgi".equals(bundle.getSymbolicName()) : URIUtil.sameURI((URI)fwJar.toURI(), (URI)bundle.getLocation()))) {
                boolean isFrameworkExtension;
                URI location = fwJar != null ? URIUtil.makeRelative((URI)bundle.getLocation(), (URI)fwJar.getParentFile().toURI()) : bundle.getLocation();
                String fragmentHost = bundle.getFragmentHost();
                boolean bl = isFrameworkExtension = fragmentHost != null && (fragmentHost.startsWith("org.eclipse.osgi") || fragmentHost.startsWith("system.bundle"));
                if (isFrameworkExtension) {
                    bundle.setStartLevel(-1);
                    bundle.setMarkedAsStarted(false);
                    osgiFrameworkExtensionsList.append(EquinoxFwConfigFileParser.toOSGiBundleListForm(bundle, location));
                    osgiFrameworkExtensionsList.append(',');
                } else {
                    osgiBundlesList.append(EquinoxFwConfigFileParser.toOSGiBundleListForm(bundle, location));
                    osgiBundlesList.append(',');
                }
            }
            ++j;
        }
        if (osgiFrameworkExtensionsList.length() > 0) {
            osgiFrameworkExtensionsList.deleteCharAt(osgiFrameworkExtensionsList.length() - 1);
        }
        props.setProperty("osgi.framework.extensions", osgiFrameworkExtensionsList.toString());
        if (osgiBundlesList.length() > 0) {
            osgiBundlesList.deleteCharAt(osgiBundlesList.length() - 1);
        }
        props.setProperty("osgi.bundles", osgiBundlesList.toString());
    }

    public void readFwConfig(Manipulator manipulator, File inputFile) throws IOException, URISyntaxException {
        if (inputFile.isDirectory()) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.exception_inputFileIsDirectory, (Object)inputFile));
        }
        ConfigData configData = manipulator.getConfigData();
        LauncherData launcherData = manipulator.getLauncherData();
        configData.initialize();
        configData.setBundles(null);
        Properties props = EquinoxFwConfigFileParser.loadProperties(inputFile);
        Properties sharedConfigProperties = this.getSharedConfiguration(props.getProperty("osgi.sharedConfiguration.area"), ParserUtils.getOSGiInstallArea(Arrays.asList(manipulator.getLauncherData().getProgramArgs()), props, manipulator.getLauncherData()));
        if (sharedConfigProperties != null) {
            sharedConfigProperties.putAll(props);
            props = sharedConfigProperties;
        }
        this.readFwJarLocation(configData, launcherData, props);
        URI configArea = inputFile.getParentFile().toURI();
        this.readp2DataArea(props, configArea);
        this.readSimpleConfiguratorURL(props, configArea);
        this.readBundlesList(manipulator, ParserUtils.getOSGiInstallArea(Arrays.asList(launcherData.getProgramArgs()), props, launcherData).toURI(), props);
        this.readInitialStartLeve(configData, props);
        this.readDefaultStartLevel(configData, props);
        Enumeration enumeration = props.keys();
        while (enumeration.hasMoreElements()) {
            String key = (String)enumeration.nextElement();
            if (KNOWN_PROPERTIES.contains(key)) continue;
            String value = props.getProperty(key);
            configData.setProperty(key, value);
        }
        Log.log(3, NLS.bind((String)Messages.log_configFile, (Object)inputFile.getAbsolutePath()));
    }

    private void readDefaultStartLevel(ConfigData configData, Properties props) {
        if (props.getProperty("osgi.bundles.defaultStartLevel") != null) {
            configData.setInitialBundleStartLevel(Integer.parseInt(props.getProperty("osgi.bundles.defaultStartLevel")));
        }
    }

    private void writeDefaultStartLevel(ConfigData configData, Properties props) {
        if (configData.getInitialBundleStartLevel() != -1) {
            props.setProperty("osgi.bundles.defaultStartLevel", Integer.toString(configData.getInitialBundleStartLevel()));
        }
    }

    private void readInitialStartLeve(ConfigData configData, Properties props) {
        if (props.getProperty("osgi.startLevel") != null) {
            configData.setBeginningFwStartLevel(Integer.parseInt(props.getProperty("osgi.startLevel")));
        }
    }

    private void writeInitialStartLevel(ConfigData configData, Properties props) {
        if (configData.getBeginingFwStartLevel() != -1) {
            props.setProperty("osgi.startLevel", Integer.toString(configData.getBeginingFwStartLevel()));
        }
    }

    private File readFwJarLocation(ConfigData configData, LauncherData launcherData, Properties props) throws URISyntaxException {
        File fwJar = null;
        if (props.getProperty("osgi.framework") != null) {
            URI absoluteFwJar = null;
            absoluteFwJar = URIUtil.makeAbsolute((URI)FileUtils.fromFileURL(props.getProperty("osgi.framework")), (URI)ParserUtils.getOSGiInstallArea(Arrays.asList(launcherData.getProgramArgs()), props, launcherData).toURI());
            props.setProperty("osgi.framework", absoluteFwJar.toString());
            String fwJarString = props.getProperty("osgi.framework");
            if (fwJarString != null) {
                fwJar = URIUtil.toFile((URI)absoluteFwJar);
                if (fwJar == null) {
                    throw new IllegalStateException(Messages.exception_noFrameworkLocation);
                }
                launcherData.setFwJar(fwJar);
            } else {
                throw new IllegalStateException(Messages.exception_noFrameworkLocation);
            }
        }
        if (launcherData.getFwJar() != null) {
            configData.addBundle(new BundleInfo(launcherData.getFwJar().toURI()));
        }
        return launcherData.getFwJar();
    }

    private void writeFwJarLocation(ConfigData configData, LauncherData launcherData, Properties props) {
        if (launcherData.getFwJar() == null) {
            return;
        }
        props.setProperty("osgi.framework", FileUtils.toFileURL(URIUtil.makeRelative((URI)launcherData.getFwJar().toURI(), (URI)ParserUtils.getOSGiInstallArea(Arrays.asList(launcherData.getProgramArgs()), configData.getProperties(), launcherData).toURI())));
    }

    private static Properties loadProperties(File inputFile) throws FileNotFoundException, IOException {
        Properties props = new Properties();
        FileInputStream is = null;
        try {
            is = new FileInputStream(inputFile);
            props.load(is);
        }
        catch (Throwable throwable) {
            try {
                ((InputStream)is).close();
            }
            catch (IOException iOException) {
                Log.log(2, NLS.bind((String)Messages.log_failed_reading_properties, (Object)inputFile));
            }
            is = null;
            throw throwable;
        }
        try {
            ((InputStream)is).close();
        }
        catch (IOException iOException) {
            Log.log(2, NLS.bind((String)Messages.log_failed_reading_properties, (Object)inputFile));
        }
        is = null;
        return props;
    }

    private File findSharedConfigIniFile(URL rootURL, String sharedConfigurationArea) {
        File sharedConfigurationFolder;
        URL sharedConfigurationURL = null;
        try {
            sharedConfigurationURL = new URL(sharedConfigurationArea);
        }
        catch (MalformedURLException malformedURLException) {
            Log.log(2, NLS.bind((String)Messages.log_shared_config_url, (Object)sharedConfigurationArea));
            return null;
        }
        if (!sharedConfigurationURL.getPath().startsWith("/")) {
            if (!rootURL.getProtocol().equals(sharedConfigurationURL.getProtocol())) {
                Log.log(2, NLS.bind((String)Messages.log_shared_config_relative_url, (Object)rootURL.toExternalForm(), (Object)sharedConfigurationArea));
                return null;
            }
            try {
                sharedConfigurationURL = new URL(rootURL, sharedConfigurationArea);
            }
            catch (MalformedURLException malformedURLException) {
                Log.log(2, NLS.bind((String)Messages.log_shared_config_relative_url, (Object)rootURL.toExternalForm(), (Object)sharedConfigurationArea));
                return null;
            }
        }
        if (!(sharedConfigurationFolder = new File(sharedConfigurationURL.getPath())).isDirectory()) {
            Log.log(2, NLS.bind((String)Messages.log_shared_config_file_missing, (Object)sharedConfigurationFolder));
            return null;
        }
        File sharedConfigIni = new File(sharedConfigurationFolder, "config.ini");
        if (!sharedConfigIni.exists()) {
            Log.log(2, NLS.bind((String)Messages.log_shared_config_file_missing, (Object)sharedConfigIni));
            return null;
        }
        return sharedConfigIni;
    }

    private void readp2DataArea(Properties props, URI configArea) throws URISyntaxException {
        String url;
        if (props.getProperty(KEY_ECLIPSE_PROV_DATA_AREA) != null && (url = props.getProperty(KEY_ECLIPSE_PROV_DATA_AREA)) != null) {
            if (url.startsWith(CONFIG_DIR)) {
                url = FILE_PROTOCOL + url.substring(CONFIG_DIR.length());
            }
            props.setProperty(KEY_ECLIPSE_PROV_DATA_AREA, URIUtil.makeAbsolute((URI)FileUtils.fromFileURL(url), (URI)configArea).toString());
        }
    }

    private void writep2DataArea(ConfigData configData, Properties props, URI configArea) throws URISyntaxException {
        String dataArea = this.getFwProperty(configData, KEY_ECLIPSE_PROV_DATA_AREA);
        if (dataArea != null) {
            if (dataArea.startsWith(CONFIG_DIR)) {
                props.setProperty(KEY_ECLIPSE_PROV_DATA_AREA, dataArea);
                return;
            }
            URI dataAreaURI = new URI(dataArea);
            URI relative = URIUtil.makeRelative((URI)dataAreaURI, (URI)configArea);
            if (dataAreaURI.equals(relative)) {
                props.setProperty(KEY_ECLIPSE_PROV_DATA_AREA, FileUtils.toFileURL(dataAreaURI));
                return;
            }
            String result = URIUtil.toUnencodedString((URI)relative);
            if (result.startsWith("../..")) {
                result = dataArea;
            } else if (!result.equals(dataArea)) {
                props.setProperty(KEY_ECLIPSE_PROV_DATA_AREA, CONFIG_DIR + result);
                return;
            }
            props.setProperty(KEY_ECLIPSE_PROV_DATA_AREA, FileUtils.toFileURL(new URI(result)));
        }
    }

    private void readSimpleConfiguratorURL(Properties props, URI configArea) throws URISyntaxException {
        if (props.getProperty(KEY_ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL) != null) {
            props.setProperty(KEY_ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL, URIUtil.makeAbsolute((URI)FileUtils.fromFileURL(props.getProperty(KEY_ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL)), (URI)configArea).toString());
        }
    }

    private void writeSimpleConfiguratorURL(ConfigData configData, Properties props, URI configArea) throws URISyntaxException {
        String value = this.getFwProperty(configData, KEY_ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL);
        if (value != null) {
            props.setProperty(KEY_ORG_ECLIPSE_EQUINOX_SIMPLECONFIGURATOR_CONFIGURL, FileUtils.toFileURL(URIUtil.makeRelative((URI)URIUtil.fromString((String)value), (URI)configArea)));
        }
    }

    private String getFwProperty(ConfigData data, String key) {
        return data.getProperty(key);
    }

    public void saveFwConfig(BundleInfo[] bInfos, Manipulator manipulator, boolean backup, boolean relative) throws IOException {
        ConfigData configData = manipulator.getConfigData();
        LauncherData launcherData = manipulator.getLauncherData();
        File fwJar = EquinoxBundlesState.getSystemBundleFromBundleInfos(configData);
        launcherData.setFwJar(fwJar);
        File outputFile = launcherData.getFwConfigLocation();
        if (outputFile.exists()) {
            if (outputFile.isFile()) {
                if (!outputFile.getName().equals("config.ini")) {
                    throw new IllegalStateException(NLS.bind((String)Messages.exception_fwConfigLocationName, (Object)outputFile.getAbsolutePath(), (Object)"config.ini"));
                }
            } else {
                outputFile = new File(outputFile, "config.ini");
            }
        } else if (!outputFile.getName().equals("config.ini")) {
            if (!outputFile.mkdir()) {
                throw new IOException(NLS.bind((String)Messages.exception_failedToCreateDir, (Object)outputFile));
            }
            outputFile = new File(outputFile, "config.ini");
        }
        String header = "This configuration file was written by: " + this.getClass().getName();
        Properties configProps = new Properties();
        this.writeFwJarLocation(configData, launcherData, configProps);
        try {
            URI configArea = manipulator.getLauncherData().getFwConfigLocation().toURI();
            this.writep2DataArea(configData, configProps, configArea);
            this.writeSimpleConfiguratorURL(configData, configProps, configArea);
            this.writeBundlesList(launcherData.getFwJar(), configProps, bInfos);
            this.writeInitialStartLevel(configData, configProps);
            this.writeDefaultStartLevel(configData, configProps);
        }
        catch (URISyntaxException e) {
            throw new FrameworkAdminRuntimeException((Throwable)e, Messages.exception_errorSavingConfigIni);
        }
        Properties original = configData.getProperties();
        original.putAll(configProps);
        configProps = original;
        if (configProps == null || configProps.size() == 0) {
            Log.log(2, (Object)this, "saveFwConfig() ", Messages.log_configProps);
            return;
        }
        if (!Utils.createParentDir((File)outputFile)) {
            throw new IllegalStateException(NLS.bind((String)Messages.exception_failedToCreateDir, (Object)outputFile.getParent()));
        }
        if (DEBUG) {
            Utils.printoutProperties((PrintStream)System.out, (String)"configProps", (Properties)configProps);
        }
        if (backup && outputFile.exists()) {
            File dest = Utils.getSimpleDataFormattedFile((File)outputFile);
            if (!outputFile.renameTo(dest)) {
                throw new IOException(NLS.bind((String)Messages.exception_failedToRename, (Object)outputFile, (Object)dest));
            }
            Log.log(3, (Object)this, "saveFwConfig()", NLS.bind((String)Messages.log_renameSuccessful, (Object)outputFile, (Object)dest));
        }
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(outputFile);
            this.filterPropertiesFromSharedArea(configProps, manipulator);
            configProps.store(out, header);
            Log.log(3, NLS.bind((String)Messages.log_fwConfigSave, (Object)outputFile));
        }
        finally {
            try {
                out.flush();
                out.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            out = null;
        }
    }

    private void filterPropertiesFromSharedArea(Properties configProps, Manipulator manipulator) {
        LauncherData launcherData = manipulator.getLauncherData();
        Properties sharedConfigProperties = this.getSharedConfiguration(configProps.getProperty("osgi.sharedConfiguration.area"), ParserUtils.getOSGiInstallArea(Arrays.asList(launcherData.getProgramArgs()), configProps, launcherData));
        if (sharedConfigProperties == null) {
            return;
        }
        Enumeration<?> keys = configProps.propertyNames();
        while (keys.hasMoreElements()) {
            String key = (String)keys.nextElement();
            String sharedValue = sharedConfigProperties.getProperty(key);
            if (sharedValue == null) continue;
            String value = configProps.getProperty(key);
            if (this.equalsIgnoringSeparators(sharedValue, value)) {
                configProps.remove(key);
                continue;
            }
            if (key.equals("osgi.framework")) {
                configProps.remove(key);
                continue;
            }
            if (key.equals("osgi.bundles") && this.equalBundleLists(manipulator, value, sharedValue)) {
                configProps.remove(key);
                continue;
            }
            if (!key.equals("osgi.framework.extensions") || !this.equalBundleLists(manipulator, value, sharedValue)) continue;
            configProps.remove(key);
        }
    }

    private boolean equalBundleLists(Manipulator manipulator, String value, String sharedValue) {
        BundleInfo[] bundles = this.parseBundleList(manipulator, value);
        BundleInfo[] sharedBundles = this.parseBundleList(manipulator, sharedValue);
        if (bundles == null || sharedBundles == null || bundles.length != sharedBundles.length) {
            return false;
        }
        ArrayList<BundleInfo> compareList = new ArrayList<BundleInfo>(Arrays.asList(bundles));
        compareList.removeAll(Arrays.asList(sharedBundles));
        return compareList.isEmpty();
    }

    private boolean equalsIgnoringSeparators(String s1, String s2) {
        if (s1 == null && s2 == null) {
            return true;
        }
        if (s1 == null || s2 == null) {
            return false;
        }
        StringBuffer sb1 = new StringBuffer(s1);
        StringBuffer sb2 = new StringBuffer(s2);
        this.canonicalizePathsForComparison(sb1);
        this.canonicalizePathsForComparison(sb2);
        return sb1.toString().equals(sb2.toString());
    }

    private void canonicalizePathsForComparison(StringBuffer s) {
        String[] tokens = new String[]{"\\\\", "\\", "//", "/"};
        int t = 0;
        while (t < tokens.length) {
            int idx = s.length();
            int i = s.length();
            while (i != 0 && idx != -1) {
                idx = s.toString().lastIndexOf(tokens[t], idx);
                if (idx != -1) {
                    s.replace(idx, idx + tokens[t].length(), "^");
                }
                --i;
            }
            ++t;
        }
    }

    private Properties getSharedConfiguration(String sharedConfigurationArea, File baseFile) {
        File sharedConfigIni;
        if (sharedConfigurationArea == null) {
            return null;
        }
        try {
            sharedConfigIni = this.findSharedConfigIniFile(baseFile.toURL(), sharedConfigurationArea);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
        if (sharedConfigIni != null && sharedConfigIni.exists()) {
            try {
                return EquinoxFwConfigFileParser.loadProperties(sharedConfigIni);
            }
            catch (FileNotFoundException fileNotFoundException) {
                return null;
            }
            catch (IOException iOException) {
                return null;
            }
        }
        return null;
    }
}

