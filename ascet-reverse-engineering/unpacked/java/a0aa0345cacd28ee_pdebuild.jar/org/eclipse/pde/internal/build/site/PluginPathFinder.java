/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.update.configurator.ConfiguratorUtils
 *  org.eclipse.update.configurator.IPlatformConfiguration
 *  org.eclipse.update.configurator.IPlatformConfiguration$ISiteEntry
 */
package org.eclipse.pde.internal.build.site;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Properties;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.P2Utils;
import org.eclipse.update.configurator.ConfiguratorUtils;
import org.eclipse.update.configurator.IPlatformConfiguration;

public class PluginPathFinder {
    private static final String URL_PROPERTY = "org.eclipse.update.resolution_url";
    private static final String EMPTY_STRING = "";
    private static final String DROPINS = "dropins";
    private static final String LINK = ".link";
    private static final String ECLIPSE = "eclipse";

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
        ArrayList<File> sites = new ArrayList<File>();
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

    private static List getDropins(String platformHome, boolean features) {
        File dropins = new File(platformHome, DROPINS);
        if (!dropins.exists()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<File> sites = new ArrayList<File>();
        ArrayList<File> results = new ArrayList<File>();
        File[] contents = dropins.listFiles();
        int i = 0;
        while (i < contents.length) {
            if (contents[i].isFile()) {
                if (contents[i].getName().endsWith(LINK)) {
                    String path = PluginPathFinder.getSitePath(platformHome, contents[i], features);
                    if (path != null) {
                        sites.add(new File(path));
                    }
                } else {
                    results.add(contents[i]);
                }
            } else if (contents[i].isDirectory() && contents[i].getName().equals(features ? "features" : "plugins")) {
                results.addAll(Arrays.asList(contents[i].listFiles()));
            } else {
                File temp = new File(contents[i], features ? "features" : "plugins");
                if (temp.isDirectory()) {
                    sites.add(temp);
                } else {
                    temp = new File(contents[i], ECLIPSE + File.separator + (features ? "features" : "plugins"));
                    if (temp.isDirectory()) {
                        sites.add(temp);
                    } else {
                        results.add(contents[i]);
                    }
                }
            }
            ++i;
        }
        results.addAll(PluginPathFinder.scanLocations(sites.toArray(new File[sites.size()])));
        return results;
    }

    public static File[] getFeaturePaths(String platformHome) {
        return PluginPathFinder.getPaths(platformHome, true, false);
    }

    public static File[] getPluginPaths(String platformHome, boolean filterP2Base) {
        return PluginPathFinder.getPaths(platformHome, false, filterP2Base);
    }

    public static File[] getPluginPaths(String platformHome) {
        return PluginPathFinder.getPaths(platformHome, false, false);
    }

    public static File[] getPaths(String platformHome, boolean features, boolean filterP2Base) {
        block8: {
            URL[] urls;
            if (filterP2Base && (urls = P2Utils.readBundlesTxt(platformHome)) != null && urls.length > 0) {
                return Utils.asFile(urls);
            }
            File file = new File(platformHome, "configuration/org.eclipse.update/platform.xml");
            if (file.exists()) {
                File[] fileArray;
                String value = new Path(platformHome).toFile().toURL().toExternalForm();
                System.setProperty(URL_PROPERTY, value);
                try {
                    IPlatformConfiguration config = ConfiguratorUtils.getPlatformConfiguration((URL)file.toURL());
                    fileArray = PluginPathFinder.getConfiguredSitesPaths(platformHome, config, features);
                }
                catch (Throwable throwable) {
                    try {
                        System.setProperty(URL_PROPERTY, EMPTY_STRING);
                        throw throwable;
                    }
                    catch (MalformedURLException malformedURLException) {
                        break block8;
                    }
                    catch (IOException iOException) {}
                }
                System.setProperty(URL_PROPERTY, EMPTY_STRING);
                return fileArray;
            }
        }
        List list = PluginPathFinder.scanLocations(PluginPathFinder.getSites(platformHome, features));
        list.addAll(PluginPathFinder.getDropins(platformHome, features));
        return Utils.asFile(list);
    }

    private static File[] getConfiguredSitesPaths(String platformHome, IPlatformConfiguration configuration, boolean features) {
        List installPlugins = PluginPathFinder.scanLocations(new File[]{new File(platformHome, features ? "features" : "plugins")});
        List extensionPlugins = PluginPathFinder.getExtensionPlugins(configuration, features);
        List dropinsPlugins = PluginPathFinder.getDropins(platformHome, features);
        LinkedHashSet all = new LinkedHashSet();
        all.addAll(installPlugins);
        all.addAll(extensionPlugins);
        all.addAll(dropinsPlugins);
        return all.toArray(new File[all.size()]);
    }

    private static List getExtensionPlugins(IPlatformConfiguration config, boolean features) {
        ArrayList<File> extensionPlugins = new ArrayList<File>();
        IPlatformConfiguration.ISiteEntry[] sites = config.getConfiguredSites();
        int i = 0;
        while (i < sites.length) {
            URL url = sites[i].getURL();
            if ("file".equalsIgnoreCase(url.getProtocol())) {
                String[] entries = features ? sites[i].getFeatures() : sites[i].getPlugins();
                int j = 0;
                while (j < entries.length) {
                    extensionPlugins.add(new File(url.getFile(), entries[j]));
                    ++j;
                }
            }
            ++i;
        }
        return extensionPlugins;
    }

    private static List scanLocations(File[] sites) {
        ArrayList<File> result = new ArrayList<File>();
        int i = 0;
        while (i < sites.length) {
            File[] children;
            if (sites[i] != null && sites[i].exists() && (children = sites[i].listFiles()) != null) {
                result.addAll(Arrays.asList(children));
            }
            ++i;
        }
        return result;
    }
}

