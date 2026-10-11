/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.service.AbstractValidationContext;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.service.IProviderOperationExecutor;
import org.eclipse.emf.validation.internal.service.ValidationCanceledException;
import org.eclipse.emf.validation.internal.util.DisabledConstraintStatus;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IConstraintFilter;
import org.eclipse.emf.validation.service.IValidator;
import org.eclipse.emf.validation.service.ModelValidationService;
import org.eclipse.emf.validation.service.ValidationEvent;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
abstract class AbstractValidator<T>
implements IValidator<T> {
    private final EvaluationMode<T> mode;
    private final Map<String, Object> clientData = new HashMap<String, Object>();
    private final IProviderOperationExecutor executor;
    private Collection<IConstraintFilter> filters = null;
    private Map<IValidator.Option<?>, ?> options = Collections.emptyMap();

    protected AbstractValidator(EvaluationMode<T> mode, IProviderOperationExecutor executor) {
        assert (mode != null && !mode.isNull());
        assert (executor != null);
        this.mode = mode;
        this.executor = executor;
    }

    @Override
    public final EvaluationMode<T> getEvaluationMode() {
        return this.mode;
    }

    @Override
    public boolean isReportSuccesses() {
        return (Boolean)this.getOption(OPTION_REPORT_SUCCESSES);
    }

    @Override
    public void setReportSuccesses(boolean reportSuccesses) {
        if (reportSuccesses != this.isReportSuccesses()) {
            this.setOption(OPTION_REPORT_SUCCESSES, reportSuccesses);
        }
    }

    @Override
    public void putClientData(String key, Object data) {
        assert (key != null) : "null key";
        if (data == null) {
            this.clientData.remove(key);
        } else {
            this.clientData.put(key, data);
        }
    }

    @Override
    public Object getClientData(String key) {
        return this.clientData.get(key);
    }

    @Override
    public final IStatus validate(T object) {
        return this.validate((Collection<? extends T>)Collections.singleton(object));
    }

    @Override
    public final IStatus validate(Collection<? extends T> objects) {
        IStatus result;
        HashSet<IClientContext> encounteredClientContexts = new HashSet<IClientContext>();
        try {
            result = this.createStatus(this.doValidate(objects, encounteredClientContexts));
        }
        catch (ValidationCanceledException e) {
            result = e.getStatus();
        }
        catch (OperationCanceledException e) {
            result = new Status(8, EMFModelValidationPlugin.getPluginId(), 2, e.getMessage(), null);
        }
        ValidationEvent event = new ValidationEvent(this.getEvaluationMode(), this.clientData, objects, result, this.getClientContextIds(encounteredClientContexts));
        ModelValidationService.getInstance().broadcastValidationEvent(event);
        return result;
    }

    private Collection<String> getClientContextIds(Collection<IClientContext> clientContexts) {
        ArrayList<String> contextIds = new ArrayList<String>();
        if (clientContexts == null) {
            return contextIds;
        }
        for (IClientContext context : clientContexts) {
            contextIds.add(context.getId());
        }
        return contextIds;
    }

    protected abstract Collection<IStatus> doValidate(Collection<? extends T> var1, Set<IClientContext> var2);

    protected IStatus evaluateConstraints(AbstractValidationContext ctx, List<? super IStatus> results) {
        IStatus resultStatus = Status.OK_STATUS;
        for (IModelConstraint element : ctx.getConstraints()) {
            IModelConstraint next = element;
            if (!this.acceptConstraint(next.getDescriptor(), ctx.getTarget())) continue;
            try {
                IStatus status = next.validate(ctx);
                if (status == null || !this.isReportSuccesses() && status.isOK()) continue;
                if (status.getSeverity() > resultStatus.getSeverity() && (resultStatus = status).matches(8)) {
                    throw new ValidationCanceledException(resultStatus);
                }
                results.add((IStatus)status);
            }
            catch (ValidationCanceledException e) {
                throw e;
            }
            catch (OperationCanceledException e) {
                throw e;
            }
            catch (RuntimeException e) {
                DisabledConstraintStatus status = new DisabledConstraintStatus(next, ctx.getTarget(), e);
                results.add(status);
                Log.warning(status.getCode(), EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.CONSTRAINT_DISABLED_MSG, next.getDescriptor().getId()), status.getException());
                ctx.disableCurrentConstraint(e);
            }
        }
        return resultStatus;
    }

    protected final Collection<? extends IModelConstraint> execute(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
        return this.getOperationExecutor().execute(operation);
    }

    private IProviderOperationExecutor getOperationExecutor() {
        return this.executor;
    }

    private IStatus createStatus(Collection<IStatus> results) {
        if (results.isEmpty()) {
            return new Status(0, EMFModelValidationPlugin.getPluginId(), 10, EMFModelValidationStatusCodes.NO_CONSTRAINTS_EVALUATED_MSG, null);
        }
        if (results.size() == 1) {
            return results.iterator().next();
        }
        return new AggregateStatus(results);
    }

    private boolean acceptConstraint(IConstraintDescriptor constraint, EObject target) {
        if (this.filters != null) {
            for (IConstraintFilter filter : this.filters) {
                if (filter.accept(constraint, target)) continue;
                return false;
            }
        }
        return true;
    }

    @Override
    public void addConstraintFilter(IConstraintFilter filter) {
        if (this.filters == null) {
            this.filters = new BasicEList(4);
        }
        this.filters.add(filter);
    }

    @Override
    public void removeConstraintFilter(IConstraintFilter filter) {
        if (this.filters != null) {
            this.filters.remove(filter);
        }
    }

    @Override
    public Collection<IConstraintFilter> getConstraintFilters() {
        if (this.filters == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableCollection(this.filters);
    }

    @Override
    public Map<IValidator.Option<?>, ?> getOptions() {
        return this.options;
    }

    @Override
    public void setOptions(Map<IValidator.Option<?>, ?> options) {
        if (options == null || options.isEmpty()) {
            this.options = Collections.emptyMap();
        } else {
            HashMap clone = new HashMap(options);
            this.options = Collections.unmodifiableMap(clone);
        }
    }

    @Override
    public <V> V getOption(IValidator.Option<V> option) {
        Object result = this.getOptions().get(option);
        return (V)(result == null ? option.defaultValue(this) : result);
    }

    @Override
    public <V> void setOption(IValidator.Option<? super V> option, V value) {
        HashMap options = new HashMap(this.getOptions());
        if (option.defaultValue(this) == null ? value == null : option.defaultValue(this).equals(value)) {
            options.remove(option);
        } else {
            options.put(option, value);
        }
        this.setOptions(options);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class AggregateStatus
    implements IStatus {
        private final Collection<? extends IStatus> children;
        private final int severity;
        private final int code;
        private final String message;

        AggregateStatus(Collection<? extends IStatus> statuses) {
            String msg;
            int newCode;
            int maxSeverity = this.getMaximalSeverity(statuses);
            switch (maxSeverity) {
                case 4: {
                    newCode = 14;
                    msg = EMFModelValidationStatusCodes.SOME_CONSTRAINTS_ERROR_MSG;
                    break;
                }
                case 2: {
                    newCode = 13;
                    msg = EMFModelValidationStatusCodes.SOME_CONSTRAINTS_WARNING_MSG;
                    break;
                }
                case 1: {
                    newCode = 12;
                    msg = EMFModelValidationStatusCodes.SOME_CONSTRAINTS_INFO_MSG;
                    break;
                }
                case 0: {
                    newCode = 0;
                    msg = EMFModelValidationStatusCodes.ALL_CONSTRAINTS_PASSED_MSG;
                    break;
                }
                default: {
                    newCode = 11;
                    msg = EMFModelValidationStatusCodes.SOME_CONSTRAINTS_FAILED_MSG;
                }
            }
            this.children = statuses;
            this.severity = maxSeverity;
            this.code = newCode;
            this.message = msg;
        }

        public IStatus[] getChildren() {
            return this.children.toArray(new IStatus[this.children.size()]);
        }

        public int getSeverity() {
            return this.severity;
        }

        public int getCode() {
            return this.code;
        }

        public String getMessage() {
            return this.message;
        }

        public Throwable getException() {
            return null;
        }

        public String getPlugin() {
            return EMFModelValidationPlugin.getPluginId();
        }

        public boolean isMultiStatus() {
            return true;
        }

        public boolean isOK() {
            return this.severity == 0;
        }

        public boolean matches(int severityMask) {
            return (this.getSeverity() & severityMask) != 0;
        }

        private int getMaximalSeverity(Collection<? extends IStatus> statuses) {
            int result = 0;
            for (IStatus iStatus : statuses) {
                if (iStatus.getSeverity() > result && (result = iStatus.getSeverity()) >= 4) break;
            }
            return result;
        }
    }
}

