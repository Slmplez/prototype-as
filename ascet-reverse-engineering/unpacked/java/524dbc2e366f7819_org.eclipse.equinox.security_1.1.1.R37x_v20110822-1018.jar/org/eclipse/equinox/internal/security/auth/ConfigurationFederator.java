/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.auth;

import java.util.Hashtable;
import javax.security.auth.login.AppConfigurationEntry;
import javax.security.auth.login.Configuration;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.ConfigurationFactory;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.osgi.util.NLS;

public class ConfigurationFederator
extends Configuration {
    private Configuration[] federatedConfigs = null;
    private Hashtable configCache = new Hashtable(5);
    private Hashtable configToProviderMap = new Hashtable(5);
    private final Configuration defaultConfiguration;

    public ConfigurationFederator(Configuration defaultConfiguration) {
        this.defaultConfiguration = defaultConfiguration;
    }

    public synchronized AppConfigurationEntry[] getAppConfigurationEntry(String name) {
        Configuration[] configs;
        AppConfigurationEntry[] returnValue = (AppConfigurationEntry[])this.configCache.get(name);
        if (returnValue != null) {
            return returnValue;
        }
        Configuration[] allConfigs = configs = this.getFederatedConfigs();
        if (this.defaultConfiguration != null) {
            allConfigs = new Configuration[configs.length + 1];
            System.arraycopy(configs, 0, allConfigs, 0, configs.length);
            allConfigs[configs.length] = this.defaultConfiguration;
        }
        int i = 0;
        while (i < allConfigs.length) {
            boolean found = false;
            AppConfigurationEntry[] config = allConfigs[i].getAppConfigurationEntry(name);
            if (config != null) {
                String message;
                String cachedProviderName = (String)this.configToProviderMap.get(name);
                if (cachedProviderName != null && !cachedProviderName.equals(allConfigs[i].getClass().getName())) {
                    message = NLS.bind((String)SecAuthMessages.duplicateJaasConfig1, (Object)name, (Object)cachedProviderName);
                    AuthPlugin.getDefault().logError(message, null);
                } else if (found) {
                    message = NLS.bind((String)SecAuthMessages.duplicateJaasConfig2, (Object)name, (Object)cachedProviderName);
                    AuthPlugin.getDefault().logError(message, null);
                } else if (config != null && config.length != 0) {
                    returnValue = config;
                    this.configToProviderMap.put(name, allConfigs[i].getClass().getName());
                    this.configCache.put(name, returnValue);
                    found = true;
                }
            }
            ++i;
        }
        if (returnValue == null || returnValue.length == 0) {
            String message = NLS.bind((String)SecAuthMessages.nonExistantJaasConfig, (Object)name);
            AuthPlugin.getDefault().logError(message, null);
        }
        return returnValue;
    }

    public synchronized void refresh() {
        int i = 0;
        while (i < this.federatedConfigs.length) {
            this.federatedConfigs[i].refresh();
            ++i;
        }
        if (this.defaultConfiguration != null) {
            this.defaultConfiguration.refresh();
        }
        this.configCache.clear();
        this.configToProviderMap.clear();
    }

    private Configuration[] getFederatedConfigs() {
        if (this.federatedConfigs == null) {
            this.federatedConfigs = ConfigurationFactory.getInstance().getConfigurations();
        }
        return this.federatedConfigs;
    }
}

