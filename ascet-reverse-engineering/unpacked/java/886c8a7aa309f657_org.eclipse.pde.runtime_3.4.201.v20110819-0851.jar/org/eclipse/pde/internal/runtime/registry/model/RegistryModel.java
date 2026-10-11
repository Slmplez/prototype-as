/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.runtime.registry.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.runtime.registry.model.BackendChangeListener;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.ModelChangeDelta;
import org.eclipse.pde.internal.runtime.registry.model.ModelChangeListener;
import org.eclipse.pde.internal.runtime.registry.model.RegistryBackend;
import org.eclipse.pde.internal.runtime.registry.model.ServiceName;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;
import org.osgi.framework.Version;

public class RegistryModel {
    private BackendChangeListener backendListener = new BackendChangeListener(){

        public void addBundle(Bundle adapter) {
            adapter.setModel(RegistryModel.this);
            ModelChangeDelta delta = new ModelChangeDelta(adapter, 0);
            RegistryModel.this.bundles.put(new Long(adapter.getId()), adapter);
            if (adapter.getFragmentHost() != null) {
                RegistryModel.this.addFragment(adapter);
                Bundle host = RegistryModel.this.getBundle(adapter.getFragmentHost(), adapter.getFragmentHostVersion());
                if (host != null) {
                    ModelChangeDelta d2 = new ModelChangeDelta(host, 1);
                    RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta, d2});
                    return;
                }
            }
            RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta});
        }

        public void removeBundle(Bundle adapter) {
            ModelChangeDelta delta = new ModelChangeDelta(adapter, 2);
            RegistryModel.this.bundles.remove(new Long(adapter.getId()));
            if (adapter.getFragmentHost() != null) {
                RegistryModel.this.removeFragment(adapter);
                Bundle host = RegistryModel.this.getBundle(adapter.getFragmentHost(), adapter.getFragmentHostVersion());
                if (host != null) {
                    ModelChangeDelta d2 = new ModelChangeDelta(host, 1);
                    RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta, d2});
                    return;
                }
            }
            RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta});
            adapter.setModel(null);
        }

        public void updateBundle(Bundle adapter, int updated) {
            adapter.setModel(RegistryModel.this);
            ModelChangeDelta delta = new ModelChangeDelta(adapter, updated);
            RegistryModel.this.bundles.put(new Long(adapter.getId()), adapter);
            if (adapter.getFragmentHost() != null) {
                RegistryModel.this.addFragment(adapter);
            }
            RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta});
        }

        public void addService(ServiceRegistration adapter) {
            ModelChangeDelta serviceNameDelta = null;
            if (!RegistryModel.this.serviceNames.contains(adapter.getName())) {
                ServiceName name = adapter.getName();
                name.setModel(RegistryModel.this);
                RegistryModel.this.serviceNames.add(name);
                serviceNameDelta = new ModelChangeDelta(name, 0);
            }
            adapter.setModel(RegistryModel.this);
            RegistryModel.this.services.put(new Long(adapter.getId()), adapter);
            ModelChangeDelta delta = new ModelChangeDelta(adapter, 0);
            if (serviceNameDelta != null) {
                RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{serviceNameDelta, delta});
            } else {
                RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta});
            }
        }

        public void removeService(ServiceRegistration adapter) {
            ModelChangeDelta serviceNameDelta = null;
            if (RegistryModel.this.getServices(adapter.getName().getClasses()).length == 0) {
                RegistryModel.this.serviceNames.remove(adapter.getName());
                serviceNameDelta = new ModelChangeDelta(adapter.getName(), 2);
            }
            RegistryModel.this.services.remove(new Long(adapter.getId()));
            ModelChangeDelta delta = new ModelChangeDelta(adapter, 2);
            if (serviceNameDelta != null) {
                RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{serviceNameDelta, delta});
                adapter.getName().setModel(null);
                adapter.setModel(null);
            } else {
                RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta});
                adapter.setModel(null);
            }
        }

        public void updateService(ServiceRegistration adapter) {
            adapter.setModel(RegistryModel.this);
            RegistryModel.this.services.put(new Long(adapter.getId()), adapter);
            ModelChangeDelta delta = new ModelChangeDelta(adapter, 1);
            RegistryModel.this.fireModelChangeEvent(new ModelChangeDelta[]{delta});
        }

        public void addExtensions(Extension[] extensionAdapters) {
            int i = 0;
            while (i < extensionAdapters.length) {
                extensionAdapters[i].setModel(RegistryModel.this);
                String id = extensionAdapters[i].getExtensionPointUniqueIdentifier();
                ExtensionPoint extPoint = (ExtensionPoint)RegistryModel.this.extensionPoints.get(id);
                extPoint.getExtensions().add(extensionAdapters[i]);
                ++i;
            }
            ModelChangeDelta[] delta = new ModelChangeDelta[extensionAdapters.length];
            int i2 = 0;
            while (i2 < delta.length) {
                delta[i2] = new ModelChangeDelta(extensionAdapters[i2], 0);
                ++i2;
            }
            RegistryModel.this.fireModelChangeEvent(delta);
        }

        public void removeExtensions(Extension[] extensionAdapters) {
            int i = 0;
            while (i < extensionAdapters.length) {
                String id = extensionAdapters[i].getExtensionPointUniqueIdentifier();
                ExtensionPoint extPoint = (ExtensionPoint)RegistryModel.this.extensionPoints.get(id);
                extPoint.getExtensions().remove(extensionAdapters[i]);
                ++i;
            }
            ModelChangeDelta[] delta = new ModelChangeDelta[extensionAdapters.length];
            int i2 = 0;
            while (i2 < delta.length) {
                delta[i2] = new ModelChangeDelta(extensionAdapters[i2], 2);
                ++i2;
            }
            RegistryModel.this.fireModelChangeEvent(delta);
            i2 = 0;
            while (i2 < extensionAdapters.length) {
                extensionAdapters[i2].setModel(null);
                ++i2;
            }
        }

        public void addExtensionPoints(ExtensionPoint[] extensionPointAdapters) {
            int i = 0;
            while (i < extensionPointAdapters.length) {
                extensionPointAdapters[i].setModel(RegistryModel.this);
                RegistryModel.this.extensionPoints.put(extensionPointAdapters[i].getUniqueIdentifier(), extensionPointAdapters[i]);
                ++i;
            }
            ModelChangeDelta[] delta = new ModelChangeDelta[extensionPointAdapters.length];
            int i2 = 0;
            while (i2 < delta.length) {
                delta[i2] = new ModelChangeDelta(extensionPointAdapters[i2], 0);
                ++i2;
            }
            RegistryModel.this.fireModelChangeEvent(delta);
        }

        public void removeExtensionPoints(ExtensionPoint[] extensionPointAdapters) {
            int i = 0;
            while (i < extensionPointAdapters.length) {
                RegistryModel.this.extensionPoints.remove(extensionPointAdapters[i].getUniqueIdentifier());
                ++i;
            }
            ModelChangeDelta[] delta = new ModelChangeDelta[extensionPointAdapters.length];
            int i2 = 0;
            while (i2 < delta.length) {
                delta[i2] = new ModelChangeDelta(extensionPointAdapters[i2], 2);
                ++i2;
            }
            RegistryModel.this.fireModelChangeEvent(delta);
            i2 = 0;
            while (i2 < extensionPointAdapters.length) {
                extensionPointAdapters[i2].setModel(null);
                ++i2;
            }
        }
    };
    private List listeners = new ArrayList();
    private Map bundles = Collections.synchronizedMap(new HashMap());
    private Map services = Collections.synchronizedMap(new HashMap());
    private Map extensionPoints = Collections.synchronizedMap(new HashMap());
    private Set serviceNames = Collections.synchronizedSet(new HashSet());
    private Map fragments = Collections.synchronizedMap(new HashMap());
    protected RegistryBackend backend;

    public RegistryModel(RegistryBackend backend) {
        this.backend = backend;
        backend.setRegistryListener(this.backendListener);
    }

    protected void addFragment(Bundle fragment) {
        Set<Bundle> hostFragments = (Set<Bundle>)this.fragments.get(fragment.getFragmentHost());
        if (hostFragments == null) {
            hostFragments = Collections.synchronizedSet(new HashSet());
            this.fragments.put(fragment.getFragmentHost(), hostFragments);
        }
        if (!hostFragments.add(fragment)) {
            hostFragments.remove(fragment);
            hostFragments.add(fragment);
        }
    }

    protected void removeFragment(Bundle fragment) {
        Set hostFragments = (Set)this.fragments.get(fragment.getFragmentHost());
        if (hostFragments == null) {
            return;
        }
        hostFragments.remove(fragment);
    }

    public void connect(IProgressMonitor monitor, boolean forceInit) {
        this.backend.connect(monitor);
        if (forceInit) {
            this.initialize(monitor);
        }
    }

    public void initialize(IProgressMonitor monitor) {
        this.backend.initializeBundles(monitor);
        this.backend.initializeServices(monitor);
        this.backend.initializeExtensionPoints(monitor);
    }

    public void disconnect() {
        this.backend.disconnect();
    }

    public Bundle[] getBundles() {
        return this.bundles.values().toArray(new Bundle[this.bundles.values().size()]);
    }

    public ExtensionPoint[] getExtensionPoints() {
        return this.extensionPoints.values().toArray(new ExtensionPoint[this.extensionPoints.values().size()]);
    }

    public ServiceRegistration[] getServices() {
        return this.services.values().toArray(new ServiceRegistration[this.services.values().size()]);
    }

    public ServiceName[] getServiceNames() {
        return this.serviceNames.toArray(new ServiceName[this.serviceNames.size()]);
    }

    public ServiceRegistration[] getServices(String[] classes) {
        ArrayList<ServiceRegistration> result = new ArrayList<ServiceRegistration>();
        Iterator i = this.services.values().iterator();
        while (i.hasNext()) {
            ServiceRegistration sr = (ServiceRegistration)i.next();
            if (!Arrays.equals(classes, sr.getName().getClasses())) continue;
            result.add(sr);
        }
        return result.toArray(new ServiceRegistration[result.size()]);
    }

    public void addModelChangeListener(ModelChangeListener listener) {
        this.listeners.add(listener);
    }

    public void removeModelChangeListener(ModelChangeListener listener) {
        this.listeners.remove(listener);
    }

    protected void fireModelChangeEvent(ModelChangeDelta[] delta) {
        Iterator i = this.listeners.iterator();
        while (i.hasNext()) {
            ModelChangeListener listener = (ModelChangeListener)i.next();
            listener.modelChanged(delta);
        }
    }

    public Bundle getBundle(Long id) {
        return (Bundle)this.bundles.get(id);
    }

    public Bundle getBundle(String symbolicName, String versionRange) {
        Iterator i = this.bundles.values().iterator();
        while (i.hasNext()) {
            Bundle bundle = (Bundle)i.next();
            if (!bundle.getSymbolicName().equals(symbolicName) || !this.versionMatches(bundle.getVersion(), versionRange)) continue;
            return bundle;
        }
        return null;
    }

    public ExtensionPoint getExtensionPoint(String extensionPointUniqueIdentifier) {
        return (ExtensionPoint)this.extensionPoints.get(extensionPointUniqueIdentifier);
    }

    public Bundle[] getFragments(Bundle bundle) {
        Set set = (Set)this.fragments.get(bundle.getSymbolicName());
        if (set == null) {
            return new Bundle[0];
        }
        ArrayList<Bundle> result = new ArrayList<Bundle>(set.size());
        Version hostVersion = Version.parseVersion((String)bundle.getVersion());
        Iterator i = set.iterator();
        while (i.hasNext()) {
            Bundle fragment = (Bundle)i.next();
            String fragmentVersionOrRange = fragment.getFragmentHostVersion();
            if (!this.versionMatches(hostVersion, fragmentVersionOrRange)) continue;
            result.add(fragment);
        }
        return result.toArray(new Bundle[result.size()]);
    }

    private boolean versionMatches(String hostVersion, String versionOrRange) {
        try {
            Version version = Version.parseVersion((String)hostVersion);
            return this.versionMatches(version, versionOrRange);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return false;
        }
    }

    private boolean versionMatches(Version hostVersion, String versionOrRange) {
        if (versionOrRange == null) {
            return true;
        }
        try {
            Version version = Version.parseVersion((String)versionOrRange);
            if (hostVersion.compareTo(version) >= 0) {
                return true;
            }
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        try {
            VersionRange range = new VersionRange(versionOrRange);
            if (range.isIncluded(hostVersion)) {
                return true;
            }
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        return false;
    }
}

