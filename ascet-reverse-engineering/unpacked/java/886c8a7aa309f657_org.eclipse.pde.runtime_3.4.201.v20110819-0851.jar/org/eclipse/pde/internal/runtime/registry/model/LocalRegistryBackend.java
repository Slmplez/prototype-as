/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IRegistryEventListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.DisabledInfo
 *  org.eclipse.osgi.service.resolver.PlatformAdmin
 *  org.eclipse.osgi.service.resolver.ResolverError
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.VersionConstraint
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.BundleListener
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceEvent
 *  org.osgi.framework.ServiceListener
 *  org.osgi.framework.ServiceReference
 *  org.osgi.service.packageadmin.PackageAdmin
 */
package org.eclipse.pde.internal.runtime.registry.model;

import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.runtime.MessageHelper;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.runtime.registry.model.Attribute;
import org.eclipse.pde.internal.runtime.registry.model.BackendChangeListener;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.BundleLibrary;
import org.eclipse.pde.internal.runtime.registry.model.BundlePrerequisite;
import org.eclipse.pde.internal.runtime.registry.model.ConfigurationElement;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.Property;
import org.eclipse.pde.internal.runtime.registry.model.RegistryBackend;
import org.eclipse.pde.internal.runtime.registry.model.ServiceName;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleListener;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceListener;
import org.osgi.framework.ServiceReference;
import org.osgi.service.packageadmin.PackageAdmin;

