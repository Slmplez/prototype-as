/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.pde.core.IModelProviderEvent;
import org.eclipse.pde.core.IModelProviderListener;
import org.eclipse.pde.internal.core.ModelProviderEvent;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.PluginPathFinder;
import org.eclipse.pde.internal.core.feature.ExternalFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.osgi.framework.Version;

public class ExternalFeatureModelManager {
    private ListenerList fListeners = new ListenerList();
    private IFeatureModel[] fModels;
    private PDEPreferencesManager fPref = PDECore.getDefault().getPreferencesManager();

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static IFeatureModel createModel(File manifest) {
        ExternalFeatureModel model = new ExternalFeatureModel();
        model.setInstallLocation(manifest.getParent());
        InputStream stream = null;
        stream = new BufferedInputStream(new FileInputStream(manifest));
        model.load(stream, false);
        ExternalFeatureModel externalFeatureModel = model;
        if (stream == null) return externalFeatureModel;
        try {
            stream.close();
            return externalFeatureModel;
        }
        catch (IOException iOException) {}
        return externalFeatureModel;
        catch (Exception exception) {
            try {
                if (stream == null) return null;
            }
            catch (Throwable throwable) {
                if (stream == null) throw throwable;
                try {
                    stream.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                stream.close();
                return null;
            }
            catch (IOException iOException) {}
            return null;
        }
    }

    public static IFeatureModel[] createModels(String platformHome, ArrayList additionalLocations, IProgressMonitor monitor) {
        if (platformHome != null && platformHome.length() > 0) {
            URL[] featureURLs = PluginPathFinder.getFeaturePaths(platformHome);
            if (additionalLocations.size() == 0) {
                return ExternalFeatureModelManager.createModels(featureURLs, monitor);
            }
            File[] dirs = new File[additionalLocations.size()];
            int i = 0;
            while (i < dirs.length) {
                String directory = additionalLocations.get(i).toString();
                File dir = new File(directory, "features");
                if (!dir.exists()) {
                    dir = new File(directory);
                }
                dirs[i] = dir;
                ++i;
            }
            URL[] newUrls = PluginPathFinder.scanLocations(dirs);
            URL[] result = new URL[featureURLs.length + newUrls.length];
            System.arraycopy(featureURLs, 0, result, 0, featureURLs.length);
            System.arraycopy(newUrls, 0, result, featureURLs.length, newUrls.length);
            return ExternalFeatureModelManager.createModels(result, monitor);
        }
        return new IFeatureModel[0];
    }

    private static IFeatureModel[] createModels(URL[] featurePaths, IProgressMonitor monitor) {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        monitor.beginTask("", featurePaths.length);
        HashMap<String, IFeatureModel> uniqueFeatures = new HashMap<String, IFeatureModel>();
        int i = 0;
        while (i < featurePaths.length) {
            File manifest = new File(featurePaths[i].getFile(), "feature.xml");
            if (!manifest.exists() || !manifest.isFile()) {
                monitor.worked(1);
            } else {
                IFeatureModel model = ExternalFeatureModelManager.createModel(manifest);
                if (model != null && model.isLoaded()) {
                    IFeature feature = model.getFeature();
                    uniqueFeatures.put(String.valueOf(feature.getId()) + "_" + feature.getVersion(), model);
                }
                monitor.worked(1);
            }
            ++i;
        }
        Collection models = uniqueFeatures.values();
        return models.toArray(new IFeatureModel[models.size()]);
    }

    public void addModelProviderListener(IModelProviderListener listener) {
        this.fListeners.add((Object)listener);
    }

    private void fireModelProviderEvent(IModelProviderEvent e) {
        Object[] listeners = this.fListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IModelProviderListener listener = (IModelProviderListener)listeners[i];
            listener.modelsChanged(e);
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void initialize() {
        String platformHome = this.fPref.getString("platform_path");
        String additionalLocations = this.fPref.getString("additional_locations");
        String externalFeaturesString = this.fPref.getString("external_features");
        IFeatureModel[] oldModels = null;
        IFeatureModel[] newModels = null;
        ExternalFeatureModelManager externalFeatureModelManager = this;
        synchronized (externalFeatureModelManager) {
            oldModels = this.fModels != null ? this.fModels : new IFeatureModel[]{};
            IFeatureModel[] allModels = ExternalFeatureModelManager.createModels(platformHome, this.parseAdditionalLocations(additionalLocations), null);
            if (externalFeaturesString == null || externalFeaturesString.trim().length() == 0) {
                this.fModels = allModels;
            } else {
                HashMap modelMap = new HashMap();
                int i = 0;
                while (i < allModels.length) {
                    List<IFeatureModel> list;
                    String id = allModels[i].getFeature().getId();
                    if (modelMap.containsKey(id)) {
                        list = (List)modelMap.get(id);
                        list.add(allModels[i]);
                    } else {
                        list = new ArrayList();
                        list.add(allModels[i]);
                        modelMap.put(id, list);
                    }
                    ++i;
                }
                HashSet<IFeatureModel> filteredModels = new HashSet<IFeatureModel>();
                String[] entries = externalFeaturesString.split(",");
                int i2 = 0;
                while (i2 < entries.length) {
                    String id;
                    List possibilities;
                    String[] parts = entries[i2].split("@");
                    if (parts.length > 0 && (possibilities = (List)modelMap.get(id = parts[0])) != null) {
                        IFeatureModel candidate = null;
                        Iterator iterator = possibilities.iterator();
                        while (iterator.hasNext()) {
                            Version candidateVersion;
                            IFeatureModel current = (IFeatureModel)iterator.next();
                            if (candidate == null) {
                                candidate = current;
                                continue;
                            }
                            if (parts.length > 1 && parts[1].equals(current.getFeature().getVersion())) {
                                candidate = current;
                                continue;
                            }
                            Version currentVersion = Version.parseVersion((String)current.getFeature().getVersion());
                            if (currentVersion.compareTo(candidateVersion = Version.parseVersion((String)candidate.getFeature().getVersion())) != 1) continue;
                            candidate = current;
                        }
                        if (candidate != null) {
                            filteredModels.add(candidate);
                        }
                    }
                    ++i2;
                }
                this.fModels = filteredModels.toArray(new IFeatureModel[filteredModels.size()]);
            }
            newModels = new IFeatureModel[this.fModels.length];
            System.arraycopy(this.fModels, 0, newModels, 0, this.fModels.length);
        }
        this.notifyListeners(oldModels, newModels);
    }

    private ArrayList parseAdditionalLocations(String additionalLocations) {
        ArrayList<String> result = new ArrayList<String>();
        StringTokenizer tokenizer = new StringTokenizer(additionalLocations, ",");
        while (tokenizer.hasMoreTokens()) {
            result.add(tokenizer.nextToken().trim());
        }
        return result;
    }

    private void notifyListeners(IFeatureModel[] oldModels, IFeatureModel[] newFeatureModels) {
        if (oldModels.length > 0 || newFeatureModels.length > 0) {
            int type = 0;
            if (oldModels.length > 0) {
                type |= 2;
            }
            if (newFeatureModels.length > 0) {
                type |= 1;
            }
            ModelProviderEvent replacedFeatures = new ModelProviderEvent(this, type, newFeatureModels, oldModels, null);
            this.fireModelProviderEvent(replacedFeatures);
        }
    }

    public void removeModelProviderListener(IModelProviderListener listener) {
        this.fListeners.remove((Object)listener);
    }

    public IFeatureModel[] getModels() {
        return this.fModels;
    }
}

