/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.osgi.framework.Version;

public class AssemblyInformation
implements IPDEBuildConstants {
    private final Map assembleInformation = new HashMap(8);
    private final Map bundleMap = new HashMap();
    private final Map rootMap = new HashMap();

    public AssemblyInformation() {
        Iterator iter = AbstractScriptGenerator.getConfigInfos().iterator();
        while (iter.hasNext()) {
            this.assembleInformation.put(iter.next(), new AssemblyLevelConfigInfo());
        }
    }

    public void addFeature(Config config, BuildTimeFeature feature) {
        AssemblyLevelConfigInfo entry = (AssemblyLevelConfigInfo)this.assembleInformation.get(config);
        entry.addFeature(feature);
    }

    public void removeFeature(Config config, BuildTimeFeature feature) {
        AssemblyLevelConfigInfo entry = (AssemblyLevelConfigInfo)this.assembleInformation.get(config);
        entry.removeFeature(feature);
    }

    public void addPlugin(Config config, BundleDescription plugin) {
        AssemblyLevelConfigInfo entry = (AssemblyLevelConfigInfo)this.assembleInformation.get(config);
        entry.addPlugin(plugin);
        String id = plugin.getSymbolicName();
        BundleDescription existing = (BundleDescription)this.bundleMap.get(id);
        if (existing == null || existing.getVersion().compareTo(plugin.getVersion()) < 0) {
            this.bundleMap.put(id, plugin);
        }
        this.bundleMap.put(String.valueOf(id) + '_' + plugin.getVersion().toString(), plugin);
    }

    public BundleDescription getPlugin(String id, String version) {
        if (version != null && !"0.0.0".equals(version)) {
            return (BundleDescription)this.bundleMap.get(String.valueOf(id) + '_' + version);
        }
        return (BundleDescription)this.bundleMap.get(id);
    }

    public BuildTimeFeature getRootProvider(String id, String version) {
        if (version != null && !"0.0.0".equals(version)) {
            return (BuildTimeFeature)((Object)this.rootMap.get(String.valueOf(id) + '_' + version));
        }
        return (BuildTimeFeature)((Object)this.rootMap.get(id));
    }

    public Collection getPlugins(Config config) {
        return ((AssemblyLevelConfigInfo)this.assembleInformation.get(config)).getPlugins();
    }

    public Set getAllPlugins() {
        Collection pluginsByConfig = this.assembleInformation.values();
        LinkedHashSet result = new LinkedHashSet();
        Iterator iter = pluginsByConfig.iterator();
        while (iter.hasNext()) {
            Collection allPlugins = ((AssemblyLevelConfigInfo)iter.next()).getPlugins();
            result.addAll(allPlugins);
        }
        return result;
    }

    public Collection getBinaryPlugins(Config config) {
        Collection allPlugins = this.getPlugins(config);
        LinkedHashSet<BundleDescription> result = new LinkedHashSet<BundleDescription>(allPlugins.size());
        Iterator iter = allPlugins.iterator();
        while (iter.hasNext()) {
            BundleDescription bundle = (BundleDescription)iter.next();
            Properties bundleProperties = (Properties)bundle.getUserObject();
            if (bundleProperties != null && bundleProperties.get("isCompiler") != null && Boolean.FALSE != bundleProperties.get("isCompiler")) continue;
            result.add(bundle);
        }
        return result;
    }

    public Collection getCompiledPlugins(Config config) {
        Collection allPlugins = this.getPlugins(config);
        LinkedHashSet<BundleDescription> result = new LinkedHashSet<BundleDescription>(allPlugins.size());
        Iterator iter = allPlugins.iterator();
        while (iter.hasNext()) {
            BundleDescription bundle = (BundleDescription)iter.next();
            Properties bundleProperties = (Properties)bundle.getUserObject();
            if (bundleProperties == null || Boolean.TRUE != bundleProperties.get("isCompiler")) continue;
            result.add(bundle);
        }
        return result;
    }

    public Set getAllCompiledPlugins() {
        Collection pluginsByConfig = this.assembleInformation.values();
        LinkedHashSet<BundleDescription> result = new LinkedHashSet<BundleDescription>();
        Iterator iter2 = pluginsByConfig.iterator();
        while (iter2.hasNext()) {
            Collection allPlugins = ((AssemblyLevelConfigInfo)iter2.next()).getPlugins();
            Iterator iter = allPlugins.iterator();
            while (iter.hasNext()) {
                BundleDescription bundle = (BundleDescription)iter.next();
                if (Utils.isBinary(bundle)) continue;
                result.add(bundle);
            }
        }
        return result;
    }

    public Collection getCompiledFeatures(Config config) {
        ArrayList allFeatures = this.getFeatures(config);
        ArrayList result = new ArrayList(allFeatures.size());
        Iterator iter = allFeatures.iterator();
        while (iter.hasNext()) {
            Object tmp = iter.next();
            if (!(tmp instanceof BuildTimeFeature) || ((BuildTimeFeature)((Object)tmp)).isBinary()) continue;
            result.add(tmp);
        }
        return result;
    }

    public Collection getBinaryFeatures(Config config) {
        ArrayList allFeatures = this.getFeatures(config);
        ArrayList result = new ArrayList(allFeatures.size());
        Iterator iter = allFeatures.iterator();
        while (iter.hasNext()) {
            Object tmp = iter.next();
            if (tmp instanceof BuildTimeFeature) {
                if (!((BuildTimeFeature)((Object)tmp)).isBinary()) continue;
                result.add(tmp);
                continue;
            }
            result.add(tmp);
        }
        return result;
    }

    public ArrayList getFeatures(Config config) {
        return ((AssemblyLevelConfigInfo)this.assembleInformation.get(config)).getFeatures();
    }

    public boolean copyRootFile(Config config) {
        return ((AssemblyLevelConfigInfo)this.assembleInformation.get(config)).hasRootFile();
    }

    public Collection getRootFileProviders(Config config) {
        return ((AssemblyLevelConfigInfo)this.assembleInformation.get(config)).getRootFileProvider();
    }

    public void addRootFileProvider(Config config, BuildTimeFeature feature) {
        ((AssemblyLevelConfigInfo)this.assembleInformation.get(config)).addRootFileProvider(feature);
        String id = feature.getId();
        BuildTimeFeature existing = (BuildTimeFeature)((Object)this.rootMap.get(id));
        if (existing == null || new Version(existing.getVersion()).compareTo(new Version(feature.getVersion())) < 0) {
            this.rootMap.put(id, feature);
        }
        this.rootMap.put(String.valueOf(id) + '_' + feature.getVersion(), feature);
    }

    protected static class AssemblyLevelConfigInfo {
        private final Collection plugins = new LinkedHashSet(20);
        private final ArrayList features = new ArrayList(7);
        private final LinkedList rootFileProviders = new LinkedList();

        protected AssemblyLevelConfigInfo() {
        }

        public void addRootFileProvider(BuildTimeFeature feature) {
            if (this.rootFileProviders.contains((Object)feature)) {
                return;
            }
            Iterator iter = this.rootFileProviders.iterator();
            while (iter.hasNext()) {
                BuildTimeFeature featureDescriptor = (BuildTimeFeature)((Object)iter.next());
                if (feature == featureDescriptor) {
                    return;
                }
                if (!feature.getId().equals(featureDescriptor.getId()) || !feature.getVersion().equals(featureDescriptor.getVersion())) continue;
                return;
            }
            this.rootFileProviders.add(feature);
        }

        public Collection getRootFileProvider() {
            return this.rootFileProviders;
        }

        public boolean hasRootFile() {
            return this.rootFileProviders.size() > 0;
        }

        public ArrayList getFeatures() {
            return this.features;
        }

        public Collection getPlugins() {
            return this.plugins;
        }

        public void addFeature(BuildTimeFeature feature) {
            Iterator iter = this.features.iterator();
            while (iter.hasNext()) {
                BuildTimeFeature featureDescriptor = (BuildTimeFeature)((Object)iter.next());
                if (!feature.getId().equals(featureDescriptor.getId()) || !feature.getVersion().equals(featureDescriptor.getVersion())) continue;
                return;
            }
            this.features.add(feature);
        }

        public void addPlugin(BundleDescription plugin) {
            this.plugins.add(plugin);
        }

        public void removeFeature(BuildTimeFeature feature) {
            Iterator iter = this.features.iterator();
            while (iter.hasNext()) {
                BuildTimeFeature featureDescriptor = (BuildTimeFeature)((Object)iter.next());
                if (!feature.getId().equals(featureDescriptor.getId()) || !feature.getVersion().equals(featureDescriptor.getVersion())) continue;
                this.features.remove((Object)featureDescriptor);
                return;
            }
        }
    }
}

