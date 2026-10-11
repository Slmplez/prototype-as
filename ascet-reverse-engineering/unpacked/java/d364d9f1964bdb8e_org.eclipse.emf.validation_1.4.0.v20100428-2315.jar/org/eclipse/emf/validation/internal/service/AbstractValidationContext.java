/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.validation.internal.service;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.service.ClientContextManager;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.util.TextUtils;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.ConstraintStatus;
import org.eclipse.emf.validation.model.IConstraintStatus;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.util.FilteredCollection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractValidationContext
implements IValidationContext {
    private final IProviderOperation<Collection<IModelConstraint>> operation;
    private final ConstraintIgnorement ignoredConstraints = new ConstraintIgnorement();
    private ConstraintFilter filter;
    private final Map<IModelConstraint, Object> constraintData = new HashMap<IModelConstraint, Object>();
    private IModelConstraint currentConstraint = null;
    private IConstraintDescriptor currentDescriptor = null;
    private final Set<EObject> resultLocus = new HashSet<EObject>();
    private boolean reportSuccesses = false;
    private Collection<IClientContext> clientContexts = Collections.emptySet();

    protected AbstractValidationContext(IProviderOperation<Collection<IModelConstraint>> operation) {
        this.operation = operation;
    }

    protected final IProviderOperation<Collection<IModelConstraint>> getOperation() {
        return this.operation;
    }

    @Override
    public EMFEventType getEventType() {
        return EMFEventType.NULL;
    }

    @Override
    public List<Notification> getAllEvents() {
        return Collections.emptyList();
    }

    @Override
    public EStructuralFeature getFeature() {
        return null;
    }

    @Override
    public Object getFeatureNewValue() {
        return null;
    }

    @Override
    public void disableCurrentConstraint(Throwable exception) {
        assert (exception != null);
        this.getDescriptor().setError(exception);
    }

    @Override
    public void skipCurrentConstraintFor(EObject eObject) {
        this.ignoredConstraints.ignore(eObject, this.getDescriptor());
    }

    @Override
    public void skipCurrentConstraintForAll(Collection<?> eObjects) {
        for (Object next : eObjects) {
            if (!(next instanceof EObject)) continue;
            this.skipCurrentConstraintFor((EObject)next);
        }
    }

    public FilteredCollection.Filter<IModelConstraint> getConstraintFilter() {
        if (this.filter == null) {
            this.filter = new ConstraintFilter();
        }
        return this.filter;
    }

    public boolean isDisabled() {
        return !this.getDescriptor().isEnabled();
    }

    @Override
    public final Object getCurrentConstraintData() {
        return this.constraintData.get(this.getConstraint());
    }

    @Override
    public final Object putCurrentConstraintData(Object newData) {
        return this.constraintData.put(this.getConstraint(), newData);
    }

    public Notification getNotification() {
        return null;
    }

    void initializeResultLocus() {
        this.resultLocus.clear();
        this.resultLocus.add(this.getTarget());
    }

    @Override
    public void addResult(EObject eObject) {
        assert (eObject != null);
        this.resultLocus.add(eObject);
    }

    @Override
    public void addResults(Collection<? extends EObject> eObjects) {
        assert (eObjects != null);
        for (EObject eObject : eObjects) {
            this.addResult(eObject);
        }
    }

    @Override
    public Set<EObject> getResultLocus() {
        return Collections.unmodifiableSet(this.resultLocus);
    }

    @Override
    public final String getCurrentConstraintId() {
        return this.getConstraint().getDescriptor().getId();
    }

    final IModelConstraint getConstraint() {
        return this.currentConstraint;
    }

    final IConstraintDescriptor getDescriptor() {
        return this.currentDescriptor;
    }

    private void setConstraint(IModelConstraint constraint) {
        this.currentConstraint = constraint;
        this.currentDescriptor = constraint.getDescriptor();
    }

    @Override
    public final EObject getTarget() {
        return this.getOperation().getEObject();
    }

    public boolean isReportSuccesses() {
        return this.reportSuccesses;
    }

    void setReportSuccesses(boolean b) {
        this.reportSuccesses = b;
    }

    @Override
    public IStatus createSuccessStatus() {
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS_EVALUATION)) {
            Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_EVALUATION, "Constraint " + this.getCurrentConstraintId() + " passed.");
        }
        return this.isReportSuccesses() ? new SuccessStatus(this.getTarget(), this.getConstraint()) : Status.OK_STATUS;
    }

    @Override
    public IStatus createFailureStatus(Object ... messageArgs) {
        String message = TextUtils.formatMessage(this.getDescriptor().getMessagePattern(), messageArgs == null ? new Object[]{} : messageArgs);
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS_EVALUATION)) {
            Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_EVALUATION, "Constraint " + this.getCurrentConstraintId() + " failed: " + message);
        }
        return new ConstraintStatus(this.getConstraint(), this.getTarget(), message, this.getResultLocus());
    }

    final Collection<IModelConstraint> getConstraints() {
        final Collection<IModelConstraint> delegate = ClientContextManager.getInstance().getBindings(this.clientContexts, this.getOperation().getConstraints());
        return new AbstractCollection<IModelConstraint>(){

            @Override
            public Iterator<IModelConstraint> iterator() {
                /*
                 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
                 */
                class ConstraintsIterator
                implements Iterator<IModelConstraint> {
                    private final Iterator<? extends IModelConstraint> delegateIterator;

                    ConstraintsIterator(Collection<? extends IModelConstraint> delegateCollection) {
                        this.delegateIterator = delegateCollection.iterator();
                    }

                    @Override
                    public boolean hasNext() {
                        return this.delegateIterator.hasNext();
                    }

                    @Override
                    public IModelConstraint next() {
                        IModelConstraint result = this.delegateIterator.next();
                        AbstractValidationContext.this.setConstraint(result);
                        AbstractValidationContext.this.initializeResultLocus();
                        return result;
                    }

                    @Override
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                }
                return new ConstraintsIterator(delegate);
            }

            @Override
            public int size() {
                return delegate.size();
            }
        };
    }

    final void setClientContexts(Collection<IClientContext> clientContexts) {
        if (clientContexts == null) {
            clientContexts = Collections.emptySet();
        }
        this.clientContexts = clientContexts;
    }

    final Collection<IClientContext> getClientContexts() {
        return this.clientContexts;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ConstraintFilter
    implements FilteredCollection.Filter<IModelConstraint> {
        ConstraintFilter() {
        }

        @Override
        public boolean accept(IModelConstraint constraint) {
            IConstraintDescriptor desc = constraint.getDescriptor();
            return desc.isEnabled() && !this.isIgnored(desc);
        }

        private boolean isIgnored(IConstraintDescriptor desc) {
            return AbstractValidationContext.this.ignoredConstraints.isIgnored(AbstractValidationContext.this.getTarget(), desc);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class ConstraintIgnorement {
        private final Map<EObject, Collection<IConstraintDescriptor>> ignoreMap = new HashMap<EObject, Collection<IConstraintDescriptor>>();

        private ConstraintIgnorement() {
        }

        void ignore(EObject eObject, IConstraintDescriptor constraint) {
            Collection<IConstraintDescriptor> ignored = this.getIgnoredConstraints(eObject);
            if (ignored == null) {
                ignored = this.initIgnoredConstraints(eObject);
            }
            ignored.add(constraint);
        }

        boolean isIgnored(EObject eObject, IConstraintDescriptor constraint) {
            Collection<IConstraintDescriptor> ignored = this.getIgnoredConstraints(eObject);
            return ignored != null && ignored.contains(constraint);
        }

        private Collection<IConstraintDescriptor> getIgnoredConstraints(EObject target) {
            return this.ignoreMap.get(target);
        }

        private Collection<IConstraintDescriptor> initIgnoredConstraints(EObject target) {
            HashSet<IConstraintDescriptor> result = new HashSet<IConstraintDescriptor>();
            this.ignoreMap.put(target, result);
            return result;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class SuccessStatus
    extends Status
    implements IConstraintStatus {
        private final EObject target;
        private final IModelConstraint constraint;

        SuccessStatus(EObject target, IModelConstraint constraint) {
            super(0, EMFModelValidationPlugin.getPluginId(), 0, EMFModelValidationStatusCodes.CONSTRAINT_SUCCESS_MSG, null);
            this.target = target;
            this.constraint = constraint;
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
            return Collections.emptySet();
        }
    }
}

