/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.update;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.eclipse.equinox.internal.p2.update.Feature;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Site {
    public static final String POLICY_MANAGED_ONLY = "MANAGED-ONLY";
    public static final String POLICY_USER_EXCLUDE = "USER-EXCLUDE";
    public static final String POLICY_USER_INCLUDE = "USER-INCLUDE";
    public static final String PROP_LINK_FILE = "org.eclipse.update.site.linkFile";
    private String policy;
    private boolean enabled = true;
    private boolean updateable = true;
    private String url;
    private String linkFile;
    private Collection<Feature> features = new HashSet<Feature>();
    private List<String> list = new ArrayList<String>();

    public void addFeature(Feature feature) {
        this.features.add(feature);
    }

    public void addPlugin(String plugin) {
        this.list.add(plugin);
    }

    public boolean removePlugin(String plugin) {
        return this.list.remove(plugin);
    }

    public void setPluginList(List<String> plugins) {
        this.list = plugins == null ? new ArrayList<String>() : plugins;
    }

    public Feature[] getFeatures() {
        return this.features.toArray(new Feature[this.features.size()]);
    }

    public Feature getFeature(String id, String version) {
        if (id == null) {
            return null;
        }
        for (Feature feature : this.features) {
            if (!id.equals(feature.getId()) || version != null && !version.equals(feature.getVersion())) continue;
            return feature;
        }
        return null;
    }

    public Feature removeFeature(String featureURL) {
        for (Feature feature : this.features) {
            String nextURL = feature.getUrl();
            if (nextURL == null || !nextURL.equals(featureURL)) continue;
            return this.features.remove(feature) ? feature : null;
        }
        return null;
    }

    public String getLinkFile() {
        return this.linkFile;
    }

    public String[] getList() {
        return this.list.toArray(new String[this.list.size()]);
    }

    public String getPolicy() {
        return this.policy;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isUpdateable() {
        return this.updateable;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public void setLinkFile(String linkFile) {
        this.linkFile = linkFile;
    }

    public void setPolicy(String policy) {
        this.policy = policy;
    }

    public void setUpdateable(boolean updateable) {
        this.updateable = updateable;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int hashCode() {
        return this.getUrl().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Site)) {
            return false;
        }
        Site other = (Site)obj;
        if (this.isEnabled() != other.isEnabled()) {
            return false;
        }
        if (this.isUpdateable() != other.isUpdateable()) {
            return false;
        }
        if (!this.getUrl().equals(other.getUrl())) {
            return false;
        }
        if (!Site.equals(this.getLinkFile(), other.getLinkFile())) {
            return false;
        }
        if (!Site.equals(this.getPolicy(), other.getPolicy())) {
            return false;
        }
        if (!Site.equals(this.getList(), other.getList())) {
            return false;
        }
        return Site.equals(this.getFeatures(), other.getFeatures());
    }

    public static boolean equals(Object one, Object two) {
        return one == null ? two == null : one.equals(two);
    }

    public static boolean equals(Object[] one, Object[] two) {
        if (one == null && two == null) {
            return true;
        }
        if (one == null || two == null) {
            return false;
        }
        if (one.length != two.length) {
            return false;
        }
        int i = 0;
        while (i < one.length) {
            boolean found = false;
            int j = 0;
            while (!found && j < two.length) {
                found = one[i].equals(two[j]);
                ++j;
            }
            if (!found) {
                return false;
            }
            ++i;
        }
        return true;
    }
}

