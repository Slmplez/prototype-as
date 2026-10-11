/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.auth;

import java.util.ArrayList;
import javax.security.auth.login.Configuration;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.osgi.util.NLS;

public class ConfigurationFactory {
    private static final String ELEM_PROVIDER = "loginConfigurationProvider";
    private static final String ATTR_PROVIDER_CLASS = "class";
    private static final String POINT_PROVIDER = "org.eclipse.equinox.security.loginConfigurationProvider";
    private static ConfigurationFactory s_instance = new ConfigurationFactory();

    static ConfigurationFactory getInstance() {
        return s_instance;
    }

    public Configuration[] getConfigurations() {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint point = registry.getExtensionPoint(POINT_PROVIDER);
        IExtension[] extensions = point.getExtensions();
        ArrayList<Configuration> returnValue = new ArrayList<Configuration>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                Configuration provider = this.readProvider(elements[j]);
                if (provider != null) {
                    returnValue.add(provider);
                }
                ++j;
            }
            ++i;
        }
        return returnValue.toArray(new Configuration[0]);
    }

    private Configuration readProvider(IConfigurationElement element) {
        if (!ELEM_PROVIDER.equals(element.getName())) {
            this.reportError(SecAuthMessages.unexpectedConfigElement, element.getName(), element, null);
            return null;
        }
        try {
            return (Configuration)element.createExecutableExtension(ATTR_PROVIDER_CLASS);
        }
        catch (CoreException e) {
            this.reportError(SecAuthMessages.instantiationFailed, element.getAttribute(ATTR_PROVIDER_CLASS), element, e);
            return null;
        }
    }

    private void reportError(String template, String arg, IConfigurationElement element, Throwable e) {
        String supplier = element.getContributor().getName();
        String message = NLS.bind((String)template, (Object)arg, (Object)supplier);
        AuthPlugin.getDefault().logError(message, e);
    }
}

