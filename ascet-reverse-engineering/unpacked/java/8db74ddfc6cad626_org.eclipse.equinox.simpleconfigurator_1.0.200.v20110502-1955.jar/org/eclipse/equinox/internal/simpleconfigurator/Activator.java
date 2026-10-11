/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.equinox.internal.simpleconfigurator;

import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.equinox.internal.simpleconfigurator.SimpleConfiguratorFactory;
import org.eclipse.equinox.internal.simpleconfigurator.SimpleConfiguratorImpl;
import org.eclipse.equinox.internal.simpleconfigurator.utils.EquinoxUtils;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

public class Activator
implements BundleActivator {
    public static final boolean DEBUG = false;
    private ServiceRegistration configuratorRegistration;
    private ServiceRegistration commandRegistration;
    static /* synthetic */ Class class$0;

    public void start(BundleContext context) throws Exception {
        SimpleConfiguratorImpl bundleConfigurator = new SimpleConfiguratorImpl(context, context.getBundle());
        bundleConfigurator.applyConfiguration();
        Hashtable<String, String> props = new Hashtable<String, String>();
        ((Dictionary)props).put("service.vendor", "Eclipse");
        ((Dictionary)props).put("service.pid", "org.eclipse.equinox.simpleconfigurator");
        SimpleConfiguratorFactory configurationFactory = new SimpleConfiguratorFactory(context);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.provisional.configurator.Configurator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.configuratorRegistration = context.registerService(clazz.getName(), (Object)configurationFactory, props);
        try {
            if (context.getBundle().loadClass("org.eclipse.osgi.framework.console.CommandProvider") != null) {
                this.commandRegistration = EquinoxUtils.registerConsoleCommands(context);
            }
        }
        catch (ClassNotFoundException classNotFoundException) {}
    }

    public void stop(BundleContext context) throws Exception {
        if (this.configuratorRegistration != null) {
            this.configuratorRegistration.unregister();
            this.configuratorRegistration = null;
        }
        if (this.commandRegistration != null) {
            this.commandRegistration.unregister();
            this.commandRegistration = null;
        }
    }
}

