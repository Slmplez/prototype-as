/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelProviderEvent;

public class ModelProviderEvent
implements IModelProviderEvent {
    private int types;
    private Object source;
    private IModel[] added;
    private IModel[] removed;
    private IModel[] changed;

    public ModelProviderEvent(Object source, int types, IModel[] added, IModel[] removed, IModel[] changed) {
        this.source = source;
        this.types = types;
        this.added = added;
        this.removed = removed;
        this.changed = changed;
    }

    public IModel[] getAddedModels() {
        return this.added == null ? new IModel[]{} : this.added;
    }

    public IModel[] getRemovedModels() {
        return this.removed == null ? new IModel[]{} : this.removed;
    }

    public IModel[] getChangedModels() {
        return this.changed == null ? new IModel[]{} : this.changed;
    }

    public int getEventTypes() {
        return this.types;
    }

    public Object getEventSource() {
        return this.source;
    }
}

