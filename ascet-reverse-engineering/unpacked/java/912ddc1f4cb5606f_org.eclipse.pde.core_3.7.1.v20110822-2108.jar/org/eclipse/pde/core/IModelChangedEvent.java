/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core;

import org.eclipse.pde.core.IModelChangeProvider;

public interface IModelChangedEvent {
    public static final int INSERT = 1;
    public static final int REMOVE = 2;
    public static final int WORLD_CHANGED = 99;
    public static final int CHANGE = 3;

    public IModelChangeProvider getChangeProvider();

    public Object[] getChangedObjects();

    public String getChangedProperty();

    public Object getOldValue();

    public Object getNewValue();

    public int getChangeType();
}

