/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.model.IModelConstraint;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IModelConstraintProvider {
    public Collection<IModelConstraint> getBatchConstraints(EObject var1, Collection<IModelConstraint> var2);

    public Collection<IModelConstraint> getLiveConstraints(Notification var1, Collection<IModelConstraint> var2);
}

