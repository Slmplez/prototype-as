/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.search;

import java.util.HashSet;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEExtensionRegistry;
import org.eclipse.pde.internal.core.search.PluginSearchInput;
import org.eclipse.pde.internal.core.search.PluginSearchScope;

public class ExtensionPluginSearchScope
extends PluginSearchScope {
    PluginSearchInput fInput = null;

    public ExtensionPluginSearchScope(PluginSearchInput input) {
        this.fInput = input;
    }

    public ExtensionPluginSearchScope(int workspaceScope, int externalScope, HashSet selectedResources, PluginSearchInput input) {
        super(workspaceScope, externalScope, selectedResources);
        this.fInput = input;
    }

    public IPluginModelBase[] getMatchingModels() {
        if (this.fInput == null) {
            return new IPluginModelBase[0];
        }
        String pointId = this.fInput.getSearchString();
        PDEExtensionRegistry registry = PDECore.getDefault().getExtensionsRegistry();
        IPluginModelBase[] models = null;
        if (this.fInput.getSearchLimit() == 2) {
            models = registry.findExtensionPlugins(pointId, false);
        } else {
            IPluginModelBase[] iPluginModelBaseArray;
            IPluginModelBase base = registry.findExtensionPointPlugin(pointId);
            if (base == null) {
                iPluginModelBaseArray = new IPluginModelBase[]{};
            } else {
                IPluginModelBase[] iPluginModelBaseArray2 = new IPluginModelBase[1];
                iPluginModelBaseArray = iPluginModelBaseArray2;
                iPluginModelBaseArray2[0] = base;
            }
            models = iPluginModelBaseArray;
        }
        return this.addRelevantModels(models);
    }
}

