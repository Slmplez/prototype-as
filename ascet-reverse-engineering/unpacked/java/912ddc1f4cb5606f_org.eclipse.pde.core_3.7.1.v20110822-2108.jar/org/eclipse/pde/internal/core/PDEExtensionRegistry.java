/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.spi.RegistryContributor
 *  org.eclipse.core.runtime.spi.RegistryStrategy
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.ListIterator;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.core.runtime.spi.RegistryStrategy;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDERegistryStrategy;
import org.eclipse.pde.internal.core.TargetPDERegistryStrategy;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.plugin.PluginExtension;
import org.eclipse.pde.internal.core.plugin.PluginExtensionPoint;
import org.eclipse.pde.internal.core.util.CoreUtility;

public class PDEExtensionRegistry {
    private Object fMasterKey = new Object();
    private Object fUserKey = new Object();
    private IExtensionRegistry fRegistry = null;
    private PDERegistryStrategy fStrategy = null;
    private IPluginModelBase[] fModels = null;
    private ArrayList fListeners = new ArrayList();
    private static final String EXTENSION_DIR = ".extensions";

    public PDEExtensionRegistry() {
        if (this.fStrategy == null) {
            File extensionsDir = new File(PDECore.getDefault().getStateLocation().toFile(), EXTENSION_DIR);
            this.fStrategy = new PDERegistryStrategy(new File[]{extensionsDir}, new boolean[1], this.fMasterKey, this);
        }
    }

    public PDEExtensionRegistry(IPluginModelBase[] models) {
        this.fModels = models;
        if (this.fStrategy == null) {
            File extensionsDir = new File(PDECore.getDefault().getStateLocation().toFile(), EXTENSION_DIR);
            this.fStrategy = new TargetPDERegistryStrategy(new File[]{extensionsDir}, new boolean[1], this.fMasterKey, this);
        }
    }

    protected IPluginModelBase[] getModels() {
        if (this.fModels == null) {
            IPluginModelBase[] workspaceModels = PluginRegistry.getWorkspaceModels();
            IPluginModelBase[] externalModels = PluginRegistry.getExternalModels();
            IPluginModelBase[] allModels = new IPluginModelBase[workspaceModels.length + externalModels.length];
            System.arraycopy(workspaceModels, 0, allModels, 0, workspaceModels.length);
            System.arraycopy(externalModels, 0, allModels, workspaceModels.length, externalModels.length);
            return allModels;
        }
        return this.fModels;
    }

    public void stop() {
        if (this.fRegistry != null) {
            this.fRegistry.stop(this.fMasterKey);
        }
        this.dispose();
    }

    protected synchronized IExtensionRegistry getRegistry() {
        if (this.fRegistry == null) {
            this.fRegistry = this.createRegistry();
            ListIterator li = this.fListeners.listIterator();
            while (li.hasNext()) {
                this.fRegistry.addRegistryChangeListener((IRegistryChangeListener)li.next());
            }
        }
        return this.fRegistry;
    }

    private IExtensionRegistry createRegistry() {
        return RegistryFactory.createRegistry((RegistryStrategy)this.fStrategy, (Object)this.fMasterKey, (Object)this.fUserKey);
    }

    public void targetReloaded() {
        if (this.fRegistry != null) {
            this.fRegistry.stop(this.fMasterKey);
        }
        CoreUtility.deleteContent(new File(PDECore.getDefault().getStateLocation().toFile(), EXTENSION_DIR));
        this.fRegistry = null;
    }

    public void dispose() {
        this.fStrategy.dispose();
        this.fRegistry = null;
    }

    public IPluginModelBase[] findExtensionPlugins(String pointId, boolean activeOnly) {
        IExtensionPoint point = this.getExtensionPoint(pointId);
        if (point == null) {
            return activeOnly ? PluginRegistry.getActiveModels() : PluginRegistry.getAllModels();
        }
        IExtension[] exts = point.getExtensions();
        HashSet<IPluginModelBase> plugins = new HashSet<IPluginModelBase>();
        int i = 0;
        while (i < exts.length) {
            IPluginModelBase base = this.getPlugin(exts[i].getContributor(), false);
            if (!(base == null || plugins.contains(base) || activeOnly && !base.isEnabled())) {
                plugins.add(base);
            }
            ++i;
        }
        return plugins.toArray(new IPluginModelBase[plugins.size()]);
    }

    public IPluginModelBase findExtensionPointPlugin(String pointId) {
        IExtensionPoint point = this.getExtensionPoint(pointId);
        if (point == null) {
            return null;
        }
        IContributor contributor = point.getContributor();
        return this.getPlugin(contributor, true);
    }

    private IExtensionPoint getExtensionPoint(String pointId) {
        return this.getRegistry().getExtensionPoint(pointId);
    }

    public boolean hasExtensionPoint(String pointId) {
        return this.getExtensionPoint(pointId) != null;
    }

