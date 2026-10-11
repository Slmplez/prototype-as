/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.bundle;

import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.internal.core.bundle.BundlePlugin;
import org.eclipse.pde.internal.core.bundle.BundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModel;

public class BundlePluginModel
extends BundlePluginModelBase
implements IBundlePluginModel {
    private static final long serialVersionUID = 1L;

    public IPluginBase createPluginBase() {
        BundlePlugin bplugin = new BundlePlugin();
        bplugin.setModel(this);
        return bplugin;
    }

    public IPlugin getPlugin() {
        return (IPlugin)this.getPluginBase();
    }

    public boolean isFragmentModel() {
        return false;
    }
}

