/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.core.plugin;

import java.util.ArrayList;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.plugin.IPluginModelBase;

public class ModelEntry
extends PlatformObject {
    private String fId;
    protected ArrayList fWorkspaceEntries = new ArrayList(1);
    protected ArrayList fExternalEntries = new ArrayList(1);

    public ModelEntry(String id) {
        this.fId = id;
    }

    public IPluginModelBase[] getWorkspaceModels() {
        return this.fWorkspaceEntries.toArray(new IPluginModelBase[this.fWorkspaceEntries.size()]);
    }

    public IPluginModelBase[] getExternalModels() {
        return this.fExternalEntries.toArray(new IPluginModelBase[this.fExternalEntries.size()]);
    }

    public IPluginModelBase getModel() {
        IPluginModelBase model = this.getBestCandidate(this.getWorkspaceModels());
        if (model == null) {
            model = this.getBestCandidate(this.getExternalModels());
        }
        return model;
    }

    private IPluginModelBase getBestCandidate(IPluginModelBase[] models) {
        IPluginModelBase model = null;
        int i = 0;
        while (i < models.length) {
            if (models[i].getBundleDescription() != null) {
                if (model == null) {
                    model = models[i];
                } else if (!model.isEnabled() && models[i].isEnabled()) {
                    model = models[i];
                } else {
                    BundleDescription current = model.getBundleDescription();
                    BundleDescription candidate = models[i].getBundleDescription();
                    if (!current.isResolved() && candidate.isResolved()) {
                        model = models[i];
                    } else if (current.getVersion().compareTo(candidate.getVersion()) < 0) {
                        model = models[i];
                    }
                }
            }
            ++i;
        }
        return model;
    }

    public IPluginModelBase[] getActiveModels() {
        if (this.fWorkspaceEntries.size() > 0) {
            return this.getWorkspaceModels();
        }
        if (this.fExternalEntries.size() > 0) {
            ArrayList<IPluginModelBase> list = new ArrayList<IPluginModelBase>(this.fExternalEntries.size());
            int i = 0;
            while (i < this.fExternalEntries.size()) {
                IPluginModelBase model = (IPluginModelBase)this.fExternalEntries.get(i);
                if (model.isEnabled()) {
                    list.add(model);
                }
                ++i;
            }
            return list.toArray(new IPluginModelBase[list.size()]);
        }
        return new IPluginModelBase[0];
    }

    public String getId() {
        return this.fId;
    }

    public IPluginModelBase getModel(BundleDescription desc) {
        IPluginModelBase model;
        if (desc == null) {
            return null;
        }
        int i = 0;
        while (i < this.fWorkspaceEntries.size()) {
            model = (IPluginModelBase)this.fWorkspaceEntries.get(i);
            if (desc.equals(model.getBundleDescription())) {
                return model;
            }
            ++i;
        }
        i = 0;
        while (i < this.fExternalEntries.size()) {
            model = (IPluginModelBase)this.fExternalEntries.get(i);
            if (desc.equals(model.getBundleDescription())) {
                return model;
            }
            ++i;
        }
        return null;
    }

    public boolean hasWorkspaceModels() {
        return !this.fWorkspaceEntries.isEmpty();
    }

    public boolean hasExternalModels() {
        return !this.fExternalEntries.isEmpty();
    }
}

