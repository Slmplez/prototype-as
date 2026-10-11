/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.registry.BaseExtensionPointHandle
 *  org.eclipse.core.internal.registry.IObjectManager
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.BaseExtensionPointHandle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryCompatibilityHelper;
import org.eclipse.core.runtime.IPluginDescriptor;

public class ExtensionPointHandle
extends BaseExtensionPointHandle {
    static final ExtensionPointHandle[] EMPTY_ARRAY = new ExtensionPointHandle[0];

    public ExtensionPointHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }

    public IPluginDescriptor getDeclaringPluginDescriptor() {
        return RegistryCompatibilityHelper.getPluginDescriptor(this.getContributor().getName());
    }
}

