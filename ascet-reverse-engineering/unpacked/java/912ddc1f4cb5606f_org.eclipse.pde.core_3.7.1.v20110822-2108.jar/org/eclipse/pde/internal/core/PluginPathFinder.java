/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.update.configurator.ConfiguratorUtils
 *  org.eclipse.update.configurator.IPlatformConfiguration
 *  org.eclipse.update.configurator.IPlatformConfiguration$ISiteEntry
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.P2Utils;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.update.configurator.ConfiguratorUtils;
import org.eclipse.update.configurator.IPlatformConfiguration;

public class PluginPathFinder {
    private static final String URL_PROPERTY = "org.eclipse.update.resolution_url";
    private static final String EMPTY_STRING = "";

    private static String getSitePath(String platformHome, File linkFile, boolean features) {
        String prefix = new Path(platformHome).removeLastSegments(1).toString();
        Properties properties = new Properties();
        try {
            FileInputStream fis = new FileInputStream(linkFile);
            properties.load(fis);
            fis.close();
            String path = properties.getProperty("path");
            if (path != null) {
                if (!new Path(path).isAbsolute()) {
                    path = String.valueOf(prefix) + '/' + path;
                }
                path = String.valueOf(path) + "/eclipse/";
                path = features ? String.valueOf(path) + "features" : String.valueOf(path) + "plugins";
                if (new File(path).exists()) {
                    return path;
                }
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    private static File[] getSites(String platformHome, boolean features) {
        File[] linkFiles;
        HashSet<File> sites = new HashSet<File>();
        File file = new File(platformHome, features ? "features" : "plugins");
        if (!features && !file.exists()) {
            file = new File(platformHome);
        }
        if (file.exists()) {
            sites.add(file);
        }
        if ((linkFiles = new File(String.valueOf(platformHome) + '/' + "links").listFiles()) != null) {
            int i = 0;
            while (i < linkFiles.length) {
                String path = PluginPathFinder.getSitePath(platformHome, linkFiles[i], features);
                if (path != null) {
                    sites.add(new File(path));
                }
                ++i;
            }
        }
        return sites.toArray(new File[sites.size()]);
    }

    public static URL[] getPluginPaths(String platformHome) {
        block16: {
            PDEPreferencesManager store = PDECore.getDefault().getPreferencesManager();
            if (!store.getBoolean("target_platform_realization")) {
                return PluginPathFinder.scanLocations(PluginPathFinder.getSites(platformHome, false));
            }
            URL[] urls = null;
            if (new Path(platformHome).equals((Object)new Path(TargetPlatform.getDefaultLocation()))) {
                Location configArea = Platform.getConfigurationLocation();
                if (configArea != null && (urls = P2Utils.readBundlesTxt(platformHome, configArea.getURL())) == null && configArea.getParentLocation() != null) {
                    urls = P2Utils.readBundlesTxt(platformHome, configArea.getParentLocation().getURL());
                }
            } else {
                File configurationArea = new File(platformHome, "configuration");
                if (configurationArea.exists()) {
                    try {
                        urls = P2Utils.readBundlesTxt(platformHome, configurationArea.toURL());
                    }
                    catch (MalformedURLException e) {
                        PDECore.log(e);
                    }
                }
            }
            if (urls != null) {
                return urls;
            }
            if (new Path(platformHome).equals((Object)new Path(TargetPlatform.getDefaultLocation())) && !PluginPathFinder.isDevLaunchMode()) {
                return ConfiguratorUtils.getCurrentPlatformConfiguration().getPluginPath();
            }
            File file = PluginPathFinder.getPlatformFile(platformHome);
            if (file != null) {
                URL[] uRLArray;
                String value = new Path(platformHome).toFile().toURL().toExternalForm();
                System.setProperty(URL_PROPERTY, value);
                try {
                    IPlatformConfiguration config = ConfiguratorUtils.getPlatformConfiguration((URL)file.toURL());
                    uRLArray = PluginPathFinder.getConfiguredSitesPaths(platformHome, config, false);
                }
                catch (Throwable throwable) {
                    try {
                        System.setProperty(URL_PROPERTY, EMPTY_STRING);
                        throw throwable;
                    }
                    catch (MalformedURLException malformedURLException) {
                        break block16;
                    }
                    catch (IOException iOException) {}
                }
                System.setProperty(URL_PROPERTY, EMPTY_STRING);
                return uRLArray;
            }
        }
        return PluginPathFinder.scanLocations(PluginPathFinder.getSites(platformHome, false));
    }

    private static File getPlatformFile(String platformHome) {
        String location = System.getProperty("org.eclipse.pde.platform_location");
        File file = null;
        if (location != null) {
            try {
                IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
                location = manager.performStringSubstitution(location);
                Path path = new Path(location);
                file = path.isAbsolute() ? path.toFile() : new File(platformHome, location);
                if (file.exists()) {
                    return file;
                }
            }
            catch (CoreException e) {
                PDECore.log(e);
            }
        }
        return (file = new File(platformHome, "configuration/org.eclipse.update/platform.xml")).exists() ? file : null;
    }

    public static URL[] getFeaturePaths(String platformHome) {
        block7: {
            File file = PluginPathFinder.getPlatformFile(platformHome);
            if (file != null) {
                URL[] uRLArray;
                String value = new Path(platformHome).toFile().toURL().toExternalForm();
                System.setProperty(URL_PROPERTY, value);
                try {
                    IPlatformConfiguration config = ConfiguratorUtils.getPlatformConfiguration((URL)file.toURL());
                    uRLArray = PluginPathFinder.getConfiguredSitesPaths(platformHome, config, true);
                }
                catch (Throwable throwable) {
                    try {
                        System.setProperty(URL_PROPERTY, EMPTY_STRING);
                        throw throwable;
                    }
                    catch (MalformedURLException malformedURLException) {
                        break block7;
                    }
                    catch (IOException iOException) {}
                }
                System.setProperty(URL_PROPERTY, EMPTY_STRING);
                return uRLArray;
            }
        }
        return PluginPathFinder.scanLocations(PluginPathFinder.getSites(platformHome, true));
    }

    private static URL[] getConfiguredSitesPaths(String platformHome, IPlatformConfiguration configuration, boolean features) {
        URL[] installPlugins = PluginPathFinder.scanLocations(new File[]{new File(platformHome, features ? "features" : "plugins")});
        URL[] extensionPlugins = PluginPathFinder.getExtensionPluginURLs(configuration, features);
        URL[] all = new URL[installPlugins.length + extensionPlugins.length];
        System.arraycopy(installPlugins, 0, all, 0, installPlugins.length);
        System.arraycopy(extensionPlugins, 0, all, installPlugins.length, extensionPlugins.length);
        return all;
    }

    private static URL[] getExtensionPluginURLs(IPlatformConfiguration config, boolean features) {
        ArrayList<URL> extensionPlugins = new ArrayList<URL>();
        IPlatformConfiguration.ISiteEntry[] sites = config.getConfiguredSites();
        int i = 0;
        while (i < sites.length) {
            URL url = sites[i].getURL();
            if ("file".equalsIgnoreCase(url.getProtocol())) {
                String[] entries = features ? sites[i].getFeatures() : sites[i].getPlugins();
                int j = 0;
                while (j < entries.length) {
                    try {
                        extensionPlugins.add(new File(url.getFile(), entries[j]).toURL());
                    }
                    catch (MalformedURLException malformedURLException) {}
                    ++j;
                }
            }
            ++i;
        }
        return extensionPlugins.toArray(new URL[extensionPlugins.size()]);
    }

    public static URL[] scanLocations(File[] sites) {
        HashSet<URL> result = new HashSet<URL>();
        int i = 0;
        while (i < sites.length) {
            File[] children;
            if (sites[i].exists() && (children = sites[i].listFiles()) != null) {
                int j = 0;
                while (j < children.length) {
                    try {
                        result.add(children[j].toURL());
                    }
                    catch (MalformedURLException malformedURLException) {}
                    ++j;
                }
            }
            ++i;
        }
        return result.toArray(new URL[result.size()]);
    }

    public static boolean isDevLaunchMode() {
        if (Boolean.getBoolean("eclipse.pde.launch")) {
            return true;
        }
        String[] args = Platform.getApplicationArgs();
        int i = 0;
        while (i < args.length) {
            if (args[i].equals("-pdelaunch")) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

