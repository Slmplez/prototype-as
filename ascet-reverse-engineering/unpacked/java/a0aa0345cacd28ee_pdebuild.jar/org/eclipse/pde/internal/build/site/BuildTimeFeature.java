/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 */
package org.eclipse.pde.internal.build.site;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.BuildTimeSiteContentProvider;
import org.eclipse.pde.internal.build.site.compatibility.SiteManager;

public class BuildTimeFeature
extends Feature {
    public static final String FEATURE_FILE = "feature";
    public static final String FEATURE_XML = "feature.xml";
    private Boolean binary = null;
    private int contextQualifierLength = -1;
    private BuildTimeSiteContentProvider contentProvider = null;
    private BuildTimeSite site = null;
    private URL url = null;
    private String rootLocation = null;

    public BuildTimeFeature(String id, String version) {
        super(id, version);
    }

    public BuildTimeFeature() {
        super("", "");
    }

    public FeatureEntry[] getRawIncludedFeatureReferences() {
        ArrayList<FeatureEntry> included = new ArrayList<FeatureEntry>();
        FeatureEntry[] entries = this.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (!entries[i].isRequires() && !entries[i].isPlugin()) {
                included.add(entries[i]);
            }
            ++i;
        }
        return included.toArray(new FeatureEntry[included.size()]);
    }

    public FeatureEntry[] getIncludedFeatureReferences() {
        ArrayList<FeatureEntry> included = new ArrayList<FeatureEntry>();
        FeatureEntry[] entries = this.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (!entries[i].isRequires() && !entries[i].isPlugin() && SiteManager.isValidEnvironment((IPlatformEntry)entries[i])) {
                included.add(entries[i]);
            }
            ++i;
        }
        return included.toArray(new FeatureEntry[included.size()]);
    }

    public FeatureEntry[] getPluginEntries() {
        ArrayList<FeatureEntry> plugins = new ArrayList<FeatureEntry>();
        FeatureEntry[] entries = this.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (!entries[i].isRequires() && entries[i].isPlugin() && SiteManager.isValidEnvironment((IPlatformEntry)entries[i])) {
                plugins.add(entries[i]);
            }
            ++i;
        }
        return plugins.toArray(new FeatureEntry[plugins.size()]);
    }

    public FeatureEntry[] getRawPluginEntries() {
        ArrayList<FeatureEntry> plugins = new ArrayList<FeatureEntry>();
        FeatureEntry[] entries = this.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (!entries[i].isRequires() && entries[i].isPlugin()) {
                plugins.add(entries[i]);
            }
            ++i;
        }
        return plugins.toArray(new FeatureEntry[plugins.size()]);
    }

    public FeatureEntry[] getImports() {
        ArrayList<FeatureEntry> imports = new ArrayList<FeatureEntry>();
        FeatureEntry[] entries = this.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (entries[i].isRequires()) {
                imports.add(entries[i]);
            }
            ++i;
        }
        return imports.toArray(new FeatureEntry[imports.size()]);
    }

    public boolean isBinary() {
        if (this.binary == null) {
            String root = this.getRootLocation();
            File properties = new File(root, "build.properties");
            this.binary = !properties.exists() ? Boolean.TRUE : Boolean.FALSE;
        }
        return this.binary;
    }

    public void setBinary(boolean isCompiled) {
        this.binary = isCompiled ? Boolean.TRUE : Boolean.FALSE;
    }

    public void setContextQualifierLength(int l) {
        this.contextQualifierLength = l;
    }

    public int getContextQualifierLength() {
        return this.contextQualifierLength;
    }

    public void setSite(BuildTimeSite site) {
        this.site = site;
    }

    public BuildTimeSite getSite() {
        return this.site;
    }

    public void setFeatureContentProvider(BuildTimeSiteContentProvider contentProvider) {
        this.contentProvider = contentProvider;
    }

    public BuildTimeSiteContentProvider getFeatureContentProvider() {
        return this.contentProvider;
    }

    public URL getURL() {
        return this.url;
    }

    public void setURL(URL url) {
        this.url = url;
    }

    public String getRootLocation() {
        if (this.rootLocation == null) {
            URL location = this.getURL();
            if (location == null) {
                return null;
            }
            try {
                URI locationURI = URIUtil.toURI((URL)location);
                this.rootLocation = URIUtil.toFile((URI)locationURI).getAbsolutePath();
            }
            catch (URISyntaxException uRISyntaxException) {
                this.rootLocation = location.getPath();
            }
            int i = this.rootLocation.lastIndexOf(FEATURE_XML);
            if (i != -1) {
                this.rootLocation = this.rootLocation.substring(0, i);
            }
        }
        return this.rootLocation;
    }

    public FeatureEntry findPluginEntry(String id, String version) {
        FeatureEntry[] entries = this.getEntries();
        int i = 0;
        while (i < entries.length) {
            if (entries[i].isPlugin() && entries[i].getId().equals(id) && Utils.matchVersions(version, entries[i].getVersion())) {
                return entries[i];
            }
            ++i;
        }
        return null;
    }
}

