/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EValidator$SubstitutionLabelProvider
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.emf.validation.internal.emfadapter;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.emfadapter.EMFValidationContextAdapter;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.util.TextUtils;
import org.eclipse.emf.validation.model.ConstraintStatus;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EMFConstraintAdapter
implements IModelConstraint {
    private static final Map<IValidationContext, Map<Object, Object>> contextMapCache = new WeakHashMap<IValidationContext, Map<Object, Object>>();
    private final IConstraintDescriptor descriptor;
    private final Method validationMethod;
    private final Object[] validationArgs = new Object[2];

    public EMFConstraintAdapter(IConstraintDescriptor descriptor, Method validationMethod) {
        this.descriptor = descriptor;
        this.validationMethod = validationMethod;
        this.validationArgs[0] = new EMFValidationContextAdapter();
        this.validationArgs[1] = null;
    }

    @Override
    public IStatus validate(IValidationContext ctx) {
        EMFValidationContextAdapter ctxAdapter = (EMFValidationContextAdapter)((Object)this.validationArgs[0]);
        ctxAdapter.setAdaptedContext(ctx);
        this.validationArgs[1] = EMFConstraintAdapter.getEMFContextFor(ctx);
        try {
            boolean success = (Boolean)this.validationMethod.invoke(ctx.getTarget(), this.validationArgs);
            IStatus iStatus = success ? ctx.createSuccessStatus() : this.fail(ctxAdapter);
            return iStatus;
        }
        catch (IllegalAccessException e) {
            ctx.disableCurrentConstraint(e);
            IStatus iStatus = this.disabledInfo(ctx, e);
            return iStatus;
        }
        catch (InvocationTargetException e) {
            ctx.disableCurrentConstraint(e);
            IStatus iStatus = this.disabledInfo(ctx, e);
            return iStatus;
        }
        finally {
            ctxAdapter.setAdaptedContext(null);
            this.validationArgs[1] = null;
        }
    }

    @Override
    public IConstraintDescriptor getDescriptor() {
        return this.descriptor;
    }

    private IStatus fail(EMFValidationContextAdapter ctxAdapter) {
        IValidationContext ctx = ctxAdapter.getAdaptedContext();
        ArrayList<EObject> resultLocus = new ArrayList<EObject>(ctx.getResultLocus());
        resultLocus.remove(ctx.getTarget());
        Diagnostic status = ctxAdapter.getLastStatus();
        return ctx.createFailureStatus(status == null ? null : status.getMessage(), resultLocus);
    }

    private IStatus disabledInfo(IValidationContext ctx, Throwable e) {
        ConstraintStatus result = new ConstraintStatus(this, ctx.getTarget(), 1, this.getDescriptor().getStatusCode(), EMFModelValidationPlugin.getMessage(ValidationMessages.emfadapter_disabled_WARN_, this.getDescriptor().getName()), Collections.emptySet());
        EMFModelValidationPlugin.getPlugin().getLog().log((IStatus)new Status(2, result.getPlugin(), result.getCode(), result.getMessage(), e));
        return result;
    }

    private static Map<Object, Object> getEMFContextFor(IValidationContext ctx) {
        Map<Object, Object> result = contextMapCache.get(ctx);
        if (result == null) {
            result = new HashMap<Object, Object>();
            result.put(EValidator.SubstitutionLabelProvider.class, SubstitutionProvider.INSTANCE);
            contextMapCache.put(ctx, result);
        }
        return result;
    }

    private static class SubstitutionProvider
    implements EValidator.SubstitutionLabelProvider {
        static final SubstitutionProvider INSTANCE = new SubstitutionProvider();

        private SubstitutionProvider() {
        }

        public String getObjectLabel(EObject eObject) {
            return TextUtils.getText(eObject);
        }

        public String getFeatureLabel(EStructuralFeature eStructuralFeature) {
            return eStructuralFeature.getName();
        }

        public String getValueLabel(EDataType eDataType, Object value) {
            return EcoreUtil.convertToString((EDataType)eDataType, (Object)value);
        }
    }
}

