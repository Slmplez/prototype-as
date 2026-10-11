/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.service.AbstractGetConstraintsOperation;
import org.eclipse.emf.validation.internal.service.GetBatchConstraintsOperation;
import org.eclipse.emf.validation.internal.service.GetLiveConstraintsOperation;
import org.eclipse.emf.validation.internal.service.IProviderDescriptor;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IModelConstraintProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintCache
implements IModelConstraintProvider {
    private static final String NOT_A_FEATURE_NAME = "$none$";
    private final Map<EClass, EClassBucket> buckets = new WeakHashMap<EClass, EClassBucket>();
    private final Collection<IProviderDescriptor> providers = new ArrayList<IProviderDescriptor>();

    public IProviderDescriptor getDescriptor() {
        return new IProviderDescriptor(){

            @Override
            public boolean provides(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
                return true;
            }

            @Override
            public boolean isCacheEnabled() {
                return false;
            }

            @Override
            public boolean isCache() {
                return true;
            }

            @Override
            public boolean isXmlProvider() {
                return false;
            }

            @Override
            public IModelConstraintProvider getProvider() {
                return ConstraintCache.this;
            }
        };
    }

    public Collection<IProviderDescriptor> getProviders() {
        return this.providers;
    }

    public void addProvider(IProviderDescriptor provider) {
        assert (provider != null);
        assert (provider.isCacheEnabled());
        this.getProviders().add(provider);
    }

    private EClassBucket getBucket(EClass clazz) {
        EClassBucket result = this.buckets.get(clazz);
        if (result == null) {
            result = new EClassBucket();
            this.buckets.put(clazz, result);
        }
        return result;
    }

    private Collection<IModelConstraint> execute(AbstractGetConstraintsOperation operation) {
        Iterator<IProviderDescriptor> iter = this.getProviders().iterator();
        while (iter.hasNext()) {
            IProviderDescriptor next = iter.next();
            if (!next.provides(operation)) continue;
            try {
                operation.execute(next.getProvider());
            }
            catch (RuntimeException e) {
                Trace.catching(this.getClass(), "execute", e);
                Log.l7dWarning(61, EMFModelValidationStatusCodes.PROVIDER_FAILURE_MSG, e);
                iter.remove();
            }
        }
        return operation.getUnfilteredConstraints();
    }

    @Override
    public Collection<IModelConstraint> getLiveConstraints(Notification notification, Collection<IModelConstraint> constraints) {
        assert (notification != null);
        Collection<IModelConstraint> result = constraints;
        if (result == null) {
            result = new ArrayList<IModelConstraint>();
        }
        if (notification.getNotifier() instanceof EObject) {
            EClassBucket bucket;
            Collection<IModelConstraint> cached;
            EObject eObject = (EObject)notification.getNotifier();
            EMFEventType eventType = EMFEventType.getInstance(notification.getEventType());
            String featureName = null;
            if (notification.getFeature() instanceof EStructuralFeature) {
                featureName = ((EStructuralFeature)notification.getFeature()).getName();
            }
            if ((cached = (bucket = this.getBucket(eObject.eClass())).getLiveConstraints(eventType, featureName)) == null) {
                if (Trace.shouldTrace(EMFModelValidationDebugOptions.CACHE)) {
                    Trace.trace(EMFModelValidationDebugOptions.CACHE, "Cache missed live constraints for: " + Trace.toString(new Object[]{this.qualifiedName(eObject.eClass()), eventType, featureName}));
                }
                GetLiveConstraintsOperation operation = new GetLiveConstraintsOperation();
                operation.setNotification(notification);
                cached = this.execute(operation);
                bucket.cacheLiveConstraints(eventType, featureName, cached);
            }
            result.addAll(cached);
        }
        return result;
    }

    @Override
    public Collection<IModelConstraint> getBatchConstraints(EObject eObject, Collection<IModelConstraint> constraints) {
        EClassBucket bucket;
        Collection<IModelConstraint> cached;
        Collection<IModelConstraint> result = constraints;
        if (result == null) {
            result = new ArrayList<IModelConstraint>();
        }
        if ((cached = (bucket = this.getBucket(eObject.eClass())).getBatchConstraints()) == null) {
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.CACHE)) {
                Trace.trace(EMFModelValidationDebugOptions.CACHE, "Cache missed batch constraints for: " + this.qualifiedName(eObject.eClass()));
            }
            GetBatchConstraintsOperation operation = new GetBatchConstraintsOperation(false);
            operation.setTarget(eObject);
            cached = this.execute(operation);
            bucket.cacheBatchConstraints(cached);
        }
        result.addAll(bucket.getBatchConstraints());
        return result;
    }

    private String qualifiedName(EClass eClass) {
        StringBuffer result = new StringBuffer(32);
        this.appendQualifiedName(eClass.getEPackage(), result);
        result.append(eClass.getName());
        return result.toString();
    }

    private void appendQualifiedName(EPackage ePackage, StringBuffer buf) {
        if (ePackage.getESuperPackage() != null) {
            this.appendQualifiedName(ePackage.getESuperPackage(), buf);
        } else {
            buf.append(ePackage.getNsURI());
            buf.append('/');
        }
        buf.append(ePackage.getName());
        buf.append('.');
    }

    public void replace(IModelConstraint oldConstraint, IModelConstraint newConstraint) {
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CACHE)) {
            Trace.trace(EMFModelValidationDebugOptions.CACHE, "Cache replacing: " + oldConstraint + " with: " + newConstraint);
        }
        for (EClassBucket next : this.buckets.values()) {
            next.replace(oldConstraint, newConstraint);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class EClassBucket {
        private Collection<IModelConstraint> batchConstraints;
        private final Map<EMFEventType, Map<String, Collection<IModelConstraint>>> liveConstraints = new HashMap<EMFEventType, Map<String, Collection<IModelConstraint>>>();

        EClassBucket() {
        }

        Collection<IModelConstraint> getBatchConstraints() {
            return this.batchConstraints;
        }

        void cacheBatchConstraints(Collection<IModelConstraint> constraints) {
            this.batchConstraints = new ArrayList<IModelConstraint>(constraints);
        }

        Collection<IModelConstraint> getLiveConstraints(EMFEventType eventType, String featureName) {
            Map<String, Collection<IModelConstraint>> constraintMap;
            if (featureName == null) {
                featureName = ConstraintCache.NOT_A_FEATURE_NAME;
            }
            if ((constraintMap = this.liveConstraints.get(eventType)) != null) {
                return constraintMap.get(featureName);
            }
            return null;
        }

        void cacheLiveConstraints(EMFEventType eventType, String featureName, Collection<IModelConstraint> constraints) {
            Map<String, Collection<IModelConstraint>> constraintMap;
            if (featureName == null) {
                featureName = ConstraintCache.NOT_A_FEATURE_NAME;
            }
            if ((constraintMap = this.liveConstraints.get(eventType)) == null) {
                constraintMap = new HashMap<String, Collection<IModelConstraint>>();
                this.liveConstraints.put(eventType, constraintMap);
            }
            constraintMap.put(featureName, new ArrayList<IModelConstraint>(constraints));
        }

        void replace(IModelConstraint oldConstraint, IModelConstraint newConstraint) {
            if (this.batchConstraints != null && this.batchConstraints.remove(oldConstraint)) {
                this.batchConstraints.add(newConstraint);
            }
            for (Map<String, Collection<IModelConstraint>> next : this.liveConstraints.values()) {
                for (Collection<IModelConstraint> constraints : next.values()) {
                    if (constraints == null || !constraints.remove(oldConstraint)) continue;
                    constraints.add(newConstraint);
                }
            }
        }
    }
}

