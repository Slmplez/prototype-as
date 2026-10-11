/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.model.ConstraintStatus;
import org.eclipse.emf.validation.model.IModelConstraint;

public class DisabledConstraintStatus
extends ConstraintStatus {
    private final Throwable exception;

    public DisabledConstraintStatus(IModelConstraint constraint, EObject target, Throwable exception) {
        super(constraint, target, 1, 80, EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.CONSTRAINT_DISABLED_MSG, constraint.getDescriptor().getName()), null);
        this.exception = exception;
    }

    public Throwable getException() {
        return this.exception;
    }
}

