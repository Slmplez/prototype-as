/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryEventListener
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.preferences.ConfigurationScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.security.storage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.preferences.ConfigurationScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.equinox.internal.security.auth.AuthPlugin;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.PasswordProviderModuleExt;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesMapper;
import org.eclipse.equinox.security.storage.StorageException;
import org.eclipse.equinox.security.storage.provider.PasswordProvider;
import org.eclipse.osgi.util.NLS;

public class PasswordProviderSelector
implements IRegistryEventListener {
    private static final String EXTENSION_POINT = "org.eclipse.equinox.security.secureStorage";
    private static final String STORAGE_MODULE = "provider";
    private static final String MODULE_PRIORITY = "priority";
    private static final String MODULE_DESCRIPTION = "description";
    private static final String CLASS_NAME = "class";
    private static final String HINTS_NAME = "hint";
    private static final String HINT_VALUE = "value";
    private Map modules = new HashMap(5);
    private static PasswordProviderSelector instance = null;

    public static PasswordProviderSelector getInstance() {
        if (instance == null) {
            instance = new PasswordProviderSelector();
            IExtensionRegistry registry = RegistryFactory.getRegistry();
            registry.addListener((IRegistryEventListener)instance, EXTENSION_POINT);
        }
        return instance;
    }

    public void stop() {
        if (instance != null) {
            IExtensionRegistry registry = RegistryFactory.getRegistry();
            registry.removeListener((IRegistryEventListener)instance);
            instance = null;
        }
    }

    private PasswordProviderSelector() {
    }

    public List findAvailableModules(String expectedID) {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IExtensionPoint point = registry.getExtensionPoint(EXTENSION_POINT);
        IExtension[] extensions = point.getExtensions();
        ArrayList<ExtStorageModule> allAvailableModules = new ArrayList<ExtStorageModule>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            String moduleID = extensions[i].getUniqueIdentifier();
            if (moduleID != null) {
                IConfigurationElement[] elements;
                moduleID = moduleID.toLowerCase();
                if ((expectedID == null || expectedID.equals(moduleID)) && (elements = extensions[i].getConfigurationElements()).length != 0) {
                    IConfigurationElement element = elements[0];
                    if (!STORAGE_MODULE.equals(element.getName())) {
                        this.reportError(SecAuthMessages.unexpectedConfigElement, element.getName(), element, null);
                    } else {
                        String attribute = element.getAttribute(MODULE_PRIORITY);
                        int priority = -1;
                        if (attribute != null) {
                            priority = Integer.parseInt(attribute);
                            if (priority < 0) {
                                priority = 0;
                            }
                            if (priority > 10) {
                                priority = 10;
                            }
                        }
                        String name = extensions[i].getLabel();
                        String description = element.getAttribute(MODULE_DESCRIPTION);
                        ArrayList<String> suppliedHints = null;
                        IConfigurationElement[] hints = element.getChildren(HINTS_NAME);
                        if (hints.length != 0) {
                            suppliedHints = new ArrayList<String>(hints.length);
                            int j = 0;
                            while (j < hints.length) {
                                String hint = hints[j].getAttribute(HINT_VALUE);
                                if (hint != null) {
                                    suppliedHints.add(hint);
                                }
                                ++j;
                            }
                        }
                        allAvailableModules.add(new ExtStorageModule(moduleID, element, priority, name, description, suppliedHints));
                    }
                }
            }
            ++i;
        }
        Collections.sort(allAvailableModules, new Comparator(){

            public int compare(Object o1, Object o2) {
                int p1 = ((ExtStorageModule)o1).priority;
                int p2 = ((ExtStorageModule)o2).priority;
                return p2 - p1;
            }
        });
        return allAvailableModules;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public PasswordProviderModuleExt findStorageModule(String expectedID) throws StorageException {
        if (expectedID != null) {
            expectedID = expectedID.toLowerCase();
        }
        Map map = this.modules;
        synchronized (map) {
            if (this.modules.containsKey(expectedID)) {
                return (PasswordProviderModuleExt)this.modules.get(expectedID);
            }
        }
        List allAvailableModules = this.findAvailableModules(expectedID);
        HashSet disabledModules = this.getDisabledModules();
        Iterator i = allAvailableModules.iterator();
        while (i.hasNext()) {
            Object clazz;
            ExtStorageModule module = (ExtStorageModule)i.next();
            if (expectedID == null && disabledModules != null && disabledModules.contains(module.moduleID)) continue;
            try {
                clazz = module.element.createExecutableExtension(CLASS_NAME);
            }
            catch (CoreException e) {
                this.reportError(SecAuthMessages.instantiationFailed, module.element.getAttribute(CLASS_NAME), module.element, e);
                continue;
            }
            if (!(clazz instanceof PasswordProvider)) continue;
            PasswordProviderModuleExt result = new PasswordProviderModuleExt((PasswordProvider)clazz, module.moduleID);
            Map map2 = this.modules;
            synchronized (map2) {
                if (expectedID == null) {
                    this.modules.put(null, result);
                }
                this.modules.put(module.moduleID, result);
            }
            return result;
        }
        String msg = expectedID == null ? SecAuthMessages.noSecureStorageModules : NLS.bind((String)SecAuthMessages.noSecureStorageModule, (Object)expectedID);
        throw new StorageException(1, msg);
    }

    private void reportError(String template, String arg, IConfigurationElement element, Throwable e) {
        String supplier = element.getContributor().getName();
        String message = NLS.bind((String)template, (Object)arg, (Object)supplier);
        AuthPlugin.getDefault().logError(message, e);
    }

    public void added(IExtension[] extensions) {
        this.clearCaches();
    }

    public void added(IExtensionPoint[] extensionPoints) {
        this.clearCaches();
    }

    public void removed(IExtension[] extensions) {
        this.clearCaches();
    }

    public void removed(IExtensionPoint[] extensionPoints) {
        this.clearCaches();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clearCaches() {
        Map map = this.modules;
        synchronized (map) {
            this.modules.clear();
            SecurePreferencesMapper.clearPasswordCache();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isLoggedIn() {
        Map map = this.modules;
        synchronized (map) {
            return this.modules.size() != 0;
        }
    }

    protected HashSet getDisabledModules() {
        IEclipsePreferences node = new ConfigurationScope().getNode("org.eclipse.equinox.security");
        String tmp = node.get("org.eclipse.equinox.security.preferences.disabledProviders", null);
        if (tmp == null || tmp.length() == 0) {
            return null;
        }
        HashSet<String> disabledModules = new HashSet<String>();
        String[] disabledProviders = tmp.split(",");
        int i = 0;
        while (i < disabledProviders.length) {
            disabledModules.add(disabledProviders[i]);
            ++i;
        }
        return disabledModules;
    }

    public class ExtStorageModule {
        public String moduleID;
        public IConfigurationElement element;
        public int priority;
        public String name;
        public String description;
        public List hints;

        public ExtStorageModule(String id, IConfigurationElement element, int priority, String name, String description, List hints) {
            this.element = element;
            this.moduleID = id;
            this.priority = priority;
            this.name = name;
            this.description = description;
            this.hints = hints;
        }
    }
}

