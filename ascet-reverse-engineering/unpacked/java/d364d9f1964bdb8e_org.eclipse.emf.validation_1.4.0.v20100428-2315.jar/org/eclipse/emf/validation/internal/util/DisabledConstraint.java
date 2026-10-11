/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.validation.internal.util;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.util.DisabledConstraintStatus;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public class DisabledConstraint
implements IModelConstraint {
    private IStatus status = null;
    private final Throwable exception;
    private final IConstraintDescriptor descriptor;

    public DisabledConstraint(IConstraintDescriptor descriptor, Throwable exception) {
        this.descriptor = descriptor;
        descriptor.setError(exception);
        this.exception = exception;
    }

    public IStatus validate(IValidationContext ctx) {
        ctx.disableCurrentConstraint(this.exception);
        if (this.status == null) {
            this.status = new DisabledConstraintStatus(this, ctx.getTarget(), this.exception);
            Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_DISABLED, "Constraint is disabled: " + this.getDescriptor().getId() + ". Check log for details.");
            Log.warning(this.status.getCode(), this.status.getMessage(), this.status.getException());
        }
        return this.status;
    }

    public final IConstraintDescriptor getDescriptor() {
        return this.descriptor;
    }
}

