/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.simpleconfigurator;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.List;
import org.eclipse.equinox.internal.provisional.configurator.Configurator;
import org.eclipse.equinox.internal.simpleconfigurator.ConfigApplier;
import org.eclipse.equinox.internal.simpleconfigurator.utils.EquinoxUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.SimpleConfiguratorUtils;
import org.eclipse.equinox.internal.simpleconfigurator.utils.Utils;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

public class SimpleConfiguratorImpl
implements Configurator {
    private static URL configurationURL = null;
    private static Object configurationLock = new Object();
    private BundleContext context;
    private ConfigApplier configApplier;
    private Bundle bundle;

    public SimpleConfiguratorImpl(BundleContext context, Bundle bundle) {
        this.context = context;
        this.bundle = bundle;
    }

    public URL getConfigurationURL() throws IOException {
        String specifiedURL = this.context.getProperty("org.eclipse.equinox.simpleconfigurator.configUrl");
        if (specifiedURL == null) {
            specifiedURL = "file:org.eclipse.equinox.simpleconfigurator/bundles.info";
        }
        try {
            if (!specifiedURL.startsWith("file:")) {
                return new URL(specifiedURL);
            }
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
        try {
            boolean done = false;
            URL url = null;
            String file = specifiedURL;
            while (!done) {
                try {
                    url = Utils.buildURL(file);
                    file = url.getFile();
                }
                catch (MalformedURLException malformedURLException) {
                    done = true;
                }
            }
            if (url != null && new File(url.getFile()).isAbsolute()) {
                return url;
            }
            URL[] configURL = EquinoxUtils.getConfigAreaURL(this.context);
            if (configURL != null) {
                File userConfig = new File(configURL[0].getFile(), url.getFile());
                if (configURL.length == 1) {
                    return userConfig.exists() ? userConfig.toURL() : null;
                }
                File sharedConfig = new File(configURL[1].getFile(), url.getFile());
                if (!userConfig.exists()) {
                    return sharedConfig.exists() ? sharedConfig.toURL() : null;
                }
                if (!sharedConfig.exists()) {
                    return userConfig.toURL();
                }
                URI base = EquinoxUtils.getInstallLocationURI(this.context);
                URL sharedConfigURL = sharedConfig.toURL();
                List sharedBundles = SimpleConfiguratorUtils.readConfiguration(sharedConfigURL, base);
                URL userConfigURL = userConfig.toURL();
                List userBundles = SimpleConfiguratorUtils.readConfiguration(userConfigURL, base);
                return userBundles.containsAll(sharedBundles) ? userConfigURL : sharedConfigURL;
            }
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
        try {
            return Utils.buildURL(specifiedURL);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void applyConfiguration(URL url) throws IOException {
        Object object = configurationLock;
        synchronized (object) {
            if (url == null) {
                return;
            }
            configurationURL = url;
            if (this.configApplier == null) {
                this.configApplier = new ConfigApplier(this.context, this.bundle);
            }
            this.configApplier.install(url, this.isExclusiveInstallation());
        }
    }

    private boolean isExclusiveInstallation() {
        String value = this.context.getProperty("org.eclipse.equinox.simpleconfigurator.exclusiveInstallation");
        if (value == null || value.trim().length() == 0) {
            value = "true";
        }
        return Boolean.valueOf(value);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void applyConfiguration() throws IOException {
        Object object = configurationLock;
        synchronized (object) {
            configurationURL = this.getConfigurationURL();
            this.applyConfiguration(configurationURL);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public URL getUrlInUse() {
        Object object = configurationLock;
        synchronized (object) {
            return configurationURL;
        }
    }
}

