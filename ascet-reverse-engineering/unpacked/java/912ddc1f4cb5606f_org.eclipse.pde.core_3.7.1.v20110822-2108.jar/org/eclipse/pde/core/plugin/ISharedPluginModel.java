/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.plugin.IExtensionsModelFactory;

public interface ISharedPluginModel
extends IModel,
IModelChangeProvider {
    public IExtensionsModelFactory getFactory();

    public String getInstallLocation();
}

