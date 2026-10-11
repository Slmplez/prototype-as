/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.publisher.QuotedTokenizer
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Filter
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.publisher.QuotedTokenizer;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.P2InfUtils;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.eclipse.pde.internal.build.site.P2Utils;
import org.eclipse.pde.internal.build.site.PDEState;
import org.osgi.framework.Filter;
import org.osgi.framework.Version;

public class ProductGenerator
extends AbstractScriptGenerator {
    private static final String SIMPLE_CONFIGURATOR_CONFIG_URL = "org.eclipse.equinox.simpleconfigurator.configUrl";
    private static final String START_LEVEL_1 = "@1:start";
    private static final String START_LEVEL_2 = "@2:start";
    private static final String START_LEVEL_3 = "@3:start";
    private static final String START = "@start";
    private static final String INSTALL_INSTRUCTION = "installBundle(bundle:${artifact});";
    private static final String UNINSTALL_INSTRUCTION = "uninstallBundle(bundle:${artifact});";
    private static final String P2_INF_APPEND = "org.eclipse.pde.build.append";
    private static final String P2_INF_START_LEVELS = "org.eclipse.pde.build.append.startlevels";
    private static final String P2_INF_LAUNCHERS = "org.eclipse.pde.build.append.launchers";
    private static final byte CONFIG_STYLE_ORIGINAL = 1;
    private static final byte CONFIG_STYLE_REFACTORED = 2;
    private static final byte CONFIG_STYLE_SIMPLE = 4;
    private static final byte CONFIG_STYLE_UPDATE = 8;
    private static final byte CONFIG_INCLUDES_DS = 16;
    private String product = null;
    private String featureId = null;
    private ProductFile productFile = null;
    private String root = null;
    private Properties buildProperties;
    private AssemblyInformation assembly = null;

    public void generate() throws CoreException {
        this.initialize();
        if (this.productFile == null) {
            return;
        }
        String location = null;
        String fileList = null;
        Iterator iter = ProductGenerator.getConfigInfos().iterator();
        while (iter.hasNext()) {
            String custom;
            Config config = (Config)iter.next();
            location = "productRootFiles/" + config.toStringReplacingAny(".", "ANY");
            String rootLocation = String.valueOf(this.root) + location;
            File rootDir = new File(rootLocation);
            if (!rootDir.exists() && !rootDir.mkdirs() || rootDir.isFile()) continue;
            if (this.buildProperties != null) {
                fileList = this.buildProperties.getProperty("root." + config.toString("."), "");
                fileList = String.valueOf(fileList) + (fileList.length() > 0 ? String.valueOf(',') + location : location);
                this.buildProperties.put("root." + config.toString("."), fileList);
            }
            if ((custom = this.findConfigFile(this.productFile, config.getOs())) != null) {
                try {
                    Utils.copyFile(custom, String.valueOf(rootLocation) + "/configuration/config.ini");
                }
                catch (IOException iOException) {}
            } else {
                this.createConfigIni(config, rootLocation);
            }
            if (config.getOs().equals(Config.ANY)) continue;
            this.createEclipseProductFile(rootLocation);
            this.createLauncherIniFile(rootLocation, config.getOs());
        }
    }

    public void generateEclipseProduct() throws CoreException {
        this.initialize();
        if (this.productFile == null) {
            return;
        }
        String location = "productRootFiles/ANY.ANY.ANY";
        String rootLocation = String.valueOf(this.root) + location;
        File rootDir = new File(rootLocation);
        if (!rootDir.exists() && !rootDir.mkdirs() || rootDir.isFile()) {
            return;
        }
        if (this.buildProperties == null) {
            this.buildProperties = new Properties();
        }
        String fileList = this.buildProperties.getProperty("root", "");
        fileList = String.valueOf(fileList) + (fileList.length() > 0 ? String.valueOf(',') + location : location);
        this.buildProperties.put("root", fileList);
        try {
            Utils.writeProperties(this.buildProperties, new File(this.root, "build.properties"), "");
        }
        catch (IOException iOException) {
            return;
        }
        this.createEclipseProductFile(rootLocation);
    }

    public boolean generateP2Info() throws CoreException {
        this.initialize();
        int startIndex = 1;
        boolean cus = true;
        boolean launchers = true;
        File initialInf = new File(new File(this.productFile.getLocation()).getParent(), "p2.inf");
        if (initialInf.exists()) {
            Properties properties = ProductGenerator.readProperties(initialInf.getParent(), "p2.inf", 0);
            if (!Boolean.valueOf(properties.getProperty(P2_INF_APPEND, "true")).booleanValue()) {
                return false;
            }
            cus = Boolean.valueOf(properties.getProperty(P2_INF_START_LEVELS, "true"));
            launchers = Boolean.valueOf(properties.getProperty(P2_INF_LAUNCHERS, "true"));
            startIndex = properties.size() + 1;
        }
        if (this.productFile.getConfigurationInfo().size() > 0 || this.productFile.haveCustomConfig()) {
            cus = false;
        }
        StringBuffer buffer = new StringBuffer();
        if (initialInf.exists()) {
            try {
                StringBuffer inf = Utils.readFile(initialInf);
                buffer.append(inf);
                buffer.append('\n');
            }
            catch (IOException iOException) {
                return false;
            }
        }
        this.generateP2InfCUs(buffer, startIndex, cus, launchers);
        try {
            File p2Inf = new File(this.root, "p2.inf");
            Utils.writeBuffer(buffer, p2Inf);
        }
        catch (IOException iOException) {
            return false;
        }
        return true;
    }

    private BundleInfo[] getDefaultStartInfo() {
        BundleInfo[] defaults = new BundleInfo[]{new BundleInfo("org.eclipse.equinox.simpleconfigurator", null, null, 1, true), new BundleInfo("org.eclipse.equinox.common", null, null, 2, true), new BundleInfo("org.eclipse.osgi", null, null, -1, true), new BundleInfo("org.eclipse.update.configurator", null, null, 4, true), new BundleInfo("org.eclipse.core.runtime", null, null, 4, true), new BundleInfo("org.eclipse.equinox.ds", null, null, 2, true)};
        return defaults;
    }

    private void generateP2InfCUs(StringBuffer buffer, int startIndex, boolean cus, boolean launchers) {
        int index = startIndex;
        String productVersionString = this.productFile.getVersion();
        String productRangeString = null;
        if (productVersionString.endsWith("qualifier")) {
            Version productVersion = new Version(productVersionString);
            productVersionString = String.valueOf(productVersion.getMajor()) + "." + productVersion.getMinor() + "." + productVersion.getMicro() + ".$qualifier$";
            productRangeString = "[" + productVersionString + "," + productVersionString + "]";
        } else {
            productRangeString = new VersionRange(new Version(productVersionString), true, new Version(productVersionString), true).toString();
        }
        if (cus) {
            BundleInfo[] infos = this.getDefaultStartInfo();
            int i = 0;
            while (i < infos.length && infos[i] != null) {
                BundleDescription bundle = this.assembly.getPlugin(infos[i].getSymbolicName(), infos[i].getVersion());
                if (bundle != null) {
                    String[] instructions = new String[]{INSTALL_INSTRUCTION, UNINSTALL_INSTRUCTION, "setStartLevel(startLevel:" + infos[i].getStartLevel() + ");markStarted(started:" + Boolean.toString(infos[i].isMarkedAsStarted()) + ");", "setStartLevel(startLevel:-1);markStarted(started:false);"};
                    if (bundle.getSymbolicName().equals("org.eclipse.update.configurator")) {
                        instructions[2] = String.valueOf(instructions[2]) + "setProgramProperty(propName:org.eclipse.update.reconcile, propValue:false);";
                        instructions[3] = String.valueOf(instructions[3]) + "setProgramProperty(propName:org.eclipse.update.reconcile, propValue:);";
                    }
                    if (!"0.0.0".equals(productVersionString)) {
                        P2InfUtils.printBundleCU(buffer, index++, bundle.getSymbolicName(), productVersionString, bundle.getVersion(), bundle.getPlatformFilter(), instructions);
                    } else {
                        P2InfUtils.printBundleCU(buffer, index++, bundle.getSymbolicName(), bundle.getVersion(), bundle.getPlatformFilter(), instructions);
                    }
                }
                ++i;
            }
        }
        try {
            index = this.generateExtraRequirements(buffer, index);
        }
        catch (CoreException coreException) {}
        BundleDescription launcher = this.assembly.getPlugin("org.eclipse.equinox.launcher", null);
        if (launcher != null && launchers) {
            VersionRange launcherRange = new VersionRange(launcher.getVersion(), true, launcher.getVersion(), true);
            P2InfUtils.printRequires(buffer, null, index++, "org.eclipse.equinox.p2.iu", "org.eclipse.equinox.launcher", launcherRange, launcher.getPlatformFilter(), true);
            String[] instructions = new String[]{INSTALL_INSTRUCTION, UNINSTALL_INSTRUCTION, "addProgramArg(programArg:-startup);addProgramArg(programArg:@artifact);", "removeProgramArg(programArg:-startup);removeProgramArg(programArg:@artifact);"};
            P2InfUtils.printBundleCU(buffer, index++, "org.eclipse.equinox.launcher", launcher.getVersion(), null, instructions);
            String brandedRange = productRangeString;
            BuildTimeFeature executableFeature = this.assembly.getRootProvider("org.eclipse.equinox.executable", null);
            if (executableFeature == null && this.havePDEUIState()) {
                executableFeature = this.assembly.getRootProvider("org.eclipse.pde.container.feature", null);
            }
            if (executableFeature != null && productVersionString.equals(Version.emptyVersion.toString())) {
                String brandedVersion = executableFeature.getVersion();
                brandedRange = new VersionRange(new Version(brandedVersion), true, new Version(brandedVersion), true).toString();
            }
            List configs = ProductGenerator.getConfigInfos();
            int i = 0;
            while (i < configs.size()) {
                Config config = (Config)configs.get(i);
                if (!config.equals(Config.genericConfig())) {
                    BundleDescription fragment;
                    String fragmentName = "org.eclipse.equinox.launcher." + config.getWs() + '.' + config.getOs();
                    if (config.getOs().compareToIgnoreCase("macosx") != 0 || config.getArch().equals("x86_64")) {
                        fragmentName = String.valueOf(fragmentName) + '.' + config.getArch();
                    }
                    if ((fragment = this.assembly.getPlugin(fragmentName, null)) != null) {
                        VersionRange fragmentRange = new VersionRange(fragment.getVersion(), true, fragment.getVersion(), true);
                        P2InfUtils.printRequires(buffer, null, index++, "org.eclipse.equinox.p2.iu", fragmentName, fragmentRange, fragment.getPlatformFilter(), true);
                        instructions = new String[]{INSTALL_INSTRUCTION, UNINSTALL_INSTRUCTION, "addProgramArg(programArg:--launcher.library);addProgramArg(programArg:@artifact);", "removeProgramArg(programArg:--launcher.library);removeProgramArg(programArg:@artifact);"};
                        P2InfUtils.printBundleCU(buffer, index++, fragment.getSymbolicName(), fragment.getVersion(), fragment.getPlatformFilter(), instructions);
                        if (executableFeature != null) {
                            String brandedIU = String.valueOf(this.productFile.getId()) + "_root." + config.getWs() + '.' + config.getOs() + '.' + config.getArch();
                            P2InfUtils.printRequires(buffer, null, index++, "org.eclipse.equinox.p2.iu", brandedIU, brandedRange, config.getPlatformFilter(), true);
                            instructions = new String[4];
                            String launcherName = this.getLauncherName(executableFeature);
                            instructions[2] = "setLauncherName(name:" + launcherName + ")";
                            instructions[3] = "setLauncherName()";
                            P2InfUtils.printIU(buffer, index++, brandedIU, productVersionString, config.getPlatformFilter(), instructions);
                        }
                    }
                }
                ++i;
            }
        }
    }

    private int generateExtraRequirements(StringBuffer buffer, int index) throws CoreException {
        BuildTimeFeature rootFeature = this.getSite(false).findFeature(this.featureId, (String)null, false);
        if (rootFeature == null) {
            return index;
        }
        Properties properties = AbstractScriptGenerator.readProperties(new Path(rootFeature.getRootLocation()).toOSString(), "build.properties", 0);
        String[] extraEntries = Utils.getArrayFromString(properties.getProperty("product@" + this.productFile.getId()));
        int i = 0;
        while (i < extraEntries.length) {
            Map entry = Utils.parseExtraBundlesString(extraEntries[i], true);
            String id = (String)entry.get("id");
            Version version = (Version)entry.get("version");
            boolean feature = extraEntries[i].startsWith("feature@");
            VersionRange range = null;
            String versionString = version.toString();
            if (feature) {
                BuildTimeFeature requiredFeature = this.getSite(false).findFeature(id, version.toString(), false);
                if (requiredFeature != null) {
                    versionString = requiredFeature.getVersion();
                }
            } else {
                BundleDescription bundle = this.getSite(false).getRegistry().getResolvedBundle(id, version.toString());
                if (bundle != null) {
                    versionString = bundle.getVersion().toString();
                }
            }
            range = Utils.createVersionRange(versionString);
            P2InfUtils.printRequires(buffer, null, index++, "org.eclipse.equinox.p2.iu", String.valueOf(id) + (feature ? ".feature.group" : ""), range, null, true);
            ++i;
        }
        return index;
    }

    private String getLauncherName(BuildTimeFeature executableProvider) {
        String name = this.productFile.getLauncherName();
        if (name != null) {
            return name;
        }
        return "eclipse";
    }

    private void initialize() throws CoreException {
        this.productFile = this.loadProduct(this.product);
    }

    private byte determineConfigStyle(Config config) {
        Properties props;
        int result = 0;
        if (this.assembly.getPlugin("org.eclipse.equinox.simpleconfigurator", null) != null) {
            result = (byte)(result | 4);
        } else if (this.assembly.getPlugin("org.eclipse.update.configurator", null) != null && Boolean.valueOf((props = this.productFile.getConfigProperties()).getProperty("org.eclipse.update.reconcile", "true")).booleanValue()) {
            result = (byte)(result | 8);
        }
        if (this.assembly.getPlugin("org.eclipse.equinox.ds", null) != null) {
            result = (byte)(result | 0x10);
        }
        if (this.assembly.getPlugin("org.eclipse.equinox.common", null) != null) {
            return (byte)(result | 2);
        }
        return (byte)(result | 1);
    }

    private List getBundlesFromProductFile(Config config) {
        BundleHelper helper = BundleHelper.getDefault();
        Hashtable<String, String> environment = new Hashtable<String, String>(3);
        ((Dictionary)environment).put("osgi.os", config.getOs());
        ((Dictionary)environment).put("osgi.ws", config.getWs());
        ((Dictionary)environment).put("osgi.arch", config.getArch());
        List pluginList = this.productFile.getProductEntries();
        ArrayList<BundleDescription> results = new ArrayList<BundleDescription>(pluginList.size());
        Iterator iter = pluginList.iterator();
        while (iter.hasNext()) {
            Filter filter;
            BundleDescription bundle;
            FeatureEntry entry = (FeatureEntry)iter.next();
            if (!entry.isPlugin() || (bundle = this.assembly.getPlugin(entry.getId(), entry.getVersion())) == null || (filter = helper.getFilter(bundle)) != null && !filter.match(environment)) continue;
            results.add(bundle);
        }
        return results;
    }

    private void printSimpleBundles(StringBuffer buffer, Config config, File configDir, byte style) {
        buffer.append("osgi.bundles=");
        buffer.append("org.eclipse.equinox.simpleconfigurator");
        buffer.append(START_LEVEL_1);
        buffer.append("\n");
        Collection plugins = null;
        plugins = this.productFile.useFeatures() ? this.assembly.getPlugins(config) : this.getBundlesFromProductFile(config);
        File bundlesTxt = P2Utils.writeBundlesTxt(plugins, configDir, this.productFile, (style & 2) > 0);
        if (bundlesTxt != null) {
            buffer.append(SIMPLE_CONFIGURATOR_CONFIG_URL);
            buffer.append("=file:");
            buffer.append("org.eclipse.equinox.simpleconfigurator/bundles.info");
            buffer.append("\n");
        }
    }

    private void printBundleInfo(StringBuffer buffer, BundleInfo info) {
        buffer.append(info.getSymbolicName());
        if (info.getStartLevel() != -1 || info.isMarkedAsStarted()) {
            buffer.append('@');
        }
        if (info.getStartLevel() > 0) {
            buffer.append(info.getStartLevel());
            if (info.isMarkedAsStarted()) {
                buffer.append(':');
            }
        }
        if (info.isMarkedAsStarted()) {
            buffer.append("start");
        }
    }

    private void printUpdateBundles(StringBuffer buffer, int style) {
        Map infos = this.productFile.getConfigurationInfo();
        buffer.append("osgi.bundles=");
        if (infos.size() > 0) {
            Iterator iterator = infos.values().iterator();
            while (iterator.hasNext()) {
                BundleInfo info = (BundleInfo)iterator.next();
                this.printBundleInfo(buffer, info);
                if (!iterator.hasNext()) continue;
                buffer.append(',');
            }
        } else if ((style & 2) > 0) {
            buffer.append("org.eclipse.equinox.common");
            buffer.append(START_LEVEL_2);
            buffer.append(',');
            buffer.append("org.eclipse.update.configurator");
            buffer.append(START_LEVEL_3);
            buffer.append(',');
            if ((style & 0x10) > 0) {
                buffer.append("org.eclipse.equinox.ds");
                buffer.append(START_LEVEL_2);
                buffer.append(',');
            }
            buffer.append("org.eclipse.core.runtime");
            buffer.append(START);
        } else {
            buffer.append("org.eclipse.core.runtime");
            buffer.append(START_LEVEL_2);
            buffer.append(',');
            buffer.append("org.eclipse.update.configurator");
            buffer.append(START_LEVEL_3);
        }
        buffer.append('\n');
    }

    private void printAllBundles(StringBuffer buffer, Config config, byte style) {
        String newline = "win32".equals(config.getOs()) ? "\r\n" : "\n";
        buffer.append("osgi.bundles=");
        Hashtable<String, String> environment = new Hashtable<String, String>(3);
        ((Dictionary)environment).put("osgi.os", config.getOs());
        ((Dictionary)environment).put("osgi.ws", config.getWs());
        ((Dictionary)environment).put("osgi.arch", config.getArch());
        Collection bundles = null;
        bundles = this.productFile.useFeatures() ? this.assembly.getPlugins(config) : this.getBundlesFromProductFile(config);
        BundleHelper helper = BundleHelper.getDefault();
        Map infos = this.productFile.getConfigurationInfo();
        boolean first = true;
        Iterator iter = bundles.iterator();
        while (iter.hasNext()) {
            Filter filter;
            BundleDescription bundle = (BundleDescription)iter.next();
            String id = bundle.getSymbolicName();
            if ("org.eclipse.osgi".equals(id) || "org.eclipse.equinox.launcher".equals(id) || (filter = helper.getFilter(bundle)) != null && !filter.match(environment)) continue;
            if (first) {
                first = false;
            } else {
                buffer.append(",\\" + newline + "  ");
            }
            if (infos.size() > 0) {
                if (infos.containsKey(id)) {
                    this.printBundleInfo(buffer, (BundleInfo)infos.get(id));
                    continue;
                }
                buffer.append(bundle.getSymbolicName());
                continue;
            }
            buffer.append(bundle.getSymbolicName());
            if ("org.eclipse.equinox.common".equals(id)) {
                buffer.append(START_LEVEL_2);
                continue;
            }
            if ("org.eclipse.equinox.ds".equals(id)) {
                buffer.append(START_LEVEL_2);
                continue;
            }
            if (!"org.eclipse.core.runtime".equals(id)) continue;
            if ((style & 2) > 0) {
                buffer.append(START);
                continue;
            }
            buffer.append(START_LEVEL_2);
        }
        buffer.append('\n');
    }

    private void createConfigIni(Config config, String location) throws CoreException {
        block24: {
            String productId;
            String application;
            File configDir = new File(String.valueOf(location) + "/configuration");
            if (!configDir.exists() && !configDir.mkdirs() || configDir.isFile()) {
                return;
            }
            byte configStyle = this.determineConfigStyle(config);
            StringBuffer buffer = new StringBuffer();
            buffer.append("#Product Runtime Configuration File\n");
            Properties properties = this.productFile.getConfigProperties();
            String splash = this.getSplashLocation(config);
            if (splash != null) {
                properties.put("osgi.splashPath", splash);
            }
            if ((application = this.productFile.getApplication()) != null) {
                properties.put("eclipse.application", application);
            }
            if ((productId = this.productFile.getProductId()) != null) {
                properties.put("eclipse.product", productId);
            }
            if (!properties.containsKey("osgi.bundles.defaultStartLevel")) {
                properties.put("osgi.bundles.defaultStartLevel", "4");
            }
            Iterator iterator = properties.keySet().iterator();
            while (iterator.hasNext()) {
                String key = (String)iterator.next();
                buffer.append(key);
                buffer.append('=');
                buffer.append(properties.getProperty(key));
                buffer.append('\n');
            }
            if ((configStyle & 4) > 0) {
                this.printSimpleBundles(buffer, config, configDir, configStyle);
            } else if ((configStyle & 8) > 0) {
                this.printUpdateBundles(buffer, configStyle);
            } else {
                this.printAllBundles(buffer, config, configStyle);
            }
            OutputStreamWriter writer = null;
            try {
                try {
                    writer = new FileWriter(new File(configDir, "config.ini"));
                    writer.write(buffer.toString());
                }
                catch (IOException iOException) {
                    try {
                        if (writer != null) {
                            writer.close();
                        }
                        break block24;
                    }
                    catch (IOException iOException2) {}
                    break block24;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (writer != null) {
                        writer.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (writer != null) {
                    writer.close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    private void createEclipseProductFile(String directory) throws CoreException {
        block19: {
            BundleDescription bundle;
            File dir = new File(directory);
            if (!dir.exists() && !dir.mkdirs() || dir.isFile()) {
                return;
            }
            Properties properties = new Properties();
            if (this.productFile.getProductName() != null) {
                properties.put("name", this.productFile.getProductName());
            }
            if (this.productFile.getProductId() != null) {
                properties.put("id", this.productFile.getProductId());
            }
            if (properties.size() == 0) {
                return;
            }
            String branding = this.getBrandingPlugin();
            if (branding != null && (bundle = this.getSite(false).getRegistry().getResolvedBundle(branding)) != null) {
                properties.put("version", bundle.getVersion().toString());
            }
            OutputStream stream = null;
            try {
                try {
                    File file = new File(dir, ".eclipseproduct");
                    stream = new BufferedOutputStream(new FileOutputStream(file));
                    properties.store(stream, "Eclipse Product File");
                    stream.flush();
                }
                catch (IOException iOException) {
                    if (stream != null) {
                        try {
                            stream.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block19;
                }
            }
            catch (Throwable throwable) {
                if (stream != null) {
                    try {
                        stream.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (stream != null) {
                try {
                    stream.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private String getBrandingPlugin() {
        String id = this.productFile.getProductId();
        if (id == null) {
            return null;
        }
        int dot = id.lastIndexOf(46);
        return dot != -1 ? id.substring(0, dot) : null;
    }

    private String getSplashLocation(Config config) throws CoreException {
        String plugin = this.productFile.getSplashLocation();
        if (plugin == null) {
            plugin = this.getBrandingPlugin();
        }
        if (plugin == null) {
            return null;
        }
        StringBuffer buffer = new StringBuffer("platform:/base/plugins/");
        buffer.append(plugin);
        Hashtable<String, String> environment = new Hashtable<String, String>(4);
        ((Dictionary)environment).put("osgi.os", config.getOs());
        ((Dictionary)environment).put("osgi.ws", config.getWs());
        ((Dictionary)environment).put("osgi.arch", config.getArch());
        PDEState state = this.getSite(false).getRegistry();
        BundleHelper helper = BundleHelper.getDefault();
        BundleDescription bundle = state.getResolvedBundle(plugin);
        if (bundle != null) {
            BundleDescription[] fragments = bundle.getFragments();
            int i = 0;
            while (i < fragments.length) {
                String fragmentId;
                Filter filter = helper.getFilter(fragments[i]);
                if ((filter == null || filter.match(environment)) && this.productFile.containsPlugin(fragmentId = fragments[i].getSymbolicName())) {
                    buffer.append(",platform:/base/plugins/");
                    buffer.append(fragmentId);
                }
                ++i;
            }
        }
        return buffer.toString();
    }

    private void createLauncherIniFile(String directory, String os) {
        File dir;
        String launcher = this.getLauncherName();
        if (os.equals("macosx")) {
            directory = String.valueOf(directory) + "/" + launcher + ".app/Contents/MacOS";
        }
        if (!(dir = new File(directory)).exists() && !dir.mkdirs() || dir.isFile()) {
            return;
        }
        String programArgs = this.productFile.getProgramArguments(os);
        String vmArgs = this.productFile.getVMArguments(os);
        if (!(programArgs != null && programArgs.length() != 0 || vmArgs != null && vmArgs.length() != 0)) {
            return;
        }
        String lineDelimiter = "win32".equals(os) ? "\r\n" : "\n";
        PrintWriter writer = null;
        try {
            try {
                String token;
                QuotedTokenizer tokenizer;
                writer = new PrintWriter(new FileWriter(new File(dir, String.valueOf(launcher) + ".ini")));
                if (programArgs != null && programArgs.length() > 0) {
                    tokenizer = new QuotedTokenizer(programArgs);
                    while (tokenizer.hasMoreTokens()) {
                        token = tokenizer.nextToken().trim();
                        if (token.equals("")) continue;
                        writer.print(token);
                        writer.print(lineDelimiter);
                    }
                }
                if (vmArgs != null && vmArgs.length() > 0) {
                    writer.print("-vmargs");
                    writer.print(lineDelimiter);
                    tokenizer = new QuotedTokenizer(vmArgs);
                    while (tokenizer.hasMoreTokens()) {
                        token = tokenizer.nextToken().trim();
                        if (token.equals("")) continue;
                        writer.print(token);
                        writer.print(lineDelimiter);
                    }
                }
            }
            catch (IOException iOException) {
                if (writer != null) {
                    writer.close();
                }
            }
        }
        finally {
            if (writer != null) {
                writer.close();
            }
        }
    }

    private String getLauncherName() {
        String name = this.productFile.getLauncherName();
        if (name != null && name.length() > 0) {
            if ((name = name.trim()).endsWith(".exe")) {
                name = name.substring(0, name.length() - 4);
            }
            return name;
        }
        return "eclipse";
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public void setRoot(String root) {
        this.root = root;
    }

    public void setBuildProperties(Properties buildProperties) {
        this.buildProperties = buildProperties;
    }

    public void setAssemblyInfo(AssemblyInformation info) {
        this.assembly = info;
    }

    public void setFeatureId(String featureId) {
        this.featureId = featureId;
    }
}

