/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.service.AbstractValidationContext;
import org.eclipse.emf.validation.internal.service.AbstractValidator;
import org.eclipse.emf.validation.internal.service.ClientContextManager;
import org.eclipse.emf.validation.internal.service.GetBatchConstraintsOperation;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.service.IProviderOperationExecutor;
import org.eclipse.emf.validation.internal.service.ResourceStatus;
import org.eclipse.emf.validation.internal.service.TraversalStrategyManager;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.service.IBatchValidator;
import org.eclipse.emf.validation.service.ITraversalStrategy;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BatchValidator
extends AbstractValidator<EObject>
implements IBatchValidator {
    private IProgressMonitor progressMonitor = null;
    private ITraversalStrategy defaultTraversalStrategy = new DefaultRecursiveTraversalStrategy();

    public BatchValidator(IProviderOperationExecutor executor) {
        super(EvaluationMode.BATCH, executor);
    }

    @Override
    public boolean isIncludeLiveConstraints() {
        return (Boolean)this.getOption(OPTION_INCLUDE_LIVE_CONSTRAINTS);
    }

    @Override
    public void setIncludeLiveConstraints(boolean includeLiveConstraints) {
        if (includeLiveConstraints != this.isIncludeLiveConstraints()) {
            this.setOption(OPTION_INCLUDE_LIVE_CONSTRAINTS, includeLiveConstraints);
        }
    }

    @Override
    public ITraversalStrategy getDefaultTraversalStrategy() {
        return this.defaultTraversalStrategy;
    }

    @Override
    public ITraversalStrategy getTraversalStrategy() {
        return (ITraversalStrategy)this.getOption(OPTION_TRAVERSAL_STRATEGY);
    }

    @Override
    public void setTraversalStrategy(ITraversalStrategy strategy) {
        if (strategy == null) {
            throw new IllegalArgumentException("strategy is null");
        }
        this.setOption(OPTION_TRAVERSAL_STRATEGY, strategy);
    }

    @Override
    public IStatus validate(EObject eObject, IProgressMonitor monitor) {
        this.progressMonitor = monitor;
        IStatus result = this.validate(eObject);
        return result;
    }

    @Override
    public IStatus validate(Collection<? extends EObject> objects, IProgressMonitor monitor) {
        this.progressMonitor = monitor;
        IStatus result = this.validate(objects);
        return result;
    }

    @Override
    protected Collection<IStatus> doValidate(Collection<? extends EObject> objects, Set<IClientContext> clientContexts) {
        ArrayList<IStatus> result = new ArrayList<IStatus>(64);
        GetBatchConstraintsOperation operation = new GetBatchConstraintsOperation(!this.isIncludeLiveConstraints());
        AbstractValidationContext ctx = operation.getContext();
        ctx.setReportSuccesses(this.isReportSuccesses());
        this.validate(this.getTraversalStrategy(), result, ctx, objects, operation, clientContexts);
        return result;
    }

    private void validate(ITraversalStrategy traversal, List<IStatus> evaluationResults, AbstractValidationContext ctx, Collection<? extends EObject> objects, GetBatchConstraintsOperation operation, Set<IClientContext> clientContexts) {
        IProgressMonitor monitor;
        HashSet<Resource> resources = null;
        boolean trackResources = (Boolean)this.getOption(OPTION_TRACK_RESOURCES);
        if (trackResources) {
            resources = new HashSet<Resource>();
        }
        if ((monitor = this.progressMonitor) == null) {
            monitor = new NullProgressMonitor();
        }
        traversal.startTraversal(objects, monitor);
        boolean firstElement = true;
        try {
            try {
                while (traversal.hasNext()) {
                    if (monitor.isCanceled()) {
                        break;
                    }
                    boolean recomputeClients = firstElement || traversal.isClientContextChanged();
                    EObject next = traversal.next();
                    if (recomputeClients) {
                        Collection<IClientContext> contexts = ClientContextManager.getInstance().getClientContextsFor(next);
                        ctx.setClientContexts(contexts);
                        clientContexts.addAll(contexts);
                    }
                    traversal.elementValidated(next, this.validate(ctx, next, operation, evaluationResults));
                    if (trackResources) {
                        resources.add(next.eResource());
                    }
                    firstElement = false;
                }
            }
            catch (OperationCanceledException e) {
                monitor.setCanceled(true);
                throw e;
            }
        }
        finally {
            if (!monitor.isCanceled()) {
                monitor.done();
            }
            this.progressMonitor = null;
            if (trackResources) {
                evaluationResults.add(this.createDummyResourceStatus(resources));
            }
        }
    }

    private IStatus validate(AbstractValidationContext ctx, EObject eObject, GetBatchConstraintsOperation operation, List<IStatus> results) {
        if (Trace.shouldTraceEntering(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.entering(this.getClass(), "validate", new Object[]{eObject});
        }
        operation.setTarget(eObject);
        this.execute(operation);
        IStatus result = this.evaluateConstraints(ctx, results);
        if (Trace.shouldTraceExiting(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.exiting(this.getClass(), "validate", result);
        }
        return result;
    }

    private IStatus createDummyResourceStatus(Collection<Resource> resources) {
        ArrayList<ResourceStatus> result = new ArrayList<ResourceStatus>(resources.size());
        for (Resource next : resources) {
            if (next == null) continue;
            result.add(new ResourceStatus((EObject)next.getContents().get(0)));
        }
        return result.isEmpty() ? Status.OK_STATUS : (result.size() == 1 ? (IStatus)result.get(0) : new MultiStatus(EMFModelValidationPlugin.getPluginId(), 0, result.toArray(new IStatus[result.size()]), ((IStatus)result.get(0)).getMessage(), null));
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class DefaultRecursiveTraversalStrategy
    implements ITraversalStrategy {
        private Map<ITraversalStrategy, Collection<EObject>> delegates;
        private Map<ITraversalStrategy, IProgressMonitor> monitors;
        private Iterator<ITraversalStrategy> delegateIterator;
        private ITraversalStrategy current;

        private DefaultRecursiveTraversalStrategy() {
        }

        @Override
        public void startTraversal(Collection<? extends EObject> traversalRoots, IProgressMonitor monitor) {
            this.current = null;
            this.delegates = this.initDelegates(traversalRoots);
            this.monitors = new HashMap<ITraversalStrategy, IProgressMonitor>();
            monitor.beginTask("", this.delegates.size() * 1024);
            for (Map.Entry<ITraversalStrategy, Collection<EObject>> next : this.delegates.entrySet()) {
                SubProgressMonitor sub = new SubProgressMonitor(monitor, 1024, 2);
                next.getKey().startTraversal(next.getValue(), (IProgressMonitor)sub);
                this.monitors.put(next.getKey(), (IProgressMonitor)sub);
            }
            this.delegateIterator = this.delegates.keySet().iterator();
        }

        @Override
        public boolean hasNext() {
            if (this.current == null && this.delegateIterator.hasNext()) {
                this.current = this.delegateIterator.next();
            }
            if (this.current == null) {
                return false;
            }
            if (!this.current.hasNext()) {
                this.monitors.get(this.current).done();
                this.current = null;
                return this.hasNext();
            }
            return true;
        }

        @Override
        public EObject next() {
            if (!this.hasNext()) {
                throw new NoSuchElementException();
            }
            return this.current.next();
        }

        @Override
        public boolean isClientContextChanged() {
            if (this.current != null) {
                return this.current.isClientContextChanged();
            }
            return false;
        }

        @Override
        public void elementValidated(EObject element, IStatus status) {
            this.current.elementValidated(element, status);
        }

        private Map<ITraversalStrategy, Collection<EObject>> initDelegates(Collection<? extends EObject> traversalRoots) {
            HashMap<ITraversalStrategy, Collection<EObject>> result = new HashMap<ITraversalStrategy, Collection<EObject>>();
            for (EObject eObject : traversalRoots) {
                ITraversalStrategy delegate = TraversalStrategyManager.getInstance().getTraversalStrategy(eObject);
                ArrayList<EObject> delegateRoots = (ArrayList<EObject>)result.get(delegate);
                if (delegateRoots == null) {
                    delegateRoots = new ArrayList<EObject>();
                    result.put(delegate, delegateRoots);
                }
                delegateRoots.add(eObject);
            }
            return result;
        }
    }
}

