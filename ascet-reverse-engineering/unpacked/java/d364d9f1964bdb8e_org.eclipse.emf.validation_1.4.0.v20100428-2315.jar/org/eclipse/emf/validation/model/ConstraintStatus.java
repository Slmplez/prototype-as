/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.model;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.util.TextUtils;
import org.eclipse.emf.validation.model.IConstraintStatus;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintStatus
extends Status
implements IConstraintStatus {
    private final IModelConstraint constraint;
    private EObject target;
    private Set<EObject> resultLocus;

    public ConstraintStatus(IModelConstraint constraint, EObject target, String message, Set<? extends EObject> resultLocus) {
        this(constraint, target, constraint.getDescriptor().getSeverity().toIStatusSeverity(), constraint.getDescriptor().getStatusCode(), message, resultLocus);
    }

    public ConstraintStatus(IModelConstraint constraint, EObject target) {
        this(constraint, target, 0, 0, EMFModelValidationStatusCodes.CONSTRAINT_SUCCESS_MSG, null);
    }

    public ConstraintStatus(IModelConstraint constraint, EObject target, int severity, int code, String message, Set<? extends EObject> resultLocus) {
        super(severity, constraint.getDescriptor().getPluginId(), code, message, null);
        assert (constraint != null);
        assert (target != null);
        assert (message != null);
        this.constraint = constraint;
        this.target = target;
        this.resultLocus = resultLocus != null ? Collections.unmodifiableSet(new HashSet<EObject>(resultLocus)) : Collections.emptySet();
    }

    public static ConstraintStatus createStatus(IValidationContext ctx, EObject target, Collection<? extends EObject> resultLocus, String messagePattern, Object ... messageArguments) {
        IConstraintDescriptor desc = ConstraintRegistry.getInstance().getDescriptor(ctx.getCurrentConstraintId());
        return ConstraintStatus.createStatus(ctx, target, resultLocus, desc.getSeverity().toIStatusSeverity(), desc.getStatusCode(), messagePattern, messageArguments);
    }

    public static ConstraintStatus createStatus(IValidationContext ctx, EObject target, Collection<? extends EObject> resultLocus, int severity, int errorCode, String messagePattern, Object ... messageArguments) {
        Set<EObject> results;
        ConstraintStatus result = (ConstraintStatus)ctx.createFailureStatus(new Object[0]);
        if (target != null) {
            result.target = target;
        }
        if (resultLocus == null) {
            results = Collections.singleton(result.getTarget());
        } else {
            results = new HashSet<EObject>(resultLocus);
            if (!results.contains(result.getTarget())) {
                results.add(result.getTarget());
            }
        }
        String message = TextUtils.formatMessage(messagePattern, messageArguments == null ? new Object[]{} : messageArguments);
        result.setMessage(message);
        result.setSeverity(severity);
        result.setCode(errorCode);
        result.resultLocus = results;
        return result;
    }

    public static ConstraintStatus createStatus(IValidationContext ctx, Collection<? extends EObject> resultLocus, String messagePattern, Object ... messageArguments) {
        IConstraintDescriptor desc = ConstraintRegistry.getInstance().getDescriptor(ctx.getCurrentConstraintId());
        return ConstraintStatus.createStatus(ctx, null, resultLocus, desc.getSeverity().toIStatusSeverity(), desc.getStatusCode(), messagePattern, messageArguments);
    }

    public static ConstraintStatus createStatus(IValidationContext ctx, Collection<? extends EObject> resultLocus, int severity, int errorCode, String messagePattern, Object ... messageArguments) {
        return ConstraintStatus.createStatus(ctx, null, resultLocus, severity, errorCode, messagePattern, messageArguments);
    }

    public static IStatus createSuccessStatus(IValidationContext ctx, EObject target, Collection<? extends EObject> resultLocus) {
        IStatus status = ctx.createSuccessStatus();
        if (status instanceof IConstraintStatus) {
            Set<EObject> results;
            IConstraintStatus successStatus = (IConstraintStatus)status;
            ConstraintStatus constraintStatus = new ConstraintStatus(successStatus.getConstraint(), target);
            if (resultLocus == null) {
                results = Collections.singleton(target);
            } else {
                results = new HashSet<EObject>(resultLocus);
                if (!results.contains(target)) {
                    results.add(target);
                }
            }
            constraintStatus.resultLocus = results;
            return constraintStatus;
        }
        return status;
    }

    public static IStatus createMultiStatus(IValidationContext ctx, Collection<? extends IStatus> statuses) {
        return ConstraintStatus.createMultiStatus(ctx, ValidationMessages.eval_some_fail_WARN_, null, statuses);
    }

    public static IStatus createMultiStatus(IValidationContext ctx, String messagePattern, Object[] messageArguments, Collection<? extends IStatus> statuses) {
        if (statuses == null || statuses.isEmpty()) {
            throw new IllegalArgumentException("no statuses to aggregate");
        }
        IStatus[] children = statuses.toArray(new IStatus[statuses.size()]);
        IConstraintDescriptor desc = ConstraintRegistry.getInstance().getDescriptor(ctx.getCurrentConstraintId());
        String message = TextUtils.formatMessage(messagePattern, messageArguments == null ? new Object[]{} : messageArguments);
        return new Multi(desc.getPluginId(), desc.getStatusCode(), children, message);
    }

    @Override
    public final IModelConstraint getConstraint() {
        return this.constraint;
    }

    @Override
    public final EObject getTarget() {
        return this.target;
    }

    @Override
    public final Set<EObject> getResultLocus() {
        return this.resultLocus;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static final class Multi
    extends MultiStatus
    implements IConstraintStatus {
        private final IModelConstraint constraint;
        private final EObject target;
        private final Set<EObject> resultLocus;

        Multi(String pluginId, int code, IStatus[] children, String message) {
            super(pluginId, code, children, message, null);
            IConstraintStatus prototype = null;
            IStatus[] iStatusArray = children;
            int n = children.length;
            int n2 = 0;
            while (n2 < n) {
                IStatus element = iStatusArray[n2];
                if (element instanceof IConstraintStatus) {
                    prototype = (IConstraintStatus)element;
                    break;
                }
                ++n2;
            }
            if (prototype == null) {
                this.constraint = null;
                this.target = null;
                this.resultLocus = Collections.emptySet();
            } else {
                this.constraint = prototype.getConstraint();
                this.target = prototype.getTarget();
                this.resultLocus = Collections.singleton(this.target);
            }
        }

        @Override
        public IModelConstraint getConstraint() {
            return this.constraint;
        }

        @Override
        public EObject getTarget() {
            return this.target;
        }

        @Override
        public Set<EObject> getResultLocus() {
            return this.resultLocus;
        }
    }
}

