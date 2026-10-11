/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core.plugin;

import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.ISharedPluginModel;

public interface ISharedExtensionsModel
extends ISharedPluginModel {
    public IExtensions getExtensions();

    public IExtensions getExtensions(boolean var1);
}

