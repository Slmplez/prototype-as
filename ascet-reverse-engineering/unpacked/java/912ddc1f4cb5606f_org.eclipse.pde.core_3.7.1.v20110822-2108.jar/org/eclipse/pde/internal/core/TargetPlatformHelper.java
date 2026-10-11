/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.TreeSet;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.MinimalState;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

public class TargetPlatformHelper {
    public static final String REFERENCE_PREFIX = "reference:";
    public static final String PLATFORM_PREFIX = "platform:";
    public static final String FILE_URL_PREFIX = "file:";
    public static final String JAR_EXTENSION = ".jar";
    private static Map fCachedLocations;

    public static Properties getConfigIniProperties() {
        File iniFile = new File(TargetPlatform.getLocation(), "configuration/config.ini");
        if (!iniFile.exists()) {
            return null;
        }
        Properties pini = new Properties();
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(iniFile);
            pini.load(fis);
            fis.close();
            Properties properties = pini;
            return properties;
        }
        catch (IOException e) {
            PDECore.logException(e);
        }
        finally {
            try {
                if (fis != null) {
                    fis.close();
                }
            }
            catch (IOException e) {
                PDECore.logException(e);
            }
        }
        return null;
    }

    public static String getBundleList() {
        Properties properties = TargetPlatformHelper.getConfigIniProperties();
        String osgiBundles = properties == null ? null : properties.getProperty("osgi.bundles");
        osgiBundles = osgiBundles == null ? TargetPlatformHelper.getDefaultBundleList() : TargetPlatformHelper.stripPathInformation(osgiBundles);
        return osgiBundles;
    }

    public static String getDefaultBundleList() {
        StringBuffer buffer = new StringBuffer();
        if (TargetPlatformHelper.getTargetVersion() > 3.1) {
            buffer.append("org.eclipse.equinox.common@2:start,");
            buffer.append("org.eclipse.update.configurator@3:start,");
            buffer.append("org.eclipse.core.runtime@start");
        } else {
            buffer.append("org.eclipse.core.runtime@2:start,");
            buffer.append("org.eclipse.update.configurator@3:start");
        }
        return buffer.toString();
    }

    public static String stripPathInformation(String osgiBundles) {
        StringBuffer result = new StringBuffer();
        StringTokenizer tokenizer = new StringTokenizer(osgiBundles, ",");
        while (tokenizer.hasMoreElements()) {
            String token = tokenizer.nextToken();
            int atIndex = (token = token.replaceAll("\\\\:|/:", ":")).indexOf(64);
            String bundle = atIndex > 0 ? token.substring(0, atIndex) : token;
            if ((bundle = bundle.trim()).startsWith(REFERENCE_PREFIX) && bundle.length() > REFERENCE_PREFIX.length()) {
                bundle = bundle.substring(REFERENCE_PREFIX.length());
            }
            if (bundle.startsWith(PLATFORM_PREFIX) && bundle.length() > PLATFORM_PREFIX.length()) {
                bundle = bundle.substring(PLATFORM_PREFIX.length());
            }
            if (bundle.startsWith(FILE_URL_PREFIX) && bundle.length() > FILE_URL_PREFIX.length()) {
                bundle = bundle.substring(FILE_URL_PREFIX.length());
            }
            Path path = new Path(bundle);
            String id = null;
            if (path.isAbsolute()) {
                id = TargetPlatformHelper.getSymbolicName(bundle);
            }
            if (id == null) {
                id = path.lastSegment();
            }
            if (id != null) {
                int underscoreIndex = id.indexOf(95);
                if (underscoreIndex >= 0) {
                    id = id.substring(0, underscoreIndex);
                }
                if (id.endsWith(JAR_EXTENSION)) {
                    id = id.substring(0, id.length() - 4);
                }
            }
            if (result.length() > 0) {
                result.append(",");
            }
            result.append(id != null ? id : bundle);
            if (atIndex <= -1) continue;
            result.append(token.substring(atIndex).trim());
        }
        return result.toString();
    }

    private static synchronized String getSymbolicName(String path) {
        File file;
        if (fCachedLocations == null) {
            fCachedLocations = new HashMap();
        }
        if ((file = new File(path)).exists() && !fCachedLocations.containsKey(path)) {
            try {
                Dictionary dictionary = MinimalState.loadManifest(file);
                String value = (String)dictionary.get("Bundle-SymbolicName");
                if (value != null) {
                    String id;
                    ManifestElement[] elements = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)value);
                    String string = id = elements.length > 0 ? elements[0].getValue() : null;
                    if (id != null) {
                        fCachedLocations.put(path, elements[0].getValue());
                    }
                }
            }
            catch (IOException iOException) {
            }
            catch (BundleException bundleException) {}
        }
        return (String)fCachedLocations.get(path);
    }

    public static void checkPluginPropertiesConsistency(Map map, File configDir) {
        File runtimeDir = new File(configDir, "org.eclipse.core.runtime");
        if (runtimeDir.exists() && runtimeDir.isDirectory()) {
            long timestamp = runtimeDir.lastModified();
            Iterator iter = map.values().iterator();
            while (iter.hasNext()) {
                if (!TargetPlatformHelper.hasChanged((IPluginModelBase)iter.next(), timestamp)) continue;
                CoreUtility.deleteContent(runtimeDir);
                break;
            }
        }
    }

    private static boolean hasChanged(IPluginModelBase model, long timestamp) {
        File[] files;
        if (model.getUnderlyingResource() != null && (files = new File(model.getInstallLocation()).listFiles()) != null) {
            int i = 0;
            while (i < files.length) {
                String name;
                if (!files[i].isDirectory() && (name = files[i].getName()).startsWith("OSGI-INF/l10n/bundle") && name.endsWith(".properties") && files[i].lastModified() > timestamp) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public static Set getApplicationNameSet() {
        TreeSet<String> result = new TreeSet<String>();
        IExtension[] extensions = PDECore.getDefault().getExtensionsRegistry().findExtensions("org.eclipse.core.runtime.applications", true);
        int i = 0;
        while (i < extensions.length) {
            String id = extensions[i].getUniqueIdentifier();
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            if (elements.length == 1) {
                boolean visible;
                String visiblity = elements[0].getAttribute("visible");
                boolean bl = visible = visiblity == null ? true : Boolean.valueOf(visiblity);
                if (id != null && visible) {
                    result.add(id);
                }
            }
            ++i;
        }
        result.add("org.eclipse.ui.ide.workbench");
        return result;
    }

    public static String[] getApplicationNames() {
        Set result = TargetPlatformHelper.getApplicationNameSet();
        return result.toArray(new String[result.size()]);
    }

    public static TreeSet getProductNameSet() {
        TreeSet<String> result = new TreeSet<String>();
        IExtension[] extensions = PDECore.getDefault().getExtensionsRegistry().findExtensions("org.eclipse.core.runtime.products", true);
        int i = 0;
        while (i < extensions.length) {
            String id;
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            if (elements.length == 1 && "product".equals(elements[0].getName()) && (id = extensions[i].getUniqueIdentifier()) != null && id.trim().length() > 0) {
                result.add(id);
            }
            ++i;
        }
        return result;
    }

    public static String[] getProductNames() {
        TreeSet result = TargetPlatformHelper.getProductNameSet();
        return result.toArray(new String[result.size()]);
    }

    public static Dictionary getTargetEnvironment() {
        Hashtable<String, String> result = new Hashtable<String, String>();
        ((Dictionary)result).put("osgi.os", TargetPlatform.getOS());
        ((Dictionary)result).put("osgi.ws", TargetPlatform.getWS());
        ((Dictionary)result).put("osgi.nl", TargetPlatform.getNL());
        ((Dictionary)result).put("osgi.arch", TargetPlatform.getOSArch());
        ((Dictionary)result).put("osgi.resolveOptional", "true");
        ((Dictionary)result).put("osgi.resolverMode", "development");
        return result;
    }

    public static Dictionary getTargetEnvironment(MinimalState state) {
        Dictionary result = TargetPlatformHelper.getTargetEnvironment();
        result.put("osgi.system.bundle", state.getSystemBundle());
        return result;
    }

    public static Dictionary[] getPlatformProperties(String[] profiles, MinimalState state) {
        if (profiles == null || profiles.length == 0) {
            return new Dictionary[]{TargetPlatformHelper.getTargetEnvironment(state)};
        }
        ArrayList<Dictionary> result = new ArrayList<Dictionary>(profiles.length);
        int i = 0;
        while (i < profiles.length) {
            Properties profileProps;
            IExecutionEnvironment environment = JavaRuntime.getExecutionEnvironmentsManager().getEnvironment(profiles[i]);
            if (environment != null && (profileProps = environment.getProfileProperties()) != null) {
                String ee;
                Dictionary props = TargetPlatformHelper.getTargetEnvironment(state);
                String systemPackages = profileProps.getProperty("org.osgi.framework.system.packages");
                if (systemPackages != null) {
                    props.put("org.osgi.framework.system.packages", systemPackages);
                }
                if ((ee = profileProps.getProperty("org.osgi.framework.executionenvironment")) != null) {
                    props.put("org.osgi.framework.executionenvironment", ee);
                }
                result.add(props);
            }
            ++i;
        }
        if (result.size() > 0) {
            return result.toArray(new Dictionary[result.size()]);
        }
        return new Dictionary[]{TargetPlatformHelper.getTargetEnvironment(state)};
    }

    public static String[] getKnownExecutionEnvironments() {
        String jreProfile = System.getProperty("pde.jreProfile");
        if (jreProfile != null && jreProfile.length() > 0) {
            if ("none".equals(jreProfile)) {
                return new String[0];
            }
            return new String[]{jreProfile};
        }
        IExecutionEnvironment[] environments = JavaRuntime.getExecutionEnvironmentsManager().getExecutionEnvironments();
        String[] ids = new String[environments.length];
        int i = 0;
        while (i < environments.length) {
            ids[i] = environments[i].getId();
            ++i;
        }
        return ids;
    }

    public static String getTargetVersionString() {
        IPluginModelBase model = PluginRegistry.findModel("org.eclipse.osgi");
        if (model == null) {
            return "3.7";
        }
        String version = model.getPluginBase().getVersion();
        if (VersionUtil.validateVersion(version).getSeverity() == 0) {
            Version vid = new Version(version);
            int major = vid.getMajor();
            int minor = vid.getMinor();
            if (major == 3 && minor == 0) {
                return "3.0";
            }
            if (major == 3 && minor == 1) {
                return "3.1";
            }
            if (major == 3 && minor == 2) {
                return "3.2";
            }
            if (major == 3 && minor == 3) {
                return "3.3";
            }
            if (major == 3 && minor == 4) {
                return "3.4";
            }
            if (major == 3 && minor == 5) {
                return "3.5";
            }
            if (major == 3 && minor == 6) {
                return "3.6";
            }
        }
        return "3.7";
    }

    public static double getHostVersion() {
        BundleContext context = PDECore.getDefault().getBundleContext();
        Bundle bundle = context.getBundle(0L);
        String version = (String)bundle.getHeaders().get("Bundle-Version");
        if (version == null) {
            return Double.parseDouble("3.7");
        }
        if (VersionUtil.validateVersion(version).getSeverity() == 0) {
            Version vid = new Version(version);
            int major = vid.getMajor();
            int minor = vid.getMinor();
            if (major == 3 && minor == 0) {
                return Double.parseDouble("3.0");
            }
            if (major == 3 && minor == 1) {
                return Double.parseDouble("3.1");
            }
            if (major == 3 && minor == 2) {
                return Double.parseDouble("3.2");
            }
            if (major == 3 && minor == 3) {
                return Double.parseDouble("3.3");
            }
            if (major == 3 && minor == 4) {
                return Double.parseDouble("3.4");
            }
            if (major == 3 && minor == 5) {
                return Double.parseDouble("3.5");
            }
            if (major == 3 && minor == 6) {
                return Double.parseDouble("3.6");
            }
        }
        return Double.parseDouble("3.7");
    }

    public static double getTargetVersion() {
        return Double.parseDouble(TargetPlatformHelper.getTargetVersionString());
    }

    public static String getSchemaVersionForTargetVersion(String targetVersion) {
        double target = targetVersion == null ? TargetPlatformHelper.getTargetVersion() : Double.parseDouble(targetVersion);
        String schemaVersion = "3.4";
        if (target < 3.2) {
            schemaVersion = "3.0";
        } else if (target < 3.4) {
            schemaVersion = "3.2";
        }
        return schemaVersion;
    }

    public static String getTargetVersionForSchemaVersion(String schemaVersion) {
        if (schemaVersion == null) {
            return TargetPlatformHelper.getTargetVersionString();
        }
        if (schemaVersion.equals("3.0")) {
            return "3.1";
        }
        if (schemaVersion.equals("3.2")) {
            return "3.3";
        }
        return TargetPlatformHelper.getTargetVersionString();
    }

    public static String getSchemaVersion() {
        return TargetPlatformHelper.getSchemaVersionForTargetVersion(null);
    }

    public static PDEState getPDEState() {
        return PDECore.getDefault().getModelManager().getState();
    }

    public static State getState() {
        return TargetPlatformHelper.getPDEState().getState();
    }

    public static Map getPatchMap(PDEState state) {
        HashMap<Long, String> properties = new HashMap<Long, String>();
        IPluginModelBase[] models = PluginRegistry.getActiveModels();
        int i = 0;
        while (i < models.length) {
            BundleDescription desc = models[i].getBundleDescription();
            if (desc != null) {
                Long id = new Long(desc.getBundleId());
                if (ClasspathUtilCore.hasExtensibleAPI(models[i])) {
                    properties.put(id, "Eclipse-ExtensibleAPI: true");
                } else if (ClasspathUtilCore.isPatchFragment(models[i])) {
                    properties.put(id, "Eclipse-PatchFragment: true");
                }
            }
            ++i;
        }
        return properties;
    }

    public static HashMap getBundleClasspaths(PDEState state) {
        HashMap<Long, String[]> properties = new HashMap<Long, String[]>();
        BundleDescription[] bundles = state.getState().getBundles();
        int i = 0;
        while (i < bundles.length) {
            properties.put(new Long(bundles[i].getBundleId()), TargetPlatformHelper.getValue(bundles[i], state));
            ++i;
        }
        return properties;
    }

    private static String[] getValue(BundleDescription bundle, PDEState state) {
        IPluginModelBase model = PluginRegistry.findModel(bundle);
        String[] result = null;
        if (model != null) {
            IPluginLibrary[] libs = model.getPluginBase().getLibraries();
            result = new String[libs.length];
            int i = 0;
            while (i < libs.length) {
                result[i] = libs[i].getName();
                ++i;
            }
        } else {
            String[] libs = state.getLibraryNames(bundle.getBundleId());
            result = new String[libs.length];
            int i = 0;
            while (i < libs.length) {
                result[i] = libs[i];
                ++i;
            }
        }
        if (result.length == 0) {
            return new String[]{"."};
        }
        return result;
    }

    public static String[] getFeaturePaths() {
        IFeatureModel[] models = PDECore.getDefault().getFeatureModelManager().getModels();
        ArrayList<String> list = new ArrayList<String>();
        int i = 0;
        while (i < models.length) {
            String location = models[i].getInstallLocation();
            if (location != null) {
                list.add(String.valueOf(location) + '/' + "feature.xml");
            }
            ++i;
        }
        return list.toArray(new String[list.size()]);
    }

    public static boolean matchesCurrentEnvironment(IPluginModelBase model) {
        BundleContext context = PDECore.getDefault().getBundleContext();
        Dictionary environment = TargetPlatformHelper.getTargetEnvironment();
        BundleDescription bundle = model.getBundleDescription();
        String filterSpec = bundle != null ? bundle.getPlatformFilter() : null;
        try {
            return filterSpec == null || context.createFilter(filterSpec).match(environment);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return false;
        }
    }

    public static boolean usesNewApplicationModel() {
        return PluginRegistry.findModel("org.eclipse.equinox.app") != null;
    }

    public static String getIniVMArgs() {
        StringBuffer result;
        block19: {
            File installDirectory = new File(Platform.getInstallLocation().getURL().getFile());
            if (Platform.getOS().equals("macosx")) {
                installDirectory = new File(installDirectory, "Eclipse.app/Contents/MacOS");
            }
            File eclipseIniFile = new File(installDirectory, "eclipse.ini");
            BufferedReader in = null;
            result = new StringBuffer();
            if (eclipseIniFile.exists()) {
                try {
                    try {
                        String str;
                        in = new BufferedReader(new FileReader(eclipseIniFile));
                        boolean vmargs = false;
                        while ((str = in.readLine()) != null) {
                            if (vmargs) {
                                if (result.length() > 0) {
                                    result.append(" ");
                                }
                                result.append(str);
                            }
                            if (vmargs || !str.equals("-vmargs")) continue;
                            vmargs = true;
                        }
                    }
                    catch (IOException e) {
                        PDECore.log(e);
                        if (in != null) {
                            try {
                                in.close();
                            }
                            catch (IOException e2) {
                                PDECore.log(e2);
                            }
                        }
                        break block19;
                    }
                }
                catch (Throwable throwable) {
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException e) {
                            PDECore.log(e);
                        }
                    }
                    throw throwable;
                }
                if (in != null) {
                    try {
                        in.close();
                    }
                    catch (IOException e) {
                        PDECore.log(e);
                    }
                }
            }
        }
        return result.toString();
    }
}

