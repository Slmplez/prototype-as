/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.core.resources.IFile;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.internal.core.plugin.Plugin;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModelBase;

public class WorkspacePluginModel
extends WorkspacePluginModelBase
implements IPluginModel {
    private static final long serialVersionUID = 1L;

    public WorkspacePluginModel(IFile file, boolean abbreviated) {
        super(file, abbreviated);
    }

    public IPluginBase createPluginBase() {
        Plugin plugin = new Plugin(!this.isEditable());
        plugin.setModel(this);
        return plugin;
    }

    public IPlugin getPlugin() {
        return (IPlugin)this.getPluginBase();
    }
}

