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

import javax.security.auth.callback.CallbackHandler;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.osgi.util.NLS;

public class ExtCallbackHandlerLoader {
    private static final String POINT_HANDLER = "org.eclipse.equinox.security.callbackHandler";
    private static final String ELEM_HANDLER = "callbackHandler";
    private static final String ATTR_HANDLER_CLASS = "class";
    private static final String POINT_MAPPING = "org.eclipse.equinox.security.callbackHandlerMapping";
    private static final String ELEM_MAPPING = "callbackHandlerMapping";
    private static final String ATTR_MAPPING_CONFIGNAME = "configName";
    private static final String ATTR_MAPPING_CALLBACKID = "callbackHandlerId";

    public CallbackHandler loadCallbackHandler(String configName) {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint point = registry.getExtensionPoint(POINT_MAPPING);
        IExtension[] extenders = point.getExtensions();
        String extensionId = null;
        int i = 0;
        while (i < extenders.length) {
            IConfigurationElement[] confEelements = extenders[i].getConfigurationElements();
            if (confEelements.length == 1 && (extensionId = this.loadMappingEntry(confEelements[0], configName)) != null) break;
            ++i;
        }
        if (extensionId == null) {
            return null;
        }
        IExtensionPoint pointCallbackHandler = registry.getExtensionPoint(POINT_HANDLER);
        IExtension extension = pointCallbackHandler.getExtension(extensionId);
        if (extension == null) {
            return null;
        }
        IConfigurationElement[] elements = extension.getConfigurationElements();
        if (elements.length != 1) {
            return null;
        }
        return this.loadHandlerClass(elements[0]);
    }

    private String loadMappingEntry(IConfigurationElement element, String configName) {
        if (!this.expectedElement(element, ELEM_MAPPING)) {
            return null;
        }
        if (configName.equals(element.getAttribute(ATTR_MAPPING_CONFIGNAME))) {
            return element.getAttribute(ATTR_MAPPING_CALLBACKID);
        }
        return null;
    }

    private CallbackHandler loadHandlerClass(IConfigurationElement element) {
        if (!this.expectedElement(element, ELEM_HANDLER)) {
            return null;
        }
        try {
            return (CallbackHandler)element.createExecutableExtension(ATTR_HANDLER_CLASS);
        }
        catch (CoreException e) {
            String message = NLS.bind((String)SecAuthMessages.instantiationFailed1, (Object)element.getAttribute(ATTR_HANDLER_CLASS));
            AuthPlugin.getDefault().logError(message, e);
            return null;
        }
    }

    private boolean expectedElement(IConfigurationElement element, String expectedName) {
        if (expectedName.equals(element.getName())) {
            return true;
        }
        String supplier = element.getContributor().getName();
        String message = NLS.bind((String)SecAuthMessages.unexpectedConfigElement, (Object)element.getName(), (Object)supplier);
        AuthPlugin.getDefault().logError(message, null);
        return false;
    }
}

