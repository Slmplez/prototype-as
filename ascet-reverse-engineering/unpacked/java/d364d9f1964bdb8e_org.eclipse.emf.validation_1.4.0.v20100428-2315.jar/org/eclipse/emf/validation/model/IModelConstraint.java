/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.validation.model;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public interface IModelConstraint {
    public static final int STATUS_CODE_SUCCESS = 0;

    public IStatus validate(IValidationContext var1);

    public IConstraintDescriptor getDescriptor();
}

