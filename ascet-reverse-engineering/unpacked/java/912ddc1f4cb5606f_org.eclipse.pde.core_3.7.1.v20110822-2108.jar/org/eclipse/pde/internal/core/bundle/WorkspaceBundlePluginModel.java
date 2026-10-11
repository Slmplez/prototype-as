/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.internal.core.bundle;

import org.eclipse.core.resources.IFile;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.internal.core.bundle.BundlePlugin;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundlePluginModelBase;

public class WorkspaceBundlePluginModel
extends WorkspaceBundlePluginModelBase
implements IPluginModel {
    private static final long serialVersionUID = 1L;

    public WorkspaceBundlePluginModel(IFile manifestFile, IFile pluginFile) {
        super(manifestFile, pluginFile);
    }

    public IPluginBase createPluginBase() {
        BundlePlugin base = new BundlePlugin();
        base.setModel(this);
        return base;
    }

    public IPlugin getPlugin() {
        return (IPlugin)this.getPluginBase();
    }
}

