/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.internal.core.bundle;

import org.eclipse.core.resources.IFile;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.internal.core.bundle.BundleFragment;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundlePluginModelBase;

public class WorkspaceBundleFragmentModel
extends WorkspaceBundlePluginModelBase
implements IFragmentModel {
    private static final long serialVersionUID = 1L;

    public WorkspaceBundleFragmentModel(IFile manifestFile, IFile pluginFile) {
        super(manifestFile, pluginFile);
    }

    public IPluginBase createPluginBase() {
        BundleFragment frag = new BundleFragment();
        frag.setModel(this);
        return frag;
    }

    public IFragment getFragment() {
        return (IFragment)this.getPluginBase();
    }
}

