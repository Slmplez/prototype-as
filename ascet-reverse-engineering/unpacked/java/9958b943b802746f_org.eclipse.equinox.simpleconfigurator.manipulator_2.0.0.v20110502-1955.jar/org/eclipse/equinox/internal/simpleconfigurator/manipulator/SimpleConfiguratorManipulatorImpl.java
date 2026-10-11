/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.frameworkadmin.equinox.ParserUtils
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.internal.simpleconfigurator.SimpleConfiguratorImpl
 *  org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo
 *  org.eclipse.equinox.internal.simpleconfigurator.utils.EquinoxUtils
 *  org.eclipse.equinox.internal.simpleconfigurator.utils.SimpleConfiguratorUtils
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.simpleconfigurator.manipulator;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.equinox.ParserUtils;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.configuratormanipulator.ConfiguratorManipulator;
import org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.internal.simpleconfigurator.SimpleConfiguratorImpl;
import org.eclipse.equinox.internal.simpleconfigurator.manipulator.SimpleConfiguratorManipulatorUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.EquinoxUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.SimpleConfiguratorUtils;
import org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.BundleContext;

public class SimpleConfiguratorManipulatorImpl
implements SimpleConfiguratorManipulator,
ConfiguratorManipulator {
    private static final boolean DEBUG = false;
    private static final BundleInfo[] NULL_BUNDLEINFOS = new BundleInfo[0];
    public static final String PROP_KEY_EXCLUSIVE_INSTALLATION = "org.eclipse.equinox.simpleconfigurator.exclusiveInstallation";
    public static final String CONFIG_LIST = "bundles.info";
    public static final String CONFIGURATOR_FOLDER = "org.eclipse.equinox.simpleconfigurator";
    public static final String PROP_KEY_CONFIGURL = "org.eclipse.equinox.simpleconfigurator.configUrl";
    private Set manipulators = new HashSet();

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static File getConfigFile(Manipulator manipulator) throws IllegalStateException {
        File configuratorFolder;
        File targetFile;
        File fwConfigLoc = manipulator.getLauncherData().getFwConfigLocation();
        File baseDir = null;
        if (fwConfigLoc == null) {
            baseDir = manipulator.getLauncherData().getHome();
            if (baseDir == null) {
                if (manipulator.getLauncherData().getLauncher() == null) throw new IllegalStateException("All of fwConfigFile, home, launcher are not set.");
                baseDir = manipulator.getLauncherData().getLauncher().getParentFile();
            }
        } else {
            baseDir = fwConfigLoc.exists() ? (fwConfigLoc.isDirectory() ? fwConfigLoc : fwConfigLoc.getParentFile()) : (fwConfigLoc.getName().endsWith(".ini") ? fwConfigLoc.getParentFile() : fwConfigLoc);
        }
        if (Utils.createParentDir((File)(targetFile = new File(configuratorFolder = new File(baseDir, CONFIGURATOR_FOLDER), CONFIG_LIST)))) return targetFile;
        return null;
    }

    static boolean isPrerequisiteBundles(URI location, LocationInfo info) {
        boolean ret = false;
        if (info.prerequisiteLocations == null) {
            return false;
        }
        int i = 0;
        while (i < info.prerequisiteLocations.length) {
            if (location.equals(info.prerequisiteLocations[i])) {
                ret = true;
                break;
            }
            ++i;
        }
        return ret;
    }

    static boolean isSystemBundle(URI location, LocationInfo info) {
        if (info.systemBundleLocation == null) {
            return false;
        }
        return location.equals(info.systemBundleLocation);
    }

    static boolean isSystemFragmentBundle(URI location, LocationInfo info) {
        boolean ret = false;
        if (info.systemFragmentedBundleLocations == null) {
            return false;
        }
        int i = 0;
        while (i < info.systemFragmentedBundleLocations.length) {
            if (location.equals(info.systemFragmentedBundleLocations[i])) {
                ret = true;
                break;
            }
            ++i;
        }
        return ret;
    }

    private static boolean isTargetConfiguratorBundle(BundleInfo[] bInfos) {
        int i = 0;
        while (i < bInfos.length) {
            if (SimpleConfiguratorManipulatorImpl.isTargetConfiguratorBundle(bInfos[i].getLocation())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private static boolean isTargetConfiguratorBundle(URI location) {
        String symbolic = Utils.getPathFromClause((String)Utils.getManifestMainAttributes((URI)location, (String)"Bundle-SymbolicName"));
        return CONFIGURATOR_FOLDER.equals(symbolic);
    }

    private void algorithm(int initialSl, SortedMap bslToList, BundleInfo configuratorBInfo, List setToInitialConfig, List setToSimpleConfig, LocationInfo info) {
        int configuratorSL = configuratorBInfo.getStartLevel();
        Integer sL0 = (Integer)bslToList.keySet().iterator().next();
        List list0 = (List)bslToList.get(sL0);
        if (sL0 == 0) {
            Iterator ite2 = list0.iterator();
            while (ite2.hasNext()) {
                BundleInfo bInfo = (BundleInfo)ite2.next();
                if (!SimpleConfiguratorManipulatorImpl.isSystemBundle(bInfo.getLocation(), info)) continue;
                setToSimpleConfig.add(bInfo);
                break;
            }
        }
        Iterator ite = bslToList.keySet().iterator();
        while (ite.hasNext()) {
            BundleInfo bInfo;
            Integer sL = (Integer)ite.next();
            List list = (List)bslToList.get(sL);
            if (sL < configuratorSL) {
                Iterator ite2 = list.iterator();
                while (ite2.hasNext()) {
                    bInfo = (BundleInfo)ite2.next();
                    if (SimpleConfiguratorManipulatorImpl.isSystemBundle(bInfo.getLocation(), info)) continue;
                    setToInitialConfig.add(bInfo);
                }
                continue;
            }
            if (sL > configuratorSL) {
                Iterator ite2 = list.iterator();
                while (ite2.hasNext()) {
                    bInfo = (BundleInfo)ite2.next();
                    if ((SimpleConfiguratorManipulatorImpl.isPrerequisiteBundles(bInfo.getLocation(), info) || SimpleConfiguratorManipulatorImpl.isSystemFragmentBundle(bInfo.getLocation(), info)) && !SimpleConfiguratorManipulatorImpl.isSystemBundle(bInfo.getLocation(), info)) {
                        setToInitialConfig.add(bInfo);
                    }
                    setToSimpleConfig.add(bInfo);
                }
                continue;
            }
            boolean found = false;
            Iterator ite2 = list.iterator();
            while (ite2.hasNext()) {
                BundleInfo bInfo2 = (BundleInfo)ite2.next();
                if (found) {
                    if (!SimpleConfiguratorManipulatorImpl.isSystemBundle(bInfo2.getLocation(), info) && (SimpleConfiguratorManipulatorImpl.isPrerequisiteBundles(bInfo2.getLocation(), info) || SimpleConfiguratorManipulatorImpl.isSystemFragmentBundle(bInfo2.getLocation(), info))) {
                        setToInitialConfig.add(bInfo2);
                    }
                    setToSimpleConfig.add(bInfo2);
                    continue;
                }
                if (SimpleConfiguratorManipulatorImpl.isTargetConfiguratorBundle(bInfo2.getLocation())) {
                    found = true;
                } else if (!SimpleConfiguratorManipulatorImpl.isSystemBundle(bInfo2.getLocation(), info)) {
                    setToInitialConfig.add(bInfo2);
                }
                setToSimpleConfig.add(bInfo2);
            }
        }
        setToInitialConfig.add(configuratorBInfo);
    }

    private boolean checkResolve(BundleInfo bInfo, BundlesState state) {
        if (bInfo == null) {
            throw new IllegalArgumentException("bInfo is null.");
        }
        if (!state.isResolved()) {
            state.resolve(false);
        }
        if (!state.isResolved(bInfo)) {
            this.printoutUnsatisfiedConstraints(bInfo, state);
            return false;
        }
        return true;
    }

    private boolean divideBundleInfos(Manipulator manipulator, List setToInitialConfig, List setToSimpleConfig, int initialBSL) {
        BundlesState state = manipulator.getBundlesState();
        BundleInfo[] targetBundleInfos = null;
        targetBundleInfos = state.isFullySupported() ? state.getExpectedState() : manipulator.getConfigData().getBundles();
        BundleInfo configuratorBInfo = null;
        int i = 0;
        while (i < targetBundleInfos.length) {
            if (SimpleConfiguratorManipulatorImpl.isTargetConfiguratorBundle(targetBundleInfos[i].getLocation()) && targetBundleInfos[i].isMarkedAsStarted()) {
                configuratorBInfo = targetBundleInfos[i];
                break;
            }
            ++i;
        }
        if (configuratorBInfo == null && !this.manipulators.contains(manipulator)) {
            return false;
        }
        if (this.manipulators.contains(manipulator) && targetBundleInfos.length == 0) {
            this.manipulators.remove(manipulator);
        } else if (!this.manipulators.contains(manipulator)) {
            this.manipulators.add(manipulator);
        }
        if (state.isFullySupported()) {
            state.resolve(false);
        }
        LocationInfo info = new LocationInfo();
        this.setSystemBundles(state, info);
        if (configuratorBInfo != null) {
            this.setPrerequisiteBundles(configuratorBInfo, state, info);
            SortedMap bslToList = this.getSortedMap(initialBSL, targetBundleInfos);
            this.algorithm(initialBSL, bslToList, configuratorBInfo, setToInitialConfig, setToSimpleConfig, info);
        }
        return true;
    }

    private SortedMap getSortedMap(int initialSl, BundleInfo[] bInfos) {
        TreeMap<Integer, LinkedList<BundleInfo>> bslToList = new TreeMap<Integer, LinkedList<BundleInfo>>();
        int i = 0;
        while (i < bInfos.length) {
            LinkedList<BundleInfo> list;
            Integer sL = new Integer(bInfos[i].getStartLevel());
            if (sL == -1) {
                sL = new Integer(initialSl);
            }
            if ((list = (LinkedList<BundleInfo>)bslToList.get(sL)) == null) {
                list = new LinkedList<BundleInfo>();
                bslToList.put(sL, list);
            }
            list.add(bInfos[i]);
            ++i;
        }
        return bslToList;
    }

    private BundleInfo[] orderingInitialConfig(List setToInitialConfig) {
        LinkedList<BundleInfo> notToBeStarted = new LinkedList<BundleInfo>();
        LinkedList<BundleInfo> toBeStarted = new LinkedList<BundleInfo>();
        Iterator ite2 = setToInitialConfig.iterator();
        while (ite2.hasNext()) {
            BundleInfo bInfo = (BundleInfo)ite2.next();
            if (bInfo.isMarkedAsStarted()) {
                toBeStarted.add(bInfo);
                continue;
            }
            notToBeStarted.add(bInfo);
        }
        setToInitialConfig.clear();
        setToInitialConfig.addAll(notToBeStarted);
        setToInitialConfig.addAll(toBeStarted);
        return Utils.getBundleInfosFromList((List)setToInitialConfig);
    }

    private void printoutUnsatisfiedConstraints(BundleInfo bInfo, BundlesState state) {
    }

    public BundleInfo[] loadConfiguration(BundleContext context, String infoPath) throws IOException {
        URI installArea = EquinoxUtils.getInstallLocationURI((BundleContext)context);
        URL configURL = null;
        InputStream stream = null;
        if (infoPath == null) {
            SimpleConfiguratorImpl simpleImpl = new SimpleConfiguratorImpl(context, null);
            configURL = simpleImpl.getConfigurationURL();
        } else {
            boolean defaultSource;
            boolean bl = defaultSource = infoPath == SOURCE_INFO;
            if (defaultSource) {
                infoPath = "org.eclipse.equinox.source/source.info";
            }
            Location configLocation = EquinoxUtils.getConfigLocation((BundleContext)context);
            configURL = configLocation.getDataArea(infoPath);
            try {
                stream = configURL.openStream();
            }
            catch (FileNotFoundException fileNotFoundException) {
                if (defaultSource && configLocation.getParentLocation() != null) {
                    configURL = configLocation.getParentLocation().getDataArea(infoPath);
                }
                return new BundleInfo[0];
            }
        }
        if (configURL == null) {
            return new BundleInfo[0];
        }
        if (stream == null) {
            try {
                stream = configURL.openStream();
            }
            catch (FileNotFoundException fileNotFoundException) {
                return new BundleInfo[0];
            }
        }
        return this.loadConfiguration(stream, installArea);
    }

    public BundleInfo[] loadConfiguration(InputStream stream, URI installArea) throws IOException {
        if (stream == null) {
            return NULL_BUNDLEINFOS;
        }
        List simpleBundles = SimpleConfiguratorUtils.readConfiguration((InputStream)stream, (URI)installArea);
        BundleInfo[] result = new BundleInfo[simpleBundles.size()];
        int i = 0;
        Iterator iterator = simpleBundles.iterator();
        while (iterator.hasNext()) {
            org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo simpleInfo = (org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo)iterator.next();
            URI location = simpleInfo.getLocation();
            if (!location.isAbsolute() && simpleInfo.getBaseLocation() != null) {
                location = URIUtil.makeAbsolute((URI)location, (URI)simpleInfo.getBaseLocation());
            }
            BundleInfo bundleInfo = new BundleInfo(simpleInfo.getSymbolicName(), simpleInfo.getVersion(), location, simpleInfo.getStartLevel(), simpleInfo.isMarkedAsStarted());
            bundleInfo.setBaseLocation(simpleInfo.getBaseLocation());
            result[i++] = bundleInfo;
        }
        return result;
    }

    public void saveConfiguration(BundleInfo[] configuration, OutputStream stream, URI installArea) throws IOException {
        org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo[] simpleInfos = this.convertBundleInfos(configuration, installArea);
        SimpleConfiguratorManipulatorUtils.writeConfiguration(simpleInfos, stream);
    }

    public void saveConfiguration(BundleInfo[] configuration, File outputFile, URI installArea) throws IOException {
        this.saveConfiguration(configuration, outputFile, installArea, false);
    }

    private void saveConfiguration(BundleInfo[] configuration, File outputFile, URI installArea, boolean backup) throws IOException {
        File backupFile;
        if (backup && outputFile.exists() && !outputFile.renameTo(backupFile = Utils.getSimpleDataFormattedFile((File)outputFile))) {
            throw new IOException("Fail to rename from (" + outputFile + ") to (" + backupFile + ")");
        }
        org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo[] simpleInfos = this.convertBundleInfos(configuration, installArea);
        if (simpleInfos == null || simpleInfos.length == 0) {
            File parentDir;
            if (outputFile.exists()) {
                outputFile.delete();
            }
            if ((parentDir = outputFile.getParentFile()).exists()) {
                parentDir.delete();
            }
            return;
        }
        SimpleConfiguratorManipulatorUtils.writeConfiguration(simpleInfos, outputFile);
    }

    private org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo[] convertBundleInfos(BundleInfo[] configuration, URI installArea) {
        org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo[] simpleInfos = new org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo[configuration.length];
        int i = 0;
        while (i < configuration.length) {
            BundleInfo bundleInfo = configuration[i];
            URI location = bundleInfo.getLocation();
            if (bundleInfo.getSymbolicName() == null || bundleInfo.getVersion() == null || location == null) {
                throw new IllegalArgumentException("Cannot persist bundleinfo: " + bundleInfo.toString());
            }
            if (installArea != null) {
                location = URIUtil.makeRelative((URI)location, (URI)installArea);
            }
            simpleInfos[i] = new org.eclipse.equinox.internal.simpleconfigurator.utils.BundleInfo(bundleInfo.getSymbolicName(), bundleInfo.getVersion(), location, bundleInfo.getStartLevel(), bundleInfo.isMarkedAsStarted());
            simpleInfos[i].setBaseLocation(bundleInfo.getBaseLocation());
            ++i;
        }
        return simpleInfos;
    }

    public BundleInfo[] save(Manipulator manipulator, boolean backup) throws IOException {
        LinkedList setToInitialConfig = new LinkedList();
        LinkedList setToSimpleConfig = new LinkedList();
        ConfigData configData = manipulator.getConfigData();
        if (!this.divideBundleInfos(manipulator, setToInitialConfig, setToSimpleConfig, configData.getInitialBundleStartLevel())) {
            return configData.getBundles();
        }
        File outputFile = SimpleConfiguratorManipulatorImpl.getConfigFile(manipulator);
        URI installArea = ParserUtils.getOSGiInstallArea(Arrays.asList(manipulator.getLauncherData().getProgramArgs()), (Properties)manipulator.getConfigData().getProperties(), (LauncherData)manipulator.getLauncherData()).toURI();
        this.saveConfiguration(setToSimpleConfig.toArray(new BundleInfo[setToSimpleConfig.size()]), outputFile, installArea, backup);
        configData.setProperty(PROP_KEY_CONFIGURL, outputFile.toURL().toExternalForm());
        return this.orderingInitialConfig(setToInitialConfig);
    }

    void setPrerequisiteBundles(BundleInfo configuratorBundleInfo, BundlesState state, LocationInfo info) {
        if (state.isFullySupported() && !this.checkResolve(configuratorBundleInfo, state)) {
            this.printoutUnsatisfiedConstraints(configuratorBundleInfo, state);
            return;
        }
        BundleInfo[] prerequisites = state.getPrerequisteBundles(configuratorBundleInfo);
        info.prerequisiteLocations = new URI[prerequisites.length];
        int i = 0;
        while (i < prerequisites.length) {
            info.prerequisiteLocations[i] = prerequisites[i].getLocation();
            ++i;
        }
    }

    void setSystemBundles(BundlesState state, LocationInfo info) {
        BundleInfo systemBundleInfo = state.getSystemBundle();
        if (systemBundleInfo == null) {
            return;
        }
        if (state.isFullySupported() && !this.checkResolve(systemBundleInfo, state)) {
            this.printoutUnsatisfiedConstraints(systemBundleInfo, state);
            return;
        }
        info.systemBundleLocation = systemBundleInfo.getLocation();
        BundleInfo[] fragments = state.getSystemFragmentedBundles();
        info.systemFragmentedBundleLocations = new URI[fragments.length];
        int i = 0;
        while (i < fragments.length) {
            info.systemFragmentedBundleLocations[i] = fragments[i].getLocation();
            ++i;
        }
    }

    public void updateBundles(Manipulator manipulator) throws IOException {
        int i;
        BundleInfo[] currentBInfos;
        BundlesState bundleState = manipulator.getBundlesState();
        if (bundleState == null) {
            return;
        }
        if (bundleState.isFullySupported()) {
            bundleState.resolve(true);
        }
        if (!SimpleConfiguratorManipulatorImpl.isTargetConfiguratorBundle(currentBInfos = bundleState.getExpectedState())) {
            return;
        }
        Properties properties = new Properties();
        String[] jvmArgs = manipulator.getLauncherData().getJvmArgs();
        int i2 = 0;
        while (i2 < jvmArgs.length) {
            int index;
            if (jvmArgs[i2].startsWith("-D") && (index = jvmArgs[i2].indexOf("=")) > 0 && jvmArgs[i2].length() > 2) {
                String key = jvmArgs[i2].substring(2, index);
                String value = jvmArgs[i2].substring(index + 1);
                properties.setProperty(key, value);
            }
            ++i2;
        }
        Utils.appendProperties((Properties)properties, (Properties)manipulator.getConfigData().getProperties());
        boolean exclusiveInstallation = Boolean.valueOf(properties.getProperty(PROP_KEY_EXCLUSIVE_INSTALLATION));
        File configFile = SimpleConfiguratorManipulatorImpl.getConfigFile(manipulator);
        File installArea = ParserUtils.getOSGiInstallArea(Arrays.asList(manipulator.getLauncherData().getProgramArgs()), (Properties)manipulator.getConfigData().getProperties(), (LauncherData)manipulator.getLauncherData());
        BundleInfo[] toInstall = null;
        try {
            toInstall = this.loadConfiguration(new FileInputStream(configFile), installArea.toURI());
        }
        catch (FileNotFoundException fileNotFoundException) {
            toInstall = new BundleInfo[]{};
        }
        LinkedList<BundleInfo> toUninstall = new LinkedList<BundleInfo>();
        if (exclusiveInstallation) {
            i = 0;
            while (i < currentBInfos.length) {
                boolean install = false;
                int j = 0;
                while (j < toInstall.length) {
                    if (currentBInfos[i].getLocation().equals(toInstall[j].getLocation())) {
                        install = true;
                        break;
                    }
                    ++j;
                }
                if (!install) {
                    toUninstall.add(currentBInfos[i]);
                }
                ++i;
            }
        }
        i = 0;
        while (i < toInstall.length) {
            try {
                bundleState.installBundle(toInstall[i]);
            }
            catch (RuntimeException runtimeException) {}
            ++i;
        }
        if (exclusiveInstallation) {
            Iterator ite = toUninstall.iterator();
            while (ite.hasNext()) {
                BundleInfo bInfo = (BundleInfo)ite.next();
                bundleState.uninstallBundle(bInfo);
            }
        }
        bundleState.resolve(true);
        manipulator.getConfigData().setBundles(bundleState.getExpectedState());
    }

    public void cleanup(Manipulator manipulator) {
        File outputFile = SimpleConfiguratorManipulatorImpl.getConfigFile(manipulator);
        outputFile.delete();
        if (outputFile.getParentFile().isDirectory()) {
            outputFile.getParentFile().delete();
        }
    }

    class LocationInfo {
        URI[] prerequisiteLocations = null;
        URI systemBundleLocation = null;
        URI[] systemFragmentedBundleLocations = null;

        LocationInfo() {
        }
    }
}

