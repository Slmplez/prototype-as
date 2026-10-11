/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;

public class PluginReference
extends PlatformObject {
    private String fId;
    private transient IPlugin fPlugin;

    public PluginReference() {
    }

    public PluginReference(String id) {
        this.fId = id;
    }

    public PluginReference(IPlugin plugin) {
        this.fId = plugin.getId();
        this.fPlugin = plugin;
    }

    public String getId() {
        return this.fId;
    }

    public IPlugin getPlugin() {
        if (this.fPlugin == null && this.fId != null) {
            IPluginModelBase model = PluginRegistry.findModel(this.fId);
            this.fPlugin = model instanceof IPluginModel ? ((IPluginModel)model).getPlugin() : null;
        }
        return this.fPlugin;
    }

    public String toString() {
        if (this.fPlugin != null) {
            return this.fPlugin.getTranslatedName();
        }
        return this.fId != null ? this.fId : "?";
    }

    public boolean isResolved() {
        return this.getPlugin() != null;
    }

    public void reconnect(IPluginModelBase model) {
        IPlugin plugin = null;
        if (model instanceof IPluginModel) {
            plugin = ((IPluginModel)model).getPlugin();
        }
        this.fPlugin = plugin;
    }
}

