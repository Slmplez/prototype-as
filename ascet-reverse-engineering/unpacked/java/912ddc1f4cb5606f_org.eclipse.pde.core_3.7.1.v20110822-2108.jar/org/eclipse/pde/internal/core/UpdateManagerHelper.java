/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.update.configurator.ConfiguratorUtils
 *  org.eclipse.update.configurator.IPlatformConfiguration
 *  org.eclipse.update.configurator.IPlatformConfiguration$IFeatureEntry
 *  org.eclipse.update.configurator.IPlatformConfiguration$ISiteEntry
 *  org.eclipse.update.configurator.IPlatformConfiguration$ISitePolicy
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.update.configurator.ConfiguratorUtils;
import org.eclipse.update.configurator.IPlatformConfiguration;

public class UpdateManagerHelper {
    public static void createPlatformConfiguration(File configLocation, IPluginModelBase[] models, IPluginModelBase brandingPlugin) throws CoreException {
        try {
            IPlatformConfiguration platformConfiguration = ConfiguratorUtils.getPlatformConfiguration(null);
            ArrayList sites = new ArrayList();
            int i = 0;
            while (i < models.length) {
                IPath path = new Path(models[i].getInstallLocation()).removeLastSegments(2);
                UpdateManagerHelper.addToSite(path, models[i], sites);
                ++i;
            }
            UpdateManagerHelper.createConfigurationEntries(platformConfiguration, sites);
            if (brandingPlugin != null) {
                UpdateManagerHelper.createFeatureEntries(platformConfiguration, brandingPlugin);
            }
            platformConfiguration.refresh();
            platformConfiguration.save(new URL("file:" + configLocation.getPath()));
        }
        catch (Exception e) {
            String message = e.getMessage();
            if (message == null || message.length() == 0) {
                message = PDECoreMessages.TargetPlatform_exceptionThrown;
            }
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 4, message, (Throwable)e));
        }
    }

    private static void addToSite(IPath path, IPluginModelBase model, ArrayList sites) {
        if (path.getDevice() != null) {
            path = path.setDevice(path.getDevice().toUpperCase(Locale.ENGLISH));
        }
        int i = 0;
        while (i < sites.size()) {
            LocalSite localSite = (LocalSite)sites.get(i);
            if (localSite.getPath().equals((Object)path)) {
                localSite.add(model);
                return;
            }
            ++i;
        }
        LocalSite localSite = new LocalSite(path);
        localSite.add(model);
        sites.add(localSite);
    }

    private static void createConfigurationEntries(IPlatformConfiguration config, ArrayList sites) throws CoreException, MalformedURLException {
        int i = 0;
        while (i < sites.size()) {
            LocalSite localSite = (LocalSite)sites.get(i);
            String[] plugins = localSite.getRelativePluginList();
            int policy = 0;
            IPlatformConfiguration.ISitePolicy sitePolicy = config.createSitePolicy(policy, plugins);
            IPlatformConfiguration.ISiteEntry siteEntry = config.createSiteEntry(localSite.getURL(), sitePolicy);
            config.configureSite(siteEntry);
            ++i;
        }
        config.isTransient(true);
    }

    private static void createFeatureEntries(IPlatformConfiguration config, IPluginModelBase plugin) throws MalformedURLException {
        String id = plugin.getPluginBase().getId();
        IFeatureModel featureModel = PDECore.getDefault().getFeatureModelManager().findFeatureModel(id);
        if (featureModel != null) {
            IFeature feature = featureModel.getFeature();
            IPlatformConfiguration.IFeatureEntry featureEntry = config.createFeatureEntry(id, feature.getVersion(), id, plugin.getPluginBase().getVersion(), true, null, new URL[]{new URL("file:" + plugin.getInstallLocation())});
            config.configureFeatureEntry(featureEntry);
        }
    }

    private static class LocalSite {
        private ArrayList fPlugins;
        private IPath fPath;

        public LocalSite(IPath path) {
            this.fPath = path.getDevice() != null ? path.setDevice(path.getDevice().toUpperCase(Locale.ENGLISH)) : path;
            this.fPlugins = new ArrayList();
        }

        public IPath getPath() {
            return this.fPath;
        }

        public URL getURL() throws MalformedURLException {
            return new URL("file:" + this.fPath.removeTrailingSeparator());
        }

        public void add(IPluginModelBase model) {
            this.fPlugins.add(model);
        }

        public String[] getRelativePluginList() {
            String[] list = new String[this.fPlugins.size()];
            int i = 0;
            while (i < this.fPlugins.size()) {
                IPluginModelBase model = (IPluginModelBase)this.fPlugins.get(i);
                Path location = new Path(model.getInstallLocation());
                if (location.segmentCount() > 2) {
                    location = location.removeFirstSegments(location.segmentCount() - 2);
                }
                list[i] = location.setDevice(null).makeRelative().toString();
                ++i;
            }
            return list;
        }
    }
}

