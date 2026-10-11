/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.bundle;

import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.internal.core.bundle.BundleFragment;
import org.eclipse.pde.internal.core.bundle.BundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IBundleFragmentModel;

public class BundleFragmentModel
extends BundlePluginModelBase
implements IBundleFragmentModel {
    private static final long serialVersionUID = 1L;

    public IPluginBase createPluginBase() {
        BundleFragment bfragment = new BundleFragment();
        bfragment.setModel(this);
        return bfragment;
    }

    public IFragment getFragment() {
        return (IFragment)this.getPluginBase();
    }

    public boolean isFragmentModel() {
        return true;
    }
}

