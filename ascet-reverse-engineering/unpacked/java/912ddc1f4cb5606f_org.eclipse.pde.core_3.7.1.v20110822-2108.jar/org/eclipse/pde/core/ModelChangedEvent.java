/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core;

import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.IModelChangedEvent;

public class ModelChangedEvent
implements IModelChangedEvent {
    private int type;
    private IModelChangeProvider provider;
    private Object[] changedObjects;
    private Object oldValue;
    private Object newValue;
    private String changedProperty;

    public ModelChangedEvent(IModelChangeProvider provider, int type, Object[] objects, String changedProperty) {
        this.type = type;
        this.provider = provider;
        this.changedObjects = objects;
        this.changedProperty = changedProperty;
    }

    public ModelChangedEvent(IModelChangeProvider provider, Object object, String changedProperty, Object oldValue, Object newValue) {
        this.type = 3;
        this.provider = provider;
        this.changedObjects = new Object[]{object};
        this.changedProperty = changedProperty;
        this.oldValue = oldValue;
        this.newValue = newValue;
    }

    public IModelChangeProvider getChangeProvider() {
        return this.provider;
    }

    public Object[] getChangedObjects() {
        return this.changedObjects == null ? new Object[]{} : this.changedObjects;
    }

    public String getChangedProperty() {
        return this.changedProperty;
    }

    public Object getOldValue() {
        return this.oldValue;
    }

    public Object getNewValue() {
        return this.newValue;
    }

    public int getChangeType() {
        return this.type;
    }
}

