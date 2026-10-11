/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.registry.BaseExtensionHandle
 *  org.eclipse.core.internal.registry.IObjectManager
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.BaseExtensionHandle;
import org.eclipse.core.internal.registry.BundleHelper;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryCompatibilityHelper;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.osgi.framework.Bundle;

public class ExtensionHandle
extends BaseExtensionHandle {
    static final ExtensionHandle[] EMPTY_ARRAY = new ExtensionHandle[0];

    public ExtensionHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }

    public IPluginDescriptor getDeclaringPluginDescriptor() throws InvalidRegistryObjectException {
        Bundle[] hosts;
        Bundle underlyingBundle;
        String namespace = this.getContributor().getName();
        IPluginDescriptor result = RegistryCompatibilityHelper.getPluginDescriptor(namespace);
        if (result == null && (underlyingBundle = BundleHelper.getDefault().getBundle(namespace)) != null && (hosts = BundleHelper.getDefault().getHosts(underlyingBundle)) != null) {
            result = RegistryCompatibilityHelper.getPluginDescriptor(hosts[0].getSymbolicName());
        }
        return result;
    }
}

