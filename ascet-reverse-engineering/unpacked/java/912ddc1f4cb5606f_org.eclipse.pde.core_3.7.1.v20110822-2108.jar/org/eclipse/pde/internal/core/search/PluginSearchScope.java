/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.search;

import java.util.ArrayList;
import java.util.HashSet;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;

public class PluginSearchScope {
    public static final int SCOPE_WORKSPACE = 0;
    public static final int SCOPE_SELECTION = 1;
    public static final int SCOPE_WORKING_SETS = 2;
    public static final int EXTERNAL_SCOPE_NONE = 0;
    public static final int EXTERNAL_SCOPE_ENABLED = 1;
    public static final int EXTERNAL_SCOPE_ALL = 2;
    private int workspaceScope;
    private int externalScope;
    private HashSet selectedResources;

    public PluginSearchScope(int workspaceScope, int externalScope, HashSet selectedResources) {
        this.workspaceScope = workspaceScope;
        this.externalScope = externalScope;
        this.selectedResources = selectedResources;
    }

    public PluginSearchScope() {
        this(0, 1, null);
    }

    protected final void addExternalModel(IPluginModelBase candidate, ArrayList result) {
        if (this.externalScope == 2) {
            result.add(candidate);
        } else if (this.externalScope == 1 && candidate.isEnabled()) {
            result.add(candidate);
        }
    }

    protected final void addWorkspaceModel(IPluginModelBase candidate, ArrayList result) {
        if (this.workspaceScope == 0) {
            result.add(candidate);
        } else if (this.selectedResources.contains(candidate.getUnderlyingResource().getProject())) {
            result.add(candidate);
        }
    }

    public IPluginModelBase[] getMatchingModels() {
        return this.addRelevantModels(PluginRegistry.getAllModels());
    }

    protected final IPluginModelBase[] addRelevantModels(IPluginModelBase[] models) {
        ArrayList result = new ArrayList();
        int i = 0;
        while (i < models.length) {
            if (models[i].getUnderlyingResource() != null) {
                this.addWorkspaceModel(models[i], result);
            } else {
                this.addExternalModel(models[i], result);
            }
            ++i;
        }
        return result.toArray(new IPluginModelBase[result.size()]);
    }
}

