/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.IExtensionDeltaEvent;

public class ExtensionDeltaEvent
implements IExtensionDeltaEvent {
    private IPluginModelBase[] added;
    private IPluginModelBase[] changed;
    private IPluginModelBase[] removed;
    private int types;

    public ExtensionDeltaEvent(int types, IPluginModelBase[] added, IPluginModelBase[] removed, IPluginModelBase[] changed) {
        this.types = types;
        this.added = added;
        this.changed = changed;
        this.removed = removed;
    }

    public IPluginModelBase[] getAddedModels() {
        return this.added;
    }

    public IPluginModelBase[] getChangedModels() {
        return this.changed;
    }

    public IPluginModelBase[] getRemovedModels() {
        return this.removed;
    }

    public int getEventTypes() {
        return this.types;
    }
}

