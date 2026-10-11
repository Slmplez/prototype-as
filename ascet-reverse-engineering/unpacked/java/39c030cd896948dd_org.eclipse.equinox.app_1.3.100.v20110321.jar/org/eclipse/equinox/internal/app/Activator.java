/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.spi.RegistryContributor
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.service.debug.DebugOptions
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.equinox.internal.app;

import java.security.AccessController;
import java.security.PrivilegedAction;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.equinox.internal.app.AppCommands;
import org.eclipse.equinox.internal.app.AppPersistence;
import org.eclipse.equinox.internal.app.CommandLineArgs;
import org.eclipse.equinox.internal.app.EclipseAppContainer;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.debug.DebugOptions;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

public class Activator
implements BundleActivator,
ServiceTrackerCustomizer {
    public static final String PI_APP = "org.eclipse.equinox.app";
    public static boolean DEBUG = false;
    private static volatile BundleContext _context;
    private static volatile PackageAdmin _packageAdmin;
    private static volatile EclipseAppContainer container;
    private static volatile ServiceTracker _frameworkLogTracker;
    private ServiceTracker registryTracker;
    private IExtensionRegistry registry;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public void start(BundleContext bc) {
        Class<?> clazz;
        ServiceReference ref;
        _context = bc;
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((ref = bc.getServiceReference(clazz2.getName())) != null) {
            _packageAdmin = (PackageAdmin)bc.getService(ref);
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        _frameworkLogTracker = new ServiceTracker(bc, clazz.getName(), null);
        _frameworkLogTracker.open();
        this.getDebugOptions(bc);
        this.processCommandLineArgs(bc);
        AppPersistence.start(bc);
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.core.runtime.IExtensionRegistry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.registryTracker = new ServiceTracker(bc, clazz3.getName(), (ServiceTrackerCustomizer)this);
        this.registryTracker.open();
        try {
            AppCommands.create(bc);
        }
        catch (NoClassDefFoundError noClassDefFoundError) {}
    }

    public void stop(BundleContext bc) {
        try {
            AppCommands.destroy(bc);
        }
        catch (NoClassDefFoundError noClassDefFoundError) {}
        this.registryTracker.close();
        this.registryTracker = null;
        AppPersistence.stop();
        if (_frameworkLogTracker != null) {
            _frameworkLogTracker.close();
            _frameworkLogTracker = null;
        }
        _packageAdmin = null;
        _context = null;
    }

    private void getDebugOptions(BundleContext context) {
        ServiceReference debugRef;
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((debugRef = context.getServiceReference(clazz.getName())) == null) {
            return;
        }
        DebugOptions debugOptions = (DebugOptions)context.getService(debugRef);
        DEBUG = debugOptions.getBooleanOption("org.eclipse.equinox.app/debug", false);
        context.ungetService(debugRef);
    }

    private static EnvironmentInfo getEnvironmentInfo() {
        ServiceReference infoRef;
        BundleContext bc = Activator.getContext();
        if (bc == null) {
            return null;
        }
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((infoRef = bc.getServiceReference(clazz.getName())) == null) {
            return null;
        }
        EnvironmentInfo envInfo = (EnvironmentInfo)bc.getService(infoRef);
        if (envInfo == null) {
            return null;
        }
        bc.ungetService(infoRef);
        return envInfo;
    }

    private void processCommandLineArgs(BundleContext bc) {
        EnvironmentInfo envInfo = Activator.getEnvironmentInfo();
        if (envInfo != null) {
            CommandLineArgs.processCommandLine(envInfo);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object addingService(ServiceReference reference) {
        BundleContext context = _context;
        if (context == null) {
            return null;
        }
        Object service = null;
        EclipseAppContainer startContainer = null;
        Activator activator = this;
        synchronized (activator) {
            block8: {
                if (container == null) break block8;
                return null;
            }
            service = context.getService(reference);
            if (this.registry == null && service instanceof IExtensionRegistry) {
                this.registry = (IExtensionRegistry)service;
                startContainer = container = new EclipseAppContainer(context, this.registry);
            }
        }
        if (startContainer != null) {
            startContainer.start();
            return service;
        }
        if (service != null) {
            context.ungetService(reference);
        }
        return null;
    }

    public void modifiedService(ServiceReference reference, Object service) {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removedService(ServiceReference reference, Object service) {
        EclipseAppContainer currentContainer = null;
        Activator activator = this;
        synchronized (activator) {
            if (service == this.registry) {
                this.registry = null;
            }
            if (container == null) {
                return;
            }
            currentContainer = container;
            container = null;
        }
        if (currentContainer != null) {
            currentContainer.stop();
        }
    }

    static void openTracker(final ServiceTracker tracker, final boolean allServices) {
        if (System.getSecurityManager() == null) {
            tracker.open(allServices);
        } else {
            AccessController.doPrivileged(new PrivilegedAction(){

                public Object run() {
                    tracker.open(allServices);
                    return null;
                }
            });
        }
    }

    static Object getService(final ServiceTracker tracker) {
        if (System.getSecurityManager() == null) {
            return tracker.getService();
        }
        return AccessController.doPrivileged(new PrivilegedAction(){

            public Object run() {
                return tracker.getService();
            }
        });
    }

    static String getLocation(final Bundle bundle) {
        if (System.getSecurityManager() == null) {
            return bundle.getLocation();
        }
        return (String)AccessController.doPrivileged(new PrivilegedAction(){

            public Object run() {
                return bundle.getLocation();
            }
        });
    }

    static Bundle getBundle(IContributor contributor) {
        PackageAdmin packageAdmin;
        if (contributor instanceof RegistryContributor) {
            try {
                long id = Long.parseLong(((RegistryContributor)contributor).getActualId());
                BundleContext context = _context;
                if (context != null) {
                    return context.getBundle(id);
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
        if ((packageAdmin = _packageAdmin) == null) {
            return null;
        }
        Bundle[] bundles = packageAdmin.getBundles(contributor.getName(), null);
        if (bundles == null) {
            return null;
        }
        int i = 0;
        while (i < bundles.length) {
            if ((bundles[i].getState() & 3) == 0) {
                return bundles[i];
            }
            ++i;
        }
        return null;
    }

    static BundleContext getContext() {
        return _context;
    }

    public static EclipseAppContainer getContainer() {
        return container;
    }

    static void log(FrameworkLogEntry entry) {
        FrameworkLog log;
        ServiceTracker frameworkLogTracker = _frameworkLogTracker;
        FrameworkLog frameworkLog = log = frameworkLogTracker == null ? null : (FrameworkLog)frameworkLogTracker.getService();
        if (log != null) {
            log.log(entry);
        }
    }

    static void setProperty(String key, String value) {
        EnvironmentInfo envInfo = Activator.getEnvironmentInfo();
        if (envInfo != null) {
            envInfo.setProperty(key, value);
        } else {
            System.getProperties().setProperty(key, value);
        }
    }
}

