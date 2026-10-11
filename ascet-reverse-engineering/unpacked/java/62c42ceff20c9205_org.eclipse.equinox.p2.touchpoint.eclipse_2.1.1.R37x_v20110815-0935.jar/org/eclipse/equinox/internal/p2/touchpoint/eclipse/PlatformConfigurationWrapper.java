/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Messages;
import org.eclipse.equinox.internal.p2.update.Configuration;
import org.eclipse.equinox.internal.p2.update.Feature;
import org.eclipse.equinox.internal.p2.update.Site;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.util.NLS;

public class PlatformConfigurationWrapper {
    private Configuration configuration = null;
    private Site poolSite = null;
    private File configFile;
    private URI poolURI;
    private Manipulator manipulator;
    private static String FEATURES = "features/";

    private static URL getOSGiInstallArea(Manipulator manipulator) {
        BundleInfo[] bis = manipulator.getConfigData().getBundles();
        String searchFor = "org.eclipse.equinox.launcher";
        int i = 0;
        while (i < bis.length) {
            if (bis[i].getSymbolicName().equals(searchFor)) {
                if (bis[i].getLocation() != null) {
                    try {
                        if (bis[i].getLocation().getScheme().equals("file")) {
                            return PlatformConfigurationWrapper.fromOSGiJarToOSGiInstallArea(bis[i].getLocation().getPath()).toURL();
                        }
                    }
                    catch (MalformedURLException malformedURLException) {}
                }
                if (searchFor.equals("org.eclipse.osgi")) {
                    return null;
                }
                searchFor = "org.eclipse.osgi";
                i = -1;
            }
            ++i;
        }
        return null;
    }

    private static File fromOSGiJarToOSGiInstallArea(String path) {
        IPath parentFolder = new Path(path).removeLastSegments(1);
        if (parentFolder.lastSegment().equals("plugins")) {
            return parentFolder.removeLastSegments(1).toFile();
        }
        return parentFolder.toFile();
    }

    public PlatformConfigurationWrapper(File configDir, URI featurePool, Manipulator manipulator) {
        this.configFile = new File(configDir, "/org.eclipse.update/platform.xml");
        this.poolURI = featurePool;
        this.manipulator = manipulator;
    }

    private void loadDelegate() {
        if (this.configuration != null) {
            return;
        }
        try {
            this.configuration = this.configFile.exists() ? Configuration.load(this.configFile, PlatformConfigurationWrapper.getOSGiInstallArea(this.manipulator)) : new Configuration();
        }
        catch (ProvisionException provisionException) {
            throw new IllegalStateException(Messages.error_parsing_configuration);
        }
        if (this.poolURI == null) {
            throw new IllegalStateException("Error creating platform configuration. No bundle pool defined.");
        }
        this.poolSite = this.getSite(this.poolURI);
        if (this.poolSite == null) {
            this.poolSite = this.createSite(this.poolURI, this.getDefaultPolicy());
            this.configuration.add(this.poolSite);
        }
    }

    private String getDefaultPolicy() {
        Iterator<Site> iterator = this.configuration.getSites().iterator();
        while (iterator.hasNext()) {
            Site site = iterator.next();
            if (!"MANAGED-ONLY".equals(site.getPolicy())) continue;
            return "MANAGED-ONLY";
        }
        return "USER-EXCLUDE";
    }

    private Site createSite(URI location, String policy) {
        Site result = new Site();
        result.setUrl(location.toString());
        result.setPolicy(policy);
        result.setEnabled(true);
        return result;
    }

    private Site getSite(URI url) {
        List<Site> sites = this.configuration.getSites();
        File file = URIUtil.toFile((URI)url);
        Iterator<Site> iterator = sites.iterator();
        while (iterator.hasNext()) {
            Site nextSite = iterator.next();
            try {
                File nextFile = URIUtil.toFile((URI)new URI(nextSite.getUrl()));
                if (nextFile == null || !nextFile.equals(file)) continue;
                return nextSite;
            }
            catch (URISyntaxException uRISyntaxException) {}
        }
        return null;
    }

    private Site getSite(String id, String version) {
        List<Site> sites = this.configuration.getSites();
        Iterator<Site> iterator = sites.iterator();
        while (iterator.hasNext()) {
            Site site = iterator.next();
            Feature[] features = site.getFeatures();
            int i = 0;
            while (i < features.length) {
                if (id.equals(features[i].getId()) && version.equals(features[i].getVersion())) {
                    return site;
                }
                ++i;
            }
        }
        return null;
    }

    public IStatus addFeatureEntry(File file, String id, String version, String pluginIdentifier, String pluginVersion, boolean primary, String application, URL[] root, String linkFile) {
        this.loadDelegate();
        if (this.configuration == null) {
            return new Status(2, "org.eclipse.equinox.p2.touchpoint.eclipse", Messages.platform_config_unavailable, null);
        }
        URI fileURL = null;
        File featureDir = file.getParentFile();
        if (featureDir == null || !featureDir.getName().equals("features")) {
            return new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", NLS.bind((String)Messages.parent_dir_features, (Object)file.getAbsolutePath()), null);
        }
        File locationDir = featureDir.getParentFile();
        if (locationDir == null) {
            return new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", NLS.bind((String)Messages.cannot_calculate_extension_location, (Object)file.getAbsolutePath()), null);
        }
        fileURL = locationDir.toURI();
        Site site = this.getSite(fileURL);
        if (site == null) {
            site = this.createSite(fileURL, this.getDefaultPolicy());
            if (linkFile != null) {
                site.setLinkFile(linkFile);
            }
            this.configuration.add(site);
        } else if (site.getFeature(id, version) != null) {
            return Status.OK_STATUS;
        }
        Feature addedFeature = new Feature(site);
        addedFeature.setId(id);
        addedFeature.setVersion(version);
        addedFeature.setUrl(PlatformConfigurationWrapper.makeFeatureURL(id, version));
        addedFeature.setApplication(application);
        addedFeature.setPluginIdentifier(pluginIdentifier);
        addedFeature.setPluginVersion(pluginVersion);
        addedFeature.setRoots(root);
        addedFeature.setPrimary(primary);
        site.addFeature(addedFeature);
        return Status.OK_STATUS;
    }

    public IStatus removeFeatureEntry(String id, String version) {
        this.loadDelegate();
        if (this.configuration == null) {
            return new Status(2, "org.eclipse.equinox.p2.touchpoint.eclipse", Messages.platform_config_unavailable, null);
        }
        Site site = this.getSite(id, version);
        if (site == null) {
            site = this.poolSite;
        }
        site.removeFeature(PlatformConfigurationWrapper.makeFeatureURL(id, version));
        return Status.OK_STATUS;
    }

    public boolean containsFeature(URI siteURI, String featureId, String featureVersion) {
        this.loadDelegate();
        if (this.configuration == null) {
            return false;
        }
        Site site = this.getSite(siteURI);
        if (site == null) {
            return false;
        }
        return site.getFeature(featureId, featureVersion) != null;
    }

    public void save() throws ProvisionException {
        if (this.configuration != null) {
            this.configFile.getParentFile().mkdirs();
            this.configuration.save(this.configFile, PlatformConfigurationWrapper.getOSGiInstallArea(this.manipulator));
        }
    }

    private static String makeFeatureURL(String id, String version) {
        return String.valueOf(FEATURES) + id + "_" + version + "/";
    }
}

