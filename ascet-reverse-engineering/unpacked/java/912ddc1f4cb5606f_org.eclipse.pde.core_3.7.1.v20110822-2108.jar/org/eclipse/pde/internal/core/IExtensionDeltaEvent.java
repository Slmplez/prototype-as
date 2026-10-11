/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import org.eclipse.pde.core.plugin.IPluginModelBase;

public interface IExtensionDeltaEvent {
    public static final int MODELS_ADDED = 1;
    public static final int MODELS_REMOVED = 2;
    public static final int MODELS_CHANGED = 4;

    public IPluginModelBase[] getAddedModels();

    public IPluginModelBase[] getChangedModels();

    public IPluginModelBase[] getRemovedModels();

    public int getEventTypes();
}

