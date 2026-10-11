/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.internal.core.plugin.ExternalPluginModelBase;
import org.eclipse.pde.internal.core.plugin.Fragment;

public class ExternalFragmentModel
extends ExternalPluginModelBase
implements IFragmentModel {
    private static final long serialVersionUID = 1L;

    public IPluginBase createPluginBase() {
        Fragment base = new Fragment(true);
        base.setModel(this);
        return base;
    }

    public IFragment getFragment() {
        return (IFragment)this.getPluginBase();
    }

    public boolean isFragmentModel() {
        return true;
    }
}

