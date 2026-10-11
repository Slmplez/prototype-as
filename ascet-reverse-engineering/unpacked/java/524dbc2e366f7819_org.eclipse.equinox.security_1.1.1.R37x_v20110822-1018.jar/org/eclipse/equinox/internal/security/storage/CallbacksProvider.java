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
 */
package org.eclipse.equinox.internal.security.storage;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.equinox.internal.security.storage.friends.IUICallbacks;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;

public class CallbacksProvider {
    private static final String EXTENSION_POINT = "org.eclipse.equinox.security.internalUI";
    private static final String PROVIDER_MODULE = "provider";
    private static final String CLASS_NAME = "class";
    private static final int NUMBER_OF_QUESTIONS = 2;
    private IUICallbacks callback = null;
    private static CallbacksProvider instance = null;

    private CallbacksProvider() {
    }

    public static CallbacksProvider getDefault() {
        if (instance == null) {
            instance = new CallbacksProvider();
        }
        return instance;
    }

    private void init() {
        Object clazz;
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint point = registry.getExtensionPoint(EXTENSION_POINT);
        IExtension[] extensions = point.getExtensions();
        if (extensions.length == 0) {
            return;
        }
        IConfigurationElement[] elements = extensions[0].getConfigurationElements();
        if (elements.length == 0) {
            return;
        }
        IConfigurationElement element = elements[0];
        if (!PROVIDER_MODULE.equals(element.getName())) {
            return;
        }
        try {
            clazz = element.createExecutableExtension(CLASS_NAME);
        }
        catch (CoreException coreException) {
            return;
        }
        if (clazz instanceof IUICallbacks) {
            this.callback = (IUICallbacks)clazz;
        }
    }

    public void setupChallengeResponse(String moduleID, IPreferencesContainer container) {
        if (this.callback == null) {
            this.init();
        }
        if (this.callback != null) {
            this.callback.setupPasswordRecovery(2, moduleID, container);
        }
    }

    public IUICallbacks getCallback() {
        if (this.callback == null) {
            this.init();
        }
        return this.callback;
    }

    public boolean runningUI() {
        IUICallbacks callbackInstalled = this.getCallback();
        if (callbackInstalled == null) {
            return false;
        }
        return callbackInstalled.runningUI();
    }
}

