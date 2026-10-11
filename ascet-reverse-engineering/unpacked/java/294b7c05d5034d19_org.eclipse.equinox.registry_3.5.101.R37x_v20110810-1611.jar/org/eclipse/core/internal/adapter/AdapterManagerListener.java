/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.AdapterManager
 *  org.eclipse.core.internal.runtime.IAdapterManagerProvider
 *  org.eclipse.core.runtime.IAdapterFactory
 */
package org.eclipse.core.internal.adapter;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.internal.adapter.AdapterFactoryProxy;
import org.eclipse.core.internal.runtime.AdapterManager;
import org.eclipse.core.internal.runtime.IAdapterManagerProvider;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.core.runtime.RegistryFactory;

public final class AdapterManagerListener
implements IRegistryEventListener,
IAdapterManagerProvider {
    public static final String ADAPTER_POINT_ID = "org.eclipse.core.runtime.adapters";
    private AdapterManager theAdapterManager = AdapterManager.getDefault();

    public AdapterManagerListener() {
        this.theAdapterManager.registerLazyFactoryProvider((IAdapterManagerProvider)this);
    }

    public boolean addFactories(AdapterManager adapterManager) {
        IExtensionPoint point = RegistryFactory.getRegistry().getExtensionPoint(ADAPTER_POINT_ID);
        if (point == null) {
            return false;
        }
        boolean factoriesAdded = false;
        IExtension[] extensions = point.getExtensions();
        int i = 0;
        while (i < extensions.length) {
            IConfigurationElement[] elements = extensions[i].getConfigurationElements();
            int j = 0;
            while (j < elements.length) {
                AdapterFactoryProxy proxy = AdapterFactoryProxy.createProxy(elements[j]);
                if (proxy != null) {
                    adapterManager.registerFactory((IAdapterFactory)proxy, proxy.getAdaptableType());
                    factoriesAdded = true;
                }
                ++j;
            }
            ++i;
        }
        RegistryFactory.getRegistry().addListener(this, ADAPTER_POINT_ID);
        return factoriesAdded;
    }

    private void registerExtension(IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int j = 0;
        while (j < elements.length) {
            AdapterFactoryProxy proxy = AdapterFactoryProxy.createProxy(elements[j]);
            if (proxy != null) {
                this.theAdapterManager.registerFactory((IAdapterFactory)proxy, proxy.getAdaptableType());
            }
            ++j;
        }
    }

    public synchronized void added(IExtension[] extensions) {
        int i = 0;
        while (i < extensions.length) {
            this.registerExtension(extensions[i]);
            ++i;
        }
        this.theAdapterManager.flushLookup();
    }

    public synchronized void removed(IExtension[] extensions) {
        this.theAdapterManager.flushLookup();
        int i = 0;
        while (i < extensions.length) {
            Iterator it = this.theAdapterManager.getFactories().values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List)it.next()).iterator();
                while (it2.hasNext()) {
                    IAdapterFactory factory = (IAdapterFactory)it2.next();
                    if (!(factory instanceof AdapterFactoryProxy) || !((AdapterFactoryProxy)factory).originatesFrom(extensions[i])) continue;
                    it2.remove();
                }
            }
            ++i;
        }
    }

    public synchronized void added(IExtensionPoint[] extensionPoints) {
    }

    public synchronized void removed(IExtensionPoint[] extensionPoints) {
    }

    public synchronized void stop() {
        RegistryFactory.getRegistry().removeListener(this);
    }
}

