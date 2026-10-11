/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.validation;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.validation.EMFEventType;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IValidationContext {
    public String getCurrentConstraintId();

    public EObject getTarget();

    public EMFEventType getEventType();

    public List<Notification> getAllEvents();

    public EStructuralFeature getFeature();

    public Object getFeatureNewValue();

    public void skipCurrentConstraintFor(EObject var1);

    public void skipCurrentConstraintForAll(Collection<?> var1);

    public void disableCurrentConstraint(Throwable var1);

    public Object getCurrentConstraintData();

    public Object putCurrentConstraintData(Object var1);

    public Set<EObject> getResultLocus();

    public void addResult(EObject var1);

    public void addResults(Collection<? extends EObject> var1);

    public IStatus createSuccessStatus();

    public IStatus createFailureStatus(Object ... var1);
}

