/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core;

import org.eclipse.pde.core.IModel;

public interface IModelProviderEvent {
    public static final int MODELS_ADDED = 1;
    public static final int MODELS_REMOVED = 2;
    public static final int MODELS_CHANGED = 4;
    public static final int TARGET_CHANGED = 8;
    public static final int ENVIRONMENT_CHANGED = 16;

    public IModel[] getAddedModels();

    public IModel[] getRemovedModels();

    public IModel[] getChangedModels();

    public int getEventTypes();

    public Object getEventSource();
}

