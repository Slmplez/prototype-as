/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ibundle;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModelFactory;

public interface IBundleModel
extends IModel,
IModelChangeProvider {
    public IBundle getBundle();

    public String getInstallLocation();

    public boolean isFragmentModel();

    public IBundleModelFactory getFactory();
}

