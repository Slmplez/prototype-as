/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.core.internal.registry.osgi;

import java.io.File;
import java.util.Hashtable;
import org.eclipse.core.internal.adapter.AdapterManagerListener;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.internal.registry.RegistryProviderFactory;
import org.eclipse.core.internal.registry.osgi.EquinoxRegistryStrategy;
import org.eclipse.core.internal.registry.osgi.EquinoxUtils;
import org.eclipse.core.internal.registry.osgi.OSGIUtils;
import org.eclipse.core.internal.registry.osgi.RegistryProviderOSGI;
import org.eclipse.core.internal.registry.osgi.RegistryStrategyOSGI;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.osgi.service.datalocation.Location;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;

public class Activator
implements BundleActivator {
    private static BundleContext bundleContext;
    private static final String STORAGE_DIR = "org.eclipse.core.runtime";
    private Object masterRegistryKey = new Object();
    private Object userRegistryKey = new Object();
    private IExtensionRegistry defaultRegistry = null;
    private ServiceRegistration registryRegistration;
    private ServiceRegistration commandRegistration;
    private RegistryProviderOSGI defaultProvider;
    private AdapterManagerListener adapterManagerListener = null;
    static /* synthetic */ Class class$0;

    public void start(BundleContext context) throws Exception {
        bundleContext = context;
        RegistryProperties.setContext(bundleContext);
        this.processCommandLine();
        this.startRegistry();
        this.adapterManagerListener = new AdapterManagerListener();
    }

    public void stop(BundleContext context) throws Exception {
        if (this.adapterManagerListener != null) {
            this.adapterManagerListener.stop();
        }
        this.stopRegistry();
        RegistryProperties.setContext(null);
        bundleContext = null;
    }

    public static BundleContext getContext() {
        return bundleContext;
    }

    private void processCommandLine() {
        ServiceReference ref = Activator.getContext().getServiceReference("org.eclipse.osgi.service.environment.EnvironmentInfo");
        if (ref == null) {
            return;
        }
        String[] args = EquinoxUtils.getCommandLine(bundleContext, ref);
        if (args == null || args.length == 0) {
            return;
        }
        int i = 0;
        while (i < args.length) {
            if (args[i].equalsIgnoreCase("-noregistrycache")) {
                RegistryProperties.setProperty("eclipse.noRegistryCache", "true");
            } else if (args[i].equalsIgnoreCase("-noLazyRegistryCacheLoading")) {
                RegistryProperties.setProperty("eclipse.noLazyRegistryCacheLoading", "true");
            } else if (args[i].equalsIgnoreCase("-registryMultiLanguage")) {
                RegistryProperties.setProperty("eclipse.registry.MultiLanguage", "true");
            }
            ++i;
        }
    }

    public void startRegistry() throws CoreException {
        String property = bundleContext.getProperty("eclipse.createRegistry");
        if (property != null && property.equalsIgnoreCase("false")) {
            return;
        }
        if ("true".equals(bundleContext.getProperty("eclipse.registry.nulltoken"))) {
            this.userRegistryKey = null;
        }
        RegistryStrategyOSGI strategy = null;
        Location configuration = OSGIUtils.getDefault().getConfigurationLocation();
        if (configuration == null) {
            RegistryProperties.setProperty("eclipse.noRegistryCache", "true");
            RegistryProperties.setProperty("eclipse.noLazyRegistryCacheLoading", "true");
            strategy = new RegistryStrategyOSGI(null, null, this.masterRegistryKey);
        } else {
            boolean[] readOnlyLocations;
            File[] registryLocations;
            File primaryDir = new File(String.valueOf(configuration.getURL().getPath()) + '/' + STORAGE_DIR);
            boolean primaryReadOnly = configuration.isReadOnly();
            Location parentLocation = configuration.getParentLocation();
            if (parentLocation != null) {
                File secondaryDir = new File(String.valueOf(parentLocation.getURL().getFile()) + '/' + STORAGE_DIR);
                registryLocations = new File[]{primaryDir, secondaryDir};
                readOnlyLocations = new boolean[]{primaryReadOnly, true};
            } else {
                registryLocations = new File[]{primaryDir};
                readOnlyLocations = new boolean[]{primaryReadOnly};
            }
            strategy = new EquinoxRegistryStrategy(registryLocations, readOnlyLocations, this.masterRegistryKey);
        }
        this.defaultRegistry = RegistryFactory.createRegistry(strategy, this.masterRegistryKey, this.userRegistryKey);
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IExtensionRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registryRegistration = bundleContext.registerService(clazz.getName(), (Object)this.defaultRegistry, new Hashtable());
        this.defaultProvider = new RegistryProviderOSGI();
        RegistryProviderFactory.setDefault(this.defaultProvider);
        this.commandRegistration = EquinoxUtils.registerCommandProvider(Activator.getContext());
    }

    private void stopRegistry() {
        if (this.defaultRegistry != null) {
            RegistryProviderFactory.releaseDefault();
            this.defaultProvider.release();
            this.registryRegistration.unregister();
            this.defaultRegistry.stop(this.masterRegistryKey);
        }
        if (this.commandRegistration != null) {
            this.commandRegistration.unregister();
        }
    }
}

