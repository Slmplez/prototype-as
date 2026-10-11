/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.transaction.impl;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.transaction.ResourceSetListener;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;
import org.eclipse.emf.transaction.internal.Tracing;
import org.eclipse.emf.transaction.internal.l10n.Messages;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EditingDomainManager {
    private static final String EXT_POINT_DOMAINS = "editingDomains";
    private static final String E_DOMAIN = "editingDomain";
    private static final String A_ID = "id";
    private static final String A_FACTORY = "factory";
    private static final String EXT_POINT_LISTENERS = "listeners";
    private static final String E_LISTENER = "listener";
    private static final String A_CLASS = "class";
    private static final EditingDomainManager INSTANCE = new EditingDomainManager();
    private Collection<IConfigurationElement> universalListeners;
    private final Map<String, Reference<ResourceSetListener>> listeners = new HashMap<String, Reference<ResourceSetListener>>();

    private EditingDomainManager() {
    }

    public static EditingDomainManager getInstance() {
        return INSTANCE;
    }

    public TransactionalEditingDomain createEditingDomain(String id) {
        TransactionalEditingDomain result = null;
        IConfigurationElement config = this.getDomainConfig(id);
        if (config != null) {
            String factoryClass = config.getAttribute(A_FACTORY);
            if (factoryClass == null || factoryClass.trim().length() == 0) {
                result = TransactionalEditingDomain.Factory.INSTANCE.createEditingDomain();
            } else {
                try {
                    Object factory = config.createExecutableExtension(A_FACTORY);
                    if (factory instanceof TransactionalEditingDomain.Factory) {
                        result = ((TransactionalEditingDomain.Factory)factory).createEditingDomain();
                    } else {
                        EMFTransactionPlugin.getPlugin().log(new Status(4, EMFTransactionPlugin.getPluginId(), 20, NLS.bind((String)Messages.factoryInterface, (Object)factory.getClass().getName(), (Object)id), null));
                    }
                }
                catch (CoreException e) {
                    Tracing.catching(EditingDomainManager.class, "createEditingDomain", e);
                    EMFTransactionPlugin.INSTANCE.log(new MultiStatus(EMFTransactionPlugin.getPluginId(), 21, new IStatus[]{e.getStatus()}, NLS.bind((String)Messages.factoryInitialization, (Object)id), null));
                }
            }
        }
        return result;
    }

    public boolean isStaticallyRegistered(String id) {
        return this.getDomainConfig(id) != null;
    }

    public void assertDynamicallyRegistered(String id) {
        if (this.isStaticallyRegistered(id)) {
            IllegalArgumentException exc = new IllegalArgumentException(NLS.bind((String)Messages.removeStaticDomain, (Object)id));
            Tracing.throwing(EditingDomainManager.class, "assertDynamicallyRegistered", exc);
            throw exc;
        }
    }

    public void configureListeners(String id, TransactionalEditingDomain domain) {
        Collection<IConfigurationElement> configs = this.getListenerConfigs(id);
        for (IConfigurationElement next : configs) {
            ResourceSetListener listener = this.getListener(next, true);
            if (listener == null) continue;
            domain.addResourceSetListener(listener);
        }
    }

    public void deconfigureListeners(String id, TransactionalEditingDomain domain) {
        Collection<IConfigurationElement> configs = this.getListenerConfigs(id);
        for (IConfigurationElement next : configs) {
            ResourceSetListener listener = this.getListener(next, false);
            if (listener == null) continue;
            domain.removeResourceSetListener(listener);
        }
    }

    private IConfigurationElement getDomainConfig(String id) {
        IConfigurationElement result = null;
        IConfigurationElement[] configs = Platform.getExtensionRegistry().getConfigurationElementsFor(EMFTransactionPlugin.getPluginId(), EXT_POINT_DOMAINS);
        int i = 0;
        while (result == null && i < configs.length) {
            if (E_DOMAIN.equals(configs[i].getName()) && id.equals(configs[i].getAttribute(A_ID))) {
                result = configs[i];
            }
            ++i;
        }
        return result;
    }

    private Collection<IConfigurationElement> getListenerConfigs(String id) {
        IConfigurationElement[] configs;
        ArrayList<IConfigurationElement> result = new ArrayList<IConfigurationElement>();
        IConfigurationElement[] iConfigurationElementArray = configs = Platform.getExtensionRegistry().getConfigurationElementsFor(EMFTransactionPlugin.getPluginId(), EXT_POINT_LISTENERS);
        int n = configs.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            if (E_LISTENER.equals(element.getName())) {
                IConfigurationElement[] domains;
                IConfigurationElement[] iConfigurationElementArray2 = domains = element.getChildren(E_DOMAIN);
                int n3 = domains.length;
                int n4 = 0;
                while (n4 < n3) {
                    IConfigurationElement element2 = iConfigurationElementArray2[n4];
                    if (id.equals(element2.getAttribute(A_ID))) {
                        result.add(element);
                        break;
                    }
                    ++n4;
                }
            }
            ++n2;
        }
        result.addAll(this.getUniversalListenerConfigs());
        return result;
    }

    private Collection<IConfigurationElement> getUniversalListenerConfigs() {
        if (this.universalListeners == null) {
            IConfigurationElement[] configs;
            this.universalListeners = new ArrayList<IConfigurationElement>();
            IConfigurationElement[] iConfigurationElementArray = configs = Platform.getExtensionRegistry().getConfigurationElementsFor(EMFTransactionPlugin.getPluginId(), EXT_POINT_LISTENERS);
            int n = configs.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement[] domains;
                IConfigurationElement element = iConfigurationElementArray[n2];
                if (E_LISTENER.equals(element.getName()) && (domains = element.getChildren(E_DOMAIN)).length == 0) {
                    this.universalListeners.add(element);
                }
                ++n2;
            }
        }
        return this.universalListeners;
    }

    private ResourceSetListener getListener(IConfigurationElement config, boolean create) {
        ResourceSetListener result = null;
        Reference<ResourceSetListener> ref = this.listeners.get(config.getAttribute(A_CLASS));
        if (ref != null) {
            result = ref.get();
        }
        if (result == null && create) {
            try {
                Object listener = config.createExecutableExtension(A_CLASS);
                if (listener instanceof ResourceSetListener) {
                    result = (ResourceSetListener)listener;
                    ref = new WeakReference<ResourceSetListener>(result);
                    this.listeners.put(result.getClass().getName(), ref);
                } else {
                    EMFTransactionPlugin.getPlugin().log(new Status(4, EMFTransactionPlugin.getPluginId(), 22, NLS.bind((String)Messages.listenerInterface, (Object)listener.getClass().getName()), null));
                }
            }
            catch (CoreException e) {
                Tracing.catching(EditingDomainManager.class, "getListener", e);
                EMFTransactionPlugin.INSTANCE.log(new MultiStatus(EMFTransactionPlugin.getPluginId(), 23, new IStatus[]{e.getStatus()}, NLS.bind((String)Messages.listenerInitialization, (Object)config.getAttribute(A_CLASS)), null));
            }
        }
        return result;
    }
}

