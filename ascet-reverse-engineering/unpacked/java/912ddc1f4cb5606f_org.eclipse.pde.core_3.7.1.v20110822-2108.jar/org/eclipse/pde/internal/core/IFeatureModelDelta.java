/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

public interface IFeatureModelDelta {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    public static final int CHANGED = 4;

    public int getKind();

    public IFeatureModel[] getAdded();

    public IFeatureModel[] getRemoved();

    public IFeatureModel[] getChanged();
}

