/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.osgi.framework.Bundle
 */
package org.eclipse.update.internal.configurator;

import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.internal.configurator.FullFeatureParser;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.PluginEntry;
import org.eclipse.update.internal.configurator.SiteEntry;
import org.eclipse.update.internal.configurator.Utils;
import org.eclipse.update.internal.configurator.branding.AboutInfo;
import org.eclipse.update.internal.configurator.branding.IBundleGroupConstants;
import org.eclipse.update.internal.configurator.branding.IProductConstants;
import org.osgi.framework.Bundle;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class FeatureEntry
implements IPlatformConfiguration.IFeatureEntry,
IConfigurationConstants,
IBundleGroup,
IBundleGroupConstants,
IProductConstants {
    private String id;
    private String version;
    private String pluginVersion;
    private String application;
    private URL[] root;
    private boolean primary;
    private String pluginIdentifier;
    private String url;
    private String description;
    private String licenseURL;
    private ArrayList plugins;
    private AboutInfo branding;
    private SiteEntry site;
    private ResourceBundle resourceBundle;
    private boolean fullyParsed;

    public FeatureEntry(String id, String version, String pluginIdentifier, String pluginVersion, boolean primary, String application, URL[] root) {
        if (id == null) {
            throw new IllegalArgumentException();
        }
        this.id = id;
        this.version = version;
        this.pluginVersion = pluginVersion;
        this.pluginIdentifier = pluginIdentifier;
        this.primary = primary;
        this.application = application;
        this.root = root == null ? new URL[]{} : root;
    }

    public FeatureEntry(String id, String version, String pluginVersion, boolean primary, String application, URL[] root) {
        this(id, version, id, pluginVersion, primary, application, root);
    }

    public void setSite(SiteEntry site) {
        this.site = site;
    }

    public SiteEntry getSite() {
        return this.site;
    }

    public void addPlugin(PluginEntry plugin) {
        if (this.plugins == null) {
            this.plugins = new ArrayList();
        }
        this.plugins.add(plugin);
    }

    public PluginEntry[] getPluginEntries() {
        if (this.plugins == null) {
            this.fullParse();
        }
        return this.plugins.toArray(new PluginEntry[this.plugins.size()]);
    }

    public void setURL(String url) {
        this.url = url;
    }

    public String getURL() {
        return this.url;
    }

    public String getFeatureIdentifier() {
        return this.id;
    }

    public String getFeatureVersion() {
        return this.version;
    }

    public String getFeaturePluginVersion() {
        return this.pluginVersion != null && this.pluginVersion.length() > 0 ? this.pluginVersion : null;
    }

    public String getFeaturePluginIdentifier() {
        return this.pluginIdentifier != null && this.pluginIdentifier.length() > 0 ? this.pluginIdentifier : this.id;
    }

    public String getFeatureApplication() {
        return this.application;
    }

    public URL[] getFeatureRootURLs() {
        return this.root;
    }

    public boolean canBePrimary() {
        return this.primary;
    }

    public Element toXML(Document doc) {
        URL installURL = this.getSite().getConfig().getInstallURL();
        Element featureElement = doc.createElement("feature");
        if (this.id != null) {
            featureElement.setAttribute("id", this.id);
        }
        if (this.primary) {
            featureElement.setAttribute("primary", "true");
        }
        if (this.version != null) {
            featureElement.setAttribute("version", this.version);
        }
        if (this.pluginVersion != null && !this.pluginVersion.equals(this.version) && this.pluginVersion.length() > 0) {
            featureElement.setAttribute("plugin-version", this.pluginVersion);
        }
        if (this.pluginIdentifier != null && !this.pluginIdentifier.equals(this.id) && this.pluginIdentifier.length() > 0) {
            featureElement.setAttribute("plugin-identifier", this.pluginIdentifier);
        }
        if (this.application != null) {
            featureElement.setAttribute("application", this.application);
        }
        if (this.url != null) {
            featureElement.setAttribute("url", Utils.makeRelative(installURL, this.url));
        }
        URL[] roots = this.getFeatureRootURLs();
        int i = 0;
        while (i < roots.length) {
            String root = Utils.makeRelative(installURL, roots[i]).toExternalForm();
            if (root.trim().length() > 0) {
                Element rootElement = doc.createElement("root");
                rootElement.appendChild(doc.createTextNode(root));
                featureElement.appendChild(rootElement);
            }
            ++i;
        }
        return featureElement;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Bundle[] getBundles() {
        if (this.plugins == null) {
            this.fullParse();
        }
        ArrayList<Bundle> bundles = new ArrayList<Bundle>(this.plugins.size());
        int i = 0;
        while (i < this.plugins.size()) {
            PluginEntry plugin = (PluginEntry)this.plugins.get(i);
            Bundle bundle = Utils.getBundle(plugin.getPluginIdentifier());
            if (bundle != null) {
                bundles.add(bundle);
            }
            ++i;
        }
        return bundles.toArray(new Bundle[bundles.size()]);
    }

    public String getDescription() {
        if (this.description == null) {
            this.fullParse();
        }
        return this.description;
    }

    public String getIdentifier() {
        return this.id;
    }

    public String getName() {
        if (this.branding == null) {
            this.branding = AboutInfo.readFeatureInfo(this.id, this.version, this.getFeaturePluginIdentifier());
        }
        return this.branding.getProductName();
    }

    public String getProperty(String key) {
        if (key == null) {
            return null;
        }
        if (this.branding == null) {
            this.branding = AboutInfo.readFeatureInfo(this.id, this.version, this.getFeaturePluginIdentifier());
        }
        if (key.equals("featureImage")) {
            return this.branding.getFeatureImageURL() == null ? null : this.branding.getFeatureImageURL().toExternalForm();
        }
        if (key.equals("tipsAndTricksHref")) {
            return this.branding.getTipsAndTricksHref();
        }
        if (key.equals("welcomePage")) {
            return this.branding.getWelcomePageURL() == null ? null : this.branding.getWelcomePageURL().toExternalForm();
        }
        if (key.equals("welcomePerspective")) {
            return this.branding.getWelcomePerspectiveId();
        }
        if (key.equals("brandingBundleId")) {
            return this.pluginIdentifier;
        }
        if (key.equals("brandingBundleVersion")) {
            return this.pluginVersion;
        }
        if (key.equals("appName")) {
            return this.branding.getAppName();
        }
        if (key.equals("aboutText")) {
            return this.branding.getAboutText();
        }
        if (key.equals("aboutImage")) {
            return this.branding.getAboutImageURL() == null ? null : this.branding.getAboutImageURL().toExternalForm();
        }
        if (key.equals("windowImage")) {
            return this.branding.getWindowImageURL() == null ? null : this.branding.getWindowImageURL().toExternalForm();
        }
        if (key.equals("windowImages")) {
            URL[] urls = this.branding.getWindowImagesURLs();
            if (urls == null) {
                return null;
            }
            StringBuffer windowImagesURLs = new StringBuffer();
            int i = 0;
            while (i < urls.length) {
                windowImagesURLs.append(urls[i].toExternalForm());
                if (i != urls.length - 1) {
                    windowImagesURLs.append(',');
                }
                ++i;
            }
            return windowImagesURLs.toString();
        }
        if (key.equals("licenseHref")) {
            return this.getLicenseURL();
        }
        return null;
    }

    public String getProviderName() {
        if (this.branding == null) {
            this.branding = AboutInfo.readFeatureInfo(this.id, this.version, this.getFeaturePluginIdentifier());
        }
        return this.branding.getProviderName();
    }

    public String getVersion() {
        return this.version;
    }

    public String getApplication() {
        return this.application;
    }

    public String getId() {
        return this.id;
    }

    public ResourceBundle getResourceBundle() {
        if (this.resourceBundle != null) {
            return this.resourceBundle;
        }
        if (this.site == null) {
            return null;
        }
        ResourceBundle bundle = null;
        try {
            URL propertiesURL = new URL(this.site.getResolvedURL(), this.getURL());
            URLClassLoader l = new URLClassLoader(new URL[]{propertiesURL}, null);
            bundle = ResourceBundle.getBundle("feature", Utils.getDefaultLocale(), l);
        }
        catch (MissingResourceException e) {
            Utils.log(e.getLocalizedMessage());
        }
        catch (MalformedURLException e) {
            Utils.log(e.getLocalizedMessage());
        }
        return bundle;
    }

    public void setLicenseURL(String licenseURL) {
        this.licenseURL = licenseURL;
    }

    public String getLicenseURL() {
        if (this.licenseURL == null) {
            this.fullParse();
        }
        if (this.licenseURL == null) {
            return null;
        }
        String resolvedURL = Utils.getResourceString(this.getResourceBundle(), this.licenseURL);
        if (resolvedURL.startsWith("http://")) {
            return resolvedURL;
        }
        try {
            return new URL(this.getSite().getResolvedURL(), String.valueOf(this.getURL()) + resolvedURL).toExternalForm();
        }
        catch (MalformedURLException malformedURLException) {
            return resolvedURL;
        }
    }

    private void fullParse() {
        if (this.fullyParsed) {
            return;
        }
        this.fullyParsed = true;
        if (this.plugins == null) {
            this.plugins = new ArrayList();
        }
        FullFeatureParser parser = new FullFeatureParser(this);
        parser.parse();
    }

    public Bundle getDefiningBundle() {
        return Utils.getBundle(this.getFeaturePluginIdentifier());
    }

    public boolean hasBranding() {
        String bundleId = this.getFeaturePluginIdentifier();
        return bundleId != null && Utils.getBundle(bundleId) != null;
    }
}

