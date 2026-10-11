/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ConfigurationElementHandle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.runtime.IConfigurationElement;

public class ThirdLevelConfigurationElementHandle
extends ConfigurationElementHandle {
    public ThirdLevelConfigurationElementHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }

    protected ConfigurationElement getConfigurationElement() {
        return (ConfigurationElement)this.objectManager.getObject(this.getId(), (byte)4);
    }

    public IConfigurationElement[] getChildren() {
        return (IConfigurationElement[])this.objectManager.getHandles(this.getConfigurationElement().getRawChildren(), (byte)4);
    }
}

