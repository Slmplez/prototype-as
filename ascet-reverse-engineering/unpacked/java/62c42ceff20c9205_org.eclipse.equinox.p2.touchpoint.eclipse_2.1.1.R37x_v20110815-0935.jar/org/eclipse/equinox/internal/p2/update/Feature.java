/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.update;

import java.net.URL;
import org.eclipse.equinox.internal.p2.update.Messages;
import org.eclipse.equinox.internal.p2.update.Site;

public class Feature {
    private String id;
    private String url;
    private String version;
    private Site site;
    private String pluginIdentifier;
    private String pluginVersion;
    private String application;
    private URL[] roots;
    private boolean primary = false;

    public Feature(Site site) {
        if (site == null) {
            throw new IllegalArgumentException(Messages.empty_feature_site);
        }
        this.site = site;
    }

    public String getApplication() {
        return this.application;
    }

    public String getId() {
        return this.id;
    }

    public String getPluginIdentifier() {
        return this.pluginIdentifier;
    }

    public String getPluginVersion() {
        return this.pluginVersion;
    }

    public URL[] getRoots() {
        return this.roots;
    }

    public Site getSite() {
        return this.site;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isPrimary() {
        return this.primary;
    }

    public void setApplication(String application) {
        this.application = application;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setPluginIdentifier(String pluginIdentifier) {
        this.pluginIdentifier = pluginIdentifier;
    }

    public void setPluginVersion(String pluginVersion) {
        this.pluginVersion = pluginVersion;
    }

    public void setPrimary(boolean primary) {
        this.primary = primary;
    }

    public void setRoots(URL[] roots) {
        this.roots = roots;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature other = (Feature)obj;
        if (!this.equals(this.getId(), other.getId())) {
            return false;
        }
        if (!this.equals(this.getSite().getUrl(), other.getSite().getUrl())) {
            return false;
        }
        if (!this.equals(this.getUrl(), other.getUrl())) {
            return false;
        }
        return this.equals(this.getVersion(), other.getVersion());
    }

    private boolean equals(Object one, Object two) {
        return one == null ? two == null : one.equals(two);
    }

    public int hashCode() {
        return this.id.hashCode() + this.version.hashCode();
    }
}

