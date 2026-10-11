/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.build.site;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.PDEUIStateWrapper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.PluginPathFinder;

public class BuildTimeSiteContentProvider
implements IPDEBuildConstants {
    private final String installedBaseURL;
    private final String[] urls;
    private final PDEUIStateWrapper pdeUIState;
    private BuildTimeSite site;
    private boolean filterP2Base = false;

    public BuildTimeSiteContentProvider(String[] urls, String installedBaseURL, PDEUIStateWrapper initialState) {
        this.installedBaseURL = installedBaseURL;
        this.urls = urls;
        this.pdeUIState = initialState;
    }

    public String getInstalledBaseURL() {
        return this.installedBaseURL;
    }

    public Collection getPluginPaths() {
        Collection pluginsToCompile = this.findPluginXML(Utils.asFile(this.urls));
        if (this.installedBaseURL != null) {
            pluginsToCompile.addAll(Arrays.asList(PluginPathFinder.getPluginPaths(this.installedBaseURL, this.filterP2Base)));
        }
        return pluginsToCompile;
    }

    public URL getURL() {
        throw new RuntimeException();
    }

    private Collection findPluginXML(File[] location) {
        ArrayList<File> collectedElements = new ArrayList<File>(10);
        int i = 0;
        while (i < location.length) {
            File f = new File(location[i], "plugins");
            if (f.exists()) {
                collectedElements.addAll(Arrays.asList(f.listFiles()));
            } else if (new File(location[i], "META-INF/MANIFEST.MF").exists() || new File(location[i], "plugin.xml").exists() || new File(location[i], "fragment.xml").exists()) {
                collectedElements.add(location[i]);
            } else if (location[i].isDirectory()) {
                if (new File(location[i], ".settings/org.eclipse.pde.core.prefs").exists()) {
                    try {
                        File actualRoot;
                        Properties properties = AbstractScriptGenerator.readProperties(location[i].getAbsolutePath(), ".settings/org.eclipse.pde.core.prefs", 0);
                        String root = properties.getProperty("BUNDLE_ROOT_PATH");
                        if (root != null && (actualRoot = new File(location[i], root)).exists()) {
                            collectedElements.add(actualRoot);
                        }
                    }
                    catch (CoreException coreException) {}
                } else {
                    collectedElements.addAll(Arrays.asList(location[i].listFiles()));
                }
            } else if (location[i].isFile() && location[i].getName().endsWith(".jar")) {
                collectedElements.add(location[i]);
            }
            ++i;
        }
        return collectedElements;
    }

    public File getBaseProfile() {
        if (this.installedBaseURL == null) {
            return null;
        }
        File configurationFolder = new File(this.installedBaseURL, "configuration");
        if (configurationFolder.exists()) {
            try {
                Properties config = AbstractScriptGenerator.readProperties(configurationFolder.getAbsolutePath(), "config.ini", 0);
                String dataArea = config.getProperty("eclipse.p2.data.area");
                String profileName = config.getProperty("eclipse.p2.profile");
                if (dataArea != null && profileName != null) {
                    File profileArea;
                    int idx = dataArea.indexOf("@config.dir");
                    if (idx != -1) {
                        dataArea = String.valueOf(dataArea.substring(0, idx)) + configurationFolder.getAbsolutePath() + dataArea.substring(idx + 11);
                    }
                    if ((profileArea = new File(dataArea, "org.eclipse.equinox.p2.engine/profileRegistry/" + profileName + ".profile")).exists()) {
                        return profileArea;
                    }
                }
            }
            catch (CoreException coreException) {}
        }
        return null;
    }

    public PDEUIStateWrapper getInitialState() {
        return this.pdeUIState;
    }

    public URL getArchiveReference(String id) {
        return null;
    }

    public BuildTimeSite getSite() {
        return this.site;
    }

    public void setSite(BuildTimeSite site) {
        this.site = site;
    }

    public void setFilterP2Base(boolean filter) {
        this.filterP2Base = filter;
    }
}

