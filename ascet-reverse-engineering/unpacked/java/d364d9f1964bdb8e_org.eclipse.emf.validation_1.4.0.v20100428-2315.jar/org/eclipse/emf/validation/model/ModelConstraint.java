/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.model;

import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public abstract class ModelConstraint
implements IModelConstraint {
    private IConstraintDescriptor descriptor;

    public ModelConstraint(IConstraintDescriptor descriptor) {
        assert (descriptor != null);
        this.descriptor = descriptor;
    }

    public final IConstraintDescriptor getDescriptor() {
        return this.descriptor;
    }
}

