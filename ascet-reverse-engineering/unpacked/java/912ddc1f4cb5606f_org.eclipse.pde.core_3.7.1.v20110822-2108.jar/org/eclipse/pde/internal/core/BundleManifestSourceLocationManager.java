/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.SourceLocation;
import org.eclipse.pde.internal.core.SourceLocationKey;
import org.eclipse.pde.internal.core.plugin.PluginBase;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class BundleManifestSourceLocationManager {
    private Map fPluginToSourceBundle = new HashMap(0);

    public SourceLocation getSourceLocation(String pluginName, Version pluginVersion) {
        IPluginModelBase plugin = (IPluginModelBase)this.fPluginToSourceBundle.get(new SourceLocationKey(pluginName, pluginVersion));
        if (plugin != null) {
            SourceLocation location = new SourceLocation((IPath)new Path(plugin.getInstallLocation()));
            location.setUserDefined(false);
            return location;
        }
        return null;
    }

    public Collection getSourceLocations() {
        ArrayList<SourceLocation> result = new ArrayList<SourceLocation>(this.fPluginToSourceBundle.values().size());
        Iterator iterator = this.fPluginToSourceBundle.values().iterator();
        while (iterator.hasNext()) {
            IPluginModelBase currentBundle = (IPluginModelBase)iterator.next();
            SourceLocation currentLocation = new SourceLocation((IPath)new Path(currentBundle.getInstallLocation()));
            currentLocation.setUserDefined(false);
            result.add(currentLocation);
        }
        return result;
    }

    public boolean hasValidSourceLocation(String pluginName, Version pluginVersion) {
        return this.fPluginToSourceBundle.containsKey(new SourceLocationKey(pluginName, pluginVersion));
    }

    public Set getSourceRoots(String pluginName, Version pluginVersion) {
        HashSet pluginSourceRoots = new HashSet();
        ManifestElement[] manifestElements = this.getSourceEntries(pluginName, pluginVersion);
        if (manifestElements != null) {
            int j = 0;
            while (j < manifestElements.length) {
                ManifestElement currentElement = manifestElements[j];
                String binaryPluginName = currentElement.getValue();
                String versionEntry = currentElement.getAttribute("version");
                if (binaryPluginName != null && binaryPluginName.equals(pluginName) && versionEntry != null && versionEntry.length() > 0) {
                    Version version = null;
                    try {
                        version = new Version(versionEntry);
                    }
                    catch (IllegalArgumentException e) {
                        PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.SourceLocationManager_problemProcessingBundleManifestSourceHeader, (Throwable)e));
                    }
                    if (pluginVersion.equals((Object)version)) {
                        this.addSourceRoots(currentElement.getDirective("roots"), pluginSourceRoots);
                        return pluginSourceRoots;
                    }
                }
                ++j;
            }
        }
        return pluginSourceRoots;
    }

    public Set getAllSourceRoots(String pluginName, Version pluginVersion) {
        HashSet pluginSourceRoots = new HashSet();
        ManifestElement[] manifestElements = this.getSourceEntries(pluginName, pluginVersion);
        if (manifestElements != null) {
            int j = 0;
            while (j < manifestElements.length) {
                ManifestElement currentElement = manifestElements[j];
                this.addSourceRoots(currentElement.getDirective("roots"), pluginSourceRoots);
                ++j;
            }
        }
        return pluginSourceRoots;
    }

    private ManifestElement[] getSourceEntries(String pluginName, Version pluginVersion) {
        String bundleSourceEntry;
        IPluginModelBase sourceBundle = (IPluginModelBase)this.fPluginToSourceBundle.get(new SourceLocationKey(pluginName, pluginVersion));
        if (sourceBundle != null && sourceBundle.getPluginBase() instanceof PluginBase && (bundleSourceEntry = ((PluginBase)sourceBundle.getPluginBase()).getBundleSourceEntry()) != null) {
            try {
                return ManifestElement.parseHeader((String)"Eclipse-SourceBundle", (String)bundleSourceEntry);
            }
            catch (BundleException e) {
                PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.SourceLocationManager_problemProcessingBundleManifestSourceHeader, (Throwable)e));
            }
        }
        return null;
    }

    private void addSourceRoots(String rootEntryDirective, Set pluginSourceRoots) {
        if (rootEntryDirective != null) {
            String[] roots = rootEntryDirective.split(",");
            int k = 0;
            while (k < roots.length) {
                pluginSourceRoots.add(roots[k]);
                ++k;
            }
        } else {
            pluginSourceRoots.add(".");
        }
    }

    public void setPlugins(IPluginModelBase[] externalModels) {
        this.fPluginToSourceBundle = new HashMap();
        int i = 0;
        while (i < externalModels.length) {
            String bundleSourceEntry;
            IPluginBase currentPlugin = externalModels[i].getPluginBase();
            if (currentPlugin instanceof PluginBase && (bundleSourceEntry = ((PluginBase)currentPlugin).getBundleSourceEntry()) != null) {
                Path path;
                ManifestElement[] manifestElements = null;
                try {
                    manifestElements = ManifestElement.parseHeader((String)"Eclipse-SourceBundle", (String)bundleSourceEntry);
                }
                catch (BundleException e) {
                    PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.SourceLocationManager_problemProcessingBundleManifestSourceHeader, (Throwable)e));
                    manifestElements = null;
                }
                if (manifestElements != null && (path = new Path(externalModels[i].getInstallLocation())).toFile().exists()) {
                    int j = 0;
                    while (j < manifestElements.length) {
                        ManifestElement currentElement = manifestElements[j];
                        String binaryPluginName = currentElement.getValue();
                        String versionEntry = currentElement.getAttribute("version");
                        if (binaryPluginName != null && binaryPluginName.length() > 0 && versionEntry != null && versionEntry.length() > 0) {
                            Version version = null;
                            try {
                                version = new Version(versionEntry);
                            }
                            catch (IllegalArgumentException e) {
                                PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)PDECoreMessages.SourceLocationManager_problemProcessingBundleManifestSourceHeader, (Object[])new Object[]{currentPlugin.getName(), versionEntry, path.toString()}), (Throwable)e));
                            }
                            this.fPluginToSourceBundle.put(new SourceLocationKey(binaryPluginName, version), externalModels[i]);
                        } else {
                            PDECore.log((IStatus)new Status(2, "org.eclipse.pde.core", NLS.bind((String)PDECoreMessages.BundleManifestSourceLocationManager_problemProcessBundleManifestHeaderAttributeMissing, (Object)currentPlugin.getName())));
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }
}

