/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.plugin.PluginObject;

public abstract class IdentifiablePluginObject
extends PluginObject
implements IIdentifiable {
    private static final long serialVersionUID = 1L;
    protected String fID;

    public String getId() {
        return this.fID;
    }

    public void setId(String id) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fID;
        this.fID = id;
        this.firePropertyChanged("id", oldValue, id);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("id")) {
            this.setId(newValue != null ? newValue.toString() : null);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public void reconnect(ISharedPluginModel model, IPluginObject parent) {
        super.reconnect(model, parent);
    }
}

