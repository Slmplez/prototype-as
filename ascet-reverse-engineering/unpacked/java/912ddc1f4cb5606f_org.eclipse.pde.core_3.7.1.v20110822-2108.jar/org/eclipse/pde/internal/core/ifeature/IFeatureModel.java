/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModelFactory;

public interface IFeatureModel
extends IModel,
IModelChangeProvider {
    public IFeature getFeature();

    public IFeatureModelFactory getFactory();

    public String getInstallLocation();

    public boolean isEnabled();

    public void setEnabled(boolean var1);
}

