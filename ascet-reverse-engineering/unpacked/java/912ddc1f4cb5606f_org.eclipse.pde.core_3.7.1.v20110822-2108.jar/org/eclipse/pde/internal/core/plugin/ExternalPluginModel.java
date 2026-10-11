/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.internal.core.plugin.ExternalPluginModelBase;
import org.eclipse.pde.internal.core.plugin.Plugin;

public class ExternalPluginModel
extends ExternalPluginModelBase
implements IPluginModel {
    private static final long serialVersionUID = 1L;

    public IPluginBase createPluginBase() {
        Plugin base = new Plugin(true);
        base.setModel(this);
        return base;
    }

    public IPlugin getPlugin() {
        return (IPlugin)this.getPluginBase();
    }
}

