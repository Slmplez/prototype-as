/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.spi.IDynamicExtensionRegistry
 *  org.eclipse.core.runtime.spi.RegistryContributor
 *  org.eclipse.core.runtime.spi.RegistryStrategy
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.osgi.framework.BundleContext
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.pde.internal.core;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.spi.IDynamicExtensionRegistry;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.core.runtime.spi.RegistryStrategy;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.IExtensionDeltaEvent;
import org.eclipse.pde.internal.core.IExtensionDeltaListener;
import org.eclipse.pde.internal.core.IPluginModelListener;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEExtensionRegistry;
import org.eclipse.pde.internal.core.PluginModelDelta;
import org.eclipse.pde.internal.core.PluginModelManager;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;

public class PDERegistryStrategy
extends RegistryStrategy {
    private ServiceTracker xmlTracker = null;
    private Object fKey = null;
    private ModelListener fModelListener = null;
    private ExtensionListener fExtensionListener = null;
    private PDEExtensionRegistry fPDERegistry = null;
    static /* synthetic */ Class class$0;

    public PDERegistryStrategy(File[] storageDirs, boolean[] cacheReadOnly, Object key, PDEExtensionRegistry registry) {
        super(storageDirs, cacheReadOnly);
        this.init();
        this.fKey = key;
        this.fPDERegistry = registry;
    }

    protected void init() {
        this.connectListeners();
    }

    public void log(IStatus status) {
    }

    protected void connectListeners() {
        PluginModelManager manager = PDECore.getDefault().getModelManager();
        this.fModelListener = new ModelListener();
        manager.addPluginModelListener(this.fModelListener);
        this.fExtensionListener = new ExtensionListener();
        manager.addExtensionDeltaListener(this.fExtensionListener);
    }

    protected void setListenerRegistry(IExtensionRegistry registry) {
        if (this.fModelListener != null) {
            this.fModelListener.setRegistry(registry);
        }
        if (this.fExtensionListener != null) {
            this.fExtensionListener.setRegistry(registry);
        }
    }

    public void onStart(IExtensionRegistry registry, boolean loadedFromCache) {
        super.onStart(registry, loadedFromCache);
        this.setListenerRegistry(registry);
        if (!loadedFromCache) {
            this.processBundles(registry);
        }
    }

    public void onStop(IExtensionRegistry registry) {
        super.onStop(registry);
        this.setListenerRegistry(null);
    }

    public SAXParserFactory getXMLParser() {
        if (this.xmlTracker == null) {
            BundleContext bundleContext = PDECore.getDefault().getBundleContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("javax.xml.parsers.SAXParserFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.xmlTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.xmlTracker.open();
        }
        return (SAXParserFactory)this.xmlTracker.getService();
    }

    private void processBundles(IExtensionRegistry registry) {
        this.addBundles(registry, this.fPDERegistry.getModels());
    }

    private void addBundles(IExtensionRegistry registry, IPluginModelBase[] bases) {
        int i = 0;
        while (i < bases.length) {
            this.addBundle(registry, bases[i]);
            ++i;
        }
    }

    private void addBundle(IExtensionRegistry registry, IPluginModelBase base) {
        block21: {
            IContributor contributor = this.createContributor(base);
            if (contributor == null) {
                return;
            }
            if (((IDynamicExtensionRegistry)registry).hasContributor(contributor)) {
                return;
            }
            File input = this.getFile(base);
            if (input == null) {
                return;
            }
            InputStream is = null;
            ZipFile jfile = null;
            try {
                try {
                    if (input.getName().endsWith(".jar")) {
                        jfile = new ZipFile(input, 1);
                        String fileName = base.isFragmentModel() ? "fragment.xml" : "plugin.xml";
                        ZipEntry entry = jfile.getEntry(fileName);
                        if (entry != null) {
                            is = jfile.getInputStream(entry);
                        }
                    } else {
                        is = new FileInputStream(input);
                    }
                    if (is != null) {
                        registry.addContribution((InputStream)new BufferedInputStream(is), contributor, true, input.getPath(), null, this.fKey);
                    }
                }
                catch (IOException iOException) {
                    if (jfile != null) {
                        try {
                            jfile.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    break block21;
                }
            }
            catch (Throwable throwable) {
                if (jfile != null) {
                    try {
                        jfile.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (jfile != null) {
                try {
                    jfile.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private void removeBundle(IExtensionRegistry registry, IPluginModelBase base) {
        IContributor contributor;
        if (registry instanceof IDynamicExtensionRegistry && (contributor = this.createContributor(base)) != null && ((IDynamicExtensionRegistry)registry).hasContributor(contributor)) {
            ((IDynamicExtensionRegistry)registry).removeContributor(this.createContributor(base), this.fKey);
        }
    }

    private File getFile(IPluginModelBase base) {
        String loc = base.getInstallLocation();
        if (loc == null) {
            return null;
        }
        File file = new File(loc);
        if (!file.exists()) {
            return null;
        }
        if (file.isFile()) {
            return file;
        }
        String fileName = base.isFragmentModel() ? "fragment.xml" : "plugin.xml";
        File inputFile = new File(file, fileName);
        return inputFile.exists() ? inputFile : null;
    }

    public IContributor createContributor(IPluginModelBase base) {
        BundleDescription desc;
        BundleDescription bundleDescription = desc = base == null ? null : base.getBundleDescription();
        if (desc == null) {
            return null;
        }
        String name = desc.getSymbolicName();
        String id = Long.toString(desc.getBundleId());
        String hostName = null;
        String hostId = null;
        HostSpecification host = desc.getHost();
        if (host != null && host.getBundle() != null && !host.getBundle().isSingleton() || host == null && !desc.isSingleton()) {
            return null;
        }
        if (host != null) {
            BundleDescription[] hosts = host.getHosts();
            if (hosts.length != 1) {
                return null;
            }
            BundleDescription hostDesc = hosts[0];
            hostName = hostDesc.getSymbolicName();
            hostId = Long.toString(hostDesc.getBundleId());
        }
        return new RegistryContributor(id, name, hostId, hostName);
    }

    public void dispose() {
        PluginModelManager manager = PDECore.getDefault().getModelManager();
        manager.removePluginModelListener(this.fModelListener);
        manager.removeExtensionDeltaListener(this.fExtensionListener);
        if (this.xmlTracker != null) {
            this.xmlTracker.close();
            this.xmlTracker = null;
        }
    }

    private void createRegistry() {
        this.fPDERegistry.getRegistry();
    }

    public long getContributionsTimestamp() {
        IPluginModelBase[] bases = this.fPDERegistry.getModels();
        long timeStamp = 0L;
        int i = 0;
        while (i < bases.length) {
            File location;
            String loc = bases[i].getInstallLocation();
            if (loc != null && (location = new File(loc)).exists()) {
                if (location.isFile()) {
                    timeStamp ^= location.lastModified();
                } else {
                    File manifest = new File(location, "META-INF/MANIFEST.MF");
                    if (manifest.exists()) {
                        timeStamp ^= manifest.lastModified();
                    }
                    if ((manifest = new File(location, "plugin.xml")).exists()) {
                        timeStamp ^= manifest.lastModified();
                    }
                    if ((manifest = new File(location, "fragment.xml")).exists()) {
                        timeStamp ^= manifest.lastModified();
                    }
                }
                timeStamp ^= (long)location.getAbsolutePath().hashCode();
            }
            ++i;
        }
        return timeStamp;
    }

    class ExtensionListener
    extends RegistryListener
    implements IExtensionDeltaListener {
        ExtensionListener() {
        }

        public void extensionsChanged(IExtensionDeltaEvent event) {
            if (this.fRegistry == null) {
                PDERegistryStrategy.this.createRegistry();
            }
            IPluginModelBase[] bases = event.getRemovedModels();
            this.removeModels(bases, false);
            this.removeModels(event.getChangedModels(), false);
            PDERegistryStrategy.this.addBundles(this.fRegistry, event.getChangedModels());
            PDERegistryStrategy.this.addBundles(this.fRegistry, event.getAddedModels());
            int i = 0;
            while (i < bases.length) {
                ModelEntry entry = PluginRegistry.findEntry(bases[i].getPluginBase().getId());
                if (entry != null && entry.getWorkspaceModels().length == 0) {
                    IPluginModelBase[] externalModels = entry.getExternalModels();
                    this.removeModels(externalModels, false);
                    PDERegistryStrategy.this.addBundles(this.fRegistry, externalModels);
                }
                ++i;
            }
        }
    }

    class ModelListener
    extends RegistryListener
    implements IPluginModelListener {
        ModelListener() {
        }

        public void modelsChanged(PluginModelDelta delta) {
            if (this.fRegistry == null) {
                PDERegistryStrategy.this.createRegistry();
            }
            ModelEntry[] entries = delta.getChangedEntries();
            int i = 0;
            while (i < entries.length) {
                IPluginModelBase[] workspaceModels = entries[i].getWorkspaceModels();
                if (workspaceModels.length > 0) {
                    this.removeModels(entries[i].getExternalModels(), !entries[i].hasWorkspaceModels());
                    this.removeModels(workspaceModels, true);
                    PDERegistryStrategy.this.addBundles(this.fRegistry, entries[i].getWorkspaceModels());
                }
                PDERegistryStrategy.this.addBundles(this.fRegistry, entries[i].getExternalModels());
                ++i;
            }
            entries = delta.getAddedEntries();
            ModelEntry[] removedEntries = delta.getRemovedEntries();
            if (removedEntries.length == entries.length && this.fRegistry instanceof IDynamicExtensionRegistry) {
                int i2 = 0;
                while (i2 < removedEntries.length) {
                    if (removedEntries[i2].getId() != null) {
                        IDynamicExtensionRegistry registry = (IDynamicExtensionRegistry)this.fRegistry;
                        IContributor[] contributors = registry.getAllContributors();
                        int j = 0;
                        while (j < contributors.length) {
                            if (removedEntries[i2].getId().equals(contributors[j].getName())) {
                                registry.removeContributor(contributors[j], PDERegistryStrategy.this.fKey);
                                break;
                            }
                            ++j;
                        }
                    }
                    ++i2;
                }
            }
            int i3 = 0;
            while (i3 < entries.length) {
                PDERegistryStrategy.this.addBundles(this.fRegistry, entries[i3].getActiveModels());
                ++i3;
            }
        }
    }

    class RegistryListener {
        IExtensionRegistry fRegistry;

        RegistryListener() {
        }

        protected final void removeModels(IPluginModelBase[] bases, boolean onlyInactive) {
            int i = 0;
            while (i < bases.length) {
                if (!onlyInactive || !bases[i].isEnabled()) {
                    PDERegistryStrategy.this.removeBundle(this.fRegistry, bases[i]);
                }
                ++i;
            }
        }

        public void setRegistry(IExtensionRegistry registry) {
            this.fRegistry = registry;
        }
    }
}

