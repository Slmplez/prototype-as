/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.core.resources.IFile;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.internal.core.plugin.Fragment;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModelBase;

public class WorkspaceFragmentModel
extends WorkspacePluginModelBase
implements IFragmentModel {
    private static final long serialVersionUID = 1L;

    public WorkspaceFragmentModel(IFile file, boolean abbreviated) {
        super(file, abbreviated);
    }

    public IPluginBase createPluginBase() {
        Fragment fragment = new Fragment(!this.isEditable());
        fragment.setModel(this);
        return fragment;
    }

    public IFragment getFragment() {
        return (IFragment)this.getPluginBase();
    }

    public boolean isFragmentModel() {
        return true;
    }
}

