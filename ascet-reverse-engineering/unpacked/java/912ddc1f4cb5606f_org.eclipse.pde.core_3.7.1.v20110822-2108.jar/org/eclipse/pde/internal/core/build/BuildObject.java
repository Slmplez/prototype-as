/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core.build;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.build.IBuildModel;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.build.IBuildObject;

public class BuildObject
implements IBuildObject {
    private IBuildModel fModel;
    private boolean fInTheModel;

    public boolean isInTheModel() {
        return this.fInTheModel;
    }

    public void setInTheModel(boolean inTheModel) {
        this.fInTheModel = inTheModel;
    }

    protected void ensureModelEditable() throws CoreException {
        if (!this.fModel.isEditable()) {
            this.throwCoreException(PDECoreMessages.BuildObject_readOnlyException);
        }
    }

    public IBuildModel getModel() {
        return this.fModel;
    }

    void setModel(IBuildModel model) {
        this.fModel = model;
    }

    protected void throwCoreException(String message) throws CoreException {
        Status status = new Status(4, "org.eclipse.pde.core", 0, message, null);
        throw new CoreException((IStatus)status);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
    }
}

