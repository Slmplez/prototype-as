/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.spi.RegistryContributor
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.BundleManifestSourceLocationManager;
import org.eclipse.pde.internal.core.ICoreConstants;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.SourceLocation;
import org.osgi.framework.Version;

public class SourceLocationManager
implements ICoreConstants {
    private List fExtensionLocations = null;
    private BundleManifestSourceLocationManager fBundleManifestLocator = null;

    public IPath findSourcePath(IPluginBase pluginBase, IPath sourceLibraryPath) {
        if (pluginBase.getId() == null || pluginBase.getVersion() == null) {
            return null;
        }
        IPath relativePath = this.getRelativePath(pluginBase, sourceLibraryPath);
        IPath result = this.searchUserSpecifiedLocations(relativePath);
        if (result == null && (result = this.searchBundleManifestLocations(pluginBase)) == null) {
            result = this.searchExtensionLocations(relativePath);
        }
        return result;
    }

    public URL findSourceFile(IPluginBase pluginBase, IPath filePath) {
        if (pluginBase.getId() == null || pluginBase.getVersion() == null) {
            return null;
        }
        IPath relativePath = this.getRelativePath(pluginBase, filePath);
        IPath result = this.searchUserSpecifiedLocations(relativePath);
        if (result == null) {
            result = this.searchBundleManifestLocations(pluginBase);
            if (result != null) {
                try {
                    return new URL("jar:" + result.toFile().toURI().toURL() + "!/" + filePath.toString());
                }
                catch (MalformedURLException e) {
                    PDECore.log(e);
                }
            }
            result = this.searchExtensionLocations(relativePath);
        }
        if (result != null) {
            try {
                return result.toFile().toURL();
            }
            catch (MalformedURLException e) {
                PDECore.log(e);
            }
        }
        return null;
    }

    public File findSourcePlugin(IPluginBase pluginBase) {
        if (pluginBase.getId() == null || pluginBase.getVersion() == null) {
            return null;
        }
        IPath path = this.findSourcePath(pluginBase, null);
        return path == null ? null : path.toFile();
    }

    public boolean hasBundleManifestLocation(IPluginBase plugin) {
        if (plugin.getId() == null || plugin.getVersion() == null) {
            return false;
        }
        return this.getBundleManifestLocator().hasValidSourceLocation(plugin.getId(), new Version(plugin.getVersion()));
    }

    public Set findAllSourceRootsInSourceLocation(IPluginBase plugin) {
        if (plugin.getId() == null || plugin.getVersion() == null) {
            return Collections.EMPTY_SET;
        }
        return this.getBundleManifestLocator().getAllSourceRoots(plugin.getId(), new Version(plugin.getVersion()));
    }

    public Set findSourceRoots(IPluginBase plugin) {
        if (plugin.getId() == null || plugin.getVersion() == null) {
            return Collections.EMPTY_SET;
        }
        return this.getBundleManifestLocator().getSourceRoots(plugin.getId(), new Version(plugin.getVersion()));
    }

    public void reset() {
        this.fExtensionLocations = null;
        this.fBundleManifestLocator = null;
    }

    public List getUserLocations() {
        ArrayList userLocations = new ArrayList();
        String pref = PDECore.getDefault().getPreferencesManager().getString("source_locations");
        if (pref.length() > 0) {
            this.parseSavedSourceLocations(pref, userLocations);
        }
        return userLocations;
    }

    public List getExtensionLocations() {
        if (this.fExtensionLocations == null) {
            this.fExtensionLocations = SourceLocationManager.processExtensions();
        }
        return this.fExtensionLocations;
    }

    public Collection getBundleManifestLocations() {
        return this.getBundleManifestLocator().getSourceLocations();
    }

    private SourceLocation getBundleManifestLocation(String pluginID, Version version) {
        return this.getBundleManifestLocator().getSourceLocation(pluginID, version);
    }

    private BundleManifestSourceLocationManager getBundleManifestLocator() {
        if (this.fBundleManifestLocator == null) {
            this.fBundleManifestLocator = this.initializeBundleManifestLocations();
        }
        return this.fBundleManifestLocator;
    }

    private IPath getRelativePath(IPluginBase pluginBase, IPath sourceFilePath) {
        String pluginDir;
        block4: {
            try {
                pluginDir = pluginBase.getId();
                if (pluginDir != null) break block4;
                return null;
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return null;
            }
        }
        String version = pluginBase.getVersion();
        if (version != null) {
            Version vid = new Version(version);
            pluginDir = String.valueOf(pluginDir) + "_" + vid.toString();
        }
        Path path = new Path(pluginDir);
        return sourceFilePath == null ? path : path.append(sourceFilePath);
    }

    private IPath searchUserSpecifiedLocations(IPath relativePath) {
        List userLocations = this.getUserLocations();
        Iterator iterator = userLocations.iterator();
        while (iterator.hasNext()) {
            SourceLocation currentLocation = (SourceLocation)iterator.next();
            IPath fullPath = currentLocation.getPath().append(relativePath);
            File file = fullPath.toFile();
            if (!file.exists()) continue;
            return fullPath;
        }
        return null;
    }

    private IPath searchExtensionLocations(IPath relativePath) {
        List extensionLocations = this.getExtensionLocations();
        Iterator iterator = extensionLocations.iterator();
        while (iterator.hasNext()) {
            SourceLocation currentLocation = (SourceLocation)iterator.next();
            IPath fullPath = currentLocation.getPath().append(relativePath);
            File file = fullPath.toFile();
            if (!file.exists()) continue;
            return fullPath;
        }
        return null;
    }

    private IPath searchBundleManifestLocations(IPluginBase pluginBase) {
        SourceLocation location = this.getBundleManifestLocation(pluginBase.getId(), new Version(pluginBase.getVersion()));
        if (location != null && location.getPath().toFile().exists()) {
            return location.getPath();
        }
        return null;
    }

    private void parseSavedSourceLocations(String text, List entries) {
        text = text.replace(File.pathSeparatorChar, ';');
        StringTokenizer stok = new StringTokenizer(text, ";");
        while (stok.hasMoreTokens()) {
            String token = stok.nextToken();
            SourceLocation location = this.parseSourceLocation(token);
            if (location == null) continue;
            entries.add(location);
        }
    }

    private SourceLocation parseSourceLocation(String text) {
        String path;
        try {
            text = text.trim();
            int commaIndex = text.lastIndexOf(44);
            if (commaIndex == -1) {
                return new SourceLocation((IPath)new Path(text));
            }
            int atLoc = text.indexOf(64);
            path = atLoc == -1 ? text.substring(0, commaIndex) : text.substring(atLoc + 1, commaIndex);
        }
        catch (RuntimeException runtimeException) {
            return null;
        }
        return new SourceLocation((IPath)new Path(path));
    }

    private static List processExtensions() {
        ArrayList<SourceLocation> result = new ArrayList<SourceLocation>();
        IExtension[] extensions = PDECore.getDefault().getExtensionsRegistry().findExtensions("org.eclipse.pde.core.source", false);
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] children = extensions[i].getConfigurationElements();
            RegistryContributor contributor = (RegistryContributor)extensions[i].getContributor();
            long bundleId = Long.parseLong(contributor.getActualId());
            BundleDescription desc = PDECore.getDefault().getModelManager().getState().getState().getBundle(Long.parseLong(contributor.getActualId()));
            IPluginModelBase base = null;
            if (desc != null) {
                base = PluginRegistry.findModel(desc);
            } else {
                ModelEntry entry = PluginRegistry.findEntry(contributor.getActualName());
                IPluginModelBase[] externalModels = entry.getExternalModels();
                int j = 0;
                while (j < externalModels.length) {
                    BundleDescription extDesc = externalModels[j].getBundleDescription();
                    if (extDesc != null && extDesc.getBundleId() == bundleId) {
                        base = externalModels[j];
                    }
                    ++j;
                }
            }
            if (base != null) {
                int j = 0;
                while (j < children.length) {
                    if (children[j].getName().equals("location")) {
                        String pathValue = children[j].getAttribute("path");
                        IPath path = new Path(base.getInstallLocation()).append(pathValue);
                        if (path.toFile().exists()) {
                            SourceLocation location = new SourceLocation(path);
                            location.setUserDefined(false);
                            if (!result.contains(location)) {
                                result.add(location);
                            }
                        }
                    }
                    ++j;
                }
            }
            ++i;
        }
        return result;
    }

    protected BundleManifestSourceLocationManager initializeBundleManifestLocations() {
        BundleManifestSourceLocationManager manager = new BundleManifestSourceLocationManager();
        manager.setPlugins(PDECore.getDefault().getModelManager().getExternalModels());
        return manager;
    }
}

