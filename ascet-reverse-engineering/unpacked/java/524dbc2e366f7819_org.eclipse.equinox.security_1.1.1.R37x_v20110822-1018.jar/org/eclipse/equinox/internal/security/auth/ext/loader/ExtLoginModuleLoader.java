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
package org.eclipse.equinox.internal.security.auth.ext.loader;

import java.util.Map;
import javax.security.auth.spi.LoginModule;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.osgi.util.NLS;

public class ExtLoginModuleLoader {
    private static final String POINT_MODULE = "org.eclipse.equinox.security.loginModule";
    private static final String ELEM_MODULE = "loginModule";
    private static final String ATTR_MODULE_CLASS = "class";

    public static LoginModule load(Map options) {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint point = registry.getExtensionPoint(POINT_MODULE);
        IExtension[] extensions = point.getExtensions();
        String targetPoint = (String)options.get("extensionId");
        LoginModule loginModule = null;
        int i = 0;
        while (i < extensions.length) {
            String sourcePoint = extensions[i].getUniqueIdentifier();
            if (sourcePoint != null && sourcePoint.equals(targetPoint)) {
                IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                int elementCount = elements.length;
                if (elementCount == 1) {
                    loginModule = ExtLoginModuleLoader.readEntry(elements[0]);
                } else {
                    String message = NLS.bind((String)SecAuthMessages.invalidLoginmoduleCount, (Object)Integer.toString(elementCount));
                    AuthPlugin.getDefault().logError(message, null);
                }
            }
            ++i;
        }
        return loginModule;
    }

    private static LoginModule readEntry(IConfigurationElement element) {
        if (!ELEM_MODULE.equals(element.getName())) {
            String supplier = element.getContributor().getName();
            String message = NLS.bind((String)SecAuthMessages.unexpectedConfigElement, (Object)element.getName(), (Object)supplier);
            AuthPlugin.getDefault().logError(message, null);
            return null;
        }
        try {
            LoginModule module = (LoginModule)element.createExecutableExtension(ATTR_MODULE_CLASS);
            return module;
        }
        catch (CoreException e) {
            String supplier = element.getContributor().getName();
            String message = NLS.bind((String)SecAuthMessages.instantiationFailed, (Object)element.getAttribute(ATTR_MODULE_CLASS), (Object)supplier);
            AuthPlugin.getDefault().logError(message, e);
            return null;
        }
    }
}

