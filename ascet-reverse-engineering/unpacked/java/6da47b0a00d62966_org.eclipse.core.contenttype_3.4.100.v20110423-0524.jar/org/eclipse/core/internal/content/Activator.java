/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.core.internal.content;

import java.util.Hashtable;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

public class Activator
implements BundleActivator,
ServiceTrackerCustomizer {
    private static Activator singleton;
    private static BundleContext bundleContext;
    private ServiceRegistration contentManagerService = null;
    private ServiceTracker parserTracker = null;
    private ServiceTracker debugTracker = null;
    private ServiceTracker registryTracker = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    public static Activator getDefault() {
        return singleton;
    }

    public void start(BundleContext context) throws Exception {
        bundleContext = context;
        singleton = this;
        ContentTypeManager.startup();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.content.IContentTypeManager");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.contentManagerService = bundleContext.registerService(clazz.getName(), (Object)ContentTypeManager.getInstance(), new Hashtable());
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.core.runtime.IExtensionRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registryTracker = new ServiceTracker(context, clazz2.getName(), (ServiceTrackerCustomizer)this);
        this.registryTracker.open();
    }

    public void stop(BundleContext context) throws Exception {
        if (this.contentManagerService != null) {
            this.contentManagerService.unregister();
            this.contentManagerService = null;
        }
        if (this.parserTracker != null) {
            this.parserTracker.close();
            this.parserTracker = null;
        }
        if (this.debugTracker != null) {
            this.debugTracker.close();
            this.debugTracker = null;
        }
        if (this.registryTracker != null) {
            this.registryTracker.close();
            this.registryTracker = null;
        }
        ContentTypeManager.shutdown();
        bundleContext = null;
    }

    static BundleContext getContext() {
        return bundleContext;
    }

    public SAXParserFactory getFactory() {
        SAXParserFactory theFactory;
        if (this.parserTracker == null) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("javax.xml.parsers.SAXParserFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.parserTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.parserTracker.open();
        }
        if ((theFactory = (SAXParserFactory)this.parserTracker.getService()) != null) {
            theFactory.setNamespaceAware(true);
        }
        return theFactory;
    }

    public boolean getBooleanDebugOption(String option, boolean defaultValue) {
        String value;
        DebugOptions options;
        if (this.debugTracker == null) {
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.debugTracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            this.debugTracker.open();
        }
        if ((options = (DebugOptions)this.debugTracker.getService()) != null && (value = options.getOption(option)) != null) {
            return "true".equalsIgnoreCase(value);
        }
        return defaultValue;
    }

    public Object addingService(ServiceReference reference) {
        IExtensionRegistry registry = (IExtensionRegistry)bundleContext.getService(reference);
        ContentTypeManager.addRegistryChangeListener(registry);
        return registry;
    }

    public void modifiedService(ServiceReference reference, Object service) {
    }

    public void removedService(ServiceReference reference, Object service) {
        ContentTypeManager.removeRegistryChangeListener((IExtensionRegistry)service);
        bundleContext.ungetService(reference);
    }
}

