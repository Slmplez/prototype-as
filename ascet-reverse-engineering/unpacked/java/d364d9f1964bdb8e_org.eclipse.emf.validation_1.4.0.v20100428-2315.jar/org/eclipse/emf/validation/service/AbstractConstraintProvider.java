/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.DisabledConstraint;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.ConstraintExistsException;
import org.eclipse.emf.validation.service.ConstraintFactory;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IModelConstraintProvider;
import org.eclipse.emf.validation.service.ModelValidationService;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractConstraintProvider
implements IModelConstraintProvider,
IExecutableExtension {
    private String[] namespaceUris;
    private final List<IModelConstraint> myConstraints = new ArrayList<IModelConstraint>();

    protected AbstractConstraintProvider() {
    }

    protected IModelConstraint createModelConstraint(IConstraintDescriptor descriptor) {
        return ConstraintFactory.getInstance().createConstraint(descriptor);
    }

    protected IModelConstraint createModelConstraintProxy(IConstraintDescriptor descriptor) {
        return new ConstraintProxy(descriptor);
    }

    protected List<IModelConstraint> getConstraints() {
        return this.myConstraints;
    }

    public final String[] getNamespaceUris() {
        return this.namespaceUris;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
        IConfigurationElement[] pkgs;
        HashSet<String> uris = new HashSet<String>();
        String uri = config.getAttribute("namespaceUri");
        if (uri != null) {
            uris.add(uri.trim());
        }
        IConfigurationElement[] iConfigurationElementArray = pkgs = config.getChildren("package");
        int n = pkgs.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            uri = element.getAttribute("namespaceUri");
            if (uri != null) {
                uris.add(uri.trim());
            }
            ++n2;
        }
        if (uris.isEmpty()) {
            CoreException e = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 62, EMFModelValidationStatusCodes.PROVIDER_NO_NAMESPACE_URI_MSG, null));
            Trace.throwing(AbstractConstraintProvider.class, "setInitializationData()", e);
            throw e;
        }
        this.namespaceUris = uris.toArray(new String[uris.size()]);
    }

    @Override
    public Collection<IModelConstraint> getLiveConstraints(Notification notification, Collection<IModelConstraint> constraints) {
        Collection<IModelConstraint> result;
        assert (notification != null);
        if (Trace.shouldTraceEntering(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.entering(this.getClass(), "getLiveConstraints");
        }
        if ((result = constraints) == null) {
            result = new ArrayList<IModelConstraint>();
        }
        if (notification.getNotifier() instanceof EObject) {
            EObject eObject = (EObject)notification.getNotifier();
            for (IModelConstraint next : this.getConstraints()) {
                IConstraintDescriptor desc = next.getDescriptor();
                if (!desc.isLive() || !desc.targetsTypeOf(eObject) || !desc.targetsEvent(notification)) continue;
                result.add(next);
            }
        }
        if (Trace.shouldTraceExiting(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.exiting(this.getClass(), "getLiveConstraints");
        }
        return result;
    }

    @Override
    public Collection<IModelConstraint> getBatchConstraints(EObject eObject, Collection<IModelConstraint> constraints) {
        Collection<IModelConstraint> result;
        if (Trace.shouldTraceEntering(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.entering(this.getClass(), "getBatchConstraints");
        }
        if ((result = constraints) == null) {
            result = new ArrayList<IModelConstraint>();
        }
        for (IModelConstraint next : this.getConstraints()) {
            IConstraintDescriptor desc = next.getDescriptor();
            if (!desc.isBatch() || !desc.targetsTypeOf(eObject)) continue;
            result.add(next);
        }
        if (Trace.shouldTraceExiting(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.exiting(this.getClass(), "getBatchConstraints");
        }
        return result;
    }

    protected void registerConstraints(Collection<? extends IModelConstraint> constraints) throws ConstraintExistsException {
        if (!constraints.isEmpty()) {
            ArrayList<IConstraintDescriptor> descriptors = new ArrayList<IConstraintDescriptor>(constraints.size());
            for (IModelConstraint iModelConstraint : constraints) {
                descriptors.add(iModelConstraint.getDescriptor());
            }
            ConstraintRegistry.getInstance().bulkRegister(descriptors);
        }
    }

    private class ConstraintProxy
    implements IModelConstraint {
        private final IConstraintDescriptor descriptor;
        private IModelConstraint delegate = null;

        ConstraintProxy(IConstraintDescriptor descriptor) {
            this.descriptor = descriptor;
        }

        public IConstraintDescriptor getDescriptor() {
            return this.descriptor;
        }

        public IStatus validate(IValidationContext ctx) {
            IStatus result;
            if (this.delegate == null) {
                if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
                    Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS, "Initializing constraint delegate: " + this.descriptor);
                }
                this.delegate = AbstractConstraintProvider.this.createModelConstraint(this.descriptor);
            }
            try {
                if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS_EVALUATION)) {
                    Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_EVALUATION, "Delegating validate() method to: " + this.delegate + " for: " + this.descriptor);
                }
                result = this.delegate.validate(ctx);
            }
            catch (RuntimeException e) {
                Trace.catching(this.getClass(), "validate()", e);
                Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_DISABLED, "Constraint is disabled: " + this.descriptor);
                this.delegate = new DisabledConstraint(this.descriptor, e);
                result = this.delegate.validate(ctx);
            }
            ListIterator<IModelConstraint> iter = AbstractConstraintProvider.this.getConstraints().listIterator();
            while (iter.hasNext()) {
                if (iter.next() != this) continue;
                iter.set(this.delegate);
                break;
            }
            ModelValidationService.getInstance().replaceInCache(this, this.delegate);
            return result;
        }
    }
}

