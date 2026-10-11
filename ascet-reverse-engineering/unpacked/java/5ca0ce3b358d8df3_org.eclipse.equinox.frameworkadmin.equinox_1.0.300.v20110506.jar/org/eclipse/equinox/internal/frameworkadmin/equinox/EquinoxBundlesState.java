/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.frameworkadmin.utils.SimpleBundlesState
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.osgi.framework.internal.core.FrameworkProperties
 *  org.eclipse.osgi.service.resolver.BaseDescription
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateHelper
 *  org.eclipse.osgi.service.resolver.StateObjectFactory
 *  org.eclipse.osgi.service.resolver.VersionConstraint
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Properties;
import org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxFwAdminImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.equinox.ParserUtils;
import org.eclipse.equinox.internal.frameworkadmin.equinox.utils.FileUtils;
import org.eclipse.equinox.internal.frameworkadmin.utils.SimpleBundlesState;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.BundlesState;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class EquinoxBundlesState
implements BundlesState {
    static final long DEFAULT_TIMESTAMP = 0L;
    private static final boolean DEBUG = false;
    private static final String INTERNAL_AMD64 = "amd64";
    private static final String INTERNAL_ARCH_I386 = "i386";
    public static final String[] PROPS = new String[]{"osgi.os", "osgi.ws", "osgi.nl", "osgi.arch", "org.osgi.framework.system.packages", "osgi.resolverMode", "org.osgi.framework.executionenvironment", "osgi.resolveOptional", "osgi.genericAliases"};
    EquinoxFwAdminImpl fwAdmin = null;
    BundleContext context;
    Manipulator manipulator = null;
    Properties platfromProperties = new Properties();
    long maxId = 0L;
    StateObjectFactory soFactory = null;
    State state = null;
    private HashMap locationStateIndex = new HashMap();
    private HashMap nameVersionStateIndex = new HashMap();
    private final PlatformAdmin platformAdmin;

    static boolean checkFullySupported() {
        return true;
    }

    static File getFwJar(LauncherData launcherData, ConfigData configData) {
        return EquinoxBundlesState.getFwJar(launcherData, configData, true);
    }

    private static File getFwJar(LauncherData launcherData, ConfigData configData, boolean checkBundleInfos) {
        File ret;
        if (launcherData.getFwJar() != null) {
            return launcherData.getFwJar();
        }
        String[] jvmArgs = launcherData.getJvmArgs();
        String location = null;
        int i = 0;
        while (i < jvmArgs.length) {
            if (jvmArgs[i].endsWith("-Dosgi.framework=")) {
                location = jvmArgs[i].substring("-Dosgi.framework=".length());
            }
            ++i;
        }
        if (location != null) {
            return new File(location);
        }
        if (checkBundleInfos && (ret = EquinoxBundlesState.getSystemBundleFromBundleInfos(configData)) != null) {
            return ret;
        }
        return null;
    }

    private static long getMaxId(State state) {
        BundleDescription[] bundleDescriptions = state.getBundles();
        long maxId = 0L;
        int i = 0;
        while (i < bundleDescriptions.length) {
            if (maxId < bundleDescriptions[i].getBundleId()) {
                maxId = bundleDescriptions[i].getBundleId();
            }
            ++i;
        }
        return maxId;
    }

    private static File getSystemBundleFromBundleInfos(BundleInfo[] bundleInfos) {
        int i = 0;
        while (i < bundleInfos.length) {
            File match = EquinoxBundlesState.isSystemBundle(bundleInfos[i]);
            if (match != null) {
                return match;
            }
            ++i;
        }
        return null;
    }

    protected static File getSystemBundleFromBundleInfos(ConfigData configData) {
        BundleInfo[] bundleInfos = configData.getBundles();
        return EquinoxBundlesState.getSystemBundleFromBundleInfos(bundleInfos);
    }

    static long getTimeStamp(File fwPersistentDataLocation) {
        if (fwPersistentDataLocation == null) {
            return 0L;
        }
        File file = new File(fwPersistentDataLocation, "org.eclipse.osgi");
        if (!file.exists() || !file.isDirectory()) {
            return 0L;
        }
        long ret = file.lastModified();
        File[] lists = file.listFiles();
        if (lists == null) {
            return ret;
        }
        int i = 0;
        while (i < lists.length) {
            if (ret < lists[i].lastModified()) {
                ret = lists[i].lastModified();
            }
            ++i;
        }
        return ret;
    }

    public static File isSystemBundle(BundleInfo bundleInfo) {
        if (bundleInfo == null || bundleInfo.getLocation() == null) {
            return null;
        }
        URI bundleLocation = bundleInfo.getLocation();
        try {
            String[] clauses = Utils.getClausesManifestMainAttributes((URI)bundleLocation, (String)"Bundle-SymbolicName");
            if (bundleLocation.getPath().indexOf("org.eclipse.osgi") > 0 && "org.eclipse.osgi".equals(Utils.getPathFromClause((String)clauses[0]))) {
                return new File(bundleLocation);
            }
        }
        catch (RuntimeException e) {
            e.printStackTrace();
        }
        return null;
    }

    static Properties setDefaultPlatformProperties() {
        Properties platformProperties = new Properties();
        String nl = Locale.getDefault().toString();
        platformProperties.setProperty("osgi.nl", nl);
        String os = EclipseEnvironmentInfo.guessOS((String)System.getProperty("os.name"));
        platformProperties.setProperty("osgi.os", os);
        String ws = EclipseEnvironmentInfo.guessWS((String)os);
        platformProperties.setProperty("osgi.ws", ws);
        String arch = null;
        String name = FrameworkProperties.getProperty((String)"os.arch");
        arch = name.equalsIgnoreCase(INTERNAL_ARCH_I386) ? "x86" : (name.equalsIgnoreCase(INTERNAL_AMD64) ? "x86_64" : name);
        platformProperties.setProperty("osgi.arch", arch);
        platformProperties.setProperty("org.osgi.framework.system.packages", FrameworkProperties.getProperty((String)"org.osgi.framework.system.packages"));
        platformProperties.setProperty("org.osgi.framework.executionenvironment", FrameworkProperties.getProperty((String)"org.osgi.framework.executionenvironment"));
        platformProperties.setProperty("osgi.resolveOptional", "" + "true".equals(FrameworkProperties.getProperty((String)"osgi.resolveOptional")));
        return platformProperties;
    }

    EquinoxBundlesState(BundleContext context, EquinoxFwAdminImpl fwAdmin, Manipulator manipulator, PlatformAdmin admin, boolean useFwPersistentData) {
        this.context = context;
        this.fwAdmin = fwAdmin;
        this.platformAdmin = admin;
        this.manipulator = fwAdmin.getManipulator();
        this.manipulator.setConfigData(manipulator.getConfigData());
        this.manipulator.setLauncherData(manipulator.getLauncherData());
        this.initialize(useFwPersistentData);
    }

    EquinoxBundlesState(BundleContext context, EquinoxFwAdminImpl fwAdmin, Manipulator manipulator, PlatformAdmin admin, Properties platformProperties) {
        this.context = context;
        this.fwAdmin = fwAdmin;
        this.platformAdmin = admin;
        this.manipulator = fwAdmin.getManipulator();
        this.manipulator.setConfigData(manipulator.getConfigData());
        this.manipulator.setLauncherData(manipulator.getLauncherData());
        LauncherData launcherData = manipulator.getLauncherData();
        ConfigData configData = manipulator.getConfigData();
        BundleInfo[] bInfos = configData.getBundles();
        this.composeNewState(launcherData, configData, platformProperties, bInfos);
    }

    private void composeNewState(LauncherData launcherData, ConfigData configData, BundleInfo[] bInfos) {
        this.composeNewState(launcherData, configData, configData.getProperties(), bInfos);
    }

    private void composeNewState(LauncherData launcherData, ConfigData configData, Properties properties, BundleInfo[] bInfos) {
        File fwJar = EquinoxBundlesState.getSystemBundleFromBundleInfos(configData);
        launcherData.setFwJar(fwJar);
        this.setFwJar(fwJar);
        this.composeState(configData.getBundles(), properties, null);
        this.resolve(true);
    }

    private boolean composeState(BundleInfo[] bInfos, Dictionary props, File fwPersistentDataLocation) throws IllegalArgumentException, FrameworkAdminRuntimeException {
        BundleInfo[] infos = this.manipulator.getConfigData().getBundles();
        this.manipulator.getConfigData().setBundles(null);
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        this.setStateObjectFactory();
        this.state = null;
        boolean flagNewState = false;
        if (fwPersistentDataLocation != null) {
            this.manipulator.getConfigData().setBundles(infos);
            return false;
        }
        this.state = this.soFactory.createState(true);
        this.createStateIndexes();
        flagNewState = true;
        if (props == null) {
            this.manipulator.getConfigData().setBundles(infos);
            return false;
        }
        this.setPlatformPropertiesToState(props);
        this.setPlatformProperties(this.state);
        try {
            this.maxId = this.state.getHighestBundleId();
        }
        catch (NoSuchMethodError noSuchMethodError) {
            this.maxId = EquinoxBundlesState.getMaxId(this.state);
        }
        if (flagNewState) {
            int indexSystemBundle = -1;
            int j = 0;
            while (j < bInfos.length) {
                if (EquinoxBundlesState.isSystemBundle(bInfos[j]) != null) {
                    indexSystemBundle = j;
                    break;
                }
                ++j;
            }
            if (indexSystemBundle > 0) {
                BundleInfo[] newBundleInfos = new BundleInfo[bInfos.length];
                newBundleInfos[0] = bInfos[indexSystemBundle];
                System.arraycopy(bInfos, 0, newBundleInfos, 1, indexSystemBundle);
                if (indexSystemBundle < bInfos.length - 1) {
                    System.arraycopy(bInfos, indexSystemBundle + 1, newBundleInfos, indexSystemBundle + 1, bInfos.length - indexSystemBundle - 1);
                }
                bInfos = newBundleInfos;
            }
        }
        int j = 0;
        while (j < bInfos.length) {
            try {
                this.installBundle(bInfos[j]);
            }
            catch (RuntimeException e) {
                Log.log(1, this, "composeExpectedState()", "BundleInfo:" + bInfos[j], e);
            }
            ++j;
        }
        return true;
    }

    private BundleInfo convertSystemBundle(BundleDescription toConvert) {
        boolean markedAsStarted = false;
        int sl = -1;
        URI location = null;
        String symbolicNameTarget = toConvert.getSymbolicName();
        Version versionTarget = toConvert.getVersion();
        try {
            File fwJar = this.manipulator.getLauncherData().getFwJar();
            if (fwJar != null) {
                URI fwJarLocation = fwJar.toURI();
                String[] clauses = Utils.getClausesManifestMainAttributes((URI)fwJarLocation, (String)"Bundle-SymbolicName");
                String fwJarSymbolicName = Utils.getPathFromClause((String)clauses[0]);
                String fwJarVersionSt = Utils.getManifestMainAttributes((URI)fwJarLocation, (String)"Bundle-Version");
                if (fwJarSymbolicName.equals(symbolicNameTarget) && fwJarVersionSt.equals(versionTarget.toString())) {
                    location = fwJarLocation;
                    markedAsStarted = true;
                }
            }
        }
        catch (FrameworkAdminRuntimeException e1) {
            Log.log(1, "", e1);
        }
        return this.createBundleInfo(toConvert, markedAsStarted, sl, location, null);
    }

    private BundleInfo createBundleInfo(BundleDescription toConvert, boolean markedAsStarted, int sl, URI location, String fragmentHost) {
        BundleInfo result = new BundleInfo();
        result.setSymbolicName(toConvert.getSymbolicName());
        result.setVersion(toConvert.getVersion().toString());
        result.setLocation(location);
        result.setResolved(toConvert.isResolved());
        result.setMarkedAsStarted(markedAsStarted);
        result.setStartLevel(sl);
        result.setBundleId(toConvert.getBundleId());
        result.setFragmentHost(fragmentHost);
        return result;
    }

    public BundleInfo[] convertState(BundleDescription[] bundles) {
        BundleInfo[] originalBInfos = this.manipulator.getConfigData().getBundles();
        HashMap<URI, BundleInfo> bundleInfoMap = new HashMap<URI, BundleInfo>();
        int i = 0;
        while (i < originalBInfos.length) {
            bundleInfoMap.put(originalBInfos[i].getLocation(), originalBInfos[i]);
            ++i;
        }
        BundleInfo[] result = new BundleInfo[bundles.length];
        int i2 = 0;
        while (i2 < bundles.length) {
            if (bundles[i2].getBundleId() == 0L && "org.eclipse.osgi".equals(bundles[i2].getSymbolicName())) {
                result[i2] = this.convertSystemBundle(bundles[i2]);
            } else {
                URI location;
                boolean markedAsStarted = false;
                int sl = -1;
                try {
                    location = new URI(bundles[i2].getLocation());
                }
                catch (URISyntaxException e) {
                    e.printStackTrace();
                    throw new IllegalStateException("BundleDescription conversion problem" + e.getMessage());
                }
                String fragmentHost = null;
                BundleInfo original = (BundleInfo)bundleInfoMap.get(location);
                if (original != null) {
                    markedAsStarted = original.isMarkedAsStarted();
                    sl = this.getStartLevel(original.getStartLevel());
                    fragmentHost = original.getFragmentHost();
                }
                result[i2] = this.createBundleInfo(bundles[i2], markedAsStarted, sl, location, fragmentHost);
            }
            ++i2;
        }
        return result;
    }

    public BundleInfo[] getExpectedState() throws FrameworkAdminRuntimeException {
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        return this.convertState(this.state.getBundles());
    }

    Properties getPlatformProperties() {
        return this.platfromProperties;
    }

    public BundleInfo[] getPrerequisteBundles(BundleInfo bInfo) {
        HashSet<BundleDescription> set = new HashSet<BundleDescription>();
        URI realLocation = bInfo.getLocation();
        BundleDescription bundle = this.getBundleByLocation(realLocation);
        ImportPackageSpecification[] imports = bundle.getImportPackages();
        int i = 0;
        while (i < imports.length) {
            BaseDescription supplier = imports[i].getSupplier();
            if (supplier == null) {
                if (!imports[i].getDirective("resolution").equals("optional")) {
                    throw new IllegalStateException("Internal error: import supplier should not be null");
                }
            } else {
                set.add(supplier.getSupplier());
            }
            ++i;
        }
        BundleDescription[] requires = bundle.getResolvedRequires();
        int i2 = 0;
        while (i2 < requires.length) {
            set.add(requires[i2]);
            ++i2;
        }
        BundleDescription[] bundles = new BundleDescription[set.size()];
        set.toArray(bundles);
        return this.convertState(bundles);
    }

    private int getStartLevel(int startLevel) {
        return startLevel == -1 ? this.manipulator.getConfigData().getInitialBundleStartLevel() : startLevel;
    }

    public BundleInfo getSystemBundle() {
        BundleDescription bundle = this.getSystemBundleDescription();
        return bundle != null ? this.convertSystemBundle(bundle) : null;
    }

    private BundleDescription getSystemBundleDescription() {
        BundleDescription bundle = this.state.getBundle(0L);
        if (bundle == null || bundle.getHost() != null) {
            return null;
        }
        return "org.eclipse.osgi".equals(bundle.getSymbolicName()) ? bundle : null;
    }

    public BundleInfo[] getSystemFragmentedBundles() {
        BundleDescription bundle = this.getSystemBundleDescription();
        if (bundle == null) {
            return null;
        }
        return this.convertState(bundle.getFragments());
    }

    public String[] getUnsatisfiedConstraints(BundleInfo bInfo) {
        URI realLocation = bInfo.getLocation();
        BundleDescription description = this.getBundleByLocation(realLocation);
        StateHelper helper = this.platformAdmin.getStateHelper();
        VersionConstraint[] constraints = helper.getUnsatisfiedConstraints(description);
        String[] ret = new String[constraints.length];
        int i = 0;
        while (i < constraints.length) {
            ret[i] = constraints[i].toString();
            ++i;
        }
        return ret;
    }

    private void initialize(boolean useFwPersistentData) {
        LauncherData launcherData = this.manipulator.getLauncherData();
        ConfigData configData = this.manipulator.getConfigData();
        BundleInfo[] bInfos = configData.getBundles();
        if (!useFwPersistentData) {
            this.composeNewState(launcherData, configData, bInfos);
            return;
        }
        EquinoxManipulatorImpl.checkConsistencyOfFwConfigLocAndFwPersistentDataLoc(launcherData);
        if (launcherData.isClean()) {
            this.composeNewState(launcherData, configData, bInfos);
        } else {
            if (this.manipulator.getLauncherData().getFwPersistentDataLocation() == null) {
                File installArea = ParserUtils.getOSGiInstallArea(Arrays.asList(launcherData.getProgramArgs()), configData.getProperties(), launcherData);
                if (installArea == null) {
                    throw new IllegalStateException(Messages.exception_noInstallArea);
                }
                File fwPersistentDataLocation = new File(installArea, "configuration");
                this.manipulator.getLauncherData().setFwPersistentDataLocation(fwPersistentDataLocation, false);
            }
            if (!this.composeState(bInfos, null, this.manipulator.getLauncherData().getFwPersistentDataLocation())) {
                this.composeNewState(launcherData, configData, bInfos);
            }
            this.resolve(true);
        }
    }

    public void installBundle(BundleInfo bInfo) throws FrameworkAdminRuntimeException {
        String newVersion;
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        URI realLocation = bInfo.getLocation();
        if (this.getBundleByLocation(realLocation) != null) {
            return;
        }
        Dictionary manifest = Utils.getOSGiManifest((URI)realLocation);
        if (manifest == null) {
            return;
        }
        String newSymbolicName = (String)manifest.get("Bundle-SymbolicName");
        int position = newSymbolicName.indexOf(";");
        if (position >= 0) {
            newSymbolicName = newSymbolicName.substring(0, position).trim();
        }
        if (this.getBundleByNameVersion(newSymbolicName, newVersion = (String)manifest.get("Bundle-Version")) != null) {
            return;
        }
        try {
            bInfo.setBundleId(++this.maxId);
            BundleDescription newBundleDescription = this.soFactory.createBundleDescription(this.state, manifest, realLocation.toString(), bInfo.getBundleId());
            this.addBundleToState(newBundleDescription);
            this.manipulator.getConfigData().addBundle(bInfo);
        }
        catch (BundleException e) {
            Log.log(2, (Object)this, "installBundle(BundleInfo)", e);
        }
    }

    public boolean isFullySupported() {
        return true;
    }

    public boolean isResolved() {
        return this.state.isResolved();
    }

    public boolean isResolved(BundleInfo bInfo) {
        URI realLocation = bInfo.getLocation();
        BundleDescription description = this.getBundleByLocation(realLocation);
        if (description == null) {
            return false;
        }
        return description.isResolved();
    }

    public void resolve(boolean increment) {
        this.state.resolve(increment);
    }

    void setFwJar(File fwJar) {
        this.manipulator.getLauncherData().setFwJar(fwJar);
    }

    private void setPlatformProperties(State state) {
        Dictionary platformProperties = state.getPlatformProperties()[0];
        this.platfromProperties.clear();
        if (platformProperties != null) {
            Enumeration enumeration = platformProperties.keys();
            while (enumeration.hasMoreElements()) {
                String key = (String)enumeration.nextElement();
                Object value = platformProperties.get(key);
                this.platfromProperties.setProperty(key, (String)value);
            }
        }
    }

    private void setPlatformPropertiesToState(Dictionary props) {
        Properties platformProperties = EquinoxBundlesState.setDefaultPlatformProperties();
        Enumeration enumeration = props.keys();
        block0: while (enumeration.hasMoreElements()) {
            String key = (String)enumeration.nextElement();
            int i = 0;
            while (i < PROPS.length) {
                if (key.equals(PROPS[i])) {
                    platformProperties.put(key, props.get(key));
                    continue block0;
                }
                ++i;
            }
        }
        this.state.setPlatformProperties((Dictionary)platformProperties);
    }

    private void setStateObjectFactory() {
        if (this.soFactory == null) {
            this.soFactory = this.platformAdmin.getFactory();
        }
    }

    public String toString() {
        if (this.state == null) {
            return null;
        }
        StringBuffer sb = new StringBuffer();
        BundleDescription[] bundleDescriptions = this.state.getBundles();
        int i = 0;
        while (i < bundleDescriptions.length) {
            sb.append(String.valueOf(bundleDescriptions[i].getBundleId()) + ":");
            sb.append(String.valueOf(bundleDescriptions[i].toString()) + "(");
            sb.append(String.valueOf(bundleDescriptions[i].isResolved()) + ")");
            String[] ees = bundleDescriptions[i].getExecutionEnvironments();
            int j = 0;
            while (j < ees.length) {
                sb.append(String.valueOf(ees[j]) + " ");
                ++j;
            }
            sb.append("\n");
            ++i;
        }
        sb.append("PlatformProperties:\n");
        Dictionary[] dics = this.state.getPlatformProperties();
        int i2 = 0;
        while (i2 < dics.length) {
            Enumeration enumeration = dics[i2].keys();
            while (enumeration.hasMoreElements()) {
                String key = (String)enumeration.nextElement();
                String value = (String)dics[i2].get(key);
                sb.append(" (" + key + "," + value + ")\n");
            }
            ++i2;
        }
        sb.append("\n");
        return sb.toString();
    }

    public void uninstallBundle(BundleInfo bInfo) throws FrameworkAdminRuntimeException {
        SimpleBundlesState.checkAvailability((FrameworkAdmin)this.fwAdmin);
        long id = 0L;
        URI realLocation = bInfo.getLocation();
        BundleDescription bundle = this.getBundleByLocation(bInfo.getLocation());
        if (bundle != null) {
            id = bundle.getBundleId();
        }
        if (id != 0L) {
            try {
                Dictionary manifest = Utils.getOSGiManifest((URI)bInfo.getLocation());
                if (manifest == null) {
                    Log.log(2, (Object)this, "uninstallBundle(BundleInfo)", NLS.bind((String)Messages.exception_bundleManifest, (Object)bInfo.getLocation()));
                    return;
                }
                BundleDescription bundleDescription = this.soFactory.createBundleDescription(this.state, manifest, realLocation.toString(), id);
                this.removeBundleFromState(bundleDescription);
                this.manipulator.getConfigData().removeBundle(bInfo);
            }
            catch (BundleException e) {
                Log.log(2, (Object)this, "uninstallBundle(BundleInfo)", e);
            }
        }
    }

    private BundleDescription getBundleByLocation(URI location) {
        if (location == null) {
            return null;
        }
        return (BundleDescription)this.locationStateIndex.get(location);
    }

    private BundleDescription getBundleByNameVersion(String bundleSymbolicName, String bundleVersion) {
        return (BundleDescription)this.nameVersionStateIndex.get(String.valueOf(bundleSymbolicName) + ";" + bundleVersion);
    }

    private String getKey(BundleDescription bundle) {
        return String.valueOf(bundle.getSymbolicName()) + ';' + bundle.getVersion();
    }

    private void createStateIndexes() {
        BundleDescription[] currentInstalledBundles = this.state.getBundles();
        int i = 0;
        while (i < currentInstalledBundles.length) {
            URI location = FileUtils.getRealLocation(this.manipulator, currentInstalledBundles[i].getLocation());
            this.locationStateIndex.put(location, currentInstalledBundles[i]);
            this.nameVersionStateIndex.put(this.getKey(currentInstalledBundles[i]), currentInstalledBundles[i]);
            ++i;
        }
    }

    private void addBundleToState(BundleDescription bundleDescription) {
        this.state.addBundle(bundleDescription);
        URI location = FileUtils.getRealLocation(this.manipulator, bundleDescription.getLocation());
        this.locationStateIndex.put(location, bundleDescription);
        this.nameVersionStateIndex.put(this.getKey(bundleDescription), bundleDescription);
    }

    private void removeBundleFromState(BundleDescription bundleDescription) {
        URI location = FileUtils.getRealLocation(this.manipulator, bundleDescription.getLocation());
        this.locationStateIndex.remove(location);
        this.nameVersionStateIndex.remove(this.getKey(bundleDescription));
        this.state.removeBundle(bundleDescription);
    }
}

