/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.isite;

import org.eclipse.pde.core.IModel;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.internal.core.isite.ISite;
import org.eclipse.pde.internal.core.isite.ISiteModelFactory;

public interface ISiteModel
extends IModel,
IModelChangeProvider {
    public ISite getSite();

    public ISiteModelFactory getFactory();

    public String getInstallLocation();

    public boolean isEnabled();

    public void setEnabled(boolean var1);
}

