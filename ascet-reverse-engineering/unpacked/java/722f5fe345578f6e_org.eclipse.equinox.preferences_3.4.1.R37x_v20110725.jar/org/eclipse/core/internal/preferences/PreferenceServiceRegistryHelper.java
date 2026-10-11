/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.preferences;

import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.preferences.RootPreferences;
import org.eclipse.core.internal.preferences.exchange.ILegacyPreferences;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.AbstractPreferenceInitializer;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScope;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

public class PreferenceServiceRegistryHelper
implements IRegistryChangeListener {
    private static final String ELEMENT_INITIALIZER = "initializer";
    private static final String ATTRIBUTE_NAME = "name";
    private static final String ATTRIBUTE_CLASS = "class";
    private static final String ELEMENT_SCOPE = "scope";
    private static final String ELEMENT_MODIFIER = "modifier";
    private static final IExtension[] EMPTY_EXTENSION_ARRAY = new IExtension[0];
    private static final Map scopeRegistry = Collections.synchronizedMap(new HashMap());
    private ListenerList modifyListeners;
    private PreferencesService service;
    private IExtensionRegistry registry;

    private static IStatus createStatusError(String message, Exception e) {
        return new Status(4, "org.eclipse.equinox.preferences", 4, message, (Throwable)e);
    }

    private static IStatus createStatusWarning(String message, Exception e) {
        return new Status(2, "org.eclipse.equinox.preferences", 2, message, (Throwable)e);
    }

    private static void log(IStatus status) {
        RuntimeLog.log((IStatus)status);
    }

    public PreferenceServiceRegistryHelper(PreferencesService service, Object registryObject) {
        this.service = service;
        this.registry = (IExtensionRegistry)registryObject;
        this.initializeScopes();
        this.registry.addRegistryChangeListener((IRegistryChangeListener)this);
    }

    void stop() {
        this.registry.removeRegistryChangeListener((IRegistryChangeListener)this);
    }

    private void addModifyListener(IConfigurationElement element) {
        String key = element.getAttribute(ATTRIBUTE_CLASS);
        if (key == null) {
            String message = NLS.bind((String)PrefsMessages.preferences_missingClassAttribute, (Object)element.getDeclaringExtension().getUniqueIdentifier());
            PreferenceServiceRegistryHelper.log((IStatus)new Status(4, "org.eclipse.equinox.preferences", 4, message, null));
            return;
        }
        try {
            Object listener = element.createExecutableExtension(ATTRIBUTE_CLASS);
            if (!(listener instanceof PreferenceModifyListener)) {
                PreferenceServiceRegistryHelper.log((IStatus)new Status(4, "org.eclipse.equinox.preferences", 4, PrefsMessages.preferences_classCastListener, null));
                return;
            }
            this.modifyListeners.add(listener);
        }
        catch (CoreException e) {
            PreferenceServiceRegistryHelper.log(e.getStatus());
        }
    }

    public WeakReference applyRuntimeDefaults(String name, WeakReference pluginReference) {
        IExtension[] extensions = this.getPrefExtensions();
        if (extensions.length == 0) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Skipping runtime default preference customization.");
            }
            return null;
        }
        boolean foundInitializer = false;
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                if (ELEMENT_INITIALIZER.equals(elements[j].getName()) && name.equals(elements[j].getContributor().getName())) {
                    if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                        IExtension theExtension = elements[j].getDeclaringExtension();
                        String extensionNamespace = theExtension.getContributor().getName();
                        Bundle underlyingBundle = PreferencesOSGiUtils.getDefault().getBundle(extensionNamespace);
                        String ownerName = underlyingBundle != null ? underlyingBundle.getSymbolicName() : extensionNamespace;
                        PrefsMessages.message("Running default preference customization as defined by: " + ownerName);
                    }
                    this.runInitializer(elements[j]);
                    foundInitializer = true;
                }
                ++j;
            }
            ++i;
        }
        if (foundInitializer) {
            return null;
        }
        Object plugin = pluginReference.get();
        ILegacyPreferences initService = PreferencesOSGiUtils.getDefault().getLegacyPreferences();
        if (initService != null) {
            plugin = initService.init(plugin, name);
        }
        return new WeakReference(plugin);
    }

    public IEclipsePreferences createNode(RootPreferences parent, String name) {
        IScope scope = null;
        Object value = scopeRegistry.get(name);
        if (value instanceof IConfigurationElement) {
            try {
                scope = (IScope)((IConfigurationElement)value).createExecutableExtension(ATTRIBUTE_CLASS);
                scopeRegistry.put(name, scope);
            }
            catch (ClassCastException e) {
                PreferenceServiceRegistryHelper.log(PreferenceServiceRegistryHelper.createStatusError(PrefsMessages.preferences_classCastScope, e));
                return new EclipsePreferences(parent, name);
            }
            catch (CoreException e) {
                PreferenceServiceRegistryHelper.log(e.getStatus());
                return new EclipsePreferences(parent, name);
            }
        } else {
            scope = (IScope)value;
        }
        return scope.create(parent, name);
    }

    public PreferenceModifyListener[] getModifyListeners() {
        if (this.modifyListeners == null) {
            this.modifyListeners = new ListenerList();
            IExtension[] extensions = this.getPrefExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < elements.length) {
                    if (ELEMENT_MODIFIER.equalsIgnoreCase(elements[j].getName())) {
                        this.addModifyListener(elements[j]);
                    }
                    ++j;
                }
                ++i;
            }
        }
        Object[] source = this.modifyListeners.getListeners();
        PreferenceModifyListener[] result = new PreferenceModifyListener[source.length];
        System.arraycopy(source, 0, result, 0, source.length);
        return result;
    }

    private IExtension[] getPrefExtensions() {
        IExtensionPoint pointNew;
        IExtension[] extensionsOld = EMPTY_EXTENSION_ARRAY;
        IExtension[] extensionsNew = EMPTY_EXTENSION_ARRAY;
        IExtensionPoint pointOld = this.registry.getExtensionPoint("org.eclipse.core.runtime", "preferences");
        if (pointOld != null) {
            extensionsOld = pointOld.getExtensions();
        }
        if ((pointNew = this.registry.getExtensionPoint("org.eclipse.equinox.preferences", "preferences")) != null) {
            extensionsNew = pointNew.getExtensions();
        }
        IExtension[] extensions = new IExtension[extensionsOld.length + extensionsNew.length];
        System.arraycopy(extensionsOld, 0, extensions, 0, extensionsOld.length);
        System.arraycopy(extensionsNew, 0, extensions, extensionsOld.length, extensionsNew.length);
        if (extensions.length == 0 && EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("No extensions for org.eclipse.core.contenttype.");
        }
        return extensions;
    }

    private void initializeScopes() {
        IExtension[] extensions = this.getPrefExtensions();
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                if (ELEMENT_SCOPE.equalsIgnoreCase(elements[j].getName())) {
                    this.scopeAdded(elements[j]);
                }
                ++j;
            }
            ++i;
        }
    }

    public void registryChanged(IRegistryChangeEvent event) {
        IExtensionDelta[] deltasOld = event.getExtensionDeltas("org.eclipse.core.runtime", "preferences");
        IExtensionDelta[] deltasNew = event.getExtensionDeltas("org.eclipse.equinox.preferences", "preferences");
        IExtensionDelta[] deltas = new IExtensionDelta[deltasOld.length + deltasNew.length];
        System.arraycopy(deltasOld, 0, deltas, 0, deltasOld.length);
        System.arraycopy(deltasNew, 0, deltas, deltasOld.length, deltasNew.length);
        if (deltas.length == 0) {
            return;
        }
        int i = 0;
        while (i < deltas.length) {
            IConfigurationElement[] elements = deltas[i].getExtension().getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                switch (deltas[i].getKind()) {
                    case 1: {
                        if (!ELEMENT_SCOPE.equalsIgnoreCase(elements[j].getName())) break;
                        this.scopeAdded(elements[j]);
                        break;
                    }
                    case 2: {
                        String scope = elements[j].getAttribute(ATTRIBUTE_NAME);
                        if (scope == null) break;
                        this.scopeRemoved(scope);
                    }
                }
                ++j;
            }
            ++i;
        }
        this.modifyListeners = null;
    }

    private void runInitializer(IConfigurationElement element) {
        try {
            final AbstractPreferenceInitializer initializer = (AbstractPreferenceInitializer)element.createExecutableExtension(ATTRIBUTE_CLASS);
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    initializer.initializeDefaultPreferences();
                }
            };
            SafeRunner.run((ISafeRunnable)job);
        }
        catch (ClassCastException e) {
            Status status = new Status(4, "org.eclipse.equinox.preferences", 4, PrefsMessages.preferences_invalidExtensionSuperclass, (Throwable)e);
            PreferenceServiceRegistryHelper.log((IStatus)status);
        }
        catch (CoreException e) {
            PreferenceServiceRegistryHelper.log(e.getStatus());
        }
    }

    private void scopeAdded(IConfigurationElement element) {
        String key = element.getAttribute(ATTRIBUTE_NAME);
        if (key == null) {
            String message = NLS.bind((String)PrefsMessages.preferences_missingScopeAttribute, (Object)element.getDeclaringExtension().getUniqueIdentifier());
            PreferenceServiceRegistryHelper.log(PreferenceServiceRegistryHelper.createStatusWarning(message, null));
            return;
        }
        scopeRegistry.put(key, element);
        ((RootPreferences)this.service.getRootNode()).addChild(key, null);
    }

    private void scopeRemoved(String key) {
        IEclipsePreferences node = (IEclipsePreferences)((RootPreferences)this.service.getRootNode()).getNode(key, false);
        if (node != null) {
            ((RootPreferences)this.service.getRootNode()).removeNode(node);
        } else {
            ((RootPreferences)this.service.getRootNode()).removeNode(key);
        }
        scopeRegistry.remove(key);
    }
}

