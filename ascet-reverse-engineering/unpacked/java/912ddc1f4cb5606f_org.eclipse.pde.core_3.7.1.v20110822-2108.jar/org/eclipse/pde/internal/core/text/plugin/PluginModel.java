/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.text.plugin;

import org.eclipse.jface.text.IDocument;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.internal.core.text.plugin.PluginModelBase;

public class PluginModel
extends PluginModelBase
implements IPluginModel {
    public PluginModel(IDocument document, boolean isReconciling) {
        super(document, isReconciling);
    }

    public IPlugin getPlugin() {
        return (IPlugin)this.getPluginBase();
    }

    public boolean isFragmentModel() {
        return false;
    }

    public BundleDescription getBundleDescription() {
        return null;
    }

    public void setBundleDescription(BundleDescription description) {
    }
}

