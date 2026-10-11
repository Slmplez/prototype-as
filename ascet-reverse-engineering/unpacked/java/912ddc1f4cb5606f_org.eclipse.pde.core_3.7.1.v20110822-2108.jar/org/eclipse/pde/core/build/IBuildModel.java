/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.core.build;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildModelFactory;

public interface IBuildModel
extends IModel,
IModelChangeProvider {
    public IBuild getBuild();

    public IBuildModelFactory getFactory();

    public String getInstallLocation();
}