    public IPluginExtensionPoint findExtensionPoint(String pointId) {
        IPluginModelBase model;
        IExtensionPoint extPoint = this.getExtensionPoint(pointId);
        if (extPoint != null && (model = this.getPlugin(extPoint.getContributor(), true)) != null) {
            IPluginExtensionPoint[] points = model.getPluginBase().getExtensionPoints();
            int i = 0;
            while (i < points.length) {
                IPluginExtensionPoint point = points[i];
                if (points[i].getFullId().equals(pointId)) {
                    return point;
                }
                ++i;
            }
        }
        return null;
    }

    public IPluginExtension[] findExtensionsForPlugin(IPluginModelBase base) {
        IContributor contributor = this.fStrategy.createContributor(base);
        if (contributor == null) {
            return new IPluginExtension[0];
        }
        IExtension[] extensions = this.getRegistry().getExtensions(this.fStrategy.createContributor(base));
        ArrayList<PluginExtension> list = new ArrayList<PluginExtension>();
        int i = 0;
        while (i < extensions.length) {
            PluginExtension extension = new PluginExtension(extensions[i]);
            extension.setModel(this.getExtensionsModel(base));
            extension.setParent(base.getExtensions());
            list.add(extension);
            ++i;
        }
        return list.toArray(new IPluginExtension[list.size()]);
    }

    public IPluginExtensionPoint[] findExtensionPointsForPlugin(IPluginModelBase base) {
        IContributor contributor = this.fStrategy.createContributor(base);
        if (contributor == null) {
            return new IPluginExtensionPoint[0];
        }
        IExtensionPoint[] extensions = this.getRegistry().getExtensionPoints(this.fStrategy.createContributor(base));
        ArrayList<PluginExtensionPoint> list = new ArrayList<PluginExtensionPoint>();
        int i = 0;
        while (i < extensions.length) {
            PluginExtensionPoint point = new PluginExtensionPoint(extensions[i]);
            point.setModel(this.getExtensionsModel(base));
            point.setParent(base.getExtensions());
            list.add(point);
            ++i;
        }
        return list.toArray(new IPluginExtensionPoint[list.size()]);
    }

    private ISharedPluginModel getExtensionsModel(IPluginModelBase base) {
        if (base instanceof IBundlePluginModelBase) {
            return ((IBundlePluginModelBase)base).getExtensionsModel();
        }
        return base;
    }

    public IExtension[] findExtensions(String extensionPointId, boolean activeOnly) {
        ArrayList<IExtension> list = new ArrayList<IExtension>();
        IExtensionPoint point = this.getExtensionPoint(extensionPointId);
        if (point != null) {
            IExtension[] extensions = point.getExtensions();
            if (!activeOnly) {
                return extensions;
            }
            int i = 0;
            while (i < extensions.length) {
                IPluginModelBase base = this.getPlugin(extensions[i].getContributor(), true);
                if (base != null && base.isEnabled()) {
                    list.add(extensions[i]);
                }
                ++i;
            }
        } else {
            IPluginModelBase[] bases = activeOnly ? PluginRegistry.getActiveModels() : PluginRegistry.getAllModels();
            int i = 0;
            while (i < bases.length) {
                IContributor contributor = this.fStrategy.createContributor(bases[i]);
                if (contributor != null) {
                    IExtension[] extensions = this.getRegistry().getExtensions(contributor);
                    int j = 0;
                    while (j < extensions.length) {
                        if (extensions[j].getExtensionPointUniqueIdentifier().equals(extensionPointId)) {
                            list.add(extensions[j]);
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        return list.toArray(new IExtension[list.size()]);
    }

    private IPluginModelBase getPlugin(IContributor icontributor, boolean searchAll) {
        if (!(icontributor instanceof RegistryContributor)) {
            return null;
        }
        RegistryContributor contributor = (RegistryContributor)icontributor;
        long bundleId = Long.parseLong(contributor.getActualId());
        BundleDescription desc = PDECore.getDefault().getModelManager().getState().getState().getBundle(Long.parseLong(contributor.getActualId()));
        if (desc != null) {
            return PluginRegistry.findModel(desc);
        }
        ModelEntry entry = PluginRegistry.findEntry(contributor.getActualName());
        if (entry != null) {
            if (!searchAll && entry.getWorkspaceModels().length > 0) {
                return null;
            }
            IPluginModelBase[] externalModels = entry.getExternalModels();
            int j = 0;
            while (j < externalModels.length) {
                BundleDescription extDesc = externalModels[j].getBundleDescription();
                if (extDesc != null && extDesc.getBundleId() == bundleId) {
                    return externalModels[j];
                }
                ++j;
            }
        }
        return null;
    }

    public void addListener(IRegistryChangeListener listener) {
        this.fRegistry.addRegistryChangeListener(listener);
        if (!this.fListeners.contains(listener)) {
            this.fListeners.add(listener);
        }
    }

    public void removeListener(IRegistryChangeListener listener) {
        this.fRegistry.removeRegistryChangeListener(listener);
        this.fListeners.remove(listener);
    }
}

