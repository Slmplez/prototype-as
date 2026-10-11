/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.IAdapterFactoryExt
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdapterFactory
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.adapter;

import java.util.ArrayList;
import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.osgi.EquinoxUtils;
import org.eclipse.core.internal.runtime.IAdapterFactoryExt;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

class AdapterFactoryProxy
implements IAdapterFactory,
IAdapterFactoryExt {
    private IConfigurationElement element;
    private IAdapterFactory factory;
    private boolean factoryLoaded = false;
    private String ownerId;
    private int internalOwnerID = -1;

    AdapterFactoryProxy() {
    }

    public static AdapterFactoryProxy createProxy(IConfigurationElement element) {
        AdapterFactoryProxy result = new AdapterFactoryProxy();
        result.element = element;
        IExtension extension = element.getDeclaringExtension();
        result.ownerId = extension.getUniqueIdentifier();
        if (extension instanceof Handle) {
            result.internalOwnerID = ((Handle)((Object)extension)).getId();
        }
        if ("factory".equals(element.getName())) {
            return result;
        }
        result.logError();
        return null;
    }

    public boolean originatesFrom(IExtension extension) {
        String id = extension.getUniqueIdentifier();
        if (id != null) {
            return id.equals(this.ownerId);
        }
        if (!(extension instanceof Handle)) {
            return false;
        }
        return this.internalOwnerID == ((Handle)((Object)extension)).getId();
    }

    String getAdaptableType() {
        String result = this.element.getAttribute("adaptableType");
        if (result != null) {
            return result;
        }
        this.logError();
        return "";
    }

    public Object getAdapter(Object adaptableObject, Class adapterType) {
        if (!this.factoryLoaded) {
            this.loadFactory(false);
        }
        return this.factory == null ? null : this.factory.getAdapter(adaptableObject, adapterType);
    }

    public Class[] getAdapterList() {
        if (!this.factoryLoaded) {
            this.loadFactory(false);
        }
        return this.factory == null ? null : this.factory.getAdapterList();
    }

    public String[] getAdapterNames() {
        IConfigurationElement[] children = this.element.getChildren();
        ArrayList<String> adapters = new ArrayList<String>(children.length);
        int i = 0;
        while (i < children.length) {
            String type;
            if ("adapter".equals(children[i].getName()) && (type = children[i].getAttribute("type")) != null) {
                adapters.add(type);
            }
            ++i;
        }
        if (adapters.isEmpty()) {
            this.logError();
        }
        return adapters.toArray(new String[adapters.size()]);
    }

    IExtension getExtension() {
        return this.element.getDeclaringExtension();
    }

    public synchronized IAdapterFactory loadFactory(boolean force) {
        boolean isActive;
        if (this.factory != null || this.factoryLoaded) {
            return this.factory;
        }
        String contributorName = this.element.getContributor().getName();
        try {
            isActive = EquinoxUtils.isActive(contributorName);
        }
        catch (NoClassDefFoundError noClassDefFoundError) {
            isActive = true;
        }
        if (!force && !isActive) {
            return null;
        }
        this.factoryLoaded = true;
        try {
            this.factory = (IAdapterFactory)this.element.createExecutableExtension("class");
        }
        catch (CoreException e) {
            String msg = NLS.bind((String)RegistryMessages.adapters_cantInstansiate, (Object)this.getAdaptableType(), (Object)this.element.getContributor().getName());
            RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, msg, (Throwable)e));
        }
        return this.factory;
    }

    private void logError() {
        String msg = NLS.bind((String)RegistryMessages.adapters_badAdapterFactory, (Object)this.element.getContributor().getName());
        RuntimeLog.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, msg, null));
    }
}

