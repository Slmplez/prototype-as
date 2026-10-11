/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.update.internal.configurator;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.internal.configurator.IConfigurationConstants;
import org.eclipse.update.internal.configurator.PlatformConfiguration;
import org.eclipse.update.internal.configurator.SiteEntry;
import org.eclipse.update.internal.configurator.Utils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class Configuration
implements IConfigurationConstants {
    private HashMap sites = new HashMap();
    private HashMap platformURLs = new HashMap();
    private Date date;
    private long lastModified;
    private URL url;
    private boolean transientConfig;
    private boolean isDirty;
    private Configuration linkedConfig;
    private URL associatedInstallURL = Utils.getInstallURL();

    public Configuration() {
        this(new Date());
        this.isDirty = true;
    }

    public Configuration(Date date) {
        this.date = date;
    }

    public void setURL(URL url) {
        this.url = url;
    }

    public URL getURL() {
        return this.url;
    }

    public void setLinkedConfig(Configuration linkedConfig) {
        this.linkedConfig = linkedConfig;
        SiteEntry[] linkedSites = linkedConfig.getSites();
        int i = 0;
        while (i < linkedSites.length) {
            linkedSites[i].setUpdateable(false);
            ++i;
        }
    }

    public Configuration getLinkedConfig() {
        return this.linkedConfig;
    }

    public boolean isDirty() {
        return this.isDirty;
    }

    public void setDirty(boolean dirty) {
        this.isDirty = dirty;
    }

    public void addSiteEntry(String url, SiteEntry site) {
        if (this.sites.get(url = Utils.canonicalizeURL(url)) == null && (this.linkedConfig == null || this.linkedConfig.sites.get(url) == null)) {
            site.setConfig(this);
            this.sites.put(url, site);
            if (url.startsWith("platform:")) {
                try {
                    URL relSite = null;
                    if (url != null && url.startsWith("platform:/config")) {
                        URL config_loc = this.getURL();
                        relSite = new URL(config_loc, "..");
                    } else {
                        relSite = this.getInstallURL();
                    }
                    URL pURL = new URL(url);
                    URL rURL = PlatformConfiguration.resolvePlatformURL(pURL, relSite);
                    String resolvedURL = rURL.toExternalForm();
                    this.platformURLs.put(resolvedURL, pURL);
                }
                catch (IOException iOException) {}
            }
        }
    }

    public void removeSiteEntry(String url) {
        url = Utils.canonicalizeURL(url);
        this.sites.remove(url);
        if (url.startsWith("platform:")) {
            try {
                URL relSite = null;
                if (url != null && url.startsWith("platform:/config")) {
                    URL config_loc = this.getURL();
                    relSite = new URL(config_loc, "..");
                } else {
                    relSite = this.getInstallURL();
                }
                URL pURL = new URL(url);
                URL rURL = PlatformConfiguration.resolvePlatformURL(pURL, relSite);
                String resolvedURL = rURL.toExternalForm();
                this.platformURLs.remove(resolvedURL);
            }
            catch (IOException iOException) {}
        }
    }

    public SiteEntry getSiteEntry(String url) {
        SiteEntry site = (SiteEntry)this.sites.get(url = Utils.canonicalizeURL(url));
        if (site == null && this.linkedConfig != null) {
            site = this.linkedConfig.getSiteEntry(url);
        }
        return site;
    }

    public SiteEntry[] getSites() {
        if (this.linkedConfig == null) {
            return this.sites.values().toArray(new SiteEntry[this.sites.size()]);
        }
        ArrayList combinedSites = new ArrayList(this.sites.values());
        combinedSites.addAll(this.linkedConfig.sites.values());
        return combinedSites.toArray(new SiteEntry[combinedSites.size()]);
    }

    public Element toXML(Document doc) throws CoreException {
        try {
            Element configElement = doc.createElement("config");
            configElement.setAttribute("version", "3.0");
            configElement.setAttribute("date", String.valueOf(this.date.getTime()));
            String transitory = this.isTransient() ? "true" : "false";
            configElement.setAttribute("transient", transitory);
            if (this.linkedConfig != null) {
                configElement.setAttribute("shared_ur", Utils.makeRelative(this.getInstallURL(), this.linkedConfig.getURL()).toExternalForm());
            }
            SiteEntry[] list = this.sites.values().toArray(new SiteEntry[0]);
            int i = 0;
            while (i < list.length) {
                if (this.linkedConfig == null || this.linkedConfig.getSiteEntry(list[i].getURL().toExternalForm()) == null) {
                    Element siteElement = list[i].toXML(doc);
                    configElement.appendChild(siteElement);
                }
                ++i;
            }
            return configElement;
        }
        catch (Exception e) {
            throw Utils.newCoreException("", e);
        }
    }

    public boolean isTransient() {
        return this.transientConfig;
    }

    public void setTransient(boolean isTransient) {
        this.transientConfig = isTransient;
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean unconfigureFeatureEntry(IPlatformConfiguration.IFeatureEntry feature) {
        SiteEntry[] sites = this.getSites();
        int i = 0;
        while (i < sites.length) {
            if (sites[i].unconfigureFeatureEntry(feature)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void setLastModified(long lastModified) {
        this.lastModified = lastModified;
    }

    public long lastModified() {
        return this.lastModified != 0L ? this.lastModified : this.date.getTime();
    }

    public URL asPlatformURL(URL url) {
        try {
            if (url.getProtocol().equals("file")) {
                String rUrl = url.toExternalForm();
                URL pUrl = (URL)this.platformURLs.get(rUrl);
                if (pUrl == null) {
                    return url;
                }
                return pUrl;
            }
            return url;
        }
        catch (Exception exception) {
            return url;
        }
    }

    public URL getInstallURL() {
        return this.associatedInstallURL;
    }

    public void setInstallLocation(URL installURL) {
        this.associatedInstallURL = installURL;
    }
}

