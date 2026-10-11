/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.update.configurator;

import java.io.IOException;
import java.net.URL;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.configurator.IPlatformConfigurationFactory;
import org.eclipse.update.internal.configurator.ConfigurationActivator;
import org.eclipse.update.internal.configurator.Utils;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class ConfiguratorUtils {
    static /* synthetic */ Class class$0;

    public static IPlatformConfiguration getCurrentPlatformConfiguration() {
        ServiceReference configFactorySR;
        BundleContext context = ConfigurationActivator.getBundleContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.update.configurator.IPlatformConfigurationFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((configFactorySR = context.getServiceReference(clazz.getName())) == null) {
            throw new IllegalStateException();
        }
        IPlatformConfigurationFactory configFactory = (IPlatformConfigurationFactory)context.getService(configFactorySR);
        if (configFactory == null) {
            throw new IllegalStateException();
        }
        IPlatformConfiguration currentConfig = configFactory.getCurrentPlatformConfiguration();
        context.ungetService(configFactorySR);
        return currentConfig;
    }

    public static IPlatformConfiguration getPlatformConfiguration(URL url) throws IOException {
        ServiceReference configFactorySR;
        BundleContext context = ConfigurationActivator.getBundleContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.update.configurator.IPlatformConfigurationFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((configFactorySR = context.getServiceReference(clazz.getName())) == null) {
            throw new IllegalStateException();
        }
        IPlatformConfigurationFactory configFactory = (IPlatformConfigurationFactory)context.getService(configFactorySR);
        if (configFactory == null) {
            throw new IllegalStateException();
        }
        IPlatformConfiguration config = configFactory.getPlatformConfiguration(url);
        context.ungetService(configFactorySR);
        return config;
    }

    public static IPlatformConfiguration getPlatformConfiguration(URL url, URL loc) throws IOException {
        ServiceReference configFactorySR;
        BundleContext context = ConfigurationActivator.getBundleContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.update.configurator.IPlatformConfigurationFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((configFactorySR = context.getServiceReference(clazz.getName())) == null) {
            throw new IllegalStateException();
        }
        IPlatformConfigurationFactory configFactory = (IPlatformConfigurationFactory)context.getService(configFactorySR);
        if (configFactory == null) {
            throw new IllegalStateException();
        }
        IPlatformConfiguration config = configFactory.getPlatformConfiguration(url, loc);
        context.ungetService(configFactorySR);
        return config;
    }

    public static URL getInstallURL() {
        return Utils.getInstallURL();
    }
}

