/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.security.auth;

import java.io.IOException;
import java.net.URL;
import java.security.Security;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.login.Configuration;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.ConfigurationFederator;
import org.eclipse.equinox.internal.security.auth.ext.loader.ExtCallbackHandlerLoader;
import org.osgi.framework.BundleContext;

public class SecurePlatformInternal {
    private static final String VM_PROPERTY = "equinox.security.vm";
    private static final String SERVER_VM = "server";
    private static final String PROVIDER_URL_BASE = "login.config.url.";
    private static final int MAX_PROVIDER_URL_COUNT = 777;
    private Configuration defaultConfiguration;
    private ExtCallbackHandlerLoader callbackHandlerLoader = new ExtCallbackHandlerLoader();
    private boolean running = false;
    private static final SecurePlatformInternal s_instance = new SecurePlatformInternal();

    private SecurePlatformInternal() {
    }

    public static final SecurePlatformInternal getInstance() {
        return s_instance;
    }

    public CallbackHandler loadCallbackHandler(String configurationName) {
        return this.callbackHandlerLoader.loadCallbackHandler(configurationName);
    }

    public void start() {
        if (this.running) {
            return;
        }
        BundleContext context = AuthPlugin.getDefault().getBundleContext();
        String vmType = context.getProperty(VM_PROPERTY);
        if (SERVER_VM.equals(vmType)) {
            this.defaultConfiguration = null;
            this.running = true;
            return;
        }
        try {
            this.defaultConfiguration = Configuration.getConfiguration();
        }
        catch (SecurityException securityException) {
            this.defaultConfiguration = null;
        }
        Configuration.setConfiguration(new ConfigurationFederator(this.defaultConfiguration));
        this.running = true;
    }

    public void stop() {
        if (!this.running) {
            return;
        }
        if (this.defaultConfiguration != null) {
            Configuration.setConfiguration(this.defaultConfiguration);
            this.defaultConfiguration = null;
        }
        this.running = false;
    }

    public boolean addConfigURL(URL url) {
        if (url == null) {
            return false;
        }
        int i = 1;
        while (i <= 777) {
            String tag = PROVIDER_URL_BASE + Integer.toString(i);
            String currentURL = Security.getProperty(tag);
            if (currentURL == null || currentURL.length() == 0) {
                String path;
                try {
                    path = FileLocator.toFileURL((URL)url).toExternalForm();
                }
                catch (IOException iOException) {
                    path = url.toExternalForm();
                }
                Security.setProperty(tag, path);
                return true;
            }
            ++i;
        }
        return false;
    }
}

