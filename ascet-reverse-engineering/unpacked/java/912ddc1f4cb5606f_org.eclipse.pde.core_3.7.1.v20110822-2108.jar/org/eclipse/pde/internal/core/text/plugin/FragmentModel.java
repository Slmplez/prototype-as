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
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.internal.core.text.plugin.PluginModelBase;

public class FragmentModel
extends PluginModelBase
implements IFragmentModel {
    public FragmentModel(IDocument document, boolean isReconciling) {
        super(document, isReconciling);
    }

    public IFragment getFragment() {
        return (IFragment)this.getPluginBase();
    }

    public boolean isFragmentModel() {
        return true;
    }

    public BundleDescription getBundleDescription() {
        return null;
    }

    public void setBundleDescription(BundleDescription description) {
    }
}