public class LocalRegistryBackend
implements IRegistryEventListener,
BundleListener,
ServiceListener,
RegistryBackend {
    private BackendChangeListener listener;

    public void setRegistryListener(BackendChangeListener listener) {
        this.listener = listener;
    }

    public void connect(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        PDERuntimePlugin.getDefault().getBundleContext().addBundleListener((BundleListener)this);
        Platform.getExtensionRegistry().addListener((IRegistryEventListener)this);
        PDERuntimePlugin.getDefault().getBundleContext().addServiceListener((ServiceListener)this);
    }

    public void disconnect() {
        Platform.getExtensionRegistry().removeListener((IRegistryEventListener)this);
        PDERuntimePlugin.getDefault().getBundleContext().removeBundleListener((BundleListener)this);
        PDERuntimePlugin.getDefault().getBundleContext().removeServiceListener((ServiceListener)this);
    }

    protected static boolean isRegisteredService(org.osgi.framework.Bundle bundle, ServiceReference ref) {
        return bundle.equals(ref.getBundle());
    }

    protected static boolean isServiceInUse(org.osgi.framework.Bundle bundle, ServiceReference ref) {
        org.osgi.framework.Bundle[] usingBundles = ref.getUsingBundles();
        return usingBundles != null && Arrays.asList(usingBundles).contains(bundle);
    }

    public void start(long id) throws BundleException {
        PDERuntimePlugin.getDefault().getBundleContext().getBundle(id).start();
    }

    public void stop(long id) throws BundleException {
        PDERuntimePlugin.getDefault().getBundleContext().getBundle(id).stop();
    }

    public MultiStatus diagnose(long id) {
        Status status;
        PlatformAdmin plaformAdmin = PDERuntimePlugin.getDefault().getPlatformAdmin();
        State state = plaformAdmin.getState(false);
        BundleDescription desc = state.getBundle(id);
        PlatformAdmin platformAdmin = PDERuntimePlugin.getDefault().getPlatformAdmin();
        VersionConstraint[] unsatisfied = platformAdmin.getStateHelper().getUnsatisfiedConstraints(desc);
        ResolverError[] resolverErrors = platformAdmin.getState(false).getResolverErrors(desc);
        MultiStatus problems = new MultiStatus("org.eclipse.pde.runtime", 1, PDERuntimeMessages.RegistryView_found_problems, null);
        int i = 0;
        while (i < resolverErrors.length) {
            if ((resolverErrors[i].getType() & 0x8007) == 0) {
                status = new Status(2, "org.eclipse.pde.runtime", resolverErrors[i].toString());
                problems.add((IStatus)status);
            }
            ++i;
        }
        i = 0;
        while (i < unsatisfied.length) {
            status = new Status(2, "org.eclipse.pde.runtime", MessageHelper.getResolutionFailureMessage(unsatisfied[i]));
            problems.add((IStatus)status);
            ++i;
        }
        return problems;
    }

    public void initializeBundles(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        org.osgi.framework.Bundle[] newBundles = PDERuntimePlugin.getDefault().getBundleContext().getBundles();
        int i = 0;
        while (i < newBundles.length) {
            if (monitor.isCanceled()) {
                return;
            }
            Bundle ba = this.createBundleAdapter(newBundles[i]);
            this.listener.addBundle(ba);
            ++i;
        }
    }

    public void initializeExtensionPoints(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        IExtensionPoint[] extPoints = Platform.getExtensionRegistry().getExtensionPoints();
        ExtensionPoint[] extPts = new ExtensionPoint[extPoints.length];
        int i = 0;
        while (i < extPoints.length) {
            if (monitor.isCanceled()) {
                return;
            }
            extPts[i] = this.createExtensionPointAdapter(extPoints[i]);
            ++i;
        }
        this.listener.addExtensionPoints(extPts);
    }

    public void initializeServices(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            return;
        }
        ServiceReference[] references = null;
        try {
            references = PDERuntimePlugin.getDefault().getBundleContext().getAllServiceReferences(null, null);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        if (references == null) {
            return;
        }
        int i = 0;
        while (i < references.length) {
            if (monitor.isCanceled()) {
                return;
            }
            ServiceRegistration service = this.createServiceReferenceAdapter(references[i]);
            this.listener.addService(service);
            ++i;
        }
    }

    private Bundle createBundleAdapter(org.osgi.framework.Bundle bundle) {
        BundlePrerequisite[] exportPackages;
        BundlePrerequisite[] importPackages;
        BundleLibrary[] libraries;
        BundlePrerequisite[] imports;
        Bundle adapter = new Bundle();
        adapter.setSymbolicName(bundle.getSymbolicName());
        adapter.setVersion((String)bundle.getHeaders().get("Bundle-Version"));
        adapter.setState(bundle.getState());
        adapter.setId(bundle.getBundleId());
        adapter.setEnabled(LocalRegistryBackend.getIsEnabled(bundle));
        adapter.setLocation(LocalRegistryBackend.createLocation(bundle));
        String fragmentHost = (String)bundle.getHeaders().get("Fragment-Host");
        if (fragmentHost != null) {
            try {
                ManifestElement[] header = ManifestElement.parseHeader((String)"Fragment-Host", (String)fragmentHost);
                if (header.length > 0) {
                    ManifestElement host = header[0];
                    adapter.setFragmentHost(host.getValue());
                    String version = host.getAttribute("bundle-version");
                    if (version != null) {
                        adapter.setFragmentHostVersion(version);
                    }
                }
            }
            catch (BundleException e) {
                PDERuntimePlugin.log(e);
            }
        }
        if ((imports = (BundlePrerequisite[])this.getManifestHeaderArray(bundle, "Require-Bundle")) != null) {
            adapter.setImports(imports);
        }
        if ((libraries = (BundleLibrary[])this.getManifestHeaderArray(bundle, "Bundle-ClassPath")) != null) {
            adapter.setLibraries(libraries);
        }
        if ((importPackages = (BundlePrerequisite[])this.getManifestHeaderArray(bundle, "Import-Package")) != null) {
            adapter.setImportedPackages(importPackages);
        }
        if ((exportPackages = (BundlePrerequisite[])this.getManifestHeaderArray(bundle, "Export-Package")) != null) {
            adapter.setExportedPackages(exportPackages);
        }
        return adapter;
    }

    private Extension createExtensionAdapter(IExtension extension) {
        Extension adapter = new Extension();
        adapter.setNamespaceIdentifier(extension.getNamespaceIdentifier());
        adapter.setLabel(extension.getLabel());
        adapter.setExtensionPointUniqueIdentifier(extension.getExtensionPointUniqueIdentifier());
        adapter.setContributor(LocalRegistryBackend.getBundleId(extension.getContributor().getName()));
        IConfigurationElement[] elements = extension.getConfigurationElements();
        if (elements.length > 0) {
            ConfigurationElement[] configurationElements = new ConfigurationElement[elements.length];
            int i = 0;
            while (i < elements.length) {
                configurationElements[i] = this.createConfigurationElement(elements[i]);
                ++i;
            }
            adapter.setConfigurationElements(configurationElements);
        }
        return adapter;
    }

    private ConfigurationElement createConfigurationElement(IConfigurationElement config) {
        ConfigurationElement element = new ConfigurationElement();
        element.setName(LocalRegistryBackend.createName(config));
        Attribute[] attributes = this.createConfigurationElementAttributes(config);
        if (attributes != null) {
            element.setElements(attributes);
        }
        return element;
    }

    private static Long getBundleId(String name) {
        BundleDescription descr = PDERuntimePlugin.getDefault().getPlatformAdmin().getState(false).getBundle(name, null);
        return descr == null ? null : new Long(descr.getBundleId());
    }

    private ExtensionPoint createExtensionPointAdapter(IExtensionPoint extensionPoint) {
        ExtensionPoint adapter = new ExtensionPoint();
        adapter.setLabel(extensionPoint.getLabel());
        adapter.setUniqueIdentifier(extensionPoint.getUniqueIdentifier());
        adapter.setNamespaceIdentifier(extensionPoint.getNamespaceIdentifier());
        adapter.setContributor(LocalRegistryBackend.getBundleId(extensionPoint.getContributor().getName()));
        Extension[] extensions = this.createExtensionAdapters(extensionPoint.getExtensions());
        adapter.getExtensions().addAll(Arrays.asList(extensions));
        return adapter;
    }

    private ServiceRegistration createServiceReferenceAdapter(ServiceReference ref) {
        ServiceRegistration service = new ServiceRegistration();
        service.setId((Long)ref.getProperty("service.id"));
        service.setBundle(ref.getBundle().getSymbolicName());
        org.osgi.framework.Bundle[] usingBundles = ref.getUsingBundles();
        long[] usingBundlesIds = null;
        if (usingBundles != null) {
            usingBundlesIds = new long[usingBundles.length];
            int i = 0;
            while (i < usingBundles.length) {
                usingBundlesIds[i] = usingBundles[i].getBundleId();
                ++i;
            }
        }
        if (usingBundlesIds != null) {
            service.setUsingBundles(usingBundlesIds);
        }
        Object[] classes = (String[])ref.getProperty("objectClass");
        String[] propertyKeys = ref.getPropertyKeys();
        Property[] properties = null;
        if (propertyKeys != null) {
            properties = new Property[propertyKeys.length];
            int p = 0;
            while (p < propertyKeys.length) {
                String key = propertyKeys[p];
                Object value = ref.getProperty(key);
                properties[p] = new Property(key, ServiceRegistration.toString(value));
                ++p;
            }
        }
        if (classes != null) {
            Arrays.sort(classes);
            service.setName(new ServiceName((String[])classes));
            service.setProperties(properties);
        }
        return service;
    }

    private static boolean getIsEnabled(org.osgi.framework.Bundle bundle) {
        BundleDescription description;
        PlatformAdmin plaformAdmin = PDERuntimePlugin.getDefault().getPlatformAdmin();
        State state = plaformAdmin.getState(false);
        return state.getDisabledInfos(description = state.getBundle(bundle.getBundleId())).length == 0;
    }

    private static String createLocation(org.osgi.framework.Bundle bundle) {
        URL bundleEntry = null;
        try {
            bundleEntry = bundle.getEntry("/");
        }
        catch (IllegalStateException illegalStateException) {
            return null;
        }
        try {
            bundleEntry = FileLocator.resolve((URL)bundleEntry);
        }
        catch (IOException iOException) {}
        Path path = new Path(bundleEntry.getFile());
        String pathString = path.removeTrailingSeparator().toOSString();
        if (pathString.startsWith("file:")) {
            pathString = pathString.substring(5);
        }
        if (pathString.endsWith("!")) {
            pathString = pathString.substring(0, pathString.length() - 1);
        }
        return pathString;
    }

    private Object[] getManifestHeaderArray(org.osgi.framework.Bundle bundle, String headerKey) {
        ManifestElement[] elements;
        block9: {
            String libraries = (String)bundle.getHeaders().get(headerKey);
            elements = ManifestElement.parseHeader((String)headerKey, (String)libraries);
            if (elements != null) break block9;
            return null;
        }
        try {
            if (headerKey.equals("Bundle-ClassPath")) {
                Object[] array = new BundleLibrary[elements.length];
                int i = 0;
                while (i < elements.length) {
                    BundleLibrary library = new BundleLibrary();
                    library.setLibrary(elements[i].getValue());
                    array[i] = library;
                    ++i;
                }
                return array;
            }
            if (headerKey.equals("Require-Bundle") || headerKey.equals("Import-Package") || headerKey.equals("Export-Package")) {
                Object[] array = new BundlePrerequisite[elements.length];
                int i = 0;
                while (i < elements.length) {
                    ManifestElement element = elements[i];
                    BundlePrerequisite prereq = new BundlePrerequisite();
                    prereq.setName(element.getValue());
                    if (headerKey.equals("Require-Bundle")) {
                        prereq.setVersion(element.getAttribute("bundle-version"));
                        String visibility = element.getDirective("visibility");
                        prereq.setExported("reexport".equals(visibility));
                    } else {
                        prereq.setVersion(element.getAttribute("version"));
                        prereq.setPackage(true);
                    }
                    array[i] = prereq;
                    ++i;
                }
                return array;
            }
        }
        catch (BundleException bundleException) {}
        return null;
    }

    private Attribute[] createConfigurationElementAttributes(IConfigurationElement config) {
        String[] atts = config.getAttributeNames();
        Attribute[] catts = new Attribute[atts.length];
        int i = 0;
        while (i < atts.length) {
            catts[i] = new Attribute(atts[i], config.getAttribute(atts[i]));
            ++i;
        }
        IConfigurationElement[] children = config.getChildren();
        Attribute[] result = new Attribute[children.length + catts.length];
        int i2 = 0;
        while (i2 < children.length) {
            IConfigurationElement child = children[i2];
            result[i2] = this.createConfigurationElement(child);
            ++i2;
        }
        i2 = 0;
        while (i2 < catts.length) {
            result[children.length + i2] = catts[i2];
            ++i2;
        }
        return result;
    }

    private static String createName(IConfigurationElement config) {
        String label = config.getAttribute("label");
        if (label == null) {
            label = config.getName();
        }
        if (label == null) {
            label = config.getAttribute("name");
        }
        if (label == null && config.getAttribute("id") != null) {
            String[] labelSplit = config.getAttribute("id").split("\\.");
            label = labelSplit.length == 0 ? null : labelSplit[labelSplit.length - 1];
        }
        return label;
    }

    private Extension[] createExtensionAdapters(IExtension[] extensions) {
        Extension[] extensionAdapters = new Extension[extensions.length];
        int i = 0;
        while (i < extensions.length) {
            extensionAdapters[i] = this.createExtensionAdapter(extensions[i]);
            ++i;
        }
        return extensionAdapters;
    }

    public void bundleChanged(BundleEvent event) {
        Bundle adapter = this.createBundleAdapter(event.getBundle());
        switch (event.getType()) {
            case 1: {
                this.listener.addBundle(adapter);
                break;
            }
            case 16: {
                this.listener.removeBundle(adapter);
                break;
            }
            case 8: {
                this.listener.updateBundle(adapter, 1);
                break;
            }
            case 32: {
                this.listener.updateBundle(adapter, 7);
                break;
            }
            case 64: {
                this.listener.updateBundle(adapter, 8);
                break;
            }
            case 128: {
                this.listener.updateBundle(adapter, 3);
                break;
            }
            case 2: {
                this.listener.updateBundle(adapter, 4);
                break;
            }
            case 256: {
                this.listener.updateBundle(adapter, 5);
                break;
            }
            case 4: {
                this.listener.updateBundle(adapter, 6);
                break;
            }
            default: {
                this.listener.updateBundle(adapter, 1);
            }
        }
    }

    public void serviceChanged(ServiceEvent event) {
        ServiceReference ref = event.getServiceReference();
        ServiceRegistration adapter = this.createServiceReferenceAdapter(ref);
        switch (event.getType()) {
            case 1: {
                this.listener.addService(adapter);
                break;
            }
            case 4: {
                this.listener.removeService(adapter);
                break;
            }
            default: {
                this.listener.updateService(adapter);
            }
        }
    }

    private ExtensionPoint[] createExtensionPointAdapters(IExtensionPoint[] extensionPoints) {
        ExtensionPoint[] result = new ExtensionPoint[extensionPoints.length];
        int i = 0;
        while (i < extensionPoints.length) {
            result[i] = this.createExtensionPointAdapter(extensionPoints[i]);
            ++i;
        }
        return result;
    }

    public void added(IExtension[] extensions) {
        this.listener.addExtensions(this.createExtensionAdapters(extensions));
    }

    public void removed(IExtension[] extensions) {
        this.listener.removeExtensions(this.createExtensionAdapters(extensions));
    }

    public void added(IExtensionPoint[] extensionPoints) {
        this.listener.addExtensionPoints(this.createExtensionPointAdapters(extensionPoints));
    }

    public void removed(IExtensionPoint[] extensionPoints) {
        this.listener.removeExtensionPoints(this.createExtensionPointAdapters(extensionPoints));
    }

    public void setEnabled(long id, boolean enabled) {
        State state = PDERuntimePlugin.getDefault().getState();
        BundleDescription desc = state.getBundle(id);
        if (enabled) {
            DisabledInfo[] infos = state.getDisabledInfos(desc);
            int i = 0;
            while (i < infos.length) {
                PlatformAdmin platformAdmin = PDERuntimePlugin.getDefault().getPlatformAdmin();
                platformAdmin.removeDisabledInfo(infos[i]);
                ++i;
            }
        } else {
            DisabledInfo info = new DisabledInfo("org.eclipse.pde.ui", "Disabled via PDE", desc);
            PlatformAdmin platformAdmin = PDERuntimePlugin.getDefault().getPlatformAdmin();
            platformAdmin.addDisabledInfo(info);
        }
        org.osgi.framework.Bundle b = PDERuntimePlugin.getDefault().getBundleContext().getBundle(id);
        PackageAdmin packageAdmin = PDERuntimePlugin.getDefault().getPackageAdmin();
        packageAdmin.refreshPackages(new org.osgi.framework.Bundle[]{b});
    }
}

