/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.update.internal.configurator.branding;

import java.net.URL;
import java.util.Hashtable;
import org.eclipse.core.runtime.Path;
import org.eclipse.update.internal.configurator.branding.IniFileReader;

public final class AboutInfo {
    private static final String INI_FILENAME = "about.ini";
    private static final String PROPERTIES_FILENAME = "about.properties";
    private static final String MAPPINGS_FILENAME = "about.mappings";
    private String featureId;
    private String versionId = "";
    private String featurePluginLabel;
    private String providerName;
    private String appName;
    private URL windowImageURL;
    private URL[] windowImagesURLs;
    private URL aboutImageURL;
    private URL featureImageURL;
    private URL welcomePageURL;
    private String aboutText;
    private String welcomePerspective;
    private String tipsAndTricksHref;

    AboutInfo(String featureId) {
        this.featureId = featureId;
    }

    public static AboutInfo readFeatureInfo(String featureId, String versionId, String pluginId) {
        IniFileReader reader = new IniFileReader(featureId, pluginId, INI_FILENAME, PROPERTIES_FILENAME, MAPPINGS_FILENAME);
        reader.load();
        AboutInfo info = new AboutInfo(featureId);
        Hashtable<String, String> runtimeMappings = new Hashtable<String, String>();
        runtimeMappings.put("{featureVersion}", versionId);
        info.versionId = versionId;
        info.featurePluginLabel = reader.getFeaturePluginLabel();
        info.providerName = reader.getProviderName();
        info.appName = reader.getString("appName", true, runtimeMappings);
        info.aboutText = reader.getString("aboutText", true, runtimeMappings);
        info.windowImageURL = reader.getURL("windowImage");
        info.windowImagesURLs = reader.getURLs("windowImages");
        info.aboutImageURL = reader.getURL("aboutImage");
        info.featureImageURL = reader.getURL("featureImage");
        info.welcomePageURL = reader.getURL("welcomePage");
        info.welcomePerspective = reader.getString("welcomePerspective", false, runtimeMappings);
        info.tipsAndTricksHref = reader.getString("tipsAndTricksHref", false, runtimeMappings);
        return info;
    }

    public URL getAboutImageURL() {
        return this.aboutImageURL;
    }

    public URL getFeatureImageURL() {
        return this.featureImageURL;
    }

    public String getFeatureImageName() {
        if (this.featureImageURL != null) {
            Path path = new Path(this.featureImageURL.getPath());
            return path.lastSegment();
        }
        return null;
    }

    public String getFeatureLabel() {
        return this.featurePluginLabel;
    }

    public String getFeatureId() {
        return this.featureId;
    }

    public String getAboutText() {
        return this.aboutText;
    }

    public String getAppName() {
        return this.appName;
    }

    public String getProductName() {
        return this.featurePluginLabel;
    }

    public String getProviderName() {
        return this.providerName;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public URL getWelcomePageURL() {
        return this.welcomePageURL;
    }

    public String getWelcomePerspectiveId() {
        return this.welcomePerspective;
    }

    public String getTipsAndTricksHref() {
        return this.tipsAndTricksHref;
    }

    public URL getWindowImageURL() {
        return this.windowImageURL;
    }

    public URL[] getWindowImagesURLs() {
        return this.windowImagesURLs;
    }
}

