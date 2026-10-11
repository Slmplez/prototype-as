/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.site;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.PDEUIStateWrapper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeSite;
import org.eclipse.pde.internal.build.site.BuildTimeSiteContentProvider;
import org.eclipse.pde.internal.build.site.PluginPathFinder;
import org.eclipse.pde.internal.build.site.compatibility.FeatureReference;

public class BuildTimeSiteFactory
implements IPDEBuildConstants {
    private BuildTimeSite site = null;
    private boolean urlsChanged = false;
    private String[] sitePaths;
    private String[] eeSources;
    private static String installedBaseLocation = null;
    private boolean reportResolutionErrors;
    private PDEUIStateWrapper pdeUIState;
    private List rootFeaturesForFilter;
    private List rootPluginsForFilter;
    private boolean filterState;
    private boolean filterP2Base = false;

    public BuildTimeSite createSite() throws CoreException {
        File featureXML;
        if (this.site != null && !this.urlsChanged) {
            return this.site;
        }
        this.urlsChanged = false;
        this.site = this.createSiteMapModel();
        Collection featureXMLs = this.findFeatureXMLs();
        String installedBaseURL = null;
        if (installedBaseLocation != null && !installedBaseLocation.equals("")) {
            if (!new File(installedBaseLocation).exists()) {
                String message = NLS.bind((String)Messages.error_incorrectDirectoryEntry, (Object)installedBaseLocation);
                installedBaseLocation = null;
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 6, message, null));
            }
            installedBaseURL = installedBaseLocation;
            Collection installedFeatures = Utils.findFiles(new File(installedBaseLocation), "features", "feature.xml");
            if (installedFeatures != null) {
                featureXMLs.addAll(installedFeatures);
            }
            File[] featureDirectories = PluginPathFinder.getFeaturePaths(installedBaseURL);
            int i = 0;
            while (i < featureDirectories.length) {
                featureXML = new File(featureDirectories[i], "feature.xml");
                if (featureXML.exists()) {
                    featureXMLs.add(featureXML);
                }
                ++i;
            }
        }
        Iterator iter = featureXMLs.iterator();
        while (iter.hasNext()) {
            featureXML = (File)iter.next();
            if (!featureXML.exists()) continue;
            try {
                URL featureURL = new URL("file:" + featureXML.getAbsolutePath());
                FeatureReference featureRef = this.createFeatureReferenceModel();
                featureRef.setSiteModel(this.site);
                featureRef.setURLString(featureURL.toExternalForm());
                this.site.addFeatureReferenceModel(featureRef);
            }
            catch (MalformedURLException e) {
                BundleHelper.getDefault().getLog().log((IStatus)new Status(2, "org.eclipse.pde.build", 20, NLS.bind((String)Messages.warning_cannotLocateSource, (Object)featureXML.getAbsolutePath()), (Throwable)e));
            }
        }
        BuildTimeSiteContentProvider contentProvider = new BuildTimeSiteContentProvider(this.sitePaths, installedBaseURL, this.pdeUIState);
        contentProvider.setFilterP2Base(this.filterP2Base);
        this.site.setSiteContentProvider(contentProvider);
        contentProvider.setSite(this.site);
        return this.site;
    }

    public BuildTimeSite createSiteMapModel() {
        BuildTimeSite model = new BuildTimeSite();
        model.setReportResolutionErrors(this.reportResolutionErrors);
        model.setFilter(this.filterState);
        model.setRootFeaturesForFilter(this.rootFeaturesForFilter);
        model.setRootPluginsForFiler(this.rootPluginsForFilter);
        model.setEESources(this.eeSources);
        return model;
    }

    public static void setInstalledBaseSite(String installedBaseSite) {
        installedBaseLocation = installedBaseSite;
    }

    public void setSitePaths(String[] urls) {
        if (this.sitePaths == null) {
            this.sitePaths = urls;
            this.urlsChanged = true;
            return;
        }
        int i = 0;
        boolean found = true;
        while (found && i < this.sitePaths.length) {
            found = false;
            int j = 0;
            while (j < urls.length) {
                if (this.sitePaths[i].equals(urls[j])) {
                    found = true;
                    break;
                }
                ++j;
            }
            ++i;
        }
        if (!found) {
            this.sitePaths = urls;
            this.urlsChanged = true;
        }
    }

    private Collection findFeatureXMLs() {
        ArrayList<File> features = new ArrayList<File>();
        Collection foundFeatures = null;
        int i = 0;
        while (i < this.sitePaths.length) {
            File file = new File(this.sitePaths[i], "feature.xml");
            if (file.exists()) {
                features.add(file);
            } else {
                foundFeatures = new File(this.sitePaths[i], "features").exists() ? Utils.findFiles(new File(this.sitePaths[i]), "features", "feature.xml") : Utils.findFiles(new File(this.sitePaths[i]), ".", "feature.xml");
                if (foundFeatures != null) {
                    features.addAll(foundFeatures);
                }
            }
            ++i;
        }
        return features;
    }

    public void setReportResolutionErrors(boolean value) {
        this.reportResolutionErrors = value;
    }

    public void setInitialState(PDEUIStateWrapper uiState) {
        this.pdeUIState = uiState;
    }

    public void setFilterState(boolean b) {
        this.filterState = b;
    }

    public void setFilterRoots(List featuresForFilterRoots, List pluginsForFilterRoots) {
        this.rootFeaturesForFilter = featuresForFilterRoots;
        this.rootPluginsForFilter = pluginsForFilterRoots;
    }

    public FeatureReference createFeatureReferenceModel() {
        return new FeatureReference();
    }

    public void setFilterP2Base(boolean filterP2Base) {
        this.filterP2Base = filterP2Base;
    }

    public void setEESources(String[] sources) {
        this.eeSources = sources;
    }
}

