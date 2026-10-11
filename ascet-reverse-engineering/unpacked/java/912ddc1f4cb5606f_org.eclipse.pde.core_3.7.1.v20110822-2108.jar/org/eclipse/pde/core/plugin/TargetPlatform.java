/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.service.datalocation.Location
 */
package org.eclipse.pde.core.plugin;

import java.io.File;
import java.net.URL;
import java.util.Properties;
import java.util.Set;
import java.util.TreeSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.UpdateManagerHelper;

public class TargetPlatform {
    private static String PRODUCT_PROPERTY = "eclipse.product";
    private static String APPLICATION_PROPERTY = "eclipse.application";
    private static String SDK_PRODUCT = "org.eclipse.sdk.ide";
    private static String PLATFORM_PRODUCT = "org.eclipse.platform.ide";
    private static String IDE_APPLICATION = "org.eclipse.ui.ide.workbench";

    public static String getLocation() {
        PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
        return preferences.getString("platform_path");
    }

    public static String getDefaultLocation() {
        Location location = Platform.getInstallLocation();
        if (location != null) {
            URL url = Platform.getInstallLocation().getURL();
            IPath path = new Path(url.getFile()).removeTrailingSeparator();
            return path.toOSString();
        }
        return "";
    }

    public static String getOS() {
        return TargetPlatform.getProperty("org.eclipse.pde.ui.os", Platform.getOS());
    }

    public static String getWS() {
        return TargetPlatform.getProperty("org.eclipse.pde.ui.ws", Platform.getWS());
    }

    public static String getNL() {
        return TargetPlatform.getProperty("org.eclipse.pde.ui.nl", Platform.getNL());
    }

    public static String getOSArch() {
        return TargetPlatform.getProperty("org.eclipse.pde.ui.arch", Platform.getOSArch());
    }

    private static String getProperty(String key, String defaultValue) {
        PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
        String value = preferences.getString(key);
        return value.equals("") ? defaultValue : value;
    }

    public static String[] getApplications() {
        return TargetPlatformHelper.getApplicationNames();
    }

    public static String[] getProducts() {
        return TargetPlatformHelper.getProductNames();
    }

    public static String getDefaultProduct() {
        String product;
        Properties config = TargetPlatformHelper.getConfigIniProperties();
        TreeSet set = TargetPlatformHelper.getProductNameSet();
        if (config != null && (product = (String)config.get(PRODUCT_PROPERTY)) != null && set.contains(product)) {
            return product;
        }
        if (set.contains(SDK_PRODUCT)) {
            return SDK_PRODUCT;
        }
        return set.contains(PLATFORM_PRODUCT) ? PLATFORM_PRODUCT : null;
    }

    public static String getDefaultApplication() {
        String application;
        Properties config = TargetPlatformHelper.getConfigIniProperties();
        Set set = TargetPlatformHelper.getApplicationNameSet();
        if (config != null && (application = (String)config.get(APPLICATION_PROPERTY)) != null && set.contains(application)) {
            return application;
        }
        return IDE_APPLICATION;
    }

    public static void createPlatformConfiguration(File location, IPluginModelBase[] plugins, IPluginModelBase brandingPlugin) throws CoreException {
        UpdateManagerHelper.createPlatformConfiguration(location, plugins, brandingPlugin);
    }

    public static String getBundleList() {
        return TargetPlatformHelper.getBundleList();
    }
}

